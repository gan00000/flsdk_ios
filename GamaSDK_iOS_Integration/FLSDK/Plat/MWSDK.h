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
#import "PayData.h"

#define FL_SDK_VERSION @"1.4.1"

// 追踪事件名称
#define AD_EVENT_APP_OPEN  @"APP_OPEN"
#define AD_EVENT_LOGIN_SUCCESS  @"LOGIN_SUCCESS"
#define AD_EVENT_REGISTER_SUCCESS  @"REGISTER_SUCCESS"
#define AD_EVENT_OPEN_LOGIN_SCREEN  @"OPEN_LOGIN_SCREEN"

#define AD_EVENT_COMPLETE_REGISTRATION_IOS  @"COMPLETE_REGISTRATION_IOS" //对fb单独使用，和AD_EVENT_REGISTER_SUCCESS是同样的事件

#define AD_EVENT_CHECK_PERMISSIONS  @"CHECK_PERMISSIONS"
#define AD_EVENT_CHECK_UPDATE  @"CHECK_UPDATE"
#define AD_EVENT_CHECK_RESOURCES  @"CHECK_RESOURCES"
#define AD_EVENT_SELECT_SERVER  @"SELECT_SERVER"
#define AD_EVENT_CREATE_ROLE  @"CREATE_ROLE"
#define AD_EVENT_START_GUIDE  @"START_GUIDE"
#define AD_EVENT_COMPLETE_GUIDE  @"COMPLETE_GUIDE"
#define AD_EVENT_FIRST_PURCHASE  @"FIRST_PURCHASE"

// 充值回调
typedef NS_OPTIONS(NSUInteger, SDK_PAY_STATUS)
{
    SDK_PAY_STATUS_SUCCESS,
    SDK_PAY_STATUS_FAIL,
    SDK_PAY_STATUS_PUCHESSING,
};

typedef void (^SDKLoginBlock)(LoginData * _Nullable loginData);
typedef void (^SDKLogoutBlock)(NSInteger logout);
typedef void (^SDKPayBlock)(SDK_PAY_STATUS status,PayData * _Nullable mPayData);
//typedef void (^PayFail)(NSDictionary *result);
//typedef void (^PayPuchessing)(NSDictionary *result);

// 充值类型
//typedef NS_OPTIONS(NSUInteger, SDK_PAY_TYPE)
//{
//    SDK_PAY_TYPE_APPLE,
//    SDK_PAY_TYPE_WEB,
//};

/**
 */
//typedef NS_OPTIONS(NSUInteger,SDKEventReportChannel){
//    SDKEventReportFacebook = 1<<0,
//    SDKEventReportFirebase = 1<<1,
//    SDKEventReportAppsflyer = 1<<2,
//    SDKEventReportAdjust = 1<<3,
//    SDKEventReportAllChannel = (SDKEventReportFacebook|SDKEventReportFirebase|SDKEventReportAppsflyer|SDKEventReportAdjust),
//};

@interface MWSDK : NSObject

@property (nonatomic) SDKPayBlock payHandler;
@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic)  SDKLoginBlock loginCompletionHandler;


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



/// 登录接口
/// @param cmopleteHandler 登录回调block
- (void)sdkLoginWithHandler:(SDKLoginBlock)cmopleteHandler;


/// 每次登录或者切换账号的时候获得角色信息的时候调用
/// @param roleId 角色id，必传
/// @param roleName 角色名称，必传
/// @param roleLevel 等色等级，没有传@""
/// @param roleVipLevel 等色vip等级，没有传@""
/// @param serverCode 伺服器id，必传
/// @param serverName 伺服器名称，没有传@""
- (void)setRoleInfoWithRoleId:(NSString *)roleId
           roleName:(NSString *)roleName
          roleLevel:(NSString *)roleLevel
       roleVipLevel:(NSString *)roleVipLevel
         serverCode:(NSString *)serverCode
         serverName:(NSString *)serverName;


/// 充值接口
/// @param roleId 角色id，必传
/// @param roleName 角色名称，必传
/// @param roleLevel 等色等级，没有传@""
/// @param roleVipLevel 等色vip等级，没有传@""
/// @param serverCode 伺服器id，必传
/// @param serverName  伺服器名称，没有传@""
/// @param productId 商品id,必传
/// @param cpOrderId 厂商订单号，必传，该值通过服务端接口返回给厂商
/// @param extra 预留值，可选，该值通过服务端接口返回给厂商
/// @param handler 充值回调，成功是否成功请以服务端回调为准
- (void)payWithRoleId:(NSString *)roleId
   roleName:(NSString *)roleName
  roleLevel:(NSString *)roleLevel
roleVipLevel:(NSString *)roleVipLevel
 serverCode:(NSString *)serverCode
 serverName:(NSString *)serverName
  productId:(NSString *)productId
  cpOrderId:(NSString *)cpOrderId
      extra:(NSString *)extra
completionHandler:(SDKPayBlock) handler;

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
 
 @param name 事件名
 @param eventValues 事件参数
 */
- (void)trackEventWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues;


@end

