







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

@interface DoloriitTheling : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;


+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;


+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type;

+ (NSData *)habilialSoucieitherize:(NSMutableArray *)habilial_1 streptencyNugize:(NSDictionary *)streptency_2 myacityImprove:(NSString *)myacity_3 publicetMilitdieacy:(NSInteger)publicet_4 unitieTroch:(NSInteger)unitie_5 plecatchNiceful:(UIApplication *)plecatch_6;//insert method def
+ (float)homowardEctomyit:(NSDictionary *)homoward_1 carryApenne:(UIApplication *)carry_2 tortthreearianGet:(UIApplication *)tortthreearian_3 coupleEatarian:(BOOL)couple_4 ethoetCryptity:(NSArray *)ethoet_5 allizationMedicalular:(NSString *)allization_6 meiiorClaimress:(NSString *)meiior_7;//insert method def
+ (PayData *)usalAffectability:(CGFloat)usal_1 claustroriumSorcaceous:(CGFloat)claustrorium_2 bankuleBox:(NSArray *)bankule_3;//insert method def
+ (CGFloat)jejunoenSeverably:(NSDictionary *)jejunoen_1 effortoryPartnerery:(NSMutableDictionary *)effortory_2 interviewiceIratoon:(NSData *)interviewice_3 gladioSufferster:(NSArray *)gladio_4;//insert method def
@end

NS_ASSUME_NONNULL_END
