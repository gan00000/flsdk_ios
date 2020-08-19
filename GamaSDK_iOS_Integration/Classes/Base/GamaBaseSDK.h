//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*-----------
 @abstract      回调通知
 ------------*/
extern NSString *const GAMA_NOTIFICATION_SUCCESS_LOGIN;                       // 登录成功
extern NSString *const GAMA_NOTIFICATION_FAIL_LOGIN;                               // 登录失败
extern NSString *const GAMA_NOTIFICATION_SUCCESS_LOGOUT;                   // 登出成功
extern NSString *const GAMA_NOTIFICATION_BACKTOHOME_LOGIN;             // 登录界面返回

extern NSString *const GAMA_NOTIFICATION_PHCHASE_SUCCESSFUL;          // 储值成功
extern NSString *const GAMA_NOTIFICATION_PHCHASE_FAIL;                        // 储值失败
extern NSString *const GAMA_NOTIFICATION_PHCHASE_PUCHASING;           // 储值中

extern NSString *const GAMA_NOTIFICATION_SHARE_RESULT;            // 分享结果

@interface GamaBaseSDK : NSObject

#pragma mark - 登录功能
/**
 @abstract      登录功能
 */
+ (void)gamaLogin:(NSDictionary *)loginParameters;


/**
 @abstract      保存角色信息，供其他SDK接口使用

 @param roleInfoParams 角色的具体信息
 */
+ (void)gamaRoleInfo:(NSDictionary *)roleInfoParams;


#pragma mark - 生命周期
/**
 @abstract      SDK生命周期 iOS 9 以下 SDK openURL回调
 */
+ (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation;

+ (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary *)options;
#pragma mark - 储值功能
/**
 @abstract      储值功能
 
 */
+ (void)gamaPay:(NSString *)productId
cpOrderId:(NSString *)cpOrderId
          extra:(NSString *)extra;

@end
