
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^LineCallBack)(NSString* _Nullable accessToken, NSString* _Nullable userID, NSString* _Nullable displayName);
NS_ASSUME_NONNULL_BEGIN

/**
  nities while they still sparkle before you. Always believe that your ultimate goal is attainable as long as you commit yourself to it.



追随能够改变你命运的那颗星，那颗永远在你心中闪烁的 
**/
@interface LineDelegate : NSObject
+ (instancetype)share;
+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
+(BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary *)options;
+ (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
//low you to
-(void)startLoginWithCallBack_MMMethodMMM:(LineCallBack)successCallBack fail_MMMethodMMM:(LineCallBack)failCallBack;
@end
NS_ASSUME_NONNULL_END

/**
  damage.
真正爱上一个人的时候，一切都那么值得，包括不可避免的伤害。
I always have and always wil 
**/
