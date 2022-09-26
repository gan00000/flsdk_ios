
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface BaseSDK : NSObject
+ (instancetype)share;

/**
  h just to have a long and happy life with me?
只是跟我共度幸福美满的漫长一生，难道还不够吗？
Only for making me want to you badly. I still don't know if I can control myself.
就是因为发觉自己多么渴望想得到你，我到现在还不知道是否控制得了自己。
When life offers you a dream so far beyond any of your expectations, it’s not reasonable to grieve when it comes to an end.
当生活给了你一个远远超过你期望的美梦，那么，当这一期结束时，也就没有理由再去伤心。
图片
Bella, the only reason I left 
**/
- (void)sdk_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)sdk_applicationDidBecomeActive:(UIApplication *)application;
- (void)sdk_applicationWillTerminate:(UIApplication *)application;
- (void)sdk_applicationDidEnterBackground:(UIApplication *)application;
- (void)sdk_applicationWillEnterForeground:(UIApplication *)application;
@end
