#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.0.8"

#define Decrypt_AllStringContent(text)  [[MWSDK share] decodeSdkContent:text]

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

@property (nonatomic, assign) BOOL showAct;
@property (nonatomic, strong) NSString *pentecost1434Kinanythingenne1435;//===insert my property===

@property (nonatomic, assign) NSInteger mechanoit1436Lamnlamellaneity1437;//===insert my property===


@property (nonatomic) SDKPayBlock payHandler;
@property (nonatomic, assign) BOOL prior1438Vanist1439;//===insert my property===

@property (nonatomic, assign) float flat1440Hesless1441;//===insert my property===

@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic)  SDKLoginBlock loginCompletionHandler;
@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;
@property (nonatomic, assign) CGFloat aristary1442Agoar1443;//===insert my property===

@property (nonatomic, assign) long culturalaceous1444Broncher1445;//===insert my property===

@property (nonatomic, strong) NSArray *phemwise1446Lowfaction1447;//===insert my property===



@property(nonatomic,assign)BOOL switchInterfaceOrientationPortrait;

+ (instancetype)share;

- (NSString *) decodeSdkContent:(NSString *)data;


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

- (void)openCsWithRoleId:(NSString *)roleId
                 roleName:(NSString *)roleName
                roleLevel:(NSString *)roleLevel
             roleVipLevel:(NSString *)roleVipLevel
               serverCode:(NSString *)serverCode
              serverName:(NSString *)serverName;

#pragma mark -【弃用】
- (void)openCs;
- (void)openCsWithParams:(NSDictionary *)paramDic;

- (void)trackEventWithEventName:(NSString *)name;


- (void)trackEventWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues;

- (void)requestStoreReview;


-(void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock;


-(void)showBindPhoneViewWithBlock:(MWBlock) mBlock;


-(void)showUpgradeAccountViewWithBlock:(MWBlock) mBlock;

-(void)showSocialView;

- (void)showActView;

- (void)requestVfCodeWithAreaCode:(NSString *)areaCode telephone:(NSString *)telephone Block:(MWBlock)mMWBlock;

- (void)requestBindPhoneAreaCode:(NSString *)areaCode telephone:(NSString *)telephone vfCode:(NSString *)vfCode Block:(MWBlock)mMWBlock;

- (void)requestUpgradeWithAccount:(NSString *)account password:(NSString *)password Block:(MWBlock)mMWBlock;


- (void)addLocalNotificationWithTitle:(NSString *)title subtitle:(NSString *)subtitle body:(NSString *)body trigger:(nullable UNNotificationTrigger *)trigger notifyId:(NSString *)notifyId;

- (UIApplication *)raiseaster1448Stocho1449;//insert method def
- (NSInteger)seeress1522Bareur1523:(UIApplication *)seeress1522_1 piair1524Sufeveningan1525:(long)piair1524_2;//insert method def
- (BOOL)hardly1536Archaeoally1537:(NSDictionary *)hardly1536_1;//insert method def
- (NSObject *)findfaction1554Less1555;//insert method def
- (BOOL)hedrose1566Matterfication1567:( UNNotificationTrigger *)hedrose1566_1 specific1568Spaceature1569:(UIWindow *)specific1568_2 simpleitor1570Yessive1571:(int)simpleitor1570_3 tricbelieveie1572Turboality1573:(NSURL *)tricbelieveie1572_4;//insert method def
- (void)patternorium1584Imfewion1585:(long)patternorium1584_1 give1586Scribid1587:(UIWindow *)give1586_2 smalline1588Pancreaticotheirety1589:(NSArray *)smalline1588_3 aboutular1590Dekid1591:(NSURL *)aboutular1590_4 lotose1592Iridot1593:(NSArray *)lotose1592_5;//insert method def
- (long)indeedtion1645Anthropdaughter1646:(NSString *)indeedtion1645_1 fallacy1647Seriesator1648:(BOOL)fallacy1647_2;//insert method def
- (NSArray *)thymally1665Sacriesque1666:(UIApplication *)thymally1665_1 susacious1667Quadragenular1668:( NSArray *)susacious1667_2 currentetic1669Pointfaction1670:(long)currentetic1669_3 plaud1671Past1672:(float)plaud1671_4;//insert method def
- (void)hetertic1713Cunefederal1714:(NSObject *)hetertic1713_1 vinccarrylike1715Factorance1716:(NSInteger)vinccarrylike1715_2 leasttion1717Darksion1718:(NSDictionary *)leasttion1717_3 fide1719Platt1720:(NSInteger)fide1719_4 sophyrestage1721Mechanresponseible1722:( UNNotificationTrigger *)sophyrestage1721_5;//insert method def
- (NSInteger)opoard1745Tenitude1746:(NSInteger)opoard1745_1 kinetant1747Technunit1748:(NSObject *)kinetant1747_2 rostrsion1749Pachise1750:(NSInteger)rostrsion1749_3 statutic1751Rurative1752:(NSInteger)statutic1751_4 hangform1753Containia1754:(NSInteger)hangform1753_5 opage1755Levose1756:(NSInteger)opage1755_6 consumer1757Tussance1758:(NSURL *)consumer1757_7;//insert method def
- (NSMutableArray *)onization1831Sometimesie1832:(NSData *)onization1831_1 tors1833Amphacious1834:(NSDictionary *)tors1833_2 menslike1835Gymnrecentlyer1836:(NSDictionary *)menslike1835_3 acttic1837Large1838:(NSInteger)acttic1837_4 remember1839Fruct1840:(BOOL)remember1839_5 includingar1841Millen1842:( NSArray *)includingar1841_6 natatic1843Mortment1844:(float)natatic1843_7 sacrition1845Current1846:(NSString *)sacrition1845_8;//insert method def
- ( UNNotificationTrigger *)buildingian1927Themselvesette1928:(NSString *)buildingian1927_1 smalline1929Oscillolateen1930:(NSData *)smalline1929_2 quadragenivity1931Throughoutid1932:(NSString *)quadragenivity1931_3 orexiular1933Fidise1934:(UIWindow *)orexiular1933_4 claim1935Ofivity1936:(BOOL)claim1935_5 triptarium1937Muniish1938:(int)triptarium1937_6;//insert method def
- (long)firstular1951Arcsuccessproof1952:(UIApplication *)firstular1951_1 cephaloular1953Hardety1954:(NSString *)cephaloular1953_2 policior1955Syor1956:(int)policior1955_3 vulnerity1957Sendise1958:(NSURL *)vulnerity1957_4;//insert method def
- (NSString *)fatherfier1988Script1989:(NSString *)fatherfier1988_1 paperics1990Oldo1991:( NSString *)paperics1990_2 corticing1992Marketship1993:(NSDictionary *)corticing1992_3 reflectery1994Crypthood1995:(NSMutableDictionary *)reflectery1994_4;//insert method def
- (void)kakoet2002Scribish2003:( NSString *)kakoet2002_1 drap2004Servet2005:(int)drap2004_2 rach2006Gladiion2007:(BOOL)rach2006_3 homoiprobablyarian2008Pactaire2009:(BOOL)homoiprobablyarian2008_4 howeverator2010Opto2011:(CGFloat)howeverator2010_5;//insert method def
@end

