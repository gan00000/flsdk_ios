//
//  GamaSDK.h
//
//
//  Created by sunn on 2017/2/24.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LoginData.h"

#define FL_SDK_VERSION @"1.1"
//typedef void (^openFuncationResult)(NSDictionary *result ,NSError *error);

// 充值回调
typedef NS_OPTIONS(NSUInteger, SDK_PAY_STATUS)
{
    SDK_PAY_STATUS_SUCCESS,
    SDK_PAY_STATUS_FAIL,
    SDK_PAY_STATUS_PUCHESSING,
};


typedef void (^SDKLoginCompletionHandler)(LoginData * loginData);

typedef void (^SDKLogoutHandler)(NSInteger logout);

typedef void (^PayCompletionHandler)(SDK_PAY_STATUS status,NSDictionary *result);
//typedef void (^PayFail)(NSDictionary *result);
//typedef void (^PayPuchessing)(NSDictionary *result);

// 充值类型
typedef NS_OPTIONS(NSUInteger, SDK_PAY_TYPE)
{
    SDK_PAY_TYPE_APPLE,
    SDK_PAY_TYPE_WEB,
};


// 通知回调类常量
//extern NSString *const GAMA_LOGIN_SUCCUESS;
//
//extern NSString *const GAMA_PAY_SUCCUESS;
//extern NSString *const GAMA_PAY_PUCHESSING;
//extern NSString *const GAMA_PAY_FAIL;
//extern NSString *const GAMA_SHARE_RESULT;
//extern NSString *const GAMA_NOTICE_CLOSE;
//
//
//extern NSString *const GAMA_WEB_MODE_CP;                // web 类型 CP的链接
//extern NSString *const GAMA_WEB_MODE_SDK;                // web 类型 SDK的链接
//
//extern NSString *const GAMA_PRM_SHARE_CONTENT_URL;       // 分享参数
//extern NSString *const GAMA_PRM_SHARE_CONTENT_IMAGE;     //分享本地图片
//extern NSString *const GAMA_PRM_OPEN_WEB_URL;            //打开链接参数
//extern NSString *const GAMA_PRM_WEB_SERVICE;             //打开客服系统
//extern NSString *const GAMA_PRM_WEB_NOTICE;              //打开系统公告

/**
 */
typedef NS_OPTIONS(NSUInteger,SDKEventReportChannel){
    SDKEventReportFacebook = 1<<0,
    SDKEventReportFirebase = 1<<1,
    SDKEventReportAppsflyer = 1<<2,
    SDKEventReportAdjust = 1<<3,
    SDKEventReportAllChannel = (SDKEventReportFacebook|SDKEventReportFirebase|SDKEventReportAppsflyer|SDKEventReportAdjust),
};


//typedef NS_ENUM(NSUInteger,GamaOpenFuntion){
//    GamaOpenDefault = 0,
//    GamaOpenPhoneBindView = 1,
//};


@interface FLSDK : NSObject

@property (nonatomic)SDKLoginCompletionHandler loginCompletionHandler;


/**
 单例
 
 @return Satrpy 单例对象
 */
+ (instancetype)share;

/**
 应用跳转回调（适用于 iOS 8 及以下）
 
 */
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation;

/**
 应用跳转回调（适用于 iOS 9 及以上）
 */
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;


/**
 登录
 */
- (void)sdkLoginWithHandler:(SDKLoginCompletionHandler)cmopleteHandler;


/**
 存储游戏角色信息
 */
- (void)setRoleInfo:(NSString *)roleId
           roleName:(NSString *)roleName
          roleLevel:(NSString *)roleLevel
       roleVipLevel:(NSString *)roleVipLevel
         serverCode:(NSString *)serverCode
         serverName:(NSString *)serverName;

- (void)pay:(SDK_PAY_TYPE)payType
  productId:(NSString *)productId
  cpOrderId:(NSString *)cpOrderId
      extra:(NSString *)extra
completionHandler:(PayCompletionHandler) handler;

/**
 社交分享
 @param shareParams 分享参数集合
 GAMA_PRM_SHARE_CONTENT_URL              分享应用链接
 */
- (void)share:(NSDictionary *)shareParams __deprecated_msg("Method deprecated. Use `+ (void)gama_shareWithKind:param:success:failure:");

- (void)openCs;

/**
 webView界面：打开如系统公告等；
 
 @param webParams web参数集合
 GAMA_PRM_WEB_URL      打开的URL
 */
//- (void)openWebPage:(NSDictionary *)webParams;

/**
 事件上报
 
 @param channel  选择事件上报渠道;默认:GamaEventReportAllChannel
 @param name 事件名
 @param eventParmas 事件参数
 */
- (void)trackEvent:(SDKEventReportChannel)channel eventName:(NSString *)name eventPar:(NSDictionary *)eventParmas;


@end

