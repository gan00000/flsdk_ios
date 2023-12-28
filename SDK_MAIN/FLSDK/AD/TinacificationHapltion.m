

#import "TinacificationHapltion.h"
#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAnalytics/FIRAnalytics.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <AppsFlyerLib/AppsFlyerLib.h>

#import "SdkHeader.h"
#import "PickLithard.h"

#import "MWSDK.h"

@implementation TinacificationHapltion

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
    NSString *appId = [SDKRES getAppId_MMMethodMMM];
    SDK_LOG(wwwww_tag_wwwww_trus_oligo,afDevKey,appId);
    if ([VentlongonDifficult isNotEmpty_MMMethodMMM:afDevKey] && [VentlongonDifficult isNotEmpty_MMMethodMMM:appId]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
    }
    
    [[PickLithard share] application:application didFinishLaunchingWithOptions:launchOptions];
   
    return YES;
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    [[AppsFlyerLib shared] handleOpenUrl:url options:options];
    return YES;
}

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
        
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            
            if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
                NSLog(wwwww_tag_wwwww_precice_putenne,idfa);
                
                
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:YES];
                
                
            } else {
                NSLog(wwwww_tag_wwwww_hortoon_nuptianeity);
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:NO];
                
            }
            
        }];
        
    } else {
        
        
        [[AppsFlyerLib shared] start];
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSLog(wwwww_tag_wwwww_precice_putenne,idfa);
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
            
            [FIRAnalytics logEventWithName:eventName parameters:eventValues];
        }
        if (type & AdType_FB) {
            
             
            [[FBSDKAppEvents shared] logEvent:eventName parameters:eventValues];
        }
       
        
        [[PickLithard share] logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventValues];
        
    } @catch (NSException *exception) {
        
    }
   
}

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type name_MMMethodMMM:(NSString *)eventName{
    
    if (!mPayData.orderId || [@"" isEqualToString:mPayData.orderId]){
        return;
    }
    
    @try {
        
        if (type & AdType_Appflyer) {
            
            if([VentlongonDifficult isEmpty_MMMethodMMM:eventName]){
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
                            wwwww_tag_wwwww_uniqueId      :  [CollectionDoloroant getGamaUUID_MMMethodMMM]? : @"",
                            wwwww_tag_wwwww_time         :[CollectionDoloroant getTimeStamp_MMMethodMMM],
                            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse_MMMPRO.data.userId ?: @"",
                            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                            
            }];
            
        }
        if (type & AdType_Firebase) {
            
            if([VentlongonDifficult isEmpty_MMMethodMMM:eventName]){
                eventName = kFIREventPurchase;
            }
            SDK_LOG(wwwww_tag_wwwww_blood_mic, eventName);
            [FIRAnalytics logEventWithName:eventName parameters:@{
                kFIRParameterItemID : mPayData.productId,
                
                kFIRParameterValue : @(mPayData.amount),
                kFIRParameterCurrency : wwwww_tag_wwwww_USD,
                kFIRParameterTransactionID : mPayData.orderId,
                wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse_MMMPRO.data.userId ?: @"",
                wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                
            }];
            
        }
        if (type & AdType_FB) {
            
             
            SDK_LOG(wwwww_tag_wwwww_logEventPurchaseValues_fb);
            

        }
        
        
        
    } @catch (NSException *exception) {
        
    }
   
}




@end
