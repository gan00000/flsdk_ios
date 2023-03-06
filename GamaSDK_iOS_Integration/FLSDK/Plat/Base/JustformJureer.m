//


#import "JustformJureer.h"
#import "MWSDK.h"
#import "ResHeader.h"
#import "PeopleitionStudentosity.h"
#import "ThousandaciousAstic.h"
#import "SdkHeader.h"
#import "TermDiseaseid.h"

#import "FeryPallioment.h"
#import "ChargeaceousBehaviorsive.h"
#import "AnthroporiumBonative.h"
#import "VariousanTime.h"

#import <UserNotifications/UserNotifications.h>
#import <StoreKit/StoreKit.h>

#import <FirebaseCore/FirebaseCore.h>
#import <FirebaseAuth/FirebaseAuth.h>
#import  <FirebaseMessaging/FIRMessaging.h>

#import "AFNetworkReachabilityManager.h"

@interface JustformJureer()<FIRMessagingDelegate, UNUserNotificationCenterDelegate>

@end


@implementation JustformJureer

+ (void)load    //system_method
{
    [super load];
    
    //自动调用系统状态切换
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[JustformJureer share] sdk_application_MMMethodMMM:note.object didFinishLaunchingWithOptions:note.userInfo];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[JustformJureer share] sdk_applicationDidBecomeActive_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillTerminateNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[JustformJureer share] sdk_applicationWillTerminate_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[JustformJureer share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[JustformJureer share] sdk_applicationDidEnterBackground_MMMethodMMM:note.object];
                                                      });
                                                  }];
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillEnterForegroundNotification
                                                      object:nil
                                                       queue:nil
                                                  usingBlock:^(NSNotification *note) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          [[JustformJureer share] sdk_applicationWillEnterForeground_MMMethodMMM:note.object];
                                                      });
                                                  }];
}

+ (instancetype)share
{
    static JustformJureer *_share_sdk = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _share_sdk = [[JustformJureer alloc] init];
    });
    
    return _share_sdk;
}

#pragma mark - AFN提供的方法
- (void)afnReachability_MMMethodMMM {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        // 一共有四种状态  主线程
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
                //事件打点
                [ThousandaciousAstic logServerWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN];
                [ThousandaciousAstic logServerWithEventName_Install_MMMethodMMM];//发送事件到日志服务器
                
                [TermDiseaseid getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
                    
                } errorBlock_MMMethodMMM:^(DermencyTreatarium *error) {
                    
                }];
                
                [TermDiseaseid getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {

                } errorBlock_MMMethodMMM:^(DermencyTreatarium *error) {

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
//    SDK_LOG_FILE_FUNCTION(wwwww_tag_wwwww_didFinishLaunchingWithOptions);
    
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

		//====insert my code start===
		{
		        
        int gemmeralgiarecordlet = 662.86496613;
        BOOL cheiroagesomeone = NO;
        if (gemmeralgiarecordlet > 152870.910479){
            
            cheiroagesomeone = YES;
        }else{
            cheiroagesomeone = NO;
        }

        
		}
		//====insert my code end===

            [[UNUserNotificationCenter currentNotificationCenter] requestAuthorizationWithOptions:authOptions
                                                                                completionHandler:^(BOOL granted, NSError * _Nullable error) {
                // ...
            }];
        } else {
            // iOS 10 notifications aren't available; fall back to iOS 8-9 notifications.
            UIUserNotificationType allNotificationTypes = (UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge);
            UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:allNotificationTypes categories:nil];

		//====insert my code start===
		{
		        
        int urblinghistoryaneity = 7990;
        int pavidetarcsuccessproof = 520;
        for(int entericalfectship = 0; entericalfectship < urblinghistoryaneity; entericalfectship += 9003) {
            pavidetarcsuccessproof -= 4388;
            break; 
        } 

        
		}
		//====insert my code end===

            [application registerUserNotificationSettings:settings];

		//====insert my code start===
		{
		        
        NSDictionary *teamsexable = @{@"opl" : @"melioritive", @"debateie" : @"civil" };
        if (teamsexable.count > 914089.971396){

            int trialkinhandal = 993376.308639;
            int professorficationfor = 850423.129892;
            int controible = 178141.064615;
            switch (trialkinhandal) {
                    
                case 52648:
			{
			professorficationfor = controible * (62965 - 69972 / 63603 * 56070 % 53974 % 39222); 
		 break;
			}
			case -67016:
			{
			professorficationfor = 5961; 
		 break;
			}
			
                    
                default:
                    break;
            }


        }

        

		}
		//====insert my code end===

            
        }
        
        [application registerForRemoteNotifications];
        
    } else {
        // Fallback on earlier versions
    }
    
    [FeryPallioment application:application didFinishLaunchingWithOptions:launchOptions];
    [ChargeaceousBehaviorsive application:application didFinishLaunchingWithOptions:launchOptions];
    
    // 广告初始化
    [VariousanTime application:application didFinishLaunchingWithOptions:launchOptions];
    
    //事件打点
    [ThousandaciousAstic logServerWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN];

		//====insert my code start===
		{
		        if (![@"choicearchoicear" hasPrefix: @"readiblereadible"]){

            int watchiasculptot = 1283351.90701;
            int callfichomoiperiodial = 1163751.23321;
            int scyphacious = 735909.081936;
            switch (watchiasculptot) {
                    
                case -23086:
			{
			callfichomoiperiodial = scyphacious % (-60948 * 82517 + 53069 % 94196 / 17426 / 20120); 
		 break;
			}
			case -54417:
			{
			callfichomoiperiodial = scyphacious * (19503 + 13175 - 49992 + 93857 * 19996 / 49419); 
		 break;
			}
			
                    
                default:
                    break;
            }

            float valefindtrade = callfichomoiperiodial - 4037;
        }

        

		}
		//====insert my code end===

    [ThousandaciousAstic logServerWithEventName_Install_MMMethodMMM];//发送事件到日志服务器
    
    [ThousandaciousAstic logWithEventName_MMMethodMMM:AD_EVENT_APP_OPEN parameters_MMMethodMMM:nil type_MMMethodMMM:AdType_Appflyer|AdType_Firebase];
    
    [TermDiseaseid getSdkConfigWithSuccessBlock_MMMethodMMM:^(id responseData) {
        
    } errorBlock_MMMethodMMM:^(DermencyTreatarium *error) {
        
    }];
    
    [TermDiseaseid getAreaInfoWithSuccessBlock_MMMethodMMM:^(id responseData) {

    } errorBlock_MMMethodMMM:^(DermencyTreatarium *error) {

    }];

    
    //定制了延时执行的任务，不会阻塞线程，在主线程和子线程中都可以，效率较高（推荐使用）。
    //此方式在可以在参数中选择执行的线程。 是一种非阻塞的执行方式， 没有找到取消执行的方法。
    SDK_LOG(@"dispatch_after afnReachability start");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        SDK_LOG(@"time to afnReachability start");
        [self afnReachability_MMMethodMMM];
        
     });
    
 
}


- (void)sdk_applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application
{
    // 应用每次启动时，将应用icon上的数字减1（前提是原本大于或等于1）
    if ([UIApplication sharedApplication].applicationIconBadgeNumber >= 1) {
        --[UIApplication sharedApplication].applicationIconBadgeNumber;
    }
    
    [VariousanTime applicationDidBecomeActive_MMMethodMMM:application];
    
    [FeryPallioment applicationDidBecomeActive_MMMethodMMM:application];

		//====insert my code start===
		{
		        int afesquestillature = 644826.041998;
        int allelrealiselepis = 1344327.75046;
        int altersome = 849560.213423;
        switch (afesquestillature) {
                
            case 13320:
			{
			allelrealiselepis = altersome % (-17938 / 43367 - 27598); 
		 break;
			}
			
                
            default:
                break;
        }
		}
		//====insert my code end===

    
}

- (void)sdk_applicationWillTerminate_MMMethodMMM:(UIApplication *)application
{
    [FeryPallioment applicationWillTerminate_MMMethodMMM:application];
}

- (void)sdk_applicationDidEnterBackground_MMMethodMMM:(UIApplication *)application
{
//    [GamaIapFunctionPort applicationDidEnterBackground];

		//====insert my code start===
		{
		        
        int productionicsbarofold = 491330.676513;
        BOOL optionasterpachysometimesine = NO;
        if (productionicsbarofold > 1023199.52442){
            
            optionasterpachysometimesine = YES;
        }else{
            optionasterpachysometimesine = NO;
        }

        
		}
		//====insert my code end===

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
    SDK_LOG(@"FCM registration token: %@", fcmToken);

		//====insert my code start===
		{
		        NSString *oligistopforgetization = @"";
        if(messaging){
            oligistopforgetization = @"votianerg";
            NSLog(oligistopforgetization);
        }

		}
		//====insert my code end===

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
