//


#import "BaseSDK.h"
#import "MWSDK.h"
#import "ResHeader.h"
#import "MCoolFishResponse.h"
#import "MCoolFishCore.h"
#import "SdkHeader.h"
#import "MCoolFishWithCommon.h"

#import "MCoolFishServicePassword.h"
#import "MCoolFishEncodingWelcome.h"
#import "MCoolFishFiled.h"
#import "MCoolFishRameworkTerms.h"

#import <UserNotifications/UserNotifications.h>
#import <StoreKit/StoreKit.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import  <FirebaseMessaging/FIRMessaging.h>

@interface BaseSDK()<FIRMessagingDelegate, UNUserNotificationCenterDelegate>

@end


@implementation BaseSDK

+ (void)load    //system_method
{
    [super load];
    
    //自动调用系统状态切换
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


#pragma mark - 生命周期接口（内部监听系统通知处理）
- (void)sdk_application_MMMethodMMM:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    SDK_LOG_FILE_FUNCTION(wwwww_tag_wwwww_didFinishLaunchingWithOptions);
    
    [MCoolFishCore logServerWithEventName_Install_MMMethodMMM];//发送事件到日志服务器
    
    // 广告初始化
    
    [MCoolFishRameworkTerms application:application didFinishLaunchingWithOptions:launchOptions];
    
    [MCoolFishWithCommon getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
        
    } errorBlock_MMMethodMMM:^(MCoolFishAlert *error) {
        
    }];
    
    [MCoolFishWithCommon getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {

    } errorBlock_MMMethodMMM:^(MCoolFishAlert *error) {

    }];
    
    //Facebook事件打点初始化
//    [[GamaTimer shareInstance] gama_FBEventStartTimer];
    
    [MCoolFishServicePassword application:application didFinishLaunchingWithOptions:launchOptions];
    [MCoolFishEncodingWelcome application:application didFinishLaunchingWithOptions:launchOptions];
    
    [MCoolFishCore logWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
    
    [FIRApp configure];
    [FIRMessaging messaging].delegate = self;
    
    //注册远程通知。这显示了第一次运行时的权限对话框to
    //在更合适的时间显示对话框，相应移动此注册。
    if (@available(iOS 10.0, *)) {
        if ([UNUserNotificationCenter class] != nil) {
            // iOS 10 or later
            // For iOS 10 display notification (sent via APNS)
            [UNUserNotificationCenter currentNotificationCenter].delegate = self;
            UNAuthorizationOptions authOptions = UNAuthorizationOptionAlert | UNAuthorizationOptionSound | UNAuthorizationOptionBadge;
            [[UNUserNotificationCenter currentNotificationCenter] requestAuthorizationWithOptions:authOptions
                                                                                completionHandler:^(BOOL granted, NSError * _Nullable error) {
                // ...
            }];
        } else {
            // iOS 10 notifications aren't available; fall back to iOS 8-9 notifications.
            UIUserNotificationType allNotificationTypes = (UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge);
            UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:allNotificationTypes categories:nil];
            [application registerUserNotificationSettings:settings];
            
        }
        
        [application registerForRemoteNotifications];
    } else {
        // Fallback on earlier versions
    }

}


- (void)sdk_applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
    // 应用每次启动时，将应用icon上的数字减1（前提是原本大于或等于1）
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
    [MCoolFishRameworkTerms applicationDidBecomeActive_MMMethodMMM:application];
    
    [MCoolFishServicePassword applicationDidBecomeActive_MMMethodMMM:application];
    
}

- (void)sdk_applicationWillTerminate_MMMethodMMM:(UIApplication *)application
{
    [MCoolFishServicePassword applicationWillTerminate_MMMethodMMM:application];
}

- (void)sdk_applicationDidEnterBackground_MMMethodMMM:(UIApplication *)application
{
//    [GamaIapFunctionPort applicationDidEnterBackground];
//    [GamaTimer reportExitEvent:GamaExitEventSourceBackground];
    
}

- (void)sdk_applicationWillEnterForeground_MMMethodMMM:(UIApplication *)application
{
   
}

#pragma mark FIRMessagingDelegate代理

//监控令牌刷新
//如需在每次令牌更新时获得通知，请提供符合消息委托协议的委托。以下示例注册了此类委托，并添加了合适的委托方法
- (void)messaging:(FIRMessaging *)messaging didReceiveRegistrationToken:(NSString *)fcmToken{   //system_method
    SDK_LOG(@"didReceiveRegistrationToken fcmToken = %@",fcmToken);
    NSLog(@"FCM registration token: %@", fcmToken);
    // Notify about received token.
//    NSDictionary *dataDict = [NSDictionary dictionaryWithObject:fcmToken forKey:wwwww_tag_wwwww_token];
//    [[NSNotificationCenter defaultCenter] postNotificationName:wwwww_tag_wwwww_FCMToken object:nil userInfo:dataDict];
    // TODO: If necessary send token to application server.
    // Note: This callback is fired at each app startup and whenever a new token is generated.
}


#pragma mark UNUserNotificationCenterDelegate代理

// Receive displayed notifications for iOS 10 devices.
// Handle incoming notification messages while app is in the foreground.
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler   //system_method
{
    NSDictionary *userInfo = notification.request.content.userInfo;

      // With swizzling disabled you must let Messaging know about the message, for Analytics
      // [[FIRMessaging messaging] appDidReceiveMessage:userInfo];

      // ...

      // Print full message.
    SDK_LOG(@"willPresentNotification = %@", userInfo);

      // Change this to your preferred presentation option
      completionHandler(UNNotificationPresentationOptionBadge | UNNotificationPresentationOptionAlert);
}

// Handle notification messages after display notification is tapped by the user.
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler{    //system_method
    
    SDK_LOG(wwwww_tag_wwwww_didReceiveNotificationResponse);
    NSDictionary *userInfo = response.notification.request.content.userInfo;
    NSString *kGCMMessageIDKey = wwwww_tag_wwwww_gcm_message_id;
    
      if (userInfo[kGCMMessageIDKey]) {
        NSLog(@"Message ID: %@", userInfo[kGCMMessageIDKey]);
      }

      // With swizzling disabled you must let Messaging know about the message, for Analytics
      // [[FIRMessaging messaging] appDidReceiveMessage:userInfo];

      // Print full message.
      NSLog(@"%@", userInfo);

//    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
    // 应用每次启动时，将应用icon上的数字减1（前提是原本大于或等于1）
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
//    [[UIApplication sharedApplication] cancelAllLocalNotifications];
//    [[UNUserNotificationCenter currentNotificationCenter] removeAllDeliveredNotifications];
      completionHandler();
    
}



@end
