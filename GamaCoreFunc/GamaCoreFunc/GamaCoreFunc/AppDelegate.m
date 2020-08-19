//
//  AppDelegate.m
//

#import "AppDelegate.h"
#import "GamaRequestor.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *context = @"shgHKHFKwewerKJSSNNIsjjZIwZAM9corFIW2ryTzcWI0Pou13eeLKjDkr7Zubcap5nNLWWY1xKX4ZqBJwKuCMrBRc4uPVIHct7EFxlcCgRpidsHHJKhjkjafbeudsahfaHKJSHJKFBKSBBjbkjbjbdskhfawe4889y8hdahfuhaiuhdbcbjkbkbvkjbkajsbdeweUUIHKB889ehuhuewhSHGHGH";
    
    NSString *keyPath=[NSHomeDirectory()stringByAppendingPathComponent:@"Library"];
    NSString *printFileName = @"gama_print_file.txt";
    NSString *printfPath = [keyPath stringByAppendingFormat:@"/Caches/%@",printFileName];
    [context writeToFile:printfPath atomically:NO encoding:NSUTF8StringEncoding error:nil];
    
#ifdef __IPHONE_8_0
    if ([application respondsToSelector:@selector(registerForRemoteNotifications)]) {
        [application registerForRemoteNotifications];
        [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:
                                                       UIUserNotificationTypeNone|
                                                       UIUserNotificationTypeBadge|
                                                       UIUserNotificationTypeSound categories:nil]];
    } else {
        [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeAlert|UIRemoteNotificationTypeBadge|UIRemoteNotificationTypeSound];
    }
#else
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeAlert|UIRemoteNotificationTypeBadge|UIRemoteNotificationTypeSound];
#endif
//    [GamaRequestor sendPushTokenToServerWithToken:@"fbb02c6773efa8aca3ddff9be775e7ab68e70b78fc75d41ea36aa74762c05520"];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;
    [viewController release];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    NSLog(@"获取设备的deviceToken: %@", [NSString stringWithFormat:@"%@",deviceToken]);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
