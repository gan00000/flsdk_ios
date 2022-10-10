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

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAnalytics/FIRAnalytics.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <AppsFlyerLib/AppsFlyerLib.h>

#import "SdkHeader.h"

@implementation AdDelegate

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
    NSString *appId = [SDKRES getAppId_MMMethodMMM];
    SDK_LOG(@"afDevKey:%@,appId=%@",afDevKey,appId);
    if ([StringUtil isNotEmpty_MMMethodMMM:afDevKey] && [StringUtil isNotEmpty_MMMethodMMM:appId]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {//是否开启debug
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];//QtrxWJpdhQVov9F8hwKD3o
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
    }
   
    return YES;
}

// Deep linking

// Open URI-scheme for iOS 9 and above
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    [[AppsFlyerLib shared] handleOpenUrl:url options:options];
    return YES;
}

// Open URI-scheme for iOS 8 and below
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    [[AppsFlyerLib shared] handleOpenURL:url sourceApplication:sourceApplication];
    return YES;
}

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application{
    
}


- (NSString *)causdoctorousGeneralion:(CGFloat)helier musty:(NSUInteger)musty
{
    return [NSString stringWithFormat:@"%@%@", @"officeature" , @"vect"]; 
}
- (CGFloat)shouldFig:(CGFloat)itselfition sellile:(BOOL)sellile governmently:(NSUInteger)governmently
{
    return 3469121 * 729585 + 2148244 ; 
}
- (CGFloat)enniaHormics
{
    return 124204 * 3417607 + 3409007 ; 
}
+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application{
    
    if (@available(iOS 14, *)) {
        
        if (![[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            [[AppsFlyerLib shared] waitForATTUserAuthorizationWithTimeoutInterval:60];
        }
        
        [[AppsFlyerLib shared] start];
        // iOS14及以上版本需要先请求权限
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            // 获取到权限后，依然使用老方法获取idfa
            if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
                NSLog(@"idfa=%@",idfa);
                
                //FB 从 iOS 14.5 开始，您需要设置 isAdvertiserTrackingEnabled，并在每次为设备授予与 Facebook 分享数据的权限时，做好记录。
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:YES];
                
//                [AlertUtil showAlertWithMessage_MMMethodMMM:[NSString stringWithFormat:@"idfa=%@",idfa]];
                
            } else {
                NSLog(@"请在设置-隐私-跟踪中允许App请求跟踪");
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:NO];
                
            }
            
        }];
        
    } else {
        // iOS14以下版本依然使用老方法
        // 判断在设置-隐私里用户是否打开了广告跟踪
        [[AppsFlyerLib shared] start];
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSLog(@"idfa=%@",idfa);
//            [AlertUtil showAlertWithMessage_MMMethodMMM:[NSString stringWithFormat:@"idfa=%@",idfa]];
        } else {
            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
        }
    }
    
}

+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type{
    
    @try {
        
        if (type & AdType_Appflyer) {
            [[AppsFlyerLib shared]  logEvent:eventName withValues:eventValues];
        }
        if (type & AdType_Firebase) {
            //firebase
            [FIRAnalytics logEventWithName:eventName parameters:eventValues];
        }
        if (type & AdType_FB) {
            
             //fb
            [[FBSDKAppEvents shared] logEvent:eventName parameters:eventValues];
        }
       
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
   
}

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type{
    
    @try {
        
        if (type & AdType_Appflyer) {
            SDK_LOG(@"logEventPurchaseValues af");
            [[AppsFlyerLib shared] logEvent:AFEventPurchase withValues: @{
                            AFEventParamRevenue  : @(mPayData.amount),
                            AFEventParamCurrency : @"USD",
                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                            AFEventParamContentId: mPayData.productId,
                            AFEventParamOrderId: mPayData.orderId,
                            @"platform"      : @"ios",
                            
            }];
            
        }
        if (type & AdType_Firebase) {
            //firebase
            SDK_LOG(@"logEventPurchaseValues firebase");
            [FIRAnalytics logEventWithName:kFIREventPurchase parameters:@{
                kFIRParameterItemID : mPayData.productId,
                //kFIRParameterPrice : @(mPayData.amount),
                kFIRParameterValue : @(mPayData.amount),
                kFIRParameterCurrency : @"USD",
                kFIRParameterTransactionID : mPayData.orderId,
                @"userId"      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                @"platform"      : @"ios",
                
            }];
        }
        if (type & AdType_FB) {
            
             //fb
            SDK_LOG(@"logEventPurchaseValues fb");
//            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:@"USD" parameters:@{
//                FBSDKAppEventParameterNameCurrency : @"USD",
//                FBSDKAppEventParameterNameOrderID : mPayData.orderId,
//                FBSDKAppEventParameterNameContentID : mPayData.productId,
//                @"userId"      : SDK_DATA.mLoginResponse.data.userId ?: @"",
//            }];
            
            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:@"USD"];

        }
       
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
   
}



//+ (void)logEventForFBWithEventName:(NSString *)eventName eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues{
//
//    @try {
//        //fb
//        [[FBSDKAppEvents shared] logEvent: eventName parameters:eventValues];
//
//    } @catch (NSException *exception) {
//        //[self _presentAlertWithException:exception andDictionary:dic];
//    }
//
//}

@end
