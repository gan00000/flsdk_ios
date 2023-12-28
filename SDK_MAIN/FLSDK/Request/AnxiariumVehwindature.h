

#import <Foundation/Foundation.h>
#import "PathyularMrsship.h"
#import "WaititeLaud.h"
#import "SdkHeader.h"
#import "TrichinoonArchiability.h"
#import "SinaireLepidfindaneity.h"
#import <AppsFlyerLib/AppsFlyerLib.h>
#import "ScyphPhantmyselfsion.h"

NS_ASSUME_NONNULL_BEGIN

@interface AnxiariumVehwindature : NSObject

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



+ (void)requestDeleteUserAccount_MMMethodMMM:(TvadeRhigant *)accountMode
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

#pragma mark - 充值接口
+ (void)createOrderWithproductId_MMMethodMMM:(NSString *)productId
                       cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                           extra_MMMethodMMM:(NSString *)extra
                        gameInfo_MMMethodMMM:(BehaviorenneMediacle*)gameUserModel
                    accountModel_MMMethodMMM:(TvadeRhigant*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(BehaviorenneMediacle*)gameUserModel
                    accountModel_MMMethodMMM:(TvadeRhigant*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)checkPayChannelWithSuccessBlock_MMMethodMMM:(NSString *)productId
                              cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                                  extra_MMMethodMMM:(NSString *)extra
                               gameInfo_MMMethodMMM:(BehaviorenneMediacle*)gameUserModel
                           accountModel_MMMethodMMM:(TvadeRhigant*) accountModel
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
+ (int)prettyality27308Minimetic27309:(long)prettyality27308_1 agrish27310Tragice27311:(NSString *)agrish27310_2 studyan27312Pellency27313:(float)studyan27312_3 pleurlike27314Platinoabilityard27315:(NSMutableArray *)pleurlike27314_4 filesque27316Gelatular27317:(NSInteger)filesque27316_5 paed27318Carcerwalkant27319:(NSString *)paed27318_6;//insert method def
+ (int)barsome27370Fligel27371:(NSString *)barsome27370_1 nothingative27372Shootose27373:(NSString *)nothingative27372_2 direction27374Prove27375:(TvadeRhigant *)direction27374_3 cauloaceous27376Those27377:(NSMutableDictionary *)cauloaceous27376_4 pathetery27378Lossably27379:(NSMutableDictionary *)pathetery27378_5 boxise27380Seaacity27381:(BOOL)boxise27380_6 aroundity27382Pygforo27383:(float)aroundity27382_7;//insert method def
+ (NSString *)rept27425Coupleior27426:(NSString *)rept27425_1 dormfaction27427Monstrious27428:(NSData *)dormfaction27427_2 significanting27429Eosair27430:(NSString *)significanting27429_3;//insert method def
+ (NSString *)omasnever27459Stration27460:(BOOL)omasnever27459_1;//insert method def
+ (float)mindty27497Note27498:(NSString *)mindty27497_1;//insert method def
+ (BOOL)panto27519Member27520:(NSInteger)panto27519_1 rhynch27521Motherical27522:(NSString *)rhynch27521_2 litholossaster27523Silmost27524:(NSDictionary *)litholossaster27523_3 dreamor27525Designot27526:(NSData *)dreamor27525_4 machinaneous27527Curcitizenaneous27528:(NSArray *)machinaneous27527_5;//insert method def
+ (NSString *)mittian27597Identifyee27598:(NSMutableDictionary *)mittian27597_1 cisably27599Annuaneous27600:(long)cisably27599_2 dropeous27601Bibitile27602:(NSObject *)dropeous27601_3 hippfier27603Equin27604:(float)hippfier27603_4 fundibility27605Technic27606:(int)fundibility27605_5 plutfic27607Authorer27608:(float)plutfic27607_6 surface27609Hedofaction27610:(int)surface27609_7;//insert method def
+ (void)senid27628Seniorwise27629:(NSObject *)senid27628_1 cubtion27630Howeveria27631:(NSString *)cubtion27630_2 oramel27632Monstratster27633:(NSMutableDictionary *)oramel27632_3 genteffective27634Deictlet27635:(NSMutableDictionary *)genteffective27634_4 arborer27636Campaignth27637:(NSObject *)arborer27636_5 plebaster27638Prehendetic27639:(CGFloat)plebaster27638_6 crevacious27640Narcanythingator27641:(NSString *)crevacious27640_7 arriveon27642Pectacity27643:(NSString *)arriveon27642_8;//insert method def
@end

NS_ASSUME_NONNULL_END
