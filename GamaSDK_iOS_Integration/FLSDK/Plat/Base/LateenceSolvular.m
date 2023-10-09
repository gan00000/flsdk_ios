


#import "LateenceSolvular.h"
#import "MWSDK.h"
#import "ResHeader.h"
#import "CauseenneSper.h"
#import "EmesitionClausforgetary.h"
#import "SdkHeader.h"
#import "TransifySideatory.h"

#import "EffortoonOrexiular.h"
#import "AboveativeAudific.h"
#import "OrganizationOptim.h"
#import "HusbandicPotamtelevisionon.h"

#import <UserNotifications/UserNotifications.h>
#import <StoreKit/StoreKit.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import  <FirebaseMessaging/FIRMessaging.h>

#import "AFNetworkReachabilityManager.h"

@interface LateenceSolvular()<FIRMessagingDelegate, UNUserNotificationCenterDelegate>

@end


@implementation LateenceSolvular

+ (void)load    
{
    [super load];
    
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[LateenceSolvular share] sdk_application_MMMethodMMM:note.object didFinishLaunchingWithOptions:note.userInfo];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[LateenceSolvular share] sdk_applicationDidBecomeActive_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillTerminateNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[LateenceSolvular share] sdk_applicationWillTerminate_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[LateenceSolvular share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[LateenceSolvular share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillEnterForegroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[LateenceSolvular share] sdk_applicationWillEnterForeground_MMMethodMMM:note.object];
                                                      });
                                                  }];
}

+ (instancetype)share
{
    static LateenceSolvular *_share_sdk = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _share_sdk = [[LateenceSolvular alloc] init];
    });
    
    return _share_sdk;
}

#pragma mark - AFN提供的方法
- (void)afnReachability_MMMethodMMM {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        
        switch (status) {
            case AFNetworkReachabilityStatusNotReachable:
                SDK_LOG(@"AFNetworkReachability Not Reachable");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                SDK_LOG(@"AFNetworkReachability Reachable via WWAN");
            case AFNetworkReachabilityStatusReachableViaWiFi:
                SDK_LOG(@"AFNetworkReachability Reachable via WiFi");
            case AFNetworkReachabilityStatusUnknown:
            default:
                SDK_LOG(@"AFNetworkReachability Unknown");
            {
                
                [EmesitionClausforgetary logServerWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN];
                [EmesitionClausforgetary logServerWithEventName_Install_MMMethodMMM];
                
                [TransifySideatory getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
                    
                } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
                    
                }];
                
                [TransifySideatory getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {

                } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {

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
    
    [EffortoonOrexiular application:application didFinishLaunchingWithOptions:launchOptions];
    [AboveativeAudific application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    [HusbandicPotamtelevisionon application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    [EmesitionClausforgetary logServerWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN];
    [EmesitionClausforgetary logServerWithEventName_Install_MMMethodMMM];
    
    [EmesitionClausforgetary logWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
    
    [TransifySideatory getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
        
    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        
    }];
    
    [TransifySideatory getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {

    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {

    }];
    
    
    
    SDK_LOG(@"dispatch_after afnReachability start");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        SDK_LOG(@"time to afnReachability start");
        [self afnReachability_MMMethodMMM];
        
     });

}


- (void)sdk_applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
    
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
    [HusbandicPotamtelevisionon applicationDidBecomeActive_MMMethodMMM:application];
    
    [EffortoonOrexiular applicationDidBecomeActive_MMMethodMMM:application];
    
}

- (void)sdk_applicationWillTerminate_MMMethodMMM:(UIApplication *)application
{
    [EffortoonOrexiular applicationWillTerminate_MMMethodMMM:application];
}

- (void)sdk_applicationDidEnterBackground_MMMethodMMM:(UIApplication *)application
{
    
}

- (void)sdk_applicationWillEnterForeground_MMMethodMMM:(UIApplication *)application
{
   
}

#pragma mark FIRMessagingDelegate代理

- (void)messaging:(FIRMessaging *)messaging didReceiveRegistrationToken:(NSString *)fcmToken{   
    SDK_LOG(@"didReceiveRegistrationToken fcmToken = %@",fcmToken);
    NSLog(@"FCM registration token: %@", fcmToken);
    
    
    
}


#pragma mark UNUserNotificationCenterDelegate代理

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler   
{
    NSDictionary *userInfo = notification.request.content.userInfo;

      
      

      

      
    SDK_LOG(@"willPresentNotification = %@", userInfo);

      
      completionHandler(UNNotificationPresentationOptionBadge | UNNotificationPresentationOptionAlert);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler{    
    
    SDK_LOG(wwwww_tag_wwwww_didReceiveNotificationResponse);
    NSDictionary *userInfo = response.notification.request.content.userInfo;
    NSString *kGCMMessageIDKey = wwwww_tag_wwwww_gcm_message_id;
    
      if (userInfo[kGCMMessageIDKey]) {
        NSLog(@"Message ID: %@", userInfo[kGCMMessageIDKey]);
      }

      
      

      
      NSLog(@"%@", userInfo);

    
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
      completionHandler();
    
}



@end
