

#import "GamaIapFunctionPort.h"

//#import "GamaIAPHeader.h"

#import "GamaIapFunction.h"
#import "GamaIapInfo.h"
#import "GamaIapData.h"
#import "GamaIapServerAccess.h"
#import "GamaIapRecodeAndLog.h"
#import "GamaIapAlertView.h"
#import "GamaIapTransactionRecorder.h"
#import "GamaIapMemoryAndLocalDataAdmin.h"
// --
#import "GamaFunction.h"
#import "GamaURLConnect.h"
#import "GamaAlertView.h"
#import "GamaCentreInfo.h"
#import "GamaSecurity.h"
#import "GamaRequestor.h"
#import "GamaSecurityFunction.h"


@implementation GamaIapFunctionPort

static NSString *gameUrlCallBack = nil;
+(void)initialize
{
    gameUrlCallBack = [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)].copy;
    
    [self getURLScheme:gameUrlCallBack isPrefix:NO];
}

//处理获取iapValue之后的回调url
+ (BOOL)handleOpenIAPHistoryWithURL:(NSURL *)url
{
    NSString *tmpURLStr = url.description;
    
    if ([tmpURLStr rangeOfString:@"://"].location == NSNotFound) {
        return NO;
    }
    
    NSString *tmpURLValue = [tmpURLStr substringFromIndex:[tmpURLStr rangeOfString:@"://"].location + 3];
    NSString *tmpURLScheme = [tmpURLStr substringToIndex:[tmpURLStr rangeOfString:@"://"].location];
    
    NSData *tmpData = [GamaBase64Encoding decode:tmpURLValue];
    
    if (!tmpData) {
        return NO;
    }
    
    NSString *URLStr = [[[NSString alloc] initWithData:tmpData encoding:NSUTF8StringEncoding] autorelease];
    
    if ([tmpURLScheme rangeOfString:gameUrlCallBack].location != NSNotFound) {
        
        NSString *typeParam = [self getParamStr:URLStr andKey:@"type"];
        
        if (![typeParam isEqualToString:GAMA_IAP_URLSCHEME_MARK]) {
            return NO;
        }
        
        NSString *iapParam = [self getParamStr:URLStr andKey:@"action"];
        
        if ([iapParam isEqualToString:GAMA_IAP_URLSCHEME_POST_ALL])
        {
            [GamaIapTransactionRecorder postCurrentRecordToServerWithTime:[self getSecondTimeStamp]];
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
        return NO;
    
}
+(NSString *)getSecondTimeStamp
{
    double secondTime=[[[[NSDate alloc]init] autorelease]timeIntervalSince1970];
    double millisecondTime=secondTime;
    NSString * millisecondTimeStr=[NSString stringWithFormat:@"%f",millisecondTime];
    NSRange pointRange=[millisecondTimeStr rangeOfString:@"."];
    NSString * MSTime=[millisecondTimeStr substringToIndex:pointRange.location];
    
    return MSTime;
}

+ (NSString *)getParamStr:(NSString *)URLStr andKey:(NSString *)key
{
    NSRange keyRange = [URLStr rangeOfString:key];
    if (keyRange.location == NSNotFound) {
        return nil;
    }
    NSString *subStr = [URLStr substringFromIndex:keyRange.location+keyRange.length+1];
    NSRange andRange = [subStr rangeOfString:@"&"];
    if (andRange.location == NSNotFound) {
        return subStr;
    }
    else
    {
        NSString *cookieValue = [subStr substringToIndex:andRange.location];
        return cookieValue;
    }
}

+ (NSString *)getURLScheme:(NSString *)urlScheme isPrefix:(BOOL)isPrefix
{
    static dispatch_once_t fetchBundleOnce;
    static NSArray *urlTypes = nil;
    
    dispatch_once(&fetchBundleOnce, ^{
        urlTypes = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleURLTypes"];
    });
    for (NSDictionary *urlType in urlTypes) {
        NSArray *urlSchemes = [urlType valueForKey:@"CFBundleURLSchemes"];
        if (!isPrefix) {
            if ([urlSchemes containsObject:urlScheme]) {
                return urlScheme;
            }
        } else {
            for (NSString *item in urlSchemes) {
                if ([item hasPrefix:urlScheme]) {
                    return item;
                }
            }
        }
    }
    NSString *showTips = [NSString stringWithFormat:@"請在URL Schemes 配置: %@",urlScheme];
    [GamaAlertView showAlertWithMessage:showTips];
    return nil;
}

/*玩家进入游戏服务器的时候，调用，初始化基本对象，可以进行补单*/
+(void)startSDK
{

    GAMA_IAP_LOG(@"-----------------")
    GAMA_IAP_LOG(@"- start iap sdk -")
    GAMA_IAP_LOG(@"-----------------")
    [GAMA_IAP_LOG gamaPayClassInit];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [GamaIapServerAccess defaultInstance];
        [GamaIapFunction checkTransactionUnfinished];
        [GamaIapData defaultData];
    });
}


/*执行购买的方法*/

+ (void)userBuyProductWithProductId:(NSString * _Nonnull)productId
                             userId:(NSString * _Nonnull)userId
                             roleId:(NSString * _Nonnull)roleId
                           creditId:(NSString * _Nullable)creditId
                         serverCode:(NSString * _Nonnull)servercode
                             remark:(NSString * _Nullable)remark
                          roleLevel:(NSString * _Nonnull)roleLevel
                           roleName:(NSString * _Nonnull)roleName
                         serverName:(NSString * _Nonnull)serverName
                          cpOrderId:(NSString * _Nullable)cpOrderId
                              extra:(NSString * _Nullable)extra
{
    GAMA_IAP_LOG(@"---------------------------------------")
    GAMA_IAP_LOG(@"- begin one transaction (user clicked)-")
    GAMA_IAP_LOG(@"---------------------------------------")
    //添加接口被调用一次的纪录
    NSString * logStr=[NSString stringWithFormat:@"=========================== IAP 接口prodictId:%@(*#)userId:%@(*#)roleId:%@(*#)creditId:%@(*#)serverCode:%@(*#)remark:%@(*#)gamaLevel:%@(*#)gamaRole:%@(*#)serverName:%@(*#)",
                       productId,
                       userId,
                       roleId,
                       creditId,
                       servercode,
                       remark,
                       roleLevel,
                       roleName,
                       serverName
                       ];
    [GAMA_IAP_LOG buyMethodCalledOnce:logStr];
    
    [GamaIapFunction userDidClickBuyBtnWithProductID:productId
                                         andUserID:userId
                                         andRoleID:roleId
                                       andCreditID:creditId ? creditId : roleId       //!< 如果没有creditID，此值应为 roleId
                                     andServerCode:servercode
                                         andRemark:remark
                                      andRoleLevel:roleLevel
                                       andRoleName:roleName
                                        ServerName:serverName
                                         cpOrderId:cpOrderId
                                             extra:extra
     ];
}


//购买中心
+(GamaIapData *)iapDataObject
{
    return [GamaIapData defaultData];
}

/*应用进入后台*/
+(void)applicationDidEnterBackground
{
    [GAMA_IAP_LOG applicationDidEnterBackground];
}

/*应用从后台到前端*/
+(void)applicationDidBecomeActive
{
    [GAMA_IAP_LOG applicationDidBecomeActive];
}

@end
