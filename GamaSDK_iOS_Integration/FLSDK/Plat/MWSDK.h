#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.1.4"

#define Decrypt_AllStringContent(text)  [[MWSDK share] decryptStringContent:text]

// 追踪事件名称
#define AD_EVENT_APP_OPEN  wwwww_tag_wwwww_APP_OPEN
#define AD_EVENT_LOGIN_SUCCESS  wwwww_tag_wwwww_LOGIN_SUCCESS
#define AD_EVENT_REGISTER_SUCCESS  wwwww_tag_wwwww_REGISTER_SUCCESS
#define AD_EVENT_OPEN_LOGIN_SCREEN  wwwww_tag_wwwww_OPEN_LOGIN_SCREEN
#define AD_EVENT_FIRST_PURCHASE  wwwww_tag_wwwww_FIRST_PURCHASE

#define AD_EVENT_COMPLETE_REGISTRATION_IOS  wwwww_tag_wwwww_COMPLETE_REGISTRATION_IOS //对fb单独使用，和AD_EVENT_REGISTER_SUCCESS是同样的事件

#define AD_EVENT_CHECK_PERMISSIONS  wwwww_tag_wwwww_CHECK_PERMISSIONS
#define AD_EVENT_CHECK_UPDATE  wwwww_tag_wwwww_CHECK_UPDATE
#define AD_EVENT_CHECK_RESOURCES  wwwww_tag_wwwww_CHECK_RESOURCES
#define AD_EVENT_SELECT_SERVER  wwwww_tag_wwwww_SELECT_SERVER
#define AD_EVENT_CREATE_ROLE  wwwww_tag_wwwww_CREATE_ROLE
#define AD_EVENT_START_GUIDE  wwwww_tag_wwwww_START_GUIDE
#define AD_EVENT_COMPLETE_GUIDE  wwwww_tag_wwwww_COMPLETE_GUIDE


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
typedef void (^ShareBlock)(BOOL success, NSDictionary * _Nullable result);

typedef void (^MWBlock)(BOOL success, id _Nullable result);

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
@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;

/**
 单例
 
 @return MWSDK 单例对象
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
 line分享
 @param content 分享的内容和链接
 */
- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock;

- (void)openCs;


/// 事件追踪
/// @param name 事件名称
- (void)trackEventWithEventName:(NSString *)name;

/**
 事件上报
 
 @param name 事件名
 @param eventValues 事件参数
 */
- (void)trackEventWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues;

- (void)requestStoreReview;


/// fb分享接口
/// @param hashTag  话题
/// @param message  引文
/// @param url  分享的url
/// @param shareBlock 分享的回调
-(void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock;


/// 显示SDK内部绑定手机界面
/// @param mBlock mBlock description
-(void)showBindPhoneViewWithBlock:(MWBlock) mBlock;


/// 显示SDK内部升级账号界面
/// @param mBlock
-(void)showUpgradeAccountViewWithBlock:(MWBlock) mBlock;



- (void)requestVfCodeWithAreaCode:(NSString *)areaCode telephone:(NSString *)telephone Block:(MWBlock)mMWBlock;

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock;

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock;


/// <#Description#>  添加本地推送通知
/// @param title 标题
/// @param subtitle 副标题
/// @param body 通知内容
/// @param trigger 通知的触发条件
/// @param notifyId  通知标识 id，用于更新、删除
- (void)addLocalNotificationWithTitle:(NSString *)title subtitle:(NSString *)subtitle body:(NSString *)body trigger:(nullable UNNotificationTrigger *)trigger notifyId:(NSString *)notifyId;

- (NSString *)decryptStringContent:(NSString *)textEncrypContent;

@end

