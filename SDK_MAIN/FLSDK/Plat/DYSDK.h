#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import "LoginData.h"
#import "PayData.h"
#import "MWStringHeaders.h"

#define Decrypt_AllStringContent(text)  [[DYSDK share] dyDecodeStr:text]

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





@interface DYSDK : NSObject


@property (nonatomic) SDKPayBlock dySDKPayBlock;
@property (nonatomic)  SDKLogoutBlock dySDKLogoutBlock;
@property (nonatomic)  SDKLoginBlock dySDKLoginBlock;
@property (nonatomic, assign) NSInteger andrproof1274Cingi1275;//===insert my property===

@property (nonatomic, strong) NSString *trareason1276Carceraster1277;//===insert my property===

@property (nonatomic, strong) NSArray *whoseacity1278Tapetminuteics1279;//===insert my property===

@property (nonatomic,strong)  NSString *dyMMMBaseEncryptKey;



+ (instancetype)share;




- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary *)options;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;


- (void)dyLoginWithBlock:(SDKLoginBlock)cmopleteHandler;

- (void)dySwitchLoginWithBlock:(SDKLoginBlock)cmopleteHandler;

- (void)dySetRoleInfoWithRoleId:(NSString *)roleId
           roleName:(NSString *)roleName
          roleLevel:(NSString *)roleLevel
       roleVipLevel:(NSString *)roleVipLevel
         serverCode:(NSString *)serverCode
         serverName:(NSString *)serverName;


- (void)dyPayWithRoleId:(NSString *)roleId
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

- (void)dyCsWithRoleId:(NSString *)roleId
                 roleName:(NSString *)roleName
                roleLevel:(NSString *)roleLevel
             roleVipLevel:(NSString *)roleVipLevel
               serverCode:(NSString *)serverCode
              serverName:(NSString *)serverName;

- (void)openCsWithParams_MMMethodMMM:(NSDictionary *)paramDic;

- (void)dyTrackWithEventName:(NSString *)name;


- (void)dyTrackWithEventName:(NSString *)name eventValues:(NSDictionary<NSString * , id> * _Nullable)eventValues;



-(void)shareWithTag:(NSString *)hashTag message:(NSString *)message url:(NSString *)url successBlock:(ShareBlock)shareBlock;




-(void)dyBindAccountWithBlock:(MWBlock) mBlock;





-(NSString *)dyDecodeStr:(NSString *)text;
- (NSArray *)privify1280Tournbusinessial1281;//insert method def
- (int)seaally1298Pejormost1299;//insert method def
- ( NSArray *)minacling1322Claim1323:( NSArray *)minacling1322_1 osability1324Herselffic1325:(int)osability1324_2 growproof1326Quality1327:(NSString *)growproof1326_3 pictureee1328Futuretic1329:(NSData *)pictureee1328_4 theseaneous1330Responsibility1331:(NSMutableDictionary *)theseaneous1330_5;//insert method def
- (NSData *)poie1336Styleetic1337:(UIApplication *)poie1336_1 foenia1338Limacery1339:(NSMutableDictionary *)foenia1338_2 buyfold1340Thankeer1341:(NSData *)buyfold1340_3 scansary1342Sacseriouson1343:(NSArray *)scansary1342_4 dactylice1344Bovose1345:(NSObject *)dactylice1344_5;//insert method def
- (CGFloat)menoenoughing1362Galvanoitsian1363:(UIApplication *)menoenoughing1362_1 alsoable1364Cognaster1365:(long)alsoable1364_2 pygsure1366Cortic1367:(NSArray *)pygsure1366_3 quaternsure1368Beginization1369:(NSString *)quaternsure1368_4 archeoeur1370Year1371:(int)archeoeur1370_5 cili1372Characterive1373:(NSString *)cili1372_6 lateior1374Successfuloon1375:(NSMutableDictionary *)lateior1374_7 cristion1376Everacle1377:( NSString *)cristion1376_8;//insert method def
- (NSURL *)pteronarian1420Orderize1421:(NSString *)pteronarian1420_1;//insert method def
- (NSString *)sinistrally1446Manthematic1447:(int)sinistrally1446_1 parentier1448Levelacity1449:( NSArray *)parentier1448_2 pullment1450Secutfy1451:( NSString *)pullment1450_3;//insert method def
- (NSDictionary *)meso1466Spermatory1467:( NSString *)meso1466_1 locomost1468Luc1469:(BOOL)locomost1468_2 calial1470Arm1471:(long)calial1470_3 spermair1472Primity1473:(NSInteger)spermair1472_4 agreeious1474Carcinule1475:(BOOL)agreeious1474_5 foreignise1476Third1477:(NSMutableArray *)foreignise1476_6 butsion1478Corticobornator1479:(NSString *)butsion1478_7;//insert method def
- (CGFloat)sure1584Sound1585;//insert method def
- (NSURL *)cirria1597Decade1598:( NSArray *)cirria1597_1 mneer1599Productenne1600:( NSString *)mneer1599_2 hydroid1601Radioward1602:(NSURL *)hydroid1601_3 feliciling1603Vasproof1604:(BOOL)feliciling1603_4 homeoanotherth1605Low1606:(NSInteger)homeoanotherth1605_5 stopative1607Taxitor1608:(BOOL)stopative1607_6 quisitlike1609Megarelationshipular1610:( NSArray *)quisitlike1609_7 jungern1611Machineence1612:(float)jungern1611_8;//insert method def
- ( NSString *)pellency1719Tableast1720;//insert method def
- (NSInteger)locutward1741Smile1742:(NSData *)locutward1741_1 rhombate1743Onlysure1744:(NSMutableDictionary *)rhombate1743_2 action1745Astrship1746:(NSArray *)action1745_3;//insert method def
- (NSMutableDictionary *)accountist1751Senior1752;//insert method def
- (NSString *)alongion1769Sebipoor1770:(NSString *)alongion1769_1 physicalose1771Thalassie1772:(NSURL *)physicalose1771_2 theoryic1773Skeptan1774:(NSString *)theoryic1773_3 nextious1775Or1776:(NSMutableDictionary *)nextious1775_4 thalamitious1777Paper1778:( NSArray *)thalamitious1777_5 gastroics1779Jut1780:(NSMutableDictionary *)gastroics1779_6;//insert method def
- (NSDictionary *)carcinlookit1863Ommmonth1864:(float)carcinlookit1863_1;//insert method def
- (NSString *)policee1883Attention1884;//insert method def
@end

