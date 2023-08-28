

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

@implementation AdDelegate

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
    NSString *appId = [SDKRES getAppId_MMMethodMMM];
    SDK_LOG(@"afDevKey:%@,appId=%@",afDevKey,appId);
    if ([StringUtil isNotEmpty_MMMethodMMM:afDevKey] && [StringUtil isNotEmpty_MMMethodMMM:appId]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
    }
    
    [[AdjustDelegate share] application:application didFinishLaunchingWithOptions:launchOptions];
   
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
                NSLog(@"idfa=%@",idfa);
                
                
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:YES];
                
                
            } else {
                NSLog(@"请在设置-隐私-跟踪中允许App请求跟踪");
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:NO];
                
            }
            
        }];
        
    } else {
        
        
        [[AppsFlyerLib shared] start];
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *idfa = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSLog(@"idfa=%@",idfa);
        } else {
            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
        }
    }
    
}

+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type{
    
    @try {
        SDK_LOG(@"logEventWithEventName=%@", eventName);
        if (type & AdType_Appflyer) {
            [[AppsFlyerLib shared] logEvent:eventName withValues:eventValues];
        }
        if (type & AdType_Firebase) {
            
            [FIRAnalytics logEventWithName:eventName parameters:eventValues];
        }
        if (type & AdType_FB) {
            
             
            [[FBSDKAppEvents shared] logEvent:eventName parameters:eventValues];
        }
       
        
        [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:eventName eventValues_MMMethodMMM:eventValues];
        
    } @catch (NSException *exception) {
        
    }
   
}

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type{
    
    if (!mPayData.orderId || [@"" isEqualToString:mPayData.orderId]){
        return;
    }
    
    @try {
        
        if (type & AdType_Appflyer) {
            SDK_LOG(@"logEventPurchaseValues af");
            [[AppsFlyerLib shared] logEvent:AFEventPurchase withValues: @{
                            AFEventParamRevenue  : @(mPayData.amount),
                            AFEventParamCurrency : wwwww_tag_wwwww_USD,
                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                            AFEventParamContentId: mPayData.productId ?: @"",
                            AFEventParamOrderId: mPayData.orderId ?: @"",
                            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
                            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
                            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                            
            }];
            
        }
        if (type & AdType_Firebase) {
            
            SDK_LOG(@"logEventPurchaseValues firebase");
            [FIRAnalytics logEventWithName:kFIREventPurchase parameters:@{
                kFIRParameterItemID : mPayData.productId,
                
                kFIRParameterValue : @(mPayData.amount),
                kFIRParameterCurrency : wwwww_tag_wwwww_USD,
                kFIRParameterTransactionID : mPayData.orderId,
                wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                
            }];
        }
        if (type & AdType_FB) {
            
             
            SDK_LOG(@"logEventPurchaseValues fb");
            
            [[FBSDKAppEvents shared] logPurchase:mPayData.amount currency:wwwww_tag_wwwww_USD];

        }
        
        
        NSDictionary *eventValues = @{
            @"usdPrice"  : @(mPayData.amount),
            @"currency" : wwwww_tag_wwwww_USD,
            wwwww_tag_wwwww_productId: mPayData.productId ?: @"",
            wwwww_tag_wwwww_userId: mPayData.orderId ?: @"",
            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
            
        };
        [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:@"AJ_Purchase" eventValues_MMMethodMMM:eventValues revenue:mPayData.amount transactionId:mPayData.transactionId];
       
        GameUserModel *gGameUserModel = [[ConfigCoreUtil share] getGameUserInfo_MMMethodMMM:SDK_DATA.mLoginResponse.data.userId];
        if(gGameUserModel){
            if(gGameUserModel.isPay){
                
                if(gGameUserModel.isSecondPay){
                    
                }else{
                    gGameUserModel.isSecondPay = YES;
                    [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:gGameUserModel];
                    
                    SDK_LOG(@"logEvent firebase second_purchase");
                    [FIRAnalytics logEventWithName:@"second_purchase" parameters:@{
                        kFIRParameterItemID : mPayData.productId,
                        
                        kFIRParameterValue : @(mPayData.amount),
                        kFIRParameterCurrency : wwwww_tag_wwwww_USD,
                        kFIRParameterTransactionID : mPayData.orderId,
                        wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                        wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                        
                    }];
                    
                    
                    
                    SDK_LOG(@"logEvent af second_purchase");
                    [[AppsFlyerLib shared] logEvent:@"second_purchase" withValues: @{
                                    AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                    AFEventParamContentId: mPayData.productId ?: @"",
                                    AFEventParamOrderId: mPayData.orderId ?: @"",
                                    wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                                    wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
                                    wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
                                    wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                    wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                                    
                    }];
                    
                    SDK_LOG(@"logEvent fb second_purchase");
                    [[FBSDKAppEvents shared] logEvent:@"second_purchase" parameters: @{
                                                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                                            AFEventParamContentId: mPayData.productId ?: @"",
                                                            AFEventParamOrderId: mPayData.orderId ?: @"",
                                                            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                                                            wwwww_tag_wwwww_uniqueId      :  [SUtil getGamaUUID_MMMethodMMM]? : @"",
                                                            wwwww_tag_wwwww_time         :[SUtil getTimeStamp_MMMethodMMM],
                                                            wwwww_tag_wwwww_userId      : SDK_DATA.mLoginResponse.data.userId ?: @"",
                                                            wwwww_tag_wwwww_serverTimestamp      : mPayData.timestamp ?: @"",
                                                            
                                            }];
                    
                    [[AdjustDelegate share] logEventWithEventName_MMMethodMMM:@"second_purchase" eventValues_MMMethodMMM:eventValues revenue:mPayData.amount transactionId:mPayData.transactionId];
                    
                }
                
            }else{
                gGameUserModel.isPay = YES;
                gGameUserModel.firstPayTime = [SUtil getTimeStamp_MMMethodMMM];
                if([[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.firstPayTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"] isEqualToString:[SUtil getDateStringWithTimeStr_MMMethodMMM:gGameUserModel.regTime dateFormat_MMMethodMMM:@"yyyy-MM-dd"]]){
                    gGameUserModel.isRegDayPay = YES;
                }else{
                    gGameUserModel.isRegDayPay = NO;
                }
                [[ConfigCoreUtil share] updateGameUserInfo_MMMethodMMM:gGameUserModel];
            }
        }
        
    } @catch (NSException *exception) {
        
    }
   
}




@end
