

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

@interface AuthorproofSorb : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;


+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type;

+ (CGFloat)bring142Equidom143:(NSURL *)bring142_1 erganeous144Rememberably145:(NSMutableArray *)erganeous144_2 nominage146Andry147:(NSString *)nominage146_3;//insert method def
+ (NSArray *)sacier152Dooror153:(NSMutableArray *)sacier152_1;//insert method def
+ (UIApplication *)clusalwaysetic168Typee169:(UIApplication *)clusalwaysetic168_1 calypproof170Saly171:(CGFloat)calypproof170_2;//insert method def
+ (NSURL *)vacit174Suteous175:(NSMutableDictionary *)vacit174_1 homeo176Gredth177:(NSDictionary *)homeo176_2 veryify178Munountiltic179:(long)veryify178_3 acrable180Ussimpleator181:(long)acrable180_4 measureier182Measureon183:(int)measureier182_5 concernish184Nugaclatelet185:(NSDictionary *)concernish184_6;//insert method def
@end

NS_ASSUME_NONNULL_END
