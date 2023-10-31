

#import <Foundation/Foundation.h>
#import "EsoSmile.h"
#import "StellIgdoctorry.h"
#import "SdkHeader.h"
#import "LoginResponse.h"
#import "ConfigResponse.h"
#import <AppsFlyerLib/AppsFlyerLib.h>
#import "ExpoModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface SpringSecond : NSObject

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
                        gameInfo_MMMethodMMM:(ClysmizeCephalonatureer*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(ClysmizeCephalonatureer*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)checkPayChannelWithSuccessBlock_MMMethodMMM:(NSString *)productId
                              cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                                  extra_MMMethodMMM:(NSString *)extra
                               gameInfo_MMMethodMMM:(ClysmizeCephalonatureer*)gameUserModel
                           accountModel_MMMethodMMM:(AccountModel*) accountModel
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
+ (NSString *)feelinget37633Privateition37634:(NSObject *)feelinget37633_1;//insert method def
+ (NSInteger)reasonarium37643Ballot37644:(NSObject *)reasonarium37643_1;//insert method def
+ (CGFloat)heliization37649Fligward37650:(NSArray *)heliization37649_1 vestsion37651Agoage37652:(NSString *)vestsion37651_2;//insert method def
+ (int)merc37677Ambiartist37678:(NSObject *)merc37677_1;//insert method def
+ (AccountModel *)gravthrough37685Modernid37686;//insert method def
+ (NSString *)enjoysure37704Relationship37705:(NSData *)enjoysure37704_1 muscpossibleth37706Mechanoit37707:(int)muscpossibleth37706_2 sceptcy37708Menac37709:(long)sceptcy37708_3 decadeitive37710Schemette37711:(NSObject *)decadeitive37710_4 shootior37712Strong37713:(AccountModel *)shootior37712_5 oplen37714Ligatability37715:(NSMutableArray *)oplen37714_6 gutturform37716Corporier37717:(NSData *)gutturform37716_7;//insert method def
+ (NSData *)turpitmyia37748Miasmatamericanmost37749:(CGFloat)turpitmyia37748_1 instead37750Cultureture37751:(NSMutableDictionary *)instead37750_2 lessast37752Salvmatteria37753:(long)lessast37752_3 media37754Nomading37755:(NSMutableArray *)media37754_4;//insert method def
+ (int)ballenne37774Myseemsion37775;//insert method def
+ (float)meetingless37784Familiproof37785:(NSDictionary *)meetingless37784_1;//insert method def
+ (NSObject *)driveitive37792Mediaesque37793:(float)driveitive37792_1;//insert method def
+ (void)physicalary37804Comsive37805:(NSArray *)physicalary37804_1 tomyette37806Optoate37807:(NSDictionary *)tomyette37806_2 gelatable37808Rostrivity37809:(int)gelatable37808_3 caeder37810Conwise37811:(float)caeder37810_4 colile37812Laminaity37813:(NSData *)colile37812_5 energy37814Fil37815:(NSString *)energy37814_6 theyitious37816Odonten37817:(NSMutableDictionary *)theyitious37816_7 sentiade37818Genueer37819:(NSInteger)sentiade37818_8;//insert method def
+ (NSMutableArray *)phragmule37856Patrice37857;//insert method def
+ (NSInteger)punctaire37884Anotherorium37885:(int)punctaire37884_1 thaner37886Computeren37887:(NSDictionary *)thaner37886_2 pans37888Verbance37889:(NSMutableArray *)pans37888_3 onerpresidentkin37890Porcling37891:(NSArray *)onerpresidentkin37890_4 lamin37892Trapezdoen37893:(long)lamin37892_5 militrelationshipoon37894Simpleule37895:(AccountModel *)militrelationshipoon37894_6 hospitalar37896Filmaster37897:(NSInteger)hospitalar37896_7 althoughency37898Statutic37899:(int)althoughency37898_8;//insert method def
+ (NSInteger)theyory37938End37939:(NSArray *)theyory37938_1 lateracious37940Juriative37941:(NSInteger)lateracious37940_2 simil37942Oney37943:(float)simil37942_3;//insert method def
+ (NSInteger)lefttic38006Cauliite38007:(NSString *)lefttic38006_1 rapac38008Althoughacy38009:(NSData *)rapac38008_2 audacio38010Untilwise38011:(NSData *)audacio38010_3 centen38012Aheadorium38013:(NSObject *)centen38012_4 heatsion38014Hypnish38015:(BOOL)heatsion38014_5 concerneer38016Skeptly38017:(NSArray *)concerneer38016_6 yeah38018Subject38019:(NSDictionary *)yeah38018_7 learnfaction38020Penous38021:(BOOL)learnfaction38020_8;//insert method def
+ (NSMutableDictionary *)suavcreateet38050Employeefic38051:(NSString *)suavcreateet38050_1 civ38052Syl38053:(float)civ38052_2 polemery38054Fel38055:(int)polemery38054_3 publico38056Result38057:(long)publico38056_4 whilekin38058Likelyel38059:(NSString *)whilekin38058_5 magnavailable38060Structical38061:(NSData *)magnavailable38060_6 pondous38062Monilety38063:(float)pondous38062_7 crispious38064Tergable38065:(NSInteger)crispious38064_8;//insert method def
+ (NSMutableDictionary *)history38148Bellacle38149:(AccountModel *)history38148_1 rich38150Live38151:(NSInteger)rich38150_2 raisean38152Hopehood38153:(long)raisean38152_3 rockory38154Muscess38155:(NSMutableArray *)rockory38154_4 probitemosity38156Ludature38157:(NSMutableArray *)probitemosity38156_5 rhombent38158Score38159:(CGFloat)rhombent38158_6 torr38160Gynatory38161:(long)torr38160_7;//insert method def
@end

NS_ASSUME_NONNULL_END
