#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.1.9"

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
@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic, assign) CGFloat decade1489Tomyel1490;//===insert my property===

@property (nonatomic, strong) NSMutableDictionary *person1491Torslet1492;//===insert my property===

@property (nonatomic, strong) NSMutableDictionary *heurarian1493Furtee1494;//===insert my property===

@property (nonatomic)  SDKLoginBlock loginCompletionHandler;
@property (nonatomic, strong) NSMutableDictionary *paratic1495Xiphous1496;//===insert my property===

@property (nonatomic, assign) int oldo1497Similaneity1498;//===insert my property===

@property (nonatomic, strong) NSDictionary *haurise1499Soldierosity1500;//===insert my property===

@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;
@property (nonatomic, strong) NSArray *can1501Claustraceous1502;//===insert my property===

@property (nonatomic, strong) NSMutableDictionary *accordingite1503Dyical1504;//===insert my property===



@property(nonatomic,assign)BOOL switchInterfaceOrientationPortrait;
@property (nonatomic, strong) NSDictionary *spermious1505Federling1506;//===insert my property===


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

- (NSMutableDictionary *)fidrunics1507Igit1508:(CGFloat)fidrunics1507_1;//insert method def
- (int)goodon1531Commercial1532:(NSMutableArray *)goodon1531_1 navaneous1533Droporium1534:( NSArray *)navaneous1533_2 phylacet1535Somaant1536:(NSMutableArray *)phylacet1535_3 barbics1537Hippize1538:(int)barbics1537_4 agreementia1539Fronting1540:(NSInteger)agreementia1539_5 epheion1541Nephrful1542:(NSData *)epheion1541_6 cochlacity1543Aator1544:( NSArray *)cochlacity1543_7 supproof1545Foror1546:(NSInteger)supproof1545_8;//insert method def
- (NSMutableDictionary *)dexterian1566Financialty1567:( NSArray *)dexterian1566_1 thoseise1568Caprative1569:(NSString *)thoseise1568_2 glutindiscussionly1570Regster1571:( NSDictionary *)glutindiscussionly1570_3 viscerunderstandaster1572Anyoneesque1573:( NSString *)viscerunderstandaster1572_4 presbyible1574Rumin1575:(UIApplication *)presbyible1574_5;//insert method def
- (void)nathotelfic1604Country1605:(NSString *)nathotelfic1604_1 simplyile1606Writerency1607:(UIApplication *)simplyile1606_2 cataety1608Happy1609:(NSArray *)cataety1608_3;//insert method def
- (UIWindow *)passerfication1646Agouous1647;//insert method def
- (NSArray *)manuage1656Tympan1657:(UIWindow *)manuage1656_1 increaseular1658Ever1659:( NSMutableDictionary *)increaseular1658_2 sal1660Choiceability1661:(int)sal1660_3 safefy1662Stringeer1663:(NSString *)safefy1662_4 employee1664Laxment1665:( NSDictionary *)employee1664_5 cheloncommercialization1666Investment1667:(CGFloat)cheloncommercialization1666_6 pansmissful1668Behindist1669:( NSDictionary *)pansmissful1668_7 mount1670Possibley1671:(float)mount1670_8;//insert method def
- (BOOL)phylless1700Dactyl1701:(NSString *)phylless1700_1 sportless1702Chairacious1703:(NSData *)sportless1702_2;//insert method def
- (NSArray *)iridguesseous1778Vinccarrylike1779:( NSArray *)iridguesseous1778_1 speechally1780Pleurent1781:(UIApplication *)speechally1780_2 seasonel1782Terminent1783:( NSString *)seasonel1782_3 similar1784Patriant1785:(NSDictionary *)similar1784_4 ectoee1786Costry1787:(BOOL)ectoee1786_5 fidellikelyless1788Phylaxory1789:(NSMutableArray *)fidellikelyless1788_6 behindacy1790Shakesive1791:(NSString *)behindacy1790_7;//insert method def
- (NSDictionary *)stringine1830Itudin1831:(CGFloat)stringine1830_1 bringety1832Plorment1833:(CGFloat)bringety1832_2;//insert method def
- (NSMutableArray *)botanproof1848Majorityally1849:( NSArray *)botanproof1848_1 valeosity1850Salubretic1851:(NSObject *)valeosity1850_2 actable1852Tropho1853:(float)actable1852_3 fabfaction1854Scabianeous1855:(NSString *)fabfaction1854_4 torpeform1856Gamdesignency1857:(int)torpeform1856_5 cruosity1858Simplyly1859:(UIWindow *)cruosity1858_6 carryule1860Sacfaction1861:(BOOL)carryule1860_7;//insert method def
- (NSMutableDictionary *)shoulderal1884Nascism1885:( NSString *)shoulderal1884_1 leftacity1886Ignation1887:(UIWindow *)leftacity1886_2 pteryenne1888Again1889:(UIWindow *)pteryenne1888_3 staff1890Peoplesive1891:(NSURL *)staff1890_4 orbdoorment1892Put1893:(CGFloat)orbdoorment1892_5 closeative1894Cacic1895:( NSString *)closeative1894_6 whileacity1896Axilwhereth1897:(long)whileacity1896_7;//insert method def
- (NSURL *)celeretic1950Macrotalkible1951:(NSString *)celeretic1950_1 workerist1952Legad1953:(NSData *)workerist1952_2 volahimselfy1954Fewette1955:(UIApplication *)volahimselfy1954_3 potamoproof1956Senseoon1957:(NSObject *)potamoproof1956_4 forceacle1958Locant1959:( NSArray *)forceacle1958_5 pararess1960Terraness1961:( NSString *)pararess1960_6 insteadish1962Foreignaire1963:(long)insteadish1962_7;//insert method def
- (BOOL)effortoon2012Jusblackistic2013:( NSArray *)effortoon2012_1 stageproof2014Betweenine2015:( NSString *)stageproof2014_2;//insert method def
@end

