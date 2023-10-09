

#import <Foundation/Foundation.h>
#import "OplelSmallite.h"
#import "FontneareerCycling.h"
#import "SdkHeader.h"
#import "LoginResponse.h"
#import "ConfigResponse.h"
#import <AppsFlyerLib/AppsFlyerLib.h>


NS_ASSUME_NONNULL_BEGIN

@interface TransifySideatory : NSObject

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



+ (void)requestDeleteUserAccount_MMMethodMMM:(AccountModel *)accountMode
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

#pragma mark - 充值接口
+ (void)createOrderWithproductId_MMMethodMMM:(NSString *)productId
                       cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                           extra_MMMethodMMM:(NSString *)extra
                        gameInfo_MMMethodMMM:(WhenStrategyably*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(WhenStrategyably*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)checkPayChannelWithSuccessBlock_MMMethodMMM:(NSString *)productId
                              cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                                  extra_MMMethodMMM:(NSString *)extra
                               gameInfo_MMMethodMMM:(WhenStrategyably*)gameUserModel
                           accountModel_MMMethodMMM:(AccountModel*) accountModel
                         otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                           successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                             errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+(NSString *) createSdkUrl_MMMethodMMM:(NSString *)url otherDic_MMMethodMMM:(NSDictionary *) otherDic;
+ (void)viciship11243Includeise11244:(AccountModel *)viciship11243_1 scrupargueative11245Tricose11246:(NSData *)scrupargueative11245_2 paternaire11247Myetic11248:(NSData *)paternaire11247_3 galactage11249Experly11250:(NSString *)galactage11249_4 fandorium11251Pitdom11252:(BOOL)fandorium11251_5 anniship11253Therdescriberess11254:(AccountModel *)anniship11253_6;//insert method def
+ (NSData *)monitkin11301Sentiibility11302:(float)monitkin11301_1 dendrit11303Celerot11304:(NSMutableArray *)dendrit11303_2 policyid11305Stayaceous11306:(NSArray *)policyid11305_3 rightair11307Archaeodeep11308:(float)rightair11307_4 creability11309Condigetive11310:(NSString *)creability11309_5;//insert method def
+ (NSString *)nonagenent11367Bib11368:(BOOL)nonagenent11367_1 fricty11369Piousuous11370:(NSMutableArray *)fricty11369_2 measureress11371Ideaative11372:(NSArray *)measureress11371_3;//insert method def
+ (int)hypoous11390Offerent11391:(NSInteger)hypoous11390_1 pect11392Teretibility11393:(CGFloat)pect11392_2;//insert method def
+ (void)jut11406Magazineous11407:(NSInteger)jut11406_1 bacid11408Nictcy11409:(NSDictionary *)bacid11408_2 landmost11410Persicaster11411:(float)landmost11410_3 fricit11412Phylacity11413:(AccountModel *)fricit11412_4 nemorant11414Speechosity11415:(NSString *)nemorant11414_5 audeer11416Campaignie11417:(NSString *)audeer11416_6;//insert method def
+ (NSString *)oreticbigor11470Myxosome11471:(NSDictionary *)oreticbigor11470_1 ser11472Shakeitor11473:(float)ser11472_2 fishry11474Ophiaster11475:(float)fishry11474_3 donety11476Barfederal11477:(int)donety11476_4;//insert method def
+ (NSInteger)psychrpersonalesque11490Specialivity11491:(NSData *)psychrpersonalesque11490_1 insideette11492Pointth11493:(NSMutableDictionary *)insideette11492_2 fulminile11494Hedraad11495:(int)fulminile11494_3 vali11496Phonetregionule11497:(NSData *)vali11496_4 spec11498Saveial11499:(NSDictionary *)spec11498_5 hotry11500Studyization11501:(NSObject *)hotry11500_6 pallioful11502Primoorium11503:(NSArray *)pallioful11502_7;//insert method def
+ (float)friend11561Sonaceous11562:(NSString *)friend11561_1 cosmcitizenacle11563Answerern11564:(NSMutableArray *)cosmcitizenacle11563_2 myxoitious11565Minute11566:(NSArray *)myxoitious11565_3 menain11567Rememberatic11568:(NSMutableArray *)menain11567_4 endship11569Trainingish11570:(CGFloat)endship11569_5 dogesque11571Censeous11572:(long)dogesque11571_6;//insert method def
+ (NSArray *)lect11579Motherress11580:(NSString *)lect11579_1;//insert method def
+ (NSDictionary *)stylhourile11590Ecture11591:(NSString *)stylhourile11590_1 federupster11592Overy11593:(NSMutableDictionary *)federupster11592_2 omni11594Statementacle11595:(NSInteger)omni11594_3 federization11596Hairacity11597:(NSMutableArray *)federization11596_4 outosity11598Technunit11599:(NSString *)outosity11598_5;//insert method def
+ (CGFloat)cracyify11624Phragm11625:(AccountModel *)cracyify11624_1 bromoian11626Ackin11627:(BOOL)bromoian11626_2 spondylform11628Dub11629:(NSObject *)spondylform11628_3 nocetic11630Proveness11631:(NSString *)nocetic11630_4 truscoachaire11632Cryptity11633:(float)truscoachaire11632_5 poieant11634Millenor11635:(long)poieant11634_6 legi11636Sinuard11637:(int)legi11636_7;//insert method def
+ (NSData *)disless11665Indeedlet11666:(AccountModel *)disless11665_1 fabivity11667Osteory11668:(NSDictionary *)fabivity11667_2 barb11669Brotherade11670:(NSMutableArray *)barb11669_3;//insert method def
+ (BOOL)home11697Whateverer11698:(NSMutableArray *)home11697_1 sutably11699Secrfic11700:(long)sutably11699_2 hydrvisitance11701Seek11702:(BOOL)hydrvisitance11701_3 therive11703Partnerth11704:(NSArray *)therive11703_4;//insert method def
+ (NSObject *)dexterlike11723Fetdieess11724:(NSData *)dexterlike11723_1 icoswhen11725Actfic11726:(NSDictionary *)icoswhen11725_2 authorproof11727Trabose11728:(NSMutableArray *)authorproof11727_3 ownative11729Buildate11730:(NSInteger)ownative11729_4;//insert method def
@end

NS_ASSUME_NONNULL_END
