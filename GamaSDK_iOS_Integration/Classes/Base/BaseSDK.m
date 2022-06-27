//


#import "BaseSDK.h"
#import "FLSDK.h"
#import "ConfigHeader.h"
#import "SUtil.h"
#import "GamaAdInterface.h"
#import "GamaPhoneModel.h"
#import "GamaCommonHeader.h"
#import "SdkHeader.h"
#import "SDKRequest.h"

#import "FBDelegate.h"
#import "FirebaseDelegate.h"
#import "LineDelegate.h"

#import <StoreKit/StoreKit.h>
@implementation BaseSDK

#pragma mark - 生命周期接口（内部监听系统通知处理）
+ (void)_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    // 广告初始化
//    [GamaAdPort start];
    
    // 储值初始化
//    [GamaIapFunctionPort startSDK];
    
    // LoginViewModel初始化
//    [GamaLoginViewModel model];
    
    [SDKRequest getSdkConfigWithSuccessBlock:^(id responseData) {
        
    } errorBlock:^(BJError *error) {
        
    }];
    
    //Facebook事件打点初始化
//    [[GamaTimer shareInstance] gama_FBEventStartTimer];
    
    [GamaAdInterface allEventReportWithEventName:GAMESWORD_EVENT_OPEN parameters:nil];
    
//    [NSClassFromString(@"KRTwitterLogin") twitterFinishLaunching];
    [FBDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    [FirebaseDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    
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
    
    [FBDelegate applicationDidBecomeActive:application];
    
}

+ (void)_applicationWillTerminate:(UIApplication *)application
{
    [FBDelegate applicationWillTerminate:application];
}

+ (void)_applicationDidEnterBackground:(UIApplication *)application
{
//    [GamaIapFunctionPort applicationDidEnterBackground];
//    [GamaTimer reportExitEvent:GamaExitEventSourceBackground];
    
}

+ (void)_applicationWillEnterForeground:(UIApplication *)application
{
   
}

@end
