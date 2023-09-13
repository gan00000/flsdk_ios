#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.0.8"

#define Decrypt_AllStringContent(text)  [[MWSDK share] deSdkString:text]

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
@property (nonatomic, assign) int omay1347Lievcy1348;//===insert my property===

@property (nonatomic, assign) long tardit1349Beatism1350;//===insert my property===

@property (nonatomic, assign) BOOL liqueling1351Investmentibility1352;//===insert my property===

@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic, strong) NSString *especiallyful1353Severalate1354;//===insert my property===

@property (nonatomic)  SDKLoginBlock loginCompletionHandler;
@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;
@property (nonatomic, assign) BOOL feminhappenette1355Eithery1356;//===insert my property===

@property (nonatomic, strong) NSMutableDictionary *pallioful1357Whatenne1358;//===insert my property===



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

- (NSInteger)free1359Environmentalfic1360:(NSData *)free1359_1 everyty1361Saurstockety1362:( NSMutableDictionary *)everyty1361_2 thenant1363Turpery1364:(NSObject *)thenant1363_3 termitad1365Discussionitude1366:(NSString *)termitad1365_4;//insert method def
- (UIWindow *)seriousfication1385Machinean1386:(int)seriousfication1385_1 vitrcoldless1387Challengeious1388:(UIApplication *)vitrcoldless1387_2 authorityite1389Reportfic1390:(long)authorityite1389_3 agencyability1391Jejunoutsidetic1392:(NSMutableDictionary *)agencyability1391_4 teration1393Menacious1394:(CGFloat)teration1393_5 lead1395Ovible1396:(UIApplication *)lead1395_6;//insert method def
- (CGFloat)serresque1415Scabianeous1416:(NSObject *)serresque1415_1 structairization1417Magn1418:(NSArray *)structairization1417_2 himier1419Meretitive1420:( NSString *)himier1419_3 kin1421Watchar1422:(NSMutableArray *)kin1421_4;//insert method def
- (NSArray *)oncholieacious1447Ruber1448:(NSString *)oncholieacious1447_1 sipho1449Liveitor1450:(BOOL)sipho1449_2;//insert method def
- (NSMutableArray *)decisiony1465Leg1466:(int)decisiony1465_1 battize1467Statewise1468:(NSDictionary *)battize1467_2 ideprobablyage1469Hardot1470:(UIApplication *)ideprobablyage1469_3 fanddescribe1471Rid1472:(int)fanddescribe1471_4 serviceaceous1473Ostiine1474:(NSString *)serviceaceous1473_5 pelagism1475Tetanoization1476:(UIWindow *)pelagism1475_6 representling1477Dexteran1478:(NSString *)representling1477_7;//insert method def
- (NSObject *)becomeen1497Chargeator1498:(NSData *)becomeen1497_1 soundless1499Eso1500:(long)soundless1499_2 sidemost1501Mustify1502:(NSInteger)sidemost1501_3 hospitition1503Trixry1504:(float)hospitition1503_4 considerling1505Bestibility1506:(NSArray *)considerling1505_5 tapet1507Democratarium1508:(BOOL)tapet1507_6 feelinger1509Drop1510:(NSArray *)feelinger1509_7 nupticapitalice1511Plyaneous1512:(UIWindow *)nupticapitalice1511_8;//insert method def
- (NSArray *)scission1591Joc1592:(NSMutableDictionary *)scission1591_1 finalsion1593Always1594:(NSArray *)finalsion1593_2 smallally1595Ortard1596:(NSObject *)smallally1595_3;//insert method def
- (NSString *)director1613Prav1614:(NSArray *)director1613_1 pansseveralatory1615Whiteit1616:( NSString *)pansseveralatory1615_2 marketitious1617Winable1618:(NSString *)marketitious1617_3 federalical1619Dyite1620:( UNNotificationTrigger *)federalical1619_4 imagine1621Media1622:(NSURL *)imagine1621_5;//insert method def
- (float)calidivity1657Uvulspendfication1658;//insert method def
- (NSInteger)archeoarian1668Gresson1669:(UIWindow *)archeoarian1668_1 almactionet1670Surdincludingious1671:(NSData *)almactionet1670_2 reduceative1672Veryarian1673:(CGFloat)reduceative1672_3 air1674Narcitude1675:(CGFloat)air1674_4 lausprojectacy1676Inier1677:( NSMutableDictionary *)lausprojectacy1676_5 realizekin1678Personacity1679:(int)realizekin1678_6;//insert method def
- (float)leadaster1702Heptresponseful1703:( NSString *)leadaster1702_1 plattcanaster1704Dog1705:(NSDictionary *)plattcanaster1704_2;//insert method def
- (NSMutableDictionary *)goetic1754Borward1755:(NSInteger)goetic1754_1 rhynchlet1756Scopinsideability1757:(float)rhynchlet1756_2 refy1758Pheracious1759:( NSString *)refy1758_3 lexicism1760Gelsetuous1761:(NSString *)lexicism1760_4 pathfication1762Yearose1763:(NSObject *)pathfication1762_5 ptyalcy1764Ornithaire1765:(NSInteger)ptyalcy1764_6;//insert method def
- (NSMutableDictionary *)teacher1906Apstatementaneous1907:(long)teacher1906_1 pherability1908Mediaality1909:(int)pherability1908_2 norly1910Dichoth1911:(NSArray *)norly1910_3;//insert method def
- (NSURL *)photster1922Cameraaceous1923:(NSMutableArray *)photster1922_1 pollicular1924Omasine1925:(NSObject *)pollicular1924_2 specialeous1926Flatile1927:(BOOL)specialeous1926_3 sublet1928Sonine1929:(long)sublet1928_4 wishacy1930Formfaction1931:(float)wishacy1930_5 volballier1932Thoughtise1933:(CGFloat)volballier1932_6;//insert method def
- (NSArray *)mesition1945Microsive1946:(UIApplication *)mesition1945_1 teamial1947Dogmatment1948:(NSMutableArray *)teamial1947_2 whosion1949Line1950:(int)whosion1949_3 phylaxform1951Menstruavailable1952:(NSURL *)phylaxform1951_4 acriful1953Determineal1954:(NSString *)acriful1953_5 polyile1955Managementdom1956:(NSMutableArray *)polyile1955_6 baroial1957Guttry1958:(NSMutableArray *)baroial1957_7 handaire1959Whosion1960:(NSArray *)handaire1959_8;//insert method def
- (long)molespeciallywise1993Open1994;//insert method def
- (NSString *)issueair2025Strongion2026:(NSString *)issueair2025_1 ornithoitude2027Etymjoin2028:(NSMutableDictionary *)ornithoitude2027_2 legatic2029Agoaire2030:( UNNotificationTrigger *)legatic2029_3 streetsure2031Pavsome2032:(int)streetsure2031_4 agreementer2033Strategyness2034:(NSURL *)agreementer2033_5 ceraman2035Dorsattackistic2036:(NSArray *)ceraman2035_6 challengeress2037Agorization2038:(float)challengeress2037_7;//insert method def
- (NSString *)phemproductionify2063Appearen2064:(int)phemproductionify2063_1 situationior2065Egriivity2066:(NSObject *)situationior2065_2 vellesocietyics2067Preventine2068:(NSDictionary *)vellesocietyics2067_3 informationetic2069Pteroule2070:(NSMutableDictionary *)informationetic2069_4 foreignsive2071Largoon2072:( UNNotificationTrigger *)foreignsive2071_5 newaire2073Gradsheless2074:( NSString *)newaire2073_6 vic2075Dicproof2076:(UIWindow *)vic2075_7 radioty2077Dinofamily2078:(CGFloat)radioty2077_8;//insert method def
- (CGFloat)rostrcertainlyery2138Acuous2139:(NSString *)rostrcertainlyery2138_1 natatic2140Sexty2141:( NSString *)natatic2140_2;//insert method def
- (UIWindow *)solion2147Decisionly2148;//insert method def

- (NSString *)deSdkString:(NSString *)data;


@end

