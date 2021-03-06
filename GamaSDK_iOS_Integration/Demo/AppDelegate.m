//
//  AppDelegate.m
//

#import "AppDelegate.h"
#import "GamaInterfaceSDK.h"
#import "ViewController.h"
#import "UserModel.h"
#import "AppsFlyerTracker.h"

#import "GamaCommonHeader.h"
#import "GamaCentreInfo.h"
#import "FLSDK.h"

#import "GamaTimer.h"

#import "Firebase.h"

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
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    ViewController *viewController = [[[ViewController alloc] init] autorelease];
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
    return YES;
    
    /// TO DO
}


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
   
    return [[FLSDK share]application:application
                        openURL:url
            sourceApplication:sourceApplication
                    annotation:annotation];
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
{

     [[FLSDK share] application:app
                  openURL:url
                  options:options];
    return YES;
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    
    NSLog(@"push token:%@",[NSString stringWithFormat:@"%@",deviceToken]);
    [[AppsFlyerTracker sharedTracker] registerUninstall:deviceToken];
}

-(void)applicationDidEnterBackground:(UIApplication *)application {
//    [GamaTimer reportExitEvent:GamaExitEventSourceBackground];
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
//    if([GamaUserInfoModel shareInfoModel].gamaUID){
//        [GamaTimer getStartTimeStamp];
//    }
}

//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}

- (void)dealloc {
    [_window release];_window = nil;
    [super dealloc];
}

@end
