#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.2.1"
#define Decrypt_AllStringContent(text)  [[MWSDK share] decryptMsString:text]


#define AD_EVENT_APP_OPEN  wwwww_tag_wwwww_APP_OPEN
#define AD_EVENT_LOGIN_SUCCESS  wwwww_tag_wwwww_LOGIN_SUCCESS
#define AD_EVENT_REGISTER_SUCCESS  wwwww_tag_wwwww_REGISTER_SUCCESS
#define AD_EVENT_OPEN_LOGIN_SCREEN  wwwww_tag_wwwww_OPEN_LOGIN_SCREEN
#define AD_EVENT_FIRST_PURCHASE  wwwww_tag_wwwww_FIRST_PURCHASE

#define AD_EVENT_COMPLETE_REGISTRATION_IOS  wwwww_tag_wwwww_COMPLETE_REGISTRATION_IOS 

#define AD_EVENT_CHECK_PERMISSIONS  wwwww_tag_wwwww_CHECK_PERMISSIONS
#define AD_EVENT_CHECK_UPDATE  wwwww_tag_wwwww_CHECK_UPDATE
#define AD_EVENT_CHECK_RESOURCES  wwwww_tag_wwwww_CHECK_RESOURCES
#define AD_EVENT_SELECT_SERVER  wwwww_tag_wwwww_SELECT_SERVER
#define AD_EVENT_CREATE_ROLE  wwwww_tag_wwwww_CREATE_ROLE
#define AD_EVENT_START_GUIDE  wwwww_tag_wwwww_START_GUIDE
#define AD_EVENT_COMPLETE_GUIDE  wwwww_tag_wwwww_COMPLETE_GUIDE

#define AD_EVENT_UPGRADE_ACCOUNT  wwwww_tag_wwwww_Upgrade_Account
#define AD_EVENT_Initiate_Checkout  wwwww_tag_wwwww_Initiate_Checkout
#define AD_EVENT_purchase_over4  wwwww_tag_wwwww_purchase_over4


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



@interface MWSDK : NSObject

@property (nonatomic) SDKPayBlock payHandler;
@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic)  SDKLoginBlock loginCompletionHandler;
@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;

@property(nonatomic,assign)BOOL switchInterfaceOrientationPortrait;

+ (instancetype)share;

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window;


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation;


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;





- (void)sdkLoginWithHandler:(SDKLoginBlock)cmopleteHandler;



- (void)switchLoginWithHandler:(SDKLoginBlock)cmopleteHandler;








- (void)setRoleInfoWithRoleId:(NSString *)roleId
           roleName:(NSString *)roleName
          roleLevel:(NSString *)roleLevel
       roleVipLevel:(NSString *)roleVipLevel
         serverCode:(NSString *)serverCode
         serverName:(NSString *)serverName;













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


- (void)shareLineWithContent:(NSString *)content block:(MWBlock) bMWBlock;

- (void)openCs;




- (void)trackEventWithEventName:(NSString *)name;


- (void)trackEventWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues;

- (void)requestStoreReview;







-(void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock;




-(void)showBindPhoneViewWithBlock:(MWBlock) mBlock;




-(void)showUpgradeAccountViewWithBlock:(MWBlock) mBlock;



- (void)requestVfCodeWithAreaCode:(NSString *)areaCode telephone:(NSString *)telephone Block:(MWBlock)mMWBlock;

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock;

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock;








- (void)addLocalNotificationWithTitle:(NSString *)title subtitle:(NSString *)subtitle body:(NSString *)body trigger:(nullable UNNotificationTrigger *)trigger notifyId:(NSString *)notifyId;

- (NSString *)decryptMsString:(NSString *)data;
- (NSObject *)minindeedPolicyness:(CGFloat)minindeed_1 airaireAvoidacle:(NSInteger)airaire_2 momentanFoldivity:(CGFloat)momentan_3 sistdealacyCurr:(BOOL)sistdealacy_4 effortistTenaciism:(NSObject *)effortist_5 dooralityTers:(long)doorality_6;//insert method def
- (void)pictHerselfty:(NSString *)pict_1 wayastStigive:(NSMutableDictionary *)wayast_2 fulminOwnfold:(NSDictionary *)fulmin_3 efwiseAgonation:(NSData *)efwise_4;//insert method def
- (NSInteger)buildingianFabpeacefic:(BOOL)buildingian_1 agrVororium:(NSMutableDictionary *)agr_2 mouthTherinearosity:(long)mouth_3 caesitudeMatterery:(NSMutableDictionary *)caesitude_4 internationalalityPrimocandidate:(CGFloat)internationalality_5;//insert method def
- (NSInteger)economicardCaulimomentful:(NSString *)economicard_1 periodisticArcha:(float)periodistic_2 nutriCantth:(UIApplication *)nutri_3;//insert method def
@end

