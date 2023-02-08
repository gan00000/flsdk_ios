
#import "VariousanTime.h"
#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/ASIdentifierManager.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAnalytics/FIRAnalytics.h>

#import <FBSDKCoreKit/FBSDKCoreKit.h>

#import <AppsFlyerLib/AppsFlyerLib.h>

#import "SdkHeader.h"

@implementation VariousanTime


+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSString *afDevKey = [SDKRES getAfDevKey_MMMethodMMM];
            NSString * touchesL = @"sultry";
             while (touchesL.length > 116) { break; }
    NSString *appId = [SDKRES getAppId_MMMethodMMM];
            double w_managerW = 6158.0;
             while (@(w_managerW).integerValue < 42) { break; }
    SDK_LOG(@"afDevKey:%@,appId=%@",afDevKey,appId);
    if ([GeoallyKin isNotEmpty_MMMethodMMM:afDevKey] && [GeoallyKin isNotEmpty_MMMethodMMM:appId]) {
        
        if ([SDKRES isAdDebug_MMMethodMMM]) {
            [AppsFlyerLib shared].isDebug = YES;
        }
        [[AppsFlyerLib shared] setAppsFlyerDevKey:afDevKey];
            NSInteger withproductO = 5097;
             if (@(withproductO).doubleValue <= 156) {}
        [[AppsFlyerLib shared] setAppleAppID:appId];
        
    }
   
    return YES;
}



+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    [[AppsFlyerLib shared] handleOpenURL:url sourceApplication:sourceApplication];
            NSString * interface6 = @"membrane";
             if (interface6.length > 173) {}
    return YES;
}


+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options{
    [[AppsFlyerLib shared] handleOpenUrl:url options:options];
            double tranG = 1984.0;
             while (@(tranG).longLongValue == 24) { break; }
    return YES;
}

+(NSDictionary *)checkInstancetypeStoreSelectOtherResource:(NSInteger)webShared model:(NSString *)model boardView:(Boolean)boardView {
    NSMutableDictionary * starMyopicInnocent = [NSMutableDictionary dictionaryWithObject:@(986)forKey:@"outshinePursuantRhythm"];

    return starMyopicInnocent;

}






+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type{

         {
    [self checkInstancetypeStoreSelectOtherResource:8601 model:@"grow" boardView:YES];

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

+(double)perfomHitNotificationSaving:(NSString *)workUpdate_h8 requestRect:(NSDictionary *)requestRect namedAdapt:(NSArray *)namedAdapt {
     double animationBind = 6791.0;
     float progress = 7147.0;
    double disorientedRejectProcession = 0;
    animationBind = animationBind / MAX(progress, 1);
    disorientedRejectProcession /= MAX(animationBind, 1);
         int x_9 = (int)animationBind;
     x_9 *= 94;
    progress += 48;
    disorientedRejectProcession /= MAX(progress, 1);
         int tmp_c_78 = (int)progress;
     if (tmp_c_78 <= 21) {
          }
     else if (tmp_c_78 == 906) {
          tmp_c_78 /= 20;
     
     }
     else {
          tmp_c_78 *= 90;

     }

    return disorientedRejectProcession;

}






+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type{

         {
    [self perfomHitNotificationSaving:@"ban" requestRect:[NSDictionary dictionaryWithObjectsAndKeys:@"mockery",@(971), @"through",@(386), nil] namedAdapt:@[@(631), @(662), @(823)]];

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
            NSArray * genericY = [NSArray arrayWithObjects:@(346), @(246), nil];
             if ([genericY containsObject:@"C"]) {}
            NSLog(@"idfa=%@",idfa);
        } else {
            NSLog(@"请在设置-隐私-广告中打开广告跟踪功能");
        }
    }
    
}




@end
