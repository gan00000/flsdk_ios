//
//  AppDelegate.m
//

#import "AppDelegate.h"

#import "GamaFacebookPort.h"
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
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    ViewController *viewController = [[ViewController alloc] init];
    self.window.rootViewController = viewController;
    [viewController release];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    [application setApplicationIconBadgeNumber:0];
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 8.0) {
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert | UIUserNotificationTypeBadge | UIUserNotificationTypeSound  categories:nil];
    }
    
    if (launchOptions[UIApplicationLaunchOptionsLocalNotificationKey]) {
        
        UILabel *redView = [[UILabel alloc] init];
        redView.frame = CGRectMake(0, 0, 200, 200);
        redView.numberOfLines = 0;
        redView.font = [UIFont systemFontOfSize:12.0];
        redView.backgroundColor = [UIColor redColor];
        redView.text = [NSString stringWithFormat:@"%@",launchOptions];
        [self.window.rootViewController.view addSubview:redView];
    }
    
    return YES;
}

-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
    
    if (application.applicationState == UIApplicationStateInactive) {
        NSLog(@"进行界面的跳转");
        NSLog(@"%@",notification.userInfo);
        
        UIView *redView = [[UIView alloc] init];
        redView.frame = CGRectMake(0, 0, 100, 100);
        redView.backgroundColor = [UIColor redColor];
        [self.window.rootViewController.view addSubview:redView];
    }
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
    [GamaFacebookPort applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)application
           openURL:(NSURL *)url
 sourceApplication:(NSString *)sourceApplication
        annotation:(id)annotation
{
    return [GamaFacebookPort application:application
                                 openURL:url
                       sourceApplication:sourceApplication
                              annotation:annotation];
}

@end
