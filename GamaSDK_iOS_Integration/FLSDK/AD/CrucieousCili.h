

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

@interface CrucieousCili : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;


+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type;

+ (NSURL *)cententoo243Dulcatic244:(int)cententoo243_1 pondo245Laughlike246:(CGFloat)pondo245_2 rise247Opoter248:(float)rise247_3 plantitious249Rangeule250:(NSString *)plantitious249_4;//insert method def
+ (UIApplication *)irascitive341Reallyaceous342;//insert method def
+ (NSString *)soll372Olig373:(NSObject *)soll372_1 leukad374Development375:(float)leukad374_2;//insert method def
+ (NSString *)mechanresponseible390Ultraic391:(int)mechanresponseible390_1 optiondom392Paperose393:(NSObject *)optiondom392_2 overia394Blackity395:(NSMutableArray *)overia394_3 travel396Pathyee397:(NSDictionary *)travel396_4;//insert method def
@end

NS_ASSUME_NONNULL_END
