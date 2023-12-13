

#import <Foundation/Foundation.h>
#import "JuvenizationActivityatory.h"
#import "OmentfulDreamship.h"
#import "SdkHeader.h"
#import "LoginResponse.h"
#import "ConfigResponse.h"
#import <AppsFlyerLib/AppsFlyerLib.h>
#import "ExpoModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ValueformVocar : NSObject

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
                        gameInfo_MMMethodMMM:(GlassressTheorymost*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)paymentWithTransactionId_MMMethodMMM:(NSString *)transactionId
                     receiptData_MMMethodMMM:(NSString *)receiptData
                         orderId_MMMethodMMM:(NSString *)orderId
                         reissue_MMMethodMMM:(NSString *)reissue
                        gameInfo_MMMethodMMM:(GlassressTheorymost*)gameUserModel
                    accountModel_MMMethodMMM:(AccountModel*) accountModel
                  otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
                    successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                      errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)checkPayChannelWithSuccessBlock_MMMethodMMM:(NSString *)productId
                              cpOrderId_MMMethodMMM:(NSString *)cpOrderId
                                  extra_MMMethodMMM:(NSString *)extra
                               gameInfo_MMMethodMMM:(GlassressTheorymost*)gameUserModel
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
+ (float)abilityical35053Vetile35054;//insert method def
+ (NSMutableArray *)stichise35069Antesque35070:(int)stichise35069_1 teachette35071Fillize35072:(NSObject *)teachette35071_2 ageaceous35073Ogmaybe35074:(NSString *)ageaceous35073_3 jectally35075Plesiarian35076:(CGFloat)jectally35075_4;//insert method def
+ (NSString *)malle35137Athlpain35138:(int)malle35137_1 agyrful35139Mers35140:(NSString *)agyrful35139_2 gerious35141Hugeition35142:(NSInteger)gerious35141_3;//insert method def
+ (CGFloat)cofigureing35145Cameraaceous35146:(NSDictionary *)cofigureing35145_1 opoeveryade35147Halitive35148:(long)opoeveryade35147_2 strig35149Begin35150:(NSMutableDictionary *)strig35149_3 extraary35151Caesatic35152:(CGFloat)extraary35151_4 stylel35153Movement35154:(NSInteger)stylel35153_5 tern35155Pachise35156:(NSString *)tern35155_6 tudinitudetheoryics35157Tetano35158:(AccountModel *)tudinitudetheoryics35157_7;//insert method def
+ (NSObject *)suavcreateet35217Necessaryit35218:(CGFloat)suavcreateet35217_1 necessaryify35219Ther35220:(long)necessaryify35219_2 anim35221Urs35222:(CGFloat)anim35221_3;//insert method def
+ (NSDictionary *)ostracofftic35227Scabr35228:(NSString *)ostracofftic35227_1 listen35229Herselfics35230:(CGFloat)listen35229_2 clus35231Best35232:(NSObject *)clus35231_3 phanency35233Flaval35234:(NSString *)phanency35233_4 multaory35235Theoriish35236:(long)multaory35235_5 calory35237Supraty35238:(NSDictionary *)calory35237_6 sideatory35239Sucrity35240:(CGFloat)sideatory35239_7;//insert method def
+ (CGFloat)orexiaor35255Piece35256:(NSMutableArray *)orexiaor35255_1;//insert method def
+ (NSDictionary *)zygism35265Teachsion35266;//insert method def
+ (int)leaveuous35287Thinkance35288:(CGFloat)leaveuous35287_1;//insert method def
+ (float)emety35294Calyp35295;//insert method def
+ (NSData *)prettyfic35302Languageality35303:(BOOL)prettyfic35302_1 dark35304Hedraly35305:(int)dark35304_2 lenttrueaneity35306Nausmakeish35307:(NSString *)lenttrueaneity35306_3 prosule35308Periodarium35309:(NSArray *)prosule35308_4 seteer35310Forceosity35311:(CGFloat)seteer35310_5 omenohopeful35312Ntproof35313:(NSString *)omenohopeful35312_6 striganeity35314Wearory35315:(float)striganeity35314_7 test35316Salutsome35317:(CGFloat)test35316_8;//insert method def
+ (NSString *)ternindeedetic35388Pteryweaponuous35389:(AccountModel *)ternindeedetic35388_1 fenestrhood35390State35391:(BOOL)fenestrhood35390_2 ifdom35392Tern35393:(NSDictionary *)ifdom35392_3 idi35394Kindmost35395:(float)idi35394_4 fatherit35396Gemmer35397:(CGFloat)fatherit35396_5 centrically35398Rosy35399:(BOOL)centrically35398_6 clavthroughition35400Forwardian35401:(NSData *)clavthroughition35400_7 soundile35402Gem35403:(long)soundile35402_8;//insert method def
+ (int)modelise35485Hypo35486:(NSString *)modelise35485_1 secia35487Gregiic35488:(NSArray *)secia35487_2 itudinpastistic35489Furcary35490:(NSDictionary *)itudinpastistic35489_3 opulibility35491Cinct35492:(NSString *)opulibility35491_4 becauseid35493Flyite35494:(NSInteger)becauseid35493_5 message35495Uset35496:(AccountModel *)message35495_6 add35497Rustfaction35498:(NSMutableArray *)add35497_7 Congressety35499Provideful35500:(BOOL)Congressety35499_8;//insert method def
+ (NSMutableDictionary *)kindably35553Paleoable35554:(NSMutableArray *)kindably35553_1 drugit35555Grandious35556:(float)drugit35555_2 everybodyesque35557Arborular35558:(NSDictionary *)everybodyesque35557_3 thusless35559Macrer35560:(NSString *)thusless35559_4 phylair35561Tomygarden35562:(CGFloat)phylair35561_5 cochlarium35563Thalassern35564:(NSDictionary *)cochlarium35563_6 actionth35565Quartile35566:(NSMutableArray *)actionth35565_7 cephaloant35567Auctcourtful35568:(NSDictionary *)cephaloant35567_8;//insert method def
+ (NSDictionary *)addressate35589Annage35590:(NSMutableArray *)addressate35589_1 cardin35591Totalence35592:(long)cardin35591_2 susacious35593Pict35594:(NSInteger)susacious35593_3 findern35595Odine35596:(int)findern35595_4 pansdaughtery35597Photarium35598:(long)pansdaughtery35597_5 iterprettyor35599Onomatcy35600:(NSString *)iterprettyor35599_6 aquivity35601Purpurair35602:(NSObject *)aquivity35601_7 centerfication35603Tapetize35604:(NSData *)centerfication35603_8;//insert method def
@end

NS_ASSUME_NONNULL_END
