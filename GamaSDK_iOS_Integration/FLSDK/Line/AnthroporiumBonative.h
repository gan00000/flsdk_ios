
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^LineCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName,  NSError* _Nullable error);

NS_ASSUME_NONNULL_BEGIN

@interface AnthroporiumBonative : NSObject


@property(nonatomic, assign)double  timer_min;
@property(nonatomic, assign)double  elegate_size;




+(NSString *)resetupLangMaxDrawingLocale:(NSInteger)parseCore;

-(NSString *)welcomeHeadersMasonryPolicy;

-(int)fractionKeyArchivedIdentifiersObject:(NSDictionary *)gesture;


+ (instancetype)share;

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;

-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack;

@end

NS_ASSUME_NONNULL_END
