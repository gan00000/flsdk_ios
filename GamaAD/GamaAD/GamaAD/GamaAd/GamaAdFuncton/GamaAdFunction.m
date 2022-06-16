
#import "GamaAdFunction.h"
#import "GamaAdPort.h"

@implementation GamaAdFunction

static NSString *startTime = nil;
static NSString *cookieValue = nil;
static NSString *gameUrlCallBack = nil;

+ (void)initialize
{
    startTime = [GamaFunction getTimeStamp].copy;
    
    gameUrlCallBack = [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)].copy;
    
    [self getURLScheme:gameUrlCallBack isPrefix:NO];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [_adjustDic release];
    [super dealloc];
}

+ (NSString *)time
{
    NSDate * nowDate=[NSDate date];
    NSDateFormatter * dateFormatter=[[[NSDateFormatter alloc] init]autorelease];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    NSString *  locationString=[dateFormatter stringFromDate:nowDate];
    return locationString;
}

+ (BOOL)startThirdAd
{
    if (![[NSUserDefaults standardUserDefaults] boolForKey:GAMA_THIRD_AD_USERDEFAULT_KEY]) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:GAMA_THIRD_AD_USERDEFAULT_KEY];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return YES;
    }
    return NO;
}

+ (BOOL)startAd
{
    NSString * startTime=[GamaFunction getTimeStamp];
    
    //统一的标记
    if (![[NSUserDefaults standardUserDefaults] boolForKey:GAMA_AD_USERDEFAULT_KEY])
    {
        [self startAdWithDomainName:SDKConReaderGetString(GAMA_AD_DOMAIN_NAME) andStartTime:startTime];
        return YES;
    }
    return NO;
}

+ (void)startAdWithDomainName:(NSString *)domainName andStartTime:(NSString *)startTime
{
    NSDictionary *dic = @{
                              @"gameCode"       : [NSString stringWithFormat:@"%@" ,SDKConReaderGetString(SDK_GAME_CODE)],
                          };
    
    NSString *adDomainProj = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_AD_DOMAIN_NAME),SDKConReaderGetString(GAMA_AD_PROGRAM_NAME)];


    [GamaRequestor requestByParams:dic
                   requestDomain:adDomainProj
             requestSecondDomain:adDomainProj
                      retryTimes:3
                  isReqestByPost:YES
               ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
                   
                   
                   NSString * code = resultJsonDic[@"code"];
                   if (code.intValue == 1000)
                   {
                       [[NSUserDefaults standardUserDefaults] setBool:YES forKey:GAMA_AD_USERDEFAULT_KEY];
                       [[NSUserDefaults standardUserDefaults] synchronize];
                   }
                   
               }];
}


+ (BOOL)handleURL:(NSURL *)url
{    
    NSString *URLStr = url.description;
    if ([URLStr rangeOfString:gameUrlCallBack].location != NSNotFound) {
        
        NSString *typeParam = [self getParamStr:URLStr andKey:@"type"];
        
        if (![typeParam isEqualToString:@"s2sAD"]) {
            return NO;
        }
        
        NSString *cookieParam = [self getParamStr:URLStr andKey:@"cookieValue"];
        
        if (cookieParam) {
            cookieValue = cookieParam.copy;
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
    NSString *showTips = [NSString stringWithFormat:@"[GamaAd log] 请在URL Schemes 配置: %@",urlScheme];
    [AlertUtil showAlertWithMessage:showTips];
    return nil;
}

//跳转到浏览器请求cookies
+ (void)requestCookieWithDomain:(NSString *)domainName
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:
                                                                     @"%@%@?callback=%@",domainName,
                                                                     SDKConReaderGetString(GAMA_AD_CALLBACK_PROGRAM_NAME),
                                                                     gameUrlCallBack]]];
}

+ (GamaParameterType)isEmptyStrings:(NSString *)strings, ...
{
    NSUInteger totalParameterCount = 0;
    NSUInteger nonnullParameterCount = 0;
    va_list _arguments;
    va_start(_arguments, strings);
    for (NSString *key = strings; ![key isEqual:[NSNull null]]; key = (__bridge NSString *)va_arg(_arguments, void *)) {
        totalParameterCount++;
        NSString *tempKey = [key stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        if (!(tempKey == nil || [tempKey isEqualToString:@""])) {
            // 统计传入的非空参数
            nonnullParameterCount++;
        }
    }
    va_end(_arguments);
    if (nonnullParameterCount == totalParameterCount) {
        return GamaParameterTypeComplete;
    } else if (nonnullParameterCount > 0) {
        return GamaParameterTypeBroken;
    }
    return GamaParameterTypeNull;
}

@end
