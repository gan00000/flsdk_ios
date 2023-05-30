

#import <Foundation/Foundation.h>
#import "HttpServiceEngineLogin.h"
#import "HttpServiceEnginePay.h"
#import "SdkHeader.h"
#import "LoginResponse.h"
#import "ConfigResponse.h"


NS_ASSUME_NONNULL_BEGIN

@interface SDKRequest : NSObject

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
                        gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(GameUserModel*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+(NSString *)createSdkUrl_MMMethodMMM:(NSString *)url;
+ (void)accordingiteOhible;//insert method def
+ (NSString *)scandatoryMammics:(long)scandatory_1 dipsismCumulpooribility:(long)dipsism_2 planctscoreEight:(int)planctscore_3 encephalodarkibilitySupinatic:(float)encephalodarkibility_4 bringsomeLeastial:(int)bringsome_5;//insert method def
+ (NSMutableDictionary *)logyicalMega:(NSMutableArray *)logyical_1;//insert method def
+ (long)hendecesqueThalamly:(NSInteger)hendecesque_1 loquiateAssumeature:(int)loquiate_2 spendialRemsmall:(CGFloat)spendial_3 gardenetteAnswerety:(NSDictionary *)gardenette_4 AmericanFlamty:(NSData *)American_5 misoyJuris:(NSArray *)misoy_6;//insert method def
+ (NSInteger)flagrPopulationoon:(long)flagr_1 dinoonOrexiular:(float)dinoon_2 dexiRanitive:(long)dexi_3 returneryMatr:(CGFloat)returnery_4 cruteerAlgment:(NSArray *)cruteer_5 pamhimernPlaus:(NSString *)pamhimern_6 audonMulta:(float)audon_7 closeUponly:(NSString *)close_8;//insert method def
+ (NSInteger)barySizetic:(NSDictionary *)bary_1 orexacleUponly:(CGFloat)orexacle_2 fellfoldHisacle:(NSArray *)fellfold_3 signficLithothreedom:(long)signfic_4 geniizationTardist:(NSMutableDictionary *)geniization_5 pachysometimesineMyfication:(NSMutableDictionary *)pachysometimesine_6;//insert method def
+ (AccountModel *)antairGubernentirery:(NSMutableArray *)antair_1 susCameraion:(NSInteger)sus_2 alithingPlecition:(NSMutableArray *)alithing_3 soundacityOnomat:(NSMutableArray *)soundacity_4 describelingWeightal:(NSObject *)describeling_5 clystnonehoodFronting:(NSString *)clystnonehood_6 stayBothular:(NSString *)stay_7 endHapl:(NSString *)end_8;//insert method def
+ (CGFloat)phrynitorIssuesure:(NSString *)phrynitor_1 raceosePeccite:(NSInteger)raceose_2 daughterletHetertic:(NSMutableDictionary *)daughterlet_3 polemeryMyive:(NSDictionary *)polemery_4 experiairePotade:(NSDictionary *)experiaire_5 spuicalPopular:(NSDictionary *)spuical_6 westernMuscain:(NSData *)western_7 tactaciousAssumement:(NSDictionary *)tactacious_8;//insert method def
+ (CGFloat)overismTooarium:(float)overism_1 operationScandial:(int)operation_2 riseetMovement:(float)riseet_3 graphoryPhylal:(NSString *)graphory_4 costistCarpinformational:(BOOL)costist_5 chlorconsideratureMillenoon:(NSObject *)chlorconsiderature_6 chryswindanceBehavioree:(NSString *)chryswindance_7;//insert method def
+ (long)peopleagePedoship:(int)peopleage_1 plumbiaPeriodarium:(AccountModel *)plumbia_2;//insert method def
+ (NSMutableArray *)imagineibleArchaaster:(NSDictionary *)imagineible_1 iniveTrichoarium:(NSMutableArray *)inive_2;//insert method def
+ (AccountModel *)votehoodAlmostative:(float)votehood_1;//insert method def
+ (AccountModel *)leonainPostulsion:(CGFloat)leonain_1 centenMayism:(CGFloat)centen_2;//insert method def
+ (float)matterFossjust:(NSObject *)matter_1;//insert method def
@end

NS_ASSUME_NONNULL_END
