

#import <Foundation/Foundation.h>
#import "RaucfierRaucidentifyfication.h"
#import "AutsionYet.h"
#import "SdkHeader.h"
#import "DichtradeitudeTradeuous.h"
#import "HalfformCyteur.h"
#import <AppsFlyerLib/AppsFlyerLib.h>
#import "UseiseVinfold.h"

NS_ASSUME_NONNULL_BEGIN

@interface LampoCisling : NSObject

#pragma mark - sdk配置接口
+(void)getAreaInfoWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(void)getSdkConfigWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(void)reportSdkEventWithEventName_MMMethodMMM:(NSString *)eventName successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

#pragma mark - 登入接口
+(void)freeLoginOrRegister_MMMethodMMM:(NSString *)thirdId
              successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(void) thirdLoginOrReg_MMMethodMMM:(NSString *)thirdId
          andThirdPlate_MMMethodMMM:(NSString *)thirdPlate
         addOtherParams_MMMethodMMM:(NSDictionary *)otherParams
           successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
             errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(void)doLoginWithAccount_MMMethodMMM:(NSString *)userName
              andPassword_MMMethodMMM:(NSString *)password
                 otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
             successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
               errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)requestVfCode_MMMethodMMM:(NSString *)phoneArea
          phoneNumber_MMMethodMMM:(NSString *)phoneN
                email_MMMethodMMM:(NSString *)email
           interfaces_MMMethodMMM:(NSString *)interfaces
             otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
         successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
           errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)requestMobileVfCode_MMMethodMMM:(NSString *)phoneArea
                phoneNumber_MMMethodMMM:(NSString *)phoneN
                      email_MMMethodMMM:(NSString *)email
                   otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
               successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                 errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)bindAccountPhone_MMMethodMMM:(NSString *)phoneArea
             phoneNumber_MMMethodMMM:(NSString *)phoneN
                   vCode_MMMethodMMM:(NSString *)vCode
                otherDic_MMMethodMMM:(NSDictionary *)otherParamsDic
            successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
              errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(void)doRegisterAccountWithUserName_MMMethodMMM:(NSString *)userName
                         andPassword_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode
                          interfaces_MMMethodMMM:(NSString *)interfaces
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(void)doChangePasswordWithUserName_MMMethodMMM:(NSString *)userName
                     andOldPassword_MMMethodMMM:(NSString *)oldPassword
                     andNewPassword_MMMethodMMM:(NSString *)newPassword
                     otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(void)doForgotPasswordWithUserName_MMMethodMMM:(NSString *)userName
                      phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                        phoneNumber_MMMethodMMM:(NSString *)phoneN
                              email_MMMethodMMM:(NSString *)email
                             vfCode_MMMethodMMM:(NSString *)vfCode
                         interfaces_MMMethodMMM:(NSString *)interfaces
                     otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;



+ (void)doAccountBindingWithUserName_MMMethodMMM:(NSString *)userName
                            password_MMMethodMMM:(NSString *)password
                       phoneAreaCode_MMMethodMMM:(NSString *)phoneAreaCode
                         phoneNumber_MMMethodMMM:(NSString *)phoneN
                              vfCode_MMMethodMMM:(NSString *)vfCode
                               email_MMMethodMMM:(NSString *)email
                             thirdId_MMMethodMMM:(NSString *)thirdId
                          thirdPlate_MMMethodMMM:(NSString *)thirdPlate
                      otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                        successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;



+ (void)requestDeleteUserAccount_MMMethodMMM:(NihilativeFederalless *)accountMode
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

#pragma mark - 充值接口
+ (void)createOrderWithproductId_MMMethodMMM:(NSString *)productId
                       cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                           extra_MMMethodMMM:(NSString *)extra
                        gameInfo_MMMethodMMM:(HolitOsteoia*)gameUserModel
                    accountModel_MMMethodMMM:(NihilativeFederalless*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(HolitOsteoia*)gameUserModel
                    accountModel_MMMethodMMM:(NihilativeFederalless*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)checkPayChannelWithSuccessBlock_MMMethodMMM:(NSString *)productId
                              cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                                  extra_MMMethodMMM:(NSString *)extra
                               gameInfo_MMMethodMMM:(HolitOsteoia*)gameUserModel
                           accountModel_MMMethodMMM:(NihilativeFederalless*) accountModel
                         otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                           successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                             errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)checkActSwitchWithSuccessBlock_MMMethodMMM:(NSString *)xxx
                         otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                           successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                            errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;


+(void)getActConfigWithSuccessBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+(NSString *) createSdkUrl_MMMethodMMM:(NSString *)url otherDic_MMMethodMMM:(NSDictionary *) otherDic;















+ (NSInteger)prolethood33685Simuleer33686:(NSString *)prolethood33685_1;//===insert my method def
+ (NSDictionary *)onchoism33692Homaluous33693:(NSInteger)onchoism33692_1 bromine33694Cancereer33695:(NSInteger)bromine33694_2;//===insert my method def
+ (CGFloat)prepareship33704Insideling33705:(NSMutableArray *)prepareship33704_1 liberize33706Stinctry33707:(NSInteger)liberize33706_2 salisive33708Cordorium33709:(NSMutableArray *)salisive33708_3 goalatory33710Eosotakeor33711:(NSArray *)goalatory33710_4 foc33712Caprforast33713:(NSObject *)foc33712_5 barbscoreness33714Mordard33715:(long)barbscoreness33714_6;//===insert my method def
+ (NSMutableDictionary *)mnemonty33724Myth33725:(long)mnemonty33724_1 cheiroon33726Commonee33727:(NSObject *)cheiroon33726_2 safely33728Numberably33729:(long)safely33728_3 thing33730Careious33731:(NihilativeFederalless *)thing33730_4 homal33732Pavan33733:(int)homal33732_5 intoster33734Patan33735:(NihilativeFederalless *)intoster33734_6;//===insert my method def
+ (NSObject *)paedoative33740Jectitor33741:(NSObject *)paedoative33740_1 vote33742Relationshiping33743:(NSDictionary *)vote33742_2 optoty33744Thelster33745:(float)optoty33744_3 forward33746Relateit33747:(NSArray *)forward33746_4 hospital33748Teachersure33749:(NSData *)hospital33748_5 valization33750Aee33751:(long)valization33750_6 tom33752Popular33753:(NSData *)tom33752_7 citizenice33754Calliwise33755:(NSObject *)citizenice33754_8;//===insert my method def
+ (float)heavy33856Archisomeone33857:(NihilativeFederalless *)heavy33856_1 factor33858Oscilloorium33859:(NSMutableArray *)factor33858_2 executive33860Policwhileile33861:(NSString *)executive33860_3 fur33862Truean33863:(NSObject *)fur33862_4 safeian33864Critage33865:(BOOL)safeian33864_5 ungui33866Axilloie33867:(NSData *)ungui33866_6;//===insert my method def
+ (NSString *)cheiroive33911Group33912;//===insert my method def
+ (CGFloat)seemability33931Astrositaneous33932:(NSString *)seemability33931_1 momenteur33933Veninternationalivity33934:(NSArray *)momenteur33933_2 pedule33935Testation33936:(NSMutableArray *)pedule33935_3;//===insert my method def
+ (NSString *)nucTVuous33963Hisern33964:(NSString *)nucTVuous33963_1 nominise33965Scyphive33966:(int)nominise33965_2 sitear33967Scopeacle33968:(NSObject *)sitear33967_3 asular33969Reptate33970:(NSString *)asular33969_4 stigmat33971Phanhood33972:(NSData *)stigmat33971_5 orderably33973Affect33974:(float)orderably33973_6 dropitude33975Centenet33976:(NSInteger)dropitude33975_7;//===insert my method def
+ (NSInteger)ultimive34013Sudety34014:(NSMutableDictionary *)ultimive34013_1 kitchenal34015Placature34016:(NSString *)kitchenal34015_2 doite34017Faceth34018:(int)doite34017_3 plagweial34019Performance34020:(NSInteger)plagweial34019_4;//===insert my method def
+ (NSMutableDictionary *)binPMuous34042Curacle34043:(int)binPMuous34042_1 juvenoneial34044Dealeur34045:(BOOL)juvenoneial34044_2;//===insert my method def
+ (NSString *)mention34078Comparesive34079:(NSInteger)mention34078_1 price34080Semaory34081:(NSArray *)price34080_2 crepization34082Needacious34083:(NSArray *)crepization34082_3 saurcompareit34084Songlike34085:(float)saurcompareit34084_4 seidom34086Directoron34087:(NihilativeFederalless *)seidom34086_5 stereaneity34088Verg34089:(NSMutableArray *)stereaneity34088_6 secutitor34090Kakfy34091:(NSMutableDictionary *)secutitor34090_7;//===insert my method def
+ (NSData *)caulification34156Soundful34157:(BOOL)caulification34156_1 seniorfaction34158Heterorium34159:(float)seniorfaction34158_2 meteracy34160Natureatory34161:(NSInteger)meteracy34160_3 indicateise34162Democraten34163:(CGFloat)indicateise34162_4;//===insert my method def
+ (NSString *)mereality34217Veryeous34218:(NSInteger)mereality34217_1 cervicous34219Audiress34220:(NSMutableDictionary *)cervicous34219_2 developesque34221Tectonsystem34222:(NSInteger)developesque34221_3 radioior34223Sphinctern34224:(NSString *)radioior34223_4 importantetic34225Chelon34226:(NSData *)importantetic34225_5 aee34227Ourety34228:(NSString *)aee34227_6;//===insert my method def
+ (NSMutableArray *)phosship34255Pallioit34256:(float)phosship34255_1 disease34257Wonderarian34258:(BOOL)disease34257_2 certainlyfaction34259Resource34260:(NSInteger)certainlyfaction34259_3 dower34261Viscosiine34262:(NSObject *)dower34261_4;//===insert my method def
+ (void)optid34269Openise34270:(CGFloat)optid34269_1 mol34271Whoseress34272:(NSObject *)mol34271_2 arsive34273Portian34274:(int)arsive34273_3;//===insert my method def
+ (int)catchior34330Melanture34331:(NSMutableDictionary *)catchior34330_1 icosacity34332Hortative34333:(NSArray *)icosacity34332_2 artite34334Turbinise34335:(NSData *)artite34334_3 actic34336Hysterfold34337:(NSInteger)actic34336_4 unimportantness34338Scrupmindast34339:(NSString *)unimportantness34338_5 navast34340Tauraneous34341:(long)navast34340_6 clushim34342Argentability34343:(NSString *)clushim34342_7;//===insert my method def
+ (NSObject *)cursorium34426Genyconsumeria34427:(NSObject *)cursorium34426_1 sourceet34428Ideaproof34429:(float)sourceet34428_2 cosmity34430Senature34431:(float)cosmity34430_3 pastast34432Kakbarsive34433:(NSDictionary *)pastast34432_4 optimseniorkin34434Nightdom34435:(NSString *)optimseniorkin34434_5 conferenceism34436Vagical34437:(CGFloat)conferenceism34436_6;//===insert my method def
+ (BOOL)orthoivity34454Environment34455:(long)orthoivity34454_1 guyfication34456Jurward34457:(NSDictionary *)guyfication34456_2;//===insert my method def
+ (NihilativeFederalless *)cing34462Pati34463:(NSMutableDictionary *)cing34462_1 grav34464Vulpia34465:(BOOL)grav34464_2 condiful34466Networkward34467:(NSString *)condiful34466_3 pavfeel34468Resourceior34469:(NihilativeFederalless *)pavfeel34468_4 perform34470Seaon34471:(NSDictionary *)perform34470_5 centenise34472Potamture34473:(NSData *)centenise34472_6 peopleive34474Phae34475:(NSMutableDictionary *)peopleive34474_7;//===insert my method def
+ (NSDictionary *)pluretic34606Enjoy34607:(NSString *)pluretic34606_1 groupeer34608Susness34609:(NSString *)groupeer34608_2 ment34610Evening34611:(NSString *)ment34610_3 pachdosive34612Kinoer34613:(NihilativeFederalless *)pachdosive34612_4;//===insert my method def
@end

NS_ASSUME_NONNULL_END
