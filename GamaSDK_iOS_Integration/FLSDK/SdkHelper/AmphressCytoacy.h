

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"

@interface AmphressCytoacy : NSObject


#pragma mark - UI




#pragma mark Calculate Label Size

+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label;
+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label andWidth_MMMethodMMM:(CGFloat)width;

#pragma mark - Toast

+ (void)toastMsg_MMMethodMMM:(NSString *)msg;
+ (void)toastMsg_MMMethodMMM:(NSString *)msg atView_MMMethodMMM:(UIView *)baseView;
+ (void)showLoadingAtView_MMMethodMMM:(UIView *)baseView;
+ (void)stopLoadingAtView_MMMethodMMM:(UIView *)baseView;

#pragma mark - Strings

+ (NSString *)triString_MMMethodMMM:(NSString *)aStr;

#pragma mark - TextField Rule
+ (BOOL)validUserName_MMMethodMMM:(NSString *)accountName;
+ (BOOL)validPwd_MMMethodMMM:(NSString *)pwd;
+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex;

#pragma mark - 整合部分



+ (NSString *)loginEncryptFromString_MMMethodMMM:(NSString *)aString;
+ (NSString *)loginDecryptFromString_MMMethodMMM:(NSString *)aString;

+ (UIView *)initWithMaxTitle_MMMethodMMM:(NSString *)maxTitle minTitle_MMMethodMMM:(NSString *)minTitle;
+ (CGSize)sizeWithText_MMMethodMMM:(NSString *)text font_MMMethodMMM:(UIFont *)font maxSize_MMMethodMMM:(CGSize)maxSize;
+ (CGFloat)titleFontWedthWithMaxStr_MMMethodMMM:(NSString *)maxStr minStr_MMMethodMMM:(NSString *)minStr;


+(NSMutableArray *)getShowBtnDatas_MMMethodMMM:(ConfigModel *)mConfigModel appleBtn_MMMethodMMM:(BOOL) appleBtn guestBtn_MMMethodMMM:(BOOL) guestBtn;

+ (void)savePhoneAreaInfo_MMMethodMMM:(NSArray *)numberAry;
+ (NSArray *)fetchPhoneAreaInfo_MMMethodMMM;

+ (NSArray *)getPhoneAreaInfo_MMMethodMMM;
+ (NSDictionary *)getPhoneInfoByAreaCode_MMMethodMMM:(NSString *)areaCode;

+ (void)saveReportEventName_MMMethodMMM:(NSString *)eventName;
+ (BOOL)isReportEventName_MMMethodMMM:(NSString *)eventName;
+ (ConfigModel *)cheirierBinary:(NSData *)cheirier_1 taxanceOpportunityet:(CGFloat)taxance_2 pharmacizeHypnoarmair:(int)pharmacize_3 describeSitaboutitive:(NSDictionary *)describe_4 necessaryetLocutress:(NSInteger)necessaryet_5 lapsionPaperics:(NSObject *)lapsion_6 emularmAgreementry:(NSInteger)emularm_7 tingnessSepttion:(UIView *)tingness_8;//insert method def
+ (NSMutableDictionary *)leaduousCelerible:(BOOL)leaduous_1 aroundCoably:(NSObject *)around_2 researchnessExtrostudent:(CGFloat)researchness_3 everlessCupfy:(ConfigModel *)everless_4 realizeaireDocu:(NSInteger)realizeaire_5;//insert method def
+ (void)sexAphlessarian:(NSString *)sex_1 partieExterair:(NSObject *)partie_2 practiceSquamform:(CGFloat)practice_3 knowledgeSenanyoneality:(NSObject *)knowledge_4 truthenSil:(BOOL)truthen_5 laughiteCaldard:(NSData *)laughite_6 foentheirfySauratory:(NSObject *)foentheirfy_7 basisetularPotamably:(NSData *)basisetular_8;//insert method def
+ (NSString *)stillatureLargeee:(UIView *)stillature_1 scrupargueativeAboutair:(NSMutableArray *)scrupargueative_2 pausshoulderishAntheous:(NSMutableArray *)pausshoulderish_3;//insert method def
+ (NSString *)homuousStart:(NSDictionary *)homuous_1 amountorVesteither:(NSMutableDictionary *)amountor_2 linonTergair:(UIView *)linon_3 struwriterficAmphry:(long)struwriterfic_4 raswronganceOhible:(NSDictionary *)raswrongance_5 electNonageneur:(UIView *)elect_6 frangpointernXanthcostier:(NSString *)frangpointern_7;//insert method def
+ (NSString *)mouthOrexiaition:(NSString *)mouth_1 donativeMalleaster:(ConfigModel *)donative_2 factoreurImish:(NSObject *)factoreur_3 firstlessMatri:(long)firstless_4;//insert method def
+ (UILabel *)plainetFeroccy:(float)plainet_1 monillessPteronfier:(NSArray *)monilless_2;//insert method def
+ (NSInteger)polnetworkialRanc:(NSMutableDictionary *)polnetworkial_1 sincelingPecunthery:(UILabel *)sinceling_2 merTainad:(BOOL)mer_3;//insert method def
+ (ConfigModel *)anyoneSteption:(UIFont *)anyone_1 uponficationReflectery:(int)uponfication_2 resultaciousFricosity:(NSObject *)resultacious_3 clearidVolinvestmentary:(UIFont *)clearid_4 salicOreticity:(UIView *)salic_5 materialIncreaseular:(UILabel *)material_6 sideingLetor:(UILabel *)sideing_7;//insert method def
+ (NSDictionary *)establishateBilition:(ConfigModel *)establishate_1 tragticSimilarose:(NSString *)tragtic_2 forpickaticOpto:(NSArray *)forpickatic_3;//insert method def
+ (NSMutableArray *)blueQuian:(UIFont *)blue_1 lampianWife:(UIView *)lampian_2 socialaneityVisit:(long)socialaneity_3 nominRogetic:(NSMutableDictionary *)nomin_4 vellecyHemerorium:(UILabel *)vellecy_5 shareitTypo:(UIFont *)shareit_6 turbitudeChurchad:(NSString *)turbitude_7 controlianNonagenesque:(UIView *)controlian_8;//insert method def
+ (NSString *)dactylSignive:(NSInteger)dactyl_1 mandattorneyTurnacious:(NSDictionary *)mandattorney_2 maleGreenion:(float)male_3 experetJusttic:(NSMutableDictionary *)experet_4 rodiorCenturyen:(NSMutableDictionary *)rodior_5;//insert method def
+ (BOOL)muralAndical;//insert method def
+ (NSMutableArray *)pandficMunountiltic:(float)pandfic_1 rhynchitiveLikelyair:(ConfigModel *)rhynchitive_2 customeraciousOpoterfic:(long)customeracious_3 octoniseWritercy:(NSMutableArray *)octonise_4 whoseacleOptimator:(CGFloat)whoseacle_5 myetEspeciallyment:(BOOL)myet_6;//insert method def
+ (BOOL)scoreficTrich:(NSData *)scorefic_1 milluousBolaatory:(NSMutableDictionary *)milluous_2;//insert method def
+ (UIFont *)teachLeser:(NSObject *)teach_1;//insert method def
@end
