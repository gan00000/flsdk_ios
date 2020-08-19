

//#import "GamaObject.h"

#define GAMA_AD_NEED_ACCESS_SERVER @"GAMA_AD_NEED_ACCESS_SERVER"

#define kUserLoginDatetimeKey @"userLoginDatetimeKey"
#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, GamaThirdAdvertisementChannel) {
    GamaThirdAdvertisementFirebase = 1<<0,
    GamaThirdAdvertisementAppsflyer = 1<<1,
    GamaThirdAdvertisementFacebook = 1<<2,
    GamaThirdAdvertisementAdjust = 1<<3,
    GamaThirdAdvertisementAllChannel = (GamaThirdAdvertisementFirebase|GamaThirdAdvertisementAppsflyer|GamaThirdAdvertisementFacebook|GamaThirdAdvertisementAdjust),
};

@interface GamaAdPort : NSObject

/**
 *	@brief	开始执行SP s2s广告、及用户注册安装只需执行一次的第三方广告
        如果本地没有标记，执行一次访问服务器，并且发送SP_AD_NEED_ACCESS_SERVER 广播
            发送广播的目的是，让其他广告也仅仅执行一次。
        如果本地有标记，不再执行访问SP服务器，也不会发送广播。
 */
#pragma mark - 游戏启动时
+(void)start;

#pragma mark - 游戏进入前台时需执行的广告调用
+(void)startWhenBecomeActive;

#pragma mark - 玩家登录游戏
+(void)startWhenLogin;

#pragma mark - 玩家账号注册
+(void)startWhenRegister;

#pragma mark - application open url里需调用，获取浏览中返回的值
+ (BOOL)handleADURL:(nullable NSURL *)url;
+ (void)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity
 restorationHandler:(void (^)(NSArray *restorableObjects))restorationHandler;
+ (void)adjust_application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSDate *)deviceToken;

#pragma mark - 事件上报
+ (void)reportEventChannel:(GamaThirdAdvertisementChannel)channel eventName:(nonnull NSString *)name eventValues:(nullable NSDictionary *)values;

@end
