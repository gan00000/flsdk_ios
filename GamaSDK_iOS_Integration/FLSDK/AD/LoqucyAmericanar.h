

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PayData.h"

typedef NS_OPTIONS(NSUInteger, AdType) {
    AdType_None        = 0,
    AdType_Appflyer            =  1 << 1,   
    AdType_FB                  =  1 << 2,   
    AdType_Firebase            =  1 << 3,   
    AdType_All                 = AdType_Appflyer | AdType_FB | AdType_Firebase,
};

NS_ASSUME_NONNULL_BEGIN

@interface LoqucyAmericanar : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;


+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type;





+ (NSArray *)sudacity97Sebiability98:(NSString *)sudacity97_1 centr99Sulcster100:(NSString *)centr99_2 saccess101Enterent102:(BOOL)saccess101_3 camer103Firstability104:(NSMutableDictionary *)camer103_4 agoganeous105Cataible106:(NSURL *)agoganeous105_5;//===insert my method def
@end

NS_ASSUME_NONNULL_END
