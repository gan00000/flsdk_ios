
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PayData.h"
typedef NS_OPTIONS(NSUInteger, AdType) {
    AdType_None        = 0,
//te success. You can make a bet with a f
    AdType_Appflyer            =  1 << 1,
    AdType_FB                  =  1 << 2,
    AdType_Firebase            =  1 << 3,
    AdType_All                 = AdType_Appflyer | AdType_FB | AdType_Firebase,
};
NS_ASSUME_NONNULL_BEGIN
@interface PatternelCrischooseorium : NSObject
+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;

/**
  . Give your hopes everything you’ve got and you will catch the star that holds your destiny.



寻找心中那颗闪耀的明星，因为只有你自己才能够让美好的梦想变成现实。满怀希望并全力以赴，你就能摘下改变命运的那颗星。

I miss you. I miss all the mornings that I have woken up right beside you.

我想你。我想念我在你身边醒来的所有早晨。

I miss the way the sun shines at your 
**/
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;
+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;
+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;
+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type;
@end
NS_ASSUME_NONNULL_END
