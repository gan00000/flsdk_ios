//


#import "BaseSDK.h"
#import "FLSDK.h"
#import "ResHeader.h"
#import "SUtil.h"
#import "AdLogger.h"
#import "SdkHeader.h"
#import "SDKRequest.h"

#import "FBDelegate.h"
#import "FirebaseDelegate.h"
#import "LineDelegate.h"
#import "AdDelegate.h"
#import "EventHeader.h"
#import "AdUtil.h"
#import <StoreKit/StoreKit.h>

@implementation BaseSDK

#pragma mark - 生命周期接口（内部监听系统通知处理）
+ (void)_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    // 广告初始化
    
    [AdDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    
    [SDKRequest getSdkConfigWithSuccessBlock:^(id responseData) {
        
    } errorBlock:^(BJError *error) {
        
    }];
    
    //Facebook事件打点初始化
//    [[GamaTimer shareInstance] gama_FBEventStartTimer];
    
    [FBDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    [FirebaseDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    
    [AdLogger logWithEventName:AD_EVENT_APP_OPEN parameters:nil];
    
}


+ (void)_applicationDidBecomeActive:(UIApplication *)application
{
    // 应用每次启动时，将应用icon上的数字减1（前提是原本大于或等于1）
//    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
//        --[UIApplication sharedApplication].applicationIconBadgeNumber;
//    }
    
    [AdDelegate applicationDidBecomeActive:application];
    
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
