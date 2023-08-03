#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.1.4"

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
@property (nonatomic, assign) BOOL labinessSortvoiceator;//===insert my property===

@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;
@property (nonatomic, strong) NSMutableDictionary *vehiaQuinttendose;//===insert my property===

@property (nonatomic, assign) CGFloat tradeonFesspossibleeous;//===insert my property===

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

- (NSMutableDictionary *)uvulpressureMediaite:(NSURL *)uvulpressure_1;//insert method def
- (NSData *)pancreaticoifyLiquniceation:(UIApplication *)pancreaticoify_1 forgetishTownern:(UIApplication *)forgetish_2 foriousOurist:(NSString *)forious_3 commercialSoness:(UIApplication *)commercial_4 monillessFallarian:(NSData *)monilless_5 caprSumard:(NSMutableDictionary *)capr_6 audiencetionWhyarian:(NSDictionary *)audiencetion_7 protoneedifyVagalet:(NSObject *)protoneedify_8;//insert method def
- (NSURL *)choreyUnciinternationalsure:(long)chorey_1 mustifyPlodish:(float)mustify_2 easyiteApplyation:(long)easyite_3 dinneritorRealityetic:(int)dinneritor_4 sceptenceGramonation:(float)sceptence_5;//insert method def
- (CGFloat)forDealery:(NSURL *)for_1 gramotureFallacy:(NSMutableDictionary *)gramoture_2 majoruousScend:(NSURL *)majoruous_3 peopleiveBudget:(NSURL *)peopleive_4 importantaireConsideric:(NSString *)importantaire_5 ludadFindfaction:(NSMutableDictionary *)ludad_6;//insert method def
- (int)rhigosePlaintesque:( NSString *)rhigose_1;//insert method def
- (BOOL)counterabilityOrnbutar:(NSArray *)counterability_1 pedoshipPickency:( NSString *)pedoship_2 xiphressHedo:(int)xiphress_3 sorbitiveWestern:(NSData *)sorbitive_4;//insert method def
- (float)somaTractfic:(long)soma_1 attentionAristality:(long)attention_2 labitionControlatic:(NSString *)labition_3 identifyoriumAmphee:(NSMutableArray *)identifyorium_4 aboutairOffster:(NSDictionary *)aboutair_5;//insert method def
- (UIApplication *)variousFamic;//insert method def
- (UIApplication *)melleousDynaent:(UIApplication *)melleous_1 likeenneFurt:(NSMutableArray *)likeenne_2;//insert method def
@end

