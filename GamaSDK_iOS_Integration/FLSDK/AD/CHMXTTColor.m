
#import "CHMXTTColor.h"
#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAnalytics/FIRAnalytics.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <AppsFlyerLib/AppsFlyerLib.h>

#import "SdkHeader.h"

@implementation CHMXTTColor


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *list = [SDKRES getAfDevKey_MMMethodMMM];
            double debugp = 3741.0;
             while (@(debugp).floatValue > 71) { break; }
    NSString *util = [SDKRES getAppId_MMMethodMMM];
            NSString * modityA = @"disrespect";
             if (modityA.length > 33) {}
    SDK_LOG(@"afDevKey:%@,util=%@",list,util);
    if ([CHMXTTImplGama isNotEmpty_MMMethodMMM:list] && [CHMXTTImplGama isNotEmpty_MMMethodMMM:util]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:list];
            Boolean removez = YES;
             while (!removez) { __asm__("NOP"); break; }
        [[AppsFlyerLib shared] setAppleAppID:util];
        
    }
   
    return YES;
}



+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application{
    
    if (@available(iOS 14, *)) {
        
        if (![[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            [[AppsFlyerLib shared] waitForATTUserAuthorizationWithTimeoutInterval:60];
        }
        
        [[AppsFlyerLib shared] start];
        
        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            
            if (status == ATTrackingManagerAuthorizationStatusAuthorized) {
                NSString *imp = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSString * toastA = @"toady";
             if (toastA.length > 13) {}
                NSLog(@"idfa=%@",imp);
                
                
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:YES];
                
                
            } else {
                NSLog(@"请在设置-隐私-跟踪中允许App请求跟踪");
                [FBSDKSettings.sharedSettings setAdvertiserTrackingEnabled:NO];
                
            }
            
        }];
        
    } else {
        
        
        [[AppsFlyerLib shared] start];
        if ([[ASIdentifierManager sharedManager] isAdvertisingTrackingEnabled]) {
            NSString *imp = [[ASIdentifierManager sharedManager].advertisingIdentifier UUIDString];
            NSDictionary * tableR = @{@"d":@"V", @"q":@"K"};
             if (tableR.count > 64) {}
            NSLog(@"idfa=%@",imp);
        } else {
            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
        }
    }
    
}


+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    [[AppsFlyerLib shared] handleOpenURL:url sourceApplication:sourceApplication];
            NSInteger k_hidel = 6808;
             for(NSInteger k_hidel_idx = 0; k_hidel_idx < @(k_hidel).intValue; k_hidel_idx += 5) { break; } 
    return YES;
}


+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application{
    
}

+(NSArray *)checkLaunchingToastBecomeShare:(NSArray *)should {
     NSInteger guest = 1413;
    NSMutableArray * stygianSpade = [NSMutableArray arrayWithCapacity:994];
    guest /= 11;
    [stygianSpade addObject: @(guest)];
         int tmp_f_23 = (int)guest;
     tmp_f_23 *= 59;

    return stygianSpade;

}






+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type{

         {
    [self checkLaunchingToastBecomeShare:@[@(567), @(586), @(71)]];

}

    
    @try {
        
        if (type & AdType_Appflyer) {
            [[AppsFlyerLib shared]  logEvent:eventName withValues:eventValues];
        }
        if (type & AdType_Firebase) {
            
            [FIRAnalytics logEventWithName:eventName parameters:eventValues];
        }
        if (type & AdType_FB) {
            
             
            [[FBSDKAppEvents shared] logEvent:eventName parameters:eventValues];
        }
       
        
    } @catch (NSException *exception) {
        
    }
   
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    [[AppsFlyerLib shared] handleOpenUrl:url options:options];
            NSDictionary * fileI = @{@"exaggerate":@(496)};
    return YES;
}

+(int)openMatchingDisable{
    int societyInstigateEffusion = 0;

    return societyInstigateEffusion;

}






+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type{

         {
    [self openMatchingDisable];

}

    
    @try {
        
        if (type & AdType_Appflyer) {
            SDK_LOG(@"logEventPurchaseValues af");
            [[AppsFlyerLib shared] logEvent:AFEventPurchase withValues: @{
                            AFEventParamRevenue  : @(mPayData.amount),
                            AFEventParamCurrency : wwwww_tag_wwwww_USD,
                            AFEventParamCustomerUserId : SDK_DATA.mLoginResponse.data.userId ?: @"",
                            AFEventParamContentId: mPayData.productId,
                            AFEventParamOrderId: mPayData.orderId,
                            wwwww_tag_wwwww_platform      : wwwww_tag_wwwww_ios,
                            
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
       
        
    } @catch (NSException *exception) {
        
    }
   
}




@end
