#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.0.8"

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
#define AD_EVENT_SELECT_APPLE  wwwww_tag_wwwww_select_apple
#define AD_EVENT_SELECT_OTHER  wwwww_tag_wwwww_select_other

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
@property (nonatomic, assign) float iquar1542Reveal1543;//===insert my property===

@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic)  SDKLoginBlock loginCompletionHandler;
@property (nonatomic, assign) NSInteger dyile1544Newary1545;//===insert my property===

@property (nonatomic, strong) NSMutableArray *coverally1546Ursship1547;//===insert my property===

@property (nonatomic, assign) float easyence1548Rapacery1549;//===insert my property===

@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;


@property(nonatomic,assign)BOOL switchInterfaceOrientationPortrait;

+ (instancetype)share;


- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation;


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window;

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
- (void)openCsWithParams:(NSDictionary *)paramDic;

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

- (int)stuff1550Halth1551;//insert method def
- (NSMutableDictionary *)alwaysate1576Vertic1577:( UNNotificationTrigger *)alwaysate1576_1 vocar1578Cenmost1579:(float)vocar1578_2 unit1580Foenarian1581:(NSMutableDictionary *)unit1580_3 opoad1582Melanacy1583:(float)opoad1582_4 tricesimty1584Supraattorney1585:(NSInteger)tricesimty1584_5 ignaire1586Structice1587:(NSDictionary *)ignaire1586_6 opsation1588Sutery1589:(NSMutableDictionary *)opsation1588_7 sanguinent1590Plumbform1591:( UNNotificationTrigger *)sanguinent1590_8;//insert method def
- (int)wantar1629Hyotic1630:(int)wantar1629_1 organ1631Stop1632:(UIApplication *)organ1631_2 emeticment1633Ornithoism1634:(NSObject *)emeticment1633_3 languagemost1635Waitacious1636:(int)languagemost1635_4 wellization1637Levincreasefic1638:( NSMutableArray *)wellization1637_5;//insert method def
- ( NSMutableArray *)tern1647Fine1648:(NSURL *)tern1647_1;//insert method def
- (NSURL *)valarian1669Orectic1670:(NSArray *)valarian1669_1 ficholdor1671Securityage1672:(NSArray *)ficholdor1671_2 sufferular1673Ursia1674:(NSInteger)sufferular1673_3 anwithino1675Calliitor1676:(UIWindow *)anwithino1675_4 montality1677Fenestria1678:(NSInteger)montality1677_5 expectitor1679Peranency1680:(NSInteger)expectitor1679_6 speakeur1681Awayine1682:(NSArray *)speakeur1681_7 quatern1683Therioast1684:(UIApplication *)quatern1683_8;//insert method def
- (void)beatous1835Specificen1836:(UIApplication *)beatous1835_1 pullan1837Omenable1838:(NSInteger)pullan1837_2 hibernatic1839Cordfic1840:(NSMutableDictionary *)hibernatic1839_3 tricenature1841Heteroing1842:(NSString *)tricenature1841_4 teration1843Patern1844:(NSDictionary *)teration1843_5 foundfatherern1845Protectian1846:(int)foundfatherern1845_6 standardette1847Hemertic1848:(NSURL *)standardette1847_7 ntence1849Continue1850:(NSMutableArray *)ntence1849_8;//insert method def
@end

