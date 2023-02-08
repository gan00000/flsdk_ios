////
////
//
//#import "AnaicHydrery.h"
//#import "ResHeader.h"
//
//#import <objc/runtime.h>
//#import <objc/message.h>
//#if __has_include(<FirebaseMessaging/FirebaseMessaging.h>)
//#import <FirebaseMessaging/FirebaseMessaging.h>
//#endif
//#if __has_include(<AppsFlyerTracker.h>)
//#import "AppsFlyerTracker.h"
//#endif
//#import <UserNotifications/UserNotifications.h>
//
//#define GAMA_ADD_SELECTOR_PREFIX(__SELECTOR__) @selector(Gama_##__SELECTOR__)
//
//#define GAMA_SWIZZLE_DELEGATE_METHOD(__SELECTORSTRING__) \
//Gama_Swizzle([delegate class], @selector(__SELECTORSTRING__), class_getClassMethod([AnaicHydrery class], GAMA_ADD_SELECTOR_PREFIX(__SELECTORSTRING__))); \
//
//void Gama_Swizzle(Class class, SEL originalSelector, Method swizzledMehotd)
//{
//    Method originalInsMethod = class_getInstanceMethod(class, originalSelector);
//    //处理为实例方法
//    if (originalInsMethod) {
//        method_exchangeImplementations(originalInsMethod, swizzledMehotd);
//    }else {
//        //处理为类方法
//        Method originalClassMethod = class_getClassMethod(class, originalSelector);
//        if (originalClassMethod) {
//            method_exchangeImplementations(originalClassMethod, swizzledMehotd);
//        }else {
//            class_addMethod(class, originalSelector, method_getImplementation(swizzledMehotd), method_getTypeEncoding(swizzledMehotd));
//            method_setImplementation(swizzledMehotd, imp_implementationWithBlock(^(id self, SEL _cmd){}));
//        }
//    }
//}
//
//BOOL Gama_Appdelegate_method_return(id _self_, SEL _cmd_, SEL _efun_selector_, id _application_, id _args1_, id _args2_, id _args3_)
//{
//    BOOL returnValue = NO;
//    if (![NSStringFromSelector(_cmd_) isEqualToString:NSStringFromSelector(_efun_selector_)]) {
//        Method m = class_getClassMethod([AnaicHydrery class], _efun_selector_);
//        IMP method = method_getImplementation(m);
//        BOOL (* callMethod)(id,SEL,id,id,id,id) = (void *)method;
//        returnValue = callMethod(_self_, _efun_selector_, _application_, _args1_, _args2_, _args3_);
//    }
//    return returnValue;
//}
//
//@interface JustformJureer ()
//
//
//
//@end
//NSString *const kGCMMessageIDKey = wwwww_tag_wwwww_gcm_message_id;
//
//#pragma mark Application Swzzle
////@implementation UIApplication(Gama)
////
////- (void)Gama_setDelegate:(id<UIApplicationDelegate>)delegate
////{
////    static dispatch_once_t onceToken;
////    dispatch_once(&onceToken, ^{
////        GAMA_SWIZZLE_DELEGATE_METHOD(application: didRegisterForRemoteNotificationsWithDeviceToken:);
////        GAMA_SWIZZLE_DELEGATE_METHOD(application: didReceiveRemoteNotification:);
////        GAMA_SWIZZLE_DELEGATE_METHOD(application: didReceiveRemoteNotification: fetchCompletionHandler:);
////        GAMA_SWIZZLE_DELEGATE_METHOD(userNotificationCenter: willPresentNotification: withCompletionHandler:);
////        GAMA_SWIZZLE_DELEGATE_METHOD(userNotificationCenter: didReceiveNotificationResponse: withCompletionHandler:);
////        GAMA_SWIZZLE_DELEGATE_METHOD(application: continueUserActivity: restorationHandler:)
////    });
////    [self Gama_setDelegate:delegate];
////}
////@end
//
//@implementation AnaicHydrery
//
//#pragma mark - Init
//
//
////(1) +load的执行时机：+load 方法会在加载类的时候就被调用，也就是iOS 应用启动的时候，就会加载所有的类，main函数之前，就会调用每个类的 +load 方法
////
////(2) 子类的+load方法会在它的所有父类(不包括父类分类中的+load)的+load方法执行之后执行
////分类的+load方法会在所有的主类的+load方法执行之后执行
////
////(3) 不同的类之间的+load方法的调用顺序是不确定的
////
////(4) + initialize:方法类似一个懒加载，initialize是在类或者其子类的第一个方法被调用前调用，且默认只加载一次；+ initialize的调用发生在+init 方法之前。
//
//+ (void)load
//{
//    [super load];
//
////    static dispatch_once_t onceToken;
////    dispatch_once(&onceToken, ^{
////        Gama_Swizzle([UIApplication class], @selector(setDelegate:), class_getInstanceMethod([UIApplication class], @selector(Gama_setDelegate:)));
////    });
//
//    
//    //自动调用系统状态切换
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification
//                                                      object:nil
//                                                       queue:nil
//                                                  usingBlock:^(NSNotification *note) {
//                                                      dispatch_async(dispatch_get_main_queue(), ^{
//                                                          [AnaicHydrery star_application:note.object didFinishLaunchingWithOptions:note.userInfo];
//                                                      });
//                                                  }];
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidBecomeActiveNotification
//                                                      object:nil
//                                                       queue:nil
//                                                  usingBlock:^(NSNotification *note) {
//                                                      dispatch_async(dispatch_get_main_queue(), ^{
//                                                          [AnaicHydrery star_applicationDidBecomeActive:note.object];
//                                                      });
//                                                  }];
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillTerminateNotification
//                                                      object:nil
//                                                       queue:nil
//                                                  usingBlock:^(NSNotification *note) {
//                                                      dispatch_async(dispatch_get_main_queue(), ^{
//                                                          [AnaicHydrery star_applicationWillTerminate:note.object];
//                                                      });
//                                                  }];
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
//                                                      object:nil
//                                                       queue:nil
//                                                  usingBlock:^(NSNotification *note) {
//                                                      dispatch_async(dispatch_get_main_queue(), ^{
//                                                          [AnaicHydrery star_applicationDidEnterBackground:note.object];
//                                                      });
//                                                  }];
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidEnterBackgroundNotification
//                                                      object:nil
//                                                       queue:nil
//                                                  usingBlock:^(NSNotification *note) {
//                                                      dispatch_async(dispatch_get_main_queue(), ^{
//                                                          [AnaicHydrery star_applicationDidEnterBackground:note.object];
//                                                      });
//                                                  }];
//    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationWillEnterForegroundNotification
//                                                      object:nil
//                                                       queue:nil
//                                                  usingBlock:^(NSNotification *note) {
//                                                      dispatch_async(dispatch_get_main_queue(), ^{
//                                                          [AnaicHydrery star_applicationWillEnterForeground:note.object];
//                                                      });
//                                                  }];
//}
//
//#pragma mark - Observer
//
//+ (void)star_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    [super _application:application didFinishLaunchingWithOptions:launchOptions];
//    
//    // handle remote noti
////    [UIApplication sharedApplication].applicationIconBadgeNumber = 0;
//}
//
//+ (void)star_applicationDidBecomeActive:(UIApplication *)application
//{
//    [super _applicationDidBecomeActive:application];
//}
//
//+ (void)star_applicationDidEnterBackground:(UIApplication *)application
//{
//    [super _applicationDidEnterBackground:application];
//}
//
//+ (void)star_applicationWillTerminate:(UIApplication *)application
//{
//    [super _applicationWillTerminate:application];
//}
//
//+ (void)star_applicationWillEnterForeground:(UIApplication *)application
//{
//    [super _applicationWillEnterForeground:application];
//}
//#pragma mark - Life Cycle
//
////
////+ (BOOL)application:(UIApplication *)application
////continueUserActivity:(NSUserActivity *)userActivity
////restorationHandler:(void (^)(NSArray *restorableObjects))restorationHandler
////{
//////    [GamaAdPort application:application continueUserActivity:userActivity restorationHandler:restorationHandler];
////    return YES;
////}
////
////#pragma mark -Firebase Push Notification
////
////+ (void)Gama_application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
////{
////    NSLog(@"push token:%@",[NSString stringWithFormat:@"%@",deviceToken]);
//////    [GamaAdPort adjust_application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
//////    [[AppsFlyerTracker sharedTracker] registerUninstall:deviceToken];
//////    if ([NSClassFromString(wwwww_tag_wwwww_AppsFlyerTracker) respondsToSelector:NSSelectorFromString(wwwww_tag_wwwww_sharedTracker)]) {
//////        Class AppsFlyerCls = ((Class(*)(Class, SEL))objc_msgSend)(NSClassFromString(wwwww_tag_wwwww_AppsFlyerTracker),NSSelectorFromString(wwwww_tag_wwwww_sharedTracker));
//////        ((void(*)(Class,SEL,id))objc_msgSend)(AppsFlyerCls,NSSelectorFromString(@"registerUninstall:"),deviceToken);
//////    }
//////    if (GetConfigBool(GAMA_GAME_IS_INITIALIZE_AD) || GetConfigString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
//////        if ([NSClassFromString(wwwww_tag_wwwww_FIRMessaging) respondsToSelector:NSSelectorFromString(wwwww_tag_wwwww_messaging)]) {
//////            Class FirCls = ((Class(*)(Class, SEL))objc_msgSend)(NSClassFromString(wwwww_tag_wwwww_FIRMessaging),NSSelectorFromString(wwwww_tag_wwwww_messaging));
//////            ((void(*)(Class, SEL ,id))objc_msgSend)(FirCls,NSSelectorFromString(@"setAPNSToken:"),deviceToken);
//////        }
//////    }
////
////    [FIRMessaging messaging].APNSToken = deviceToken;
////    Gama_Appdelegate_method_return(self, _cmd, @selector(Gama_application: didRegisterForRemoteNotificationsWithDeviceToken:),application, deviceToken, nil, nil);
////}
////
////+ (void)Gama_application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
////    // If you are receiving a notification message while your app is in the background,
////    // this callback will not be fired till the user taps on the notification launching the application.
////    // TODO: Handle data of notification
////    // With swizzling disabled you must let Messaging know about the message, for Analytics
////
//////    if (GetConfigBool(GAMA_GAME_IS_INITIALIZE_AD) || GetConfigString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
//////        ///[[FIRMessaging messaging] appDidReceiveMessage:userInfo];
//////        if ([NSClassFromString(wwwww_tag_wwwww_FIRMessaging) respondsToSelector:NSSelectorFromString(wwwww_tag_wwwww_messaging)]) {
//////            Class FirCls = ((Class(*)(Class, SEL))objc_msgSend)(NSClassFromString(wwwww_tag_wwwww_FIRMessaging),NSSelectorFromString(wwwww_tag_wwwww_messaging));
//////            ((void(*)(Class, SEL ,id))objc_msgSend)(FirCls,NSSelectorFromString(@"appDidReceiveMessage:"),userInfo);
//////        }
//////    }
////    // Print message ID.
//////    if (userInfo[kGCMMessageIDKey]) {
//////        NSLog(@"Message ID: %@", userInfo[kGCMMessageIDKey]);
//////    }
//////
//////    // Print full message.
//////    NSLog(@"%@", userInfo);
////    Gama_Appdelegate_method_return(self, _cmd, @selector(Gama_application: didReceiveRemoteNotification:),application, userInfo, nil, nil);
////}
////
////+ (void)Gama_application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
////  fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
////    // If you are receiving a notification message while your app is in the background,
////    // this callback will not be fired till the user taps on the notification launching the application.
////    // TODO: Handle data of notification
////
////    // With swizzling disabled you must let Messaging know about the message, for Analytics
////
//////    if (GetConfigBool(GAMA_GAME_IS_INITIALIZE_AD) || GetConfigString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
//////        ///[[FIRMessaging messaging] appDidReceiveMessage:userInfo];
//////        if ([NSClassFromString(wwwww_tag_wwwww_FIRMessaging) respondsToSelector:NSSelectorFromString(wwwww_tag_wwwww_messaging)]) {
//////            Class FirCls = ((Class(*)(Class, SEL))objc_msgSend)(NSClassFromString(wwwww_tag_wwwww_FIRMessaging),NSSelectorFromString(wwwww_tag_wwwww_messaging));
//////            ((void(*)(Class, SEL ,id))objc_msgSend)(FirCls,NSSelectorFromString(@"appDidReceiveMessage:"),userInfo);
//////        }
//////    }
////
////    // Print message ID.
//////    if (userInfo[kGCMMessageIDKey]) {
//////        NSLog(@"Message ID: %@", userInfo[kGCMMessageIDKey]);
//////    }
//////    // Print full message.
//////    NSLog(@"%@", userInfo);
//////    completionHandler(UIBackgroundFetchResultNewData);
////    Gama_Appdelegate_method_return(self, _cmd, @selector(Gama_application: didReceiveRemoteNotification:fetchCompletionHandler:),application, userInfo, completionHandler, nil);
////}
////
////#pragma mark - UNUserNotificationCenterDelegate
////
////// app处在前台收到推送消息执行的方法
////// Receive displayed notifications for iOS 10 devices.
////// Handle incoming notification messages while app is in the foreground.
////+ (void)Gama_userNotificationCenter:(UNUserNotificationCenter *)center
////            willPresentNotification:(UNNotification *)notification
////              withCompletionHandler:(void (^)(UNNotificationPresentationOptions))completionHandler {
////    NSDictionary *userInfo = notification.request.content.userInfo;
////
////    // With swizzling disabled you must let Messaging know about the message, for Analytics
//////    if (GetConfigBool(GAMA_GAME_IS_INITIALIZE_AD) || GetConfigString(GAMA_GAME_IS_INITIALIZE_AD).length == 0) {
//////        ///[[FIRMessaging messaging] appDidReceiveMessage:userInfo];
//////        if ([NSClassFromString(wwwww_tag_wwwww_FIRMessaging) respondsToSelector:NSSelectorFromString(wwwww_tag_wwwww_messaging)]) {
//////            Class FirCls = ((Class(*)(Class, SEL))objc_msgSend)(NSClassFromString(wwwww_tag_wwwww_FIRMessaging),NSSelectorFromString(wwwww_tag_wwwww_messaging));
//////            ((void(*)(Class, SEL ,id))objc_msgSend)(FirCls,NSSelectorFromString(@"appDidReceiveMessage:"),userInfo);
//////        }
//////    }
////
////    // Print message ID.
//////    if (userInfo[kGCMMessageIDKey]) {
//////        NSLog(@"Message ID: %@", userInfo[kGCMMessageIDKey]);
//////    }
//////    // Print full message.
//////    NSLog(@"%@", userInfo);
//////    // Change this to your preferred presentation option
//////    completionHandler(UNNotificationPresentationOptionNone);
////    Gama_Appdelegate_method_return(self, _cmd, @selector(Gama_userNotificationCenter:willPresentNotification:withCompletionHandler:),center, notification, completionHandler, nil);
////}
////
////// ios 10以后系统，app处在后台，点击通知栏 app执行的方法
////// Handle notification messages after display notification is tapped by the user.
////+ (void)Gama_userNotificationCenter:(UNUserNotificationCenter *)center
////     didReceiveNotificationResponse:(UNNotificationResponse *)response
////              withCompletionHandler:(void(^)(void))completionHandler {
//////    NSDictionary *userInfo = response.notification.request.content.userInfo;
//////    if (userInfo[kGCMMessageIDKey]) {
//////        NSLog(@"Message ID: %@", userInfo[kGCMMessageIDKey]);
//////    }
//////
//////    // Print full message.
//////    NSLog(@"%@", userInfo);
//////
//////    completionHandler();
////    Gama_Appdelegate_method_return(self, _cmd, @selector(Gama_userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:),center, response, completionHandler, nil);
////}
//
//
//@end
