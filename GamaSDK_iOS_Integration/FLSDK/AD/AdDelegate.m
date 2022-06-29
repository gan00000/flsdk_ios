//
//  AFDelegate.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/28.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "AdDelegate.h"
#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>
#import "SdkHeader.h"

@implementation AdDelegate

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey];
    NSString *appId = [SDKRES getAppId];
    SDK_LOG(@"afDevKey:%@,appId=%@",afDevKey,appId);
    if ([StringUtil isNotEmpty:afDevKey] && [StringUtil isNotEmpty:appId]) {
        
        [AppsFlyerLib shared].isDebug = YES;
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];//QtrxWJpdhQVov9F8hwKD3o
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
    }
   
    return YES;
}

+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    
    return YES;
}
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    return YES;
}

+ (void)applicationWillTerminate:(UIApplication *)application{
    
}

+ (void)applicationDidBecomeActive:(UIApplication *)application{
    
    if (@available(iOS 14, *)) {
        
//        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
//        }else{
//        }
        [[AppsFlyerLib shared] waitForATTUserAuthorizationWithTimeoutInterval:60];
        [[AppsFlyerLib shared] start];
        // iOS14及以上版本需要先请求权限
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            // 获取到权限后，依然使用老方法获取idfa
            if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
                NSLog(@"idfa=%@",idfa);
            } else {
                NSLog(@"请在设置-隐私-跟踪中允许App请求跟踪");
            }
            
        }];
    } else {
        // iOS14以下版本依然使用老方法
        // 判断在设置-隐私里用户是否打开了广告跟踪
        [[AppsFlyerLib shared] start];
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSLog(@"idfa=%@",idfa);
        } else {
            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
        }
    }
    
}


+ (void)logEventWithEventName:(NSString *)eventName eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues{
    
    [[AppsFlyerLib shared]  logEvent:eventName withValues:eventValues];
}

@end
