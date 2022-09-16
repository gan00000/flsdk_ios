//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BaseSDK : NSObject

+ (instancetype)share;

- (void)sdk_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)sdk_applicationDidBecomeActive:(UIApplication *)application;
- (void)sdk_applicationWillTerminate:(UIApplication *)application;
- (void)sdk_applicationDidEnterBackground:(UIApplication *)application;
- (void)sdk_applicationWillEnterForeground:(UIApplication *)application;

@end
