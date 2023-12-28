


#import "BaseSDK.h"
#import "MWSDK.h"
#import "ResHeader.h"
#import "SUtil.h"
#import "AdLogger.h"
#import "SdkHeader.h"
#import "SDKRequest.h"

#import "FBDelegate.h"
#import "FirebaseDelegate.h"
#import "LineDelegate.h"
#import "AdDelegate.h"

#import <UserNotifications/UserNotifications.h>
#import <StoreKit/StoreKit.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import  <FirebaseMessaging/FIRMessaging.h>

#import "AFNetworkReachabilityManager.h"

@interface BaseSDK()<FIRMessagingDelegate, UNUserNotificationCenterDelegate>

@end


@implementation BaseSDK

+ (void)load    
{
    [super load];
    
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_application_MMMethodMMM:note.object didFinishLaunchingWithOptions:note.userInfo];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationDidBecomeActive_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillTerminateNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationWillTerminate_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillEnterForegroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[BaseSDK share] sdk_applicationWillEnterForeground_MMMethodMMM:note.object];
                                                      });
                                                  }];
}

+ (instancetype)share
{
    static BaseSDK *_share_sdk = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _share_sdk = [[BaseSDK alloc] init];
    });
    
    return _share_sdk;
}

#pragma mark - AFN提供的方法
- (void)afnReachability_MMMethodMMM {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        
        switch (status) {
            case AFNetworkReachabilityStatusNotReachable:
                SDK_LOG(wwwww_tag_wwwww_AFNetworkReachability_Not_Reachable);
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                SDK_LOG(wwwww_tag_wwwww_AFNetworkReachability_Reachable_via_WWAN);
            case AFNetworkReachabilityStatusReachableViaWiFi:
                SDK_LOG(wwwww_tag_wwwww_AFNetworkReachability_Reachable_via_WiFi);
            case AFNetworkReachabilityStatusUnknown:
            default:
                SDK_LOG(wwwww_tag_wwwww_AFNetworkReachability_Unknown);
            {
                
                [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN];
                [AdLogger logServerWithEventName_Install_MMMethodMMM];
                
                [SDKRequest getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
                    
                } errorBlock_MMMethodMMM:^(BJError *error) {
                    
                }];
                
                [SDKRequest getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {

                } errorBlock_MMMethodMMM:^(BJError *error) {

                }];
            }
                break;
        }
    }];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [[AFNetworkReachabilityManager sharedManager] startMonitoring];
        [[NSRunLoop currentRunLoop] run];
    });
}

#pragma mark - 生命周期接口（内部监听系统通知处理）
- (void)sdk_application_MMMethodMMM:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [FIRApp configure];
    [FIRMessaging messaging].delegate = self;
    
    
    
    if (@available(iOS 10.0, *)) {
        if ([UNUserNotificationCenter class] != nil) {
            
            
            [UNUserNotificationCenter currentNotificationCenter].delegate = self;
            UNAuthorizationOptions authOptions = UNAuthorizationOptionAlert | UNAuthorizationOptionSound | UNAuthorizationOptionBadge;
            [[UNUserNotificationCenter currentNotificationCenter] requestAuthorizationWithOptions:authOptions
                                                                                completionHandler:^(BOOL granted, NSError * _Nullable error) {
                
            }];
        } else {
            
            UIUserNotificationType allNotificationTypes = (UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge);
            UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:allNotificationTypes categories:nil];
            [application registerUserNotificationSettings:settings];
            
        }
        
        [application registerForRemoteNotifications];
        
    } else {
        
    }
    
    [FBDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    [FirebaseDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    [AdDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    [AdLogger logServerWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN];
    [AdLogger logServerWithEventName_Install_MMMethodMMM];
    
    [AdLogger logWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
    
    [SDKRequest getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
    }];
    
    [SDKRequest getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {

    } errorBlock_MMMethodMMM:^(BJError *error) {

    }];
    
    
    
    SDK_LOG(wwwww_tag_wwwww_dispatch_after_afnReachability_start);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        SDK_LOG(wwwww_tag_wwwww_time_to_afnReachability_start);
        [self afnReachability_MMMethodMMM];
        
     });
    
    [SDKRES logSdkResConfig_MMMethodMMM];

}


- (void)sdk_applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
    
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
    [AdDelegate applicationDidBecomeActive_MMMethodMMM:application];
    
    [FBDelegate applicationDidBecomeActive_MMMethodMMM:application];
    
}

- (void)sdk_applicationWillTerminate_MMMethodMMM:(UIApplication *)application
{
    [FBDelegate applicationWillTerminate_MMMethodMMM:application];
}

- (void)sdk_applicationDidEnterBackground_MMMethodMMM:(UIApplication *)application
{
    
}

- (void)sdk_applicationWillEnterForeground_MMMethodMMM:(UIApplication *)application
{
   
}

#pragma mark FIRMessagingDelegate代理

- (void)messaging:(FIRMessaging *)messaging didReceiveRegistrationToken:(NSString *)fcmToken{   
    SDK_LOG(wwwww_tag_wwwww_latafter_liveern,fcmToken);
    NSLog(wwwww_tag_wwwww_tra_hortative, fcmToken);
    
    
    
}


#pragma mark UNUserNotificationCenterDelegate代理

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler   
{
    NSDictionary *userInfo = notification.request.content.userInfo;

      
      

      

      
    SDK_LOG(wwwww_tag_wwwww_tournious_migrist, userInfo);

      
      completionHandler(UNNotificationPresentationOptionBadge | UNNotificationPresentationOptionAlert);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler{    
    
    SDK_LOG(wwwww_tag_wwwww_didReceiveNotificationResponse);
    NSDictionary *userInfo = response.notification.request.content.userInfo;
    NSString *kGCMMessageIDKey = wwwww_tag_wwwww_gcm_message_id;
    
      if (userInfo[kGCMMessageIDKey]) {
        NSLog(wwwww_tag_wwwww_ponddrawability_narrcentralette, userInfo[kGCMMessageIDKey]);
      }

      
      

      
      NSLog(@"%@", userInfo);

    
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
      completionHandler();
    
}



@end
