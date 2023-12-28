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
#import "AdjustDelegate.h"

#import "MWSDK.h"

@implementation AdDelegate

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
    NSString *appId = [SDKRES getAppId_MMMethodMMM];
    SDK_LOG(wwwww_tag_wwwww_trus_oligo,afDevKey,appId);
    if ([StringUtil isNotEmpty_MMMethodMMM:afDevKey] && [StringUtil isNotEmpty_MMMethodMMM:appId]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {//是否开启debug
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];//QtrxWJpdhQVov9F8hwKD3o
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
    }
    //adjust
    [[AdjustDelegate share] application:application didFinishLaunchingWithOptions:launchOptions];
   
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
                NSLog(wwwww_tag_wwwww_precice_putenne,idfa);
                
                //FB 从 iOS 14.5 开始，您需要设置 isAdvertiserTrackingEnabled，并在每次为设备授予与 Facebook 分享数据的权限时，做好记录。
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:YES];
                
//                [AlertUtil showAlertWithMessage_MMMethodMMM:[NSString stringWithFormat:wwwww_tag_wwwww_precice_putenne,idfa]];
                
            } else {
                NSLog(wwwww_tag_wwwww_hortoon_nuptianeity);
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:NO];
                
            }
            
        }];
        
    } else {
        // iOS14以下版本依然使用老方法
        // 判断在设置-隐私里用户是否打开了广告跟踪
        [[AppsFlyerLib shared] start];
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSLog(wwwww_tag_wwwww_precice_putenne,idfa);
//            [AlertUtil showAlertWithMessage_MMMethodMMM:[NSString stringWithFormat:wwwww_tag_wwwww_precice_putenne,idfa]];
        } else {
            NSLog(wwwww_tag_wwwww_florium_notise);
        }
    }
    
}

+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type{
    
    @try {
        SDK_LOG(wwwww_tag_wwwww_relationship_ostiist, eventName);
        if (type & AdType_Appflyer) {
            [[AppsFlyerLib shared] logEvent:eventName withValues:eventValues];
        }
        if (type & AdType_Firebase) {
            //firebase
            [FIRAnalytics logEventWithName:eventName parameters:eventValues];
        }
        if (type & AdType_FB) {
            
             //fb
            [[FBSDKAppEvents shared] logEvent:eventName parameters:eventValues];
        }
       
        //adjust
        [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventValues];
        
    } @catch (NSException *exception) {
        //[self _presentAlertWithException:exception andDictionary:dic];
    }
   
}

//如果有传入了额外的eventName，就是用eventName，否则就是用第三方默认的
+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type name_MMMethodMMM:(NSString *)eventName{
    
    if (!mPayData.orderId || [@"" isEqualToString:mPayData.orderId]){//判断orderId存在才上报
        return;
    }
    
    @try {
        
        if (type & AdType_Appflyer) {
            
            if([StringUtil isEmpty_MMMethodMMM:eventName]){
                eventName = AFEventPurchase;
            }
            
            SDK_LOG(wwwww_tag_wwwww_quesitwindowence_tendaceous, eventName);
            
            [[AppsFlyerLib shared] logEvent:eventName withValues: @{
                            AFEventParamRevenue  : @(mPayData.amount),
                            AFEventParamCurrency : wwwww_tag_wwwww_USD,
                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse_MMMPRO.data.userId ?: @"",
                            AFEventParamContentId: mPayData.productId ?: @"",
                            AFEventParamOrderId: mPayData.orderId ?: @"",
                            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
                            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
                            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse_MMMPRO.data.userId ?: @"",
                            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                            
            }];
            
        }
        if (type & AdType_Firebase) {
            
            if([StringUtil isEmpty_MMMethodMMM:eventName]){
                eventName = kFIREventPurchase;
            }
            SDK_LOG(wwwww_tag_wwwww_blood_mic, eventName);
            [FIRAnalytics logEventWithName:eventName parameters:@{
                kFIRParameterItemID : mPayData.productId,
                //kFIRParameterPrice : @(mPayData.amount),
                kFIRParameterValue : @(mPayData.amount),
                kFIRParameterCurrency : wwwww_tag_wwwww_USD,
                kFIRParameterTransactionID : mPayData.orderId,
                wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse_MMMPRO.data.userId ?: @"",
                wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                
            }];
            
        }
        if (type & AdType_FB) {
            
             //fb
            SDK_LOG(wwwww_tag_wwwww_logEventPurchaseValues_fb);
//            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:wwwww_tag_wwwww_USD parameters:@{
//                FBSDKAppEventParameterNameCurrency : wwwww_tag_wwwww_USD,
//                FBSDKAppEventParameterNameOrderID : mPayData.orderId,
//                FBSDKAppEventParameterNameContentID : mPayData.productId,
//                wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
//            }];
            
//            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:wwwww_tag_wwwww_USD];

        }
        
        //adjust
//        if([StringUtil isEmpty_MMMethodMMM:eventName]){
//            return;
//        }
//        NSDictionary *eventValues = @{
//            wwwww_tag_wwwww_usdPrice  : @(mPayData.amount),
//            wwwww_tag_wwwww_currency : wwwww_tag_wwwww_USD,
//            wwwww_tag_wwwww_productId: mPayData.productId ?: @"",
//            wwwww_tag_wwwww_orderId: mPayData.orderId ?: @"",
//            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
//            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
//            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
//            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse_MMMPRO.data.userId ?: @"",
//            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
//
//        };
//        [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventValues revenue:mPayData.amount transactionId:mPayData.transactionId];
        
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
