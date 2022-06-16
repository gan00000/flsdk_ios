//


#import "GamaBaseSDK.h"
#import "FLSDK.h"
#import "GamaCentreInfo.h"
#import "GamaFunction.h"
#import "SdkUserInfoModel.h"
#import "GamaTimer.h"
//#import "KRTwitterLogin.h"
#import "GamaAdInterface.h"
#import "GamaPhoneModel.h"
#import "GamaCommonHeader.h"
#import "SdkHeader.h"

#import "FBDelegate.h"

#import <StoreKit/StoreKit.h>
@implementation GamaBaseSDK

#pragma mark - 生命周期接口（内部监听系统通知处理）
+ (void)_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    // 广告初始化
//    [GamaAdPort start];
    
    // 储值初始化
//    [GamaIapFunctionPort startSDK];
    
    // LoginViewModel初始化
//    [GamaLoginViewModel model];
    
    // 获取手机区号
    [GamaPhoneModel requestPhoneNumberAreaCodes];
    //    [phoneModel release];
    
    //Facebook事件打点初始化
    [[GamaTimer shareInstance] gama_FBEventStartTimer];
    
    [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_OPEN parameters:nil];
    
//    [NSClassFromString(@"KRTwitterLogin") twitterFinishLaunching];
    [FBDelegate application:application didFinishLaunchingWithOptions:launchOptions];
}

+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    
//    // 广告工程openURL回调
//    [GamaAdPort handleADURL:url];
//    // 储值工程openURL回调
//    [GamaIapFunctionPort handleOpenIAPHistoryWithURL:url];
//    // 第三方登录openURL回调
//    [NSClassFromString(@"GamaFacebookPort") application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    [FBDelegate application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    return YES;
}

+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options
{
    return YES;
}

+ (void)_applicationDidBecomeActive:(UIApplication *)application
{
    // 应用每次启动时，将应用icon上的数字减1（前提是原本大于或等于1）
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
//    [GamaAdPort startWhenBecomeActive];
//
//    [GamaIapFunctionPort applicationDidBecomeActive];
//
//    [NSClassFromString(@"GamaFacebookPort") applicationDidBecomeActive:nil];
    
}

+ (void)_applicationWillTerminate:(UIApplication *)application
{
    [NSClassFromString(@"GamaFacebookPort") applicationWillTerminate:nil];
    
//    [[SKPaymentQueue defaultQueue] removeTransactionObserver:[GamaIapFunctionPort iapDataObject]];
}

+ (void)_applicationDidEnterBackground:(UIApplication *)application
{
//    [GamaIapFunctionPort applicationDidEnterBackground];
//    [GamaTimer reportExitEvent:GamaExitEventSourceBackground];
}

+ (void)_applicationWillEnterForeground:(UIApplication *)application
{
    if([SdkUserInfoModel shareInfoModel].userId){
        [GamaTimer setStartTimeStamp];
    }
}

#pragma mark DB : AD Purchases
+ (void)_in_app_purchases:(NSNotification *)note
{
    NSString *productID = note.userInfo[@"productID"] ? note.userInfo[@"productID"] : @"";
    NSString *currentLocalPrice = note.userInfo[@"currentLocalPrice"] ? note.userInfo[@"currentLocalPrice"] : @"";
    NSString *currencyCode = note.userInfo[@"currencyCode"] ? note.userInfo[@"currencyCode"] : @"";
    NSString *gamaUID = [SdkUserInfoModel shareInfoModel].userId? :@"";
    NSString *roleID = [SdkUserInfoModel shareInfoModel].roleID? :@"";
    
//    [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel
//                         eventName:GAMESWORD_EVENT_IN_APP_PURCHASES
//                       eventValues:@{@"productID":productID,
//                                     @"userId":gamaUID,
//                                     @"roleId":roleID,
//                                     @"currentLocalPrice":currentLocalPrice,
//                                     @"currencyCode":currencyCode}];
//
//    __block BOOL firstPay = YES;
//    NSArray *tempSaveGamaUID = [[NSUserDefaults standardUserDefaults] objectForKey:@"gamaEventSaveId"];
//    [tempSaveGamaUID enumerateObjectsUsingBlock:^(NSString *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        if ([obj isEqualToString:gamaUID]) { //如果该用户已经不是首次购买，则不上报
//            firstPay = NO;
//        }
//    }];
//    if (firstPay &&gamaUID.length >1 ) {
//        NSMutableArray *insertGamaUID = [NSMutableArray arrayWithArray:tempSaveGamaUID];
//        [insertGamaUID addObject:gamaUID];
//        [GamaAdPort reportEventChannel:GamaThirdAdvertisementAllChannel eventName:GAMESWORD_EVENT_FIRSTPAY eventValues:@{@"productID":productID,@"userId":gamaUID}];
//        [[NSUserDefaults standardUserDefaults] setObject:insertGamaUID forKey:@"gamaEventSaveId"];
//        [[NSUserDefaults standardUserDefaults] synchronize];
//    }
    
}

#pragma mark - 登录功能
+ (void)gamaLogin:(NSDictionary *)loginParameters
{
    
    //接著繼承...
}

+ (void)_gamaLoginSuccess:(BOOL) isRegister
{
    
    if (isRegister) {
        // 注册时广告跟踪
//        [GamaAdPort startWhenRegister];
    }
    // 登录时广告跟踪
//    [GamaAdPort startWhenLogin];
}

#pragma mark - 存储角色信息功能
+ (void)gamaRoleInfo:(NSDictionary *)roleInfoParams
{
    
}

#pragma mark - 储值功能
/**
 @abstract      储值功能
 */
+ (void)gamaPay:(NSString *)productId
      cpOrderId:(NSString *)cpOrderId
          extra:(NSString *)extra
{
    NSString *localUid      = [SdkUserInfoModel shareInfoModel].userId;
    NSString *tmpRoleID     = [SdkUserInfoModel shareInfoModel].roleID;
    NSString *tmpServerCode = [SdkUserInfoModel shareInfoModel].serverCode;
    NSString *tmpServerName = [SdkUserInfoModel shareInfoModel].serverName;
    NSString *tmpLevel      = [SdkUserInfoModel shareInfoModel].roleLevel;
    NSString *tmpRoleName   = [SdkUserInfoModel shareInfoModel].roleName;
    
    //兼容roleName和level为可选。兼容
    tmpRoleName             = (!tmpRoleName || [tmpRoleName isEqualToString:@""]) ? @"noneRoleName" : tmpRoleName;
    tmpLevel                = (!tmpLevel || [tmpLevel isEqualToString:@""]) ? @"noneLevel" : tmpLevel;
    tmpServerName           = tmpServerName ? tmpServerName : @"";
    
//    [GamaIapFunctionPort   userBuyProductWithProductId:productId
//                                                userId:localUid
//                                                roleId:tmpRoleID
//                                              creditId:tmpRoleID
//                                            serverCode:tmpServerCode
//                                                remark:@""
//                                             roleLevel:tmpLevel
//                                              roleName:tmpRoleName
//                                            serverName:tmpServerName
//                                             cpOrderId:cpOrderId
//                                                 extra:extra];
//    
//    SDK_LOG(@"储值接口传入的参数 ：productid : %@ servercode : %@ servername : %@ roleid : %@ rolelevel : %@ rolename : %@  , cpOrderId : %@ , extra : %@",
//            productId,tmpServerCode,tmpServerName,tmpRoleID,tmpLevel,tmpRoleName,cpOrderId,extra);
    
}

@end
