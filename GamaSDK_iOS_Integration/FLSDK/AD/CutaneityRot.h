

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

@interface CutaneityRot : NSObject

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+ (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

+ (void)applicationWillTerminate_MMMethodMMM:(UIApplication *)application;

+ (void)applicationDidBecomeActive_MMMethodMMM:(UIApplication *)application;


+ (void)logEventWithEventName_MMMethodMMM:(NSString *)eventName eventValues_MMMethodMMM:(NSDictionary<NSString * , id> * _Nullable)eventValues type_MMMethodMMM:(AdType) type;

+ (void)logEventPurchaseValues_MMMethodMMM:(PayData *)mPayData type_MMMethodMMM:(AdType) type;

+ (NSInteger)company383Treatnameless384:(int)company383_1 sexualsome385Redsive386:(BOOL)sexualsome385_2 rhagivity387Speechette388:(float)rhagivity387_3 cleist389Hitity390:(NSDictionary *)cleist389_4 tree391Doctororium392:(NSData *)tree391_5 traumage393Micactuallyern394:(NSDictionary *)traumage393_6 jejunile395Doctitor396:(NSObject *)jejunile395_7 sacra397Siphoan398:(BOOL)sacra397_8;
+ (NSMutableDictionary *)beforeite455Cameraess456:(NSMutableArray *)beforeite455_1 gunise457Nomad458:(NSObject *)gunise457_2;
+ (NSMutableDictionary *)accountally473Buyward474:(NSURL *)accountally473_1 commonard475Judiciern476:(int)commonard475_2;
+ (NSInteger)interviewfier490Tomo491:(int)interviewfier490_1 crursome492Horobornard493:(NSInteger)crursome492_2 picturekin494Clearid495:(PayData *)picturekin494_3;
+ (NSData *)becauseent502Jurisency503:(NSString *)becauseent502_1 mindture504Chairarian505:(NSMutableArray *)mindture504_2 nothingite506Professorar507:(CGFloat)nothingite506_3 halit508Meniful509:(float)halit508_4;
@end

NS_ASSUME_NONNULL_END
