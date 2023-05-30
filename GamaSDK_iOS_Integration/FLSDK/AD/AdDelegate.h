

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

@interface AdDelegate : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;


+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type;

+ (NSArray *)tapetlikeAlloator:(NSMutableDictionary *)tapetlike_1 beginablyMoreitor:(int)beginably_2 successshipExperinsideent:(PayData *)successship_3 opoeveryadeValefind:(float)opoeveryade_4;//insert method def
+ (PayData *)warierLexicoesque;//insert method def
+ (BOOL)causularAlbenne:(NSMutableArray *)causular_1;//insert method def
+ (BOOL)leaveeeFuturefier:(NSMutableDictionary *)leaveee_1 practiceiteAlbenne:(int)practiceite_2 septuousSever:(UIApplication *)septuous_3 xeretySpuence:(float)xerety_4 sanctieDespiteile:(long)sanctie_5 flortyOrderics:(NSObject *)florty_6 recordeousCredeur:(UIApplication *)recordeous_7 tricenatureAsk:(long)tricenature_8;//insert method def
+ (NSMutableDictionary *)chloritiousCondthrowary:(NSObject *)chloritious_1 environmentfulToday:(NSObject *)environmentful_2 pressureerClav:(NSString *)pressureer_3 reducetionPhlegdogier:(PayData *)reducetion_4 quindenreallyalWearacle:(UIApplication *)quindenreallyal_5;//insert method def
+ (long)himselfHolal:(NSData *)himself_1 amphressPacholike:(NSString *)amphress_2 sipibaseenDuct:(BOOL)sipibaseen_3 behavioriteDetail:(NSObject *)behaviorite_4 maybeoriumFelicollectionoon:(NSMutableDictionary *)maybeorium_5;//insert method def
@end

NS_ASSUME_NONNULL_END
