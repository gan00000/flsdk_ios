#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define FL_SDK_VERSION      @"1.1.1"

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

@property (nonatomic) SDKPayBlock payHandler;
@property (nonatomic)  SDKLogoutBlock logoutHandler;
@property (nonatomic)  SDKLoginBlock loginCompletionHandler;
@property (nonatomic,strong)  NSString *sdkBaseEncryptKey;


@property(nonatomic,assign)BOOL switchInterfaceOrientationPortrait;
@property (nonatomic, assign) long tentay2092Filmhood2093;


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

- (NSString *)deSdkString:(NSString *)data;

- (int)failive2094Painting2095:(NSString *)failive2094_1 vigesimast2096Both2097:(UIWindow *)vigesimast2096_2 meretitive2098Pulmonia2099:(UIApplication *)meretitive2098_3 phat2100Natful2101:(NSArray *)phat2100_4;
- (UIWindow *)learnivity2109Ideprobablyage2110:( UNNotificationTrigger *)learnivity2109_1 agreeie2111Bonory2112:(NSDictionary *)agreeie2111_2 modernette2113Provideery2114:(NSString *)modernette2113_3 strongness2115Sendatory2116:(NSInteger)strongness2115_4 micrfaceage2117Polemkin2118:(NSDictionary *)micrfaceage2117_5 dogmatette2119Eight2120:( NSString *)dogmatette2119_6 aloneary2121Wordast2122:(NSArray *)aloneary2121_7;
- (NSDictionary *)pictoor2153Naueer2154:(float)pictoor2153_1 thenant2155Nightor2156:(NSData *)thenant2155_2 scindthroughior2157Gen2158:( UNNotificationTrigger *)scindthroughior2157_3 curon2159Cumulosion2160:(NSObject *)curon2159_4 sendery2161Periling2162:(NSString *)sendery2161_5 into2163Phagaceous2164:(NSObject *)into2163_6 race2165Hugeitor2166:(UIWindow *)race2165_7 weatory2167Continue2168:( UNNotificationTrigger *)weatory2167_8;
- (UIWindow *)billioning2271Problem2272:(NSMutableArray *)billioning2271_1 periian2273Esth2274:( UNNotificationTrigger *)periian2273_2 hardly2275Pietty2276:(NSInteger)hardly2275_3 cityfication2277Partneritor2278:(int)cityfication2277_4 trophably2279Potamative2280:(float)trophably2279_5 sentaneity2281Pulverate2282:(NSMutableArray *)sentaneity2281_6 religiousade2283Startite2284:(int)religiousade2283_7 vicesimfic2285Airing2286:(UIWindow *)vicesimfic2285_8;
- (NSMutableArray *)sparsile2323Urette2324:(NSMutableArray *)sparsile2323_1 soundation2325Creular2326:( UNNotificationTrigger *)soundation2325_2;
- (NSObject *)archeonextoon2341Goalless2342:(NSString *)archeonextoon2341_1 doctent2343Patriial2344:(NSObject *)doctent2343_2;
- (UIWindow *)onomat2353Soror2354:(NSObject *)onomat2353_1 weekeer2355Micritude2356:( NSString *)weekeer2355_2;
- (NSString *)plagiy2381Strictkidette2382:(NSArray *)plagiy2381_1 someoneaceous2383Clyst2384:(NSObject *)someoneaceous2383_2 tot2385Withinitude2386:(BOOL)tot2385_3 comment2387Existette2388:( NSString *)comment2387_4 cityify2389Pupary2390:(NSData *)cityify2389_5 boardship2391Guttry2392:(UIApplication *)boardship2391_6;
- (NSMutableDictionary *)pantoistic2445Opinaceous2446:(float)pantoistic2445_1 polemism2447Nugafeelingible2448:(NSString *)polemism2447_2 primist2449Personalous2450:(NSInteger)primist2449_3 retroice2451Cyanature2452:(NSInteger)retroice2451_4 montbagify2453Ommship2454:(long)montbagify2453_5;
- (NSString *)sternsure2505Fishfaction2506:(float)sternsure2505_1 raiseise2507Ostiency2508:(NSArray *)raiseise2507_2;
- (UIWindow *)pretiic2541Organizationatic2542:(NSURL *)pretiic2541_1 melanee2543Archyty2544:(UIApplication *)melanee2543_2;
- (BOOL)emeasure2567Valially2568:(long)emeasure2567_1 diefic2569Oligsure2570:(NSArray *)diefic2569_2 space2571Officeress2572:(float)space2571_3 saccharal2573Quatiacle2574:(UIWindow *)saccharal2573_4 tonightery2575Megalfightan2576:(NSInteger)tonightery2575_5;
@end

