//
//  AppDelegate.m
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "UserModel.h"

#import "ResHeader.h"
#import "MWSDK.h"
#import "AFNetworkReachabilityManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
void uncaughtExceptionHandler(NSException*exception){
 
NSLog(@"CRASH: %@", exception);
 
NSLog(@"Stack Trace: %@",[exception callStackSymbols]);
 
// Internal error reporting
 
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    NSString *context = @"shgHKHFKwewerKJSSNNIsjjZIwZAM9corFIW2ryTzcWI0Pou13eeLKjDkr7Zubcap5nNLWWY1xKX4ZqBJwKuCMrBRc4uPVIHct7EFxlcCgRpidsHHJKhjkjafbeudsahfaHKJSHJKFBKSBBjbkjbjbdskhfawe4889y8hdahfuhaiuhdbcbjkbkbvkjbkajsbdeweUUIHKB889ehuhuewhSHGHGH";
//
//    NSString *keyPath=[NSHomeDirectory()stringByAppendingPathComponent:@"Library"];
//    NSString *printFileName = @"gama_print_file.txt";
//    NSString *printfPath = [keyPath stringByAppendingFormat:@"/Caches/%@",printFileName];
//    [context writeToFile:printfPath atomically:NO encoding:NSUTF8StringEncoding error:nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;
    
//    [application registerForRemoteNotifications];

//    UIUserNotificationType userNotificationTypes = (UIUserNotificationTypeAlert |
//                                                    UIUserNotificationTypeBadge |
//                                                    UIUserNotificationTypeSound);
//    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:userNotificationTypes
//                                                                        categories:nil];
//    [application registerUserNotificationSettings:settings];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
  
//    NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
    [self afnReachabilityTest];
    [[MWSDK share]application:application didFinishLaunchingWithOptions:launchOptions];
    return YES;
    
    /// TO DO
}


//- (BOOL)application:(UIApplication *)application
//            openURL:(NSURL *)url
//  sourceApplication:(NSString *)sourceApplication
//         annotation:(id)annotation
//{
//   
//    return [[MWSDK share]application:application
//                        openURL:url
//            sourceApplication:sourceApplication
//                    annotation:annotation];
//}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{

     [[MWSDK share] application:app
                  openURL:url
                  options:options];
    return YES;
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    
    NSLog(@"push token:%@",[NSString stringWithFormat:@"%@",deviceToken]);
    
}


-(void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {

}

//- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
//    NSLog(@"AppDelegate supportedInterfaceOrientationsForWindow");
//    return [[MWSDK share] application:application supportedInterfaceOrientationsForWindow:window];
//}

//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}

//- (void)dealloc {
//    [_window release];_window = nil;
//    [super dealloc];
//}

#pragma mark - AFN提供的方法
- (void)afnReachabilityTest {
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"AFNetworkReachability thread%@",[NSThread currentThread]);
        // 一共有四种状态
        switch (status) {
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"AFNetworkReachability Not Reachable");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"AFNetworkReachability Reachable via WWAN");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"AFNetworkReachability Reachable via WiFi");
                break;
            case AFNetworkReachabilityStatusUnknown:
            default:
                NSLog(@"AFNetworkReachability Unknown");
                break;
        }
    }];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [[AFNetworkReachabilityManager sharedManager] startMonitoring];
        [[NSRunLoop currentRunLoop] run];
    });
}
@end
