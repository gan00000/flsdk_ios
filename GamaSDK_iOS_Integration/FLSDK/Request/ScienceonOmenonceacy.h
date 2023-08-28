

#import <Foundation/Foundation.h>
#import "DipslegkinEmsion.h"
#import "GonyetSituationous.h"
#import "SdkHeader.h"
#import "LoginResponse.h"
#import "ConfigResponse.h"
#import <AppsFlyerLib/AppsFlyerLib.h>


NS_ASSUME_NONNULL_BEGIN

@interface ScienceonOmenonceacy : NSObject

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
                        gameInfo_MMMethodMMM:(OffousClaimial*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(OffousClaimial*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+(NSString *)createSdkUrl_MMMethodMMM:(NSString *)url;
+ (NSArray *)seeet10267Musicful10268:(CGFloat)seeet10267_1 citmachine10269Saveian10270:(AccountModel *)citmachine10269_2 versthreatlike10271Interestize10272:(CGFloat)versthreatlike10271_3 theyization10273Youfic10274:(CGFloat)theyization10273_4 evidenceior10275Phemiafy10276:(NSObject *)evidenceior10275_5 mesics10277Stann10278:(NSString *)mesics10277_6 individualarium10279Don10280:(NSMutableArray *)individualarium10279_7 throughoon10281Purpurmost10282:(int)throughoon10281_8;//insert method def
+ (NSString *)cumulise10325Lamnlamellency10326:(NSArray *)cumulise10325_1 myxably10327Sarcie10328:(NSMutableArray *)myxably10327_2 ectomyress10329Feeling10330:(NSDictionary *)ectomyress10329_3 peccite10331Degreester10332:(NSDictionary *)peccite10331_4 weapon10333Salability10334:(NSObject *)weapon10333_5 sessern10335Phrynfaction10336:(NSString *)sessern10335_6;//insert method def
+ (NSString *)botanot10371Torrible10372;//insert method def
+ (NSMutableDictionary *)finalular10381Scientistsome10382:(AccountModel *)finalular10381_1 sacriacity10383Dieish10384:(NSDictionary *)sacriacity10383_2 arto10385Identifyosity10386:(AccountModel *)arto10385_3 lossist10387Carcerot10388:(NSMutableArray *)lossist10387_4 stageal10389Meritence10390:(float)stageal10389_5 salubribility10391Scutious10392:(NSMutableDictionary *)salubribility10391_6;//insert method def
+ (NSArray *)treatality10463Acutdatafaction10464:(NSString *)treatality10463_1 loseaire10465Socialitive10466:(float)loseaire10465_2 undenia10467Lamin10468:(BOOL)undenia10467_3 axilaire10469Tonight10470:(BOOL)axilaire10469_4 houseatic10471Mater10472:(long)houseatic10471_5 opoterance10473Plutth10474:(int)opoterance10473_6 statementad10475Flexseniorly10476:(NSDictionary *)statementad10475_7 cupress10477Dichoence10478:(NSInteger)cupress10477_8;//insert method def
+ (NSMutableDictionary *)mollern10496Kaken10497:(float)mollern10496_1 vertair10498Supportenne10499:(int)vertair10498_2 mammoaneity10500Venization10501:(NSMutableDictionary *)mammoaneity10500_3 telee10502Aquduringics10503:(CGFloat)telee10502_4 tribo10504Tachant10505:(NSMutableArray *)tribo10504_5 colile10506Cubiwise10507:(float)colile10506_6 linency10508Globkin10509:(float)linency10508_7 nicesion10510Tertio10511:(int)nicesion10510_8;//insert method def
+ (int)obs10574Producten10575:(NSDictionary *)obs10574_1 drugast10576Extroaddresswise10577:(NSObject *)drugast10576_2 cosmative10578Troublehood10579:(NSString *)cosmative10578_3 clivality10580Control10581:(NSMutableArray *)clivality10580_4 statefy10582Containia10583:(NSData *)statefy10582_5 brevialwaysard10584Helike10585:(NSDictionary *)brevialwaysard10584_6;//insert method def
+ (NSInteger)untileer10604Eyeorium10605:(BOOL)untileer10604_1 elous10606Circatic10607:(NSArray *)elous10606_2 doget10608Avoidacle10609:(float)doget10608_3 fish10610Mammoward10611:(NSMutableDictionary *)fish10610_4 nonetion10612Crispid10613:(BOOL)nonetion10612_5 nesition10614Studentfic10615:(NSDictionary *)nesition10614_6 researchar10616Streptance10617:(long)researchar10616_7 risaneity10618Bety10619:(float)risaneity10618_8;//insert method def
+ (NSString *)fishitious10707Trixry10708:(AccountModel *)fishitious10707_1 spatiator10709Tinacision10710:(float)spatiator10709_2 paedoivity10711Nearair10712:(NSArray *)paedoivity10711_3 plagiy10713Pulletic10714:(NSInteger)plagiy10713_4 phylal10715Girlment10716:(NSInteger)phylal10715_5 acsit10717Lecithcy10718:(int)acsit10717_6;//insert method def
+ (NSObject *)yesee10782Thero10783:(NSObject *)yesee10782_1 withian10784Hydrwayite10785:(NSMutableArray *)withian10784_2;//insert method def
+ (NSMutableArray *)fereur10808Victimage10809;//insert method def
@end

NS_ASSUME_NONNULL_END
