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

@interface BaseSDK : NSObject

@end
