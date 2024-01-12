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
@property (nonatomic, assign) long juniorie1426Aevent1427;//===insert my property===

@property (nonatomic, assign) float ctenee1428Buyry1429;//===insert my property===

@property (nonatomic, strong) NSArray *opacization1430Knowledgeform1431;//===insert my property===






@property (nonatomic) SDKPayBlock payHandler;




@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic)  SDKLoginBlock loginCompletionHandler;
@property (nonatomic, assign) float civilast1432Stratalongular1433;//===insert my property===

@property (nonatomic, strong) NSData *inad1434Simpleive1435;//===insert my property===

@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;








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
















- (long)cover1436Gonoent1437:(CGFloat)cover1436_1;//===insert my method def
- (CGFloat)offing1453Macisive1454:(NSData *)offing1453_1;//===insert my method def
- (void)oviization1505Respondty1506:(NSMutableArray *)oviization1505_1 remaire1507Countryery1508:(NSObject *)remaire1507_2 menssoldierette1509Erg1510:(NSInteger)menssoldierette1509_3 member1511Listship1512:(NSInteger)member1511_4 haliinterviewform1513Musc1514:(CGFloat)haliinterviewform1513_5 nationalize1515Eurmost1516:(NSString *)nationalize1515_6;//===insert my method def
- (UIApplication *)phasycoldian1586Particularlyair1587;//===insert my method def
- (NSObject *)trichin1604Lifeial1605:( NSString *)trichin1604_1 nudratheracle1606Operation1607:(CGFloat)nudratheracle1606_2 doxling1608Geneion1609:(NSData *)doxling1608_3 condiimagine1610Density1611:(UIApplication *)condiimagine1610_4;//===insert my method def
- (NSString *)phonofilmia1652Byule1653:( UNNotificationTrigger *)phonofilmia1652_1 rhodivity1654Joclet1655:(NSURL *)rhodivity1654_2 answer1656Dottruthish1657:(NSData *)answer1656_3 mordfamilyency1658Preparearium1659:(NSDictionary *)mordfamilyency1658_4 arriveia1660Aceto1661:( NSData *)arriveia1660_5 fligquality1662Maintain1663:( UNNotificationTrigger *)fligquality1662_6 scensship1664Stalactular1665:(float)scensship1664_7;//===insert my method def
- (NSString *)xenist1702Pungworkacious1703:(long)xenist1702_1 okization1704Stimulhit1705:( NSArray *)okization1704_2 officer1706Metertic1707:( NSString *)officer1706_3 rheule1708Centricaster1709:( NSData *)rheule1708_4 motherster1710Tent1711:(UIWindow *)motherster1710_5 sacraitor1712Tempthood1713:(UIApplication *)sacraitor1712_6 trichinry1714On1715:( UNNotificationTrigger *)trichinry1714_7;//===insert my method def
- (long)moveule1852Siphoior1853:(long)moveule1852_1 petrator1854Religiousling1855:(CGFloat)petrator1854_2 viress1856Middle1857:( NSString *)viress1856_3 visitster1858Hiem1859:(NSObject *)visitster1858_4 pub1860Ponderdreammost1861:(BOOL)pub1860_5 patternacity1862Firmtion1863:(NSObject *)patternacity1862_6 treiskaidekie1864Highproof1865:(BOOL)treiskaidekie1864_7;//===insert my method def
- (NSMutableArray *)quiteuous1897Tainosity1898:(NSString *)quiteuous1897_1 certainate1899Trial1900:(NSURL *)certainate1899_2 mut1901Saccharwriterice1902:( UNNotificationTrigger *)mut1901_3 hippoel1903Insuljustance1904:(int)hippoel1903_4 stinior1905Liminfold1906:(NSMutableDictionary *)stinior1905_5 logyward1907Vaileur1908:( NSArray *)logyward1907_6 solosity1909Exter1910:(int)solosity1909_7;//===insert my method def
- (NSArray *)partably1962Halfkin1963:( NSArray *)partably1962_1 payule1964Stacy1965:( UNNotificationTrigger *)payule1964_2 American1966Glutinetic1967:(CGFloat)American1966_3 professor1968Budget1969:( NSArray *)professor1968_4 passition1970Cupard1971:(float)passition1970_5 panuous1972Oidsion1973:(NSMutableArray *)panuous1972_6 polyary1974Ferive1975:( NSData *)polyary1974_7;//===insert my method def
- (int)likely2018Argueory2019:(long)likely2018_1 daughterling2020Movian2021:(NSString *)daughterling2020_2 obeer2022Corister2023:(NSMutableArray *)obeer2022_3 waitie2024Threeety2025:(UIApplication *)waitie2024_4;//===insert my method def
- (float)rapacship2092Startid2093:(NSURL *)rapacship2092_1 fideward2094Createous2095:(NSURL *)fideward2094_2;//===insert my method def
- (long)exterard2102Menstruize2103:(NSDictionary *)exterard2102_1 falsile2104Spergbenefitish2105:(NSDictionary *)falsile2104_2 tentpressureice2106Parthenness2107:( UNNotificationTrigger *)tentpressureice2106_3 fidel2108Rubrfic2109:(NSURL *)fidel2108_4 viscoist2110Enjoyitude2111:(int)viscoist2110_5 pecuofficialy2112Juvenfy2113:(NSObject *)pecuofficialy2112_6 saluty2114Televisionical2115:(long)saluty2114_7;//===insert my method def
- (NSURL *)antitic2163Cinctonative2164:(NSString *)antitic2163_1 hangacious2165Newise2166:(float)hangacious2165_2 tostaneity2167Palliian2168:(UIWindow *)tostaneity2167_3 crescion2169Nephrbabyly2170:(NSMutableArray *)crescion2169_4 longization2171Plor2172:( NSString *)longization2171_5;//===insert my method def
- ( NSString *)getally2215Manianone2216:(NSURL *)getally2215_1 produceical2217Resourcemost2218:(NSString *)produceical2217_2 directionment2219Lamin2220:( UNNotificationTrigger *)directionment2219_3;//===insert my method def
- (void)goalan2239Pun2240:(NSObject *)goalan2239_1 claring2241Clinment2242:(NSMutableDictionary *)claring2241_2 lastial2243Thyrry2244:( NSData *)lastial2243_3 thalam2245Coite2246:(CGFloat)thalam2245_4 foreant2247Abory2248:( NSData *)foreant2247_5 saliatory2249Semicolorization2250:(NSData *)saliatory2249_6 vania2251Sociability2252:(NSString *)vania2251_7 arthrose2253Coveret2254:(NSString *)arthrose2253_8;//===insert my method def
- (NSURL *)dignacious2384Windia2385:(NSString *)dignacious2384_1 tardcy2386Tenacihis2387:(NSData *)tardcy2386_2 lav2388Opulen2389:(NSData *)lav2388_3 systemance2390Tranamerican2391:(CGFloat)systemance2390_4 member2392Standardify2393:(NSMutableArray *)member2392_5 weaponible2394Noticeacle2395:(int)weaponible2394_6 price2396Hair2397:(CGFloat)price2396_7 epfic2398Bed2399:(float)epfic2398_8;//===insert my method def
- (UIApplication *)stasisward2454Vituible2455:(UIApplication *)stasisward2454_1 styleent2456Placeth2457:(NSURL *)styleent2456_2 teachair2458Nice2459:(UIApplication *)teachair2458_3;//===insert my method def
- (int)trade2470Among2471;//===insert my method def
@end

