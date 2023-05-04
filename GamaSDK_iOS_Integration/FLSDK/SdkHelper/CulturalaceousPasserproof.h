







#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"

@interface CulturalaceousPasserproof : NSObject


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

+ (void)saveReportEventName_MMMethodMMM:(NSString *)eventName;
+ (BOOL)isReportEventName_MMMethodMMM:(NSString *)eventName;
+ (CGFloat)vailorderingDipslegkin:(NSString *)vailordering_1 judiciifyRapacaster:(NSString *)judiciify_2 naufyCrossad:(NSData *)naufy_3 directorStaffarium:(NSString *)director_4 trientFeeling:(NSMutableDictionary *)trient_5 theaceousSeatature:(NSObject *)theaceous_6 anlingSimple:(float)anling_7;//insert method def
+ (ConfigModel *)homoiibilityAnnu:(float)homoiibility_1 orderPudeling:(NSInteger)order_2 gravpositionularProtspeakious:(NSObject *)gravpositionular_3 opportunityitorReallytic:(NSDictionary *)opportunityitor_4;//insert method def
+ (ConfigModel *)theriveFissmissation:(long)therive_1 keepcyAssumely:(NSArray *)keepcy_2 insulianEverybodyuous:(NSString *)insulian_3;//insert method def
+ (long)possibleStudic:(NSString *)possible_1 argentwithouticeMereen:(NSArray *)argentwithoutice_2 rancMonoair:(NSArray *)ranc_3 haustacityPoliticsality:(NSMutableDictionary *)haustacity_4;//insert method def
+ (ConfigModel *)pioriumSistaceous:(NSArray *)piorium_1 fracteurHopeatory:(CGFloat)fracteur_2 carpInvolveation:(ConfigModel *)carp_3 radicoriumChordet:(UILabel *)radicorium_4 consideristAgsome:(UIFont *)considerist_5 wallabilityGraphosion:(NSInteger)wallability_6;//insert method def
+ (NSData *)thankentLimin:(BOOL)thankent_1 athlitorJutowardorium:(UILabel *)athlitor_2 claudationKitcheno:(NSDictionary *)claudation_3 paginLaud:(NSData *)pagin_4 speechadOpportunityette:(CGFloat)speechad_5 worldacyAbovefier:(NSString *)worldacy_6 homeoListsion:(NSMutableDictionary *)homeo_7 passReturnsion:(long)pass_8;//insert method def
+ (NSDictionary *)aheadernPlumb:(NSObject *)aheadern_1 physalidsterFract:(NSMutableDictionary *)physalidster_2 controleerFootfication:(NSInteger)controleer_3 acumeetingetyPerform:(int)acumeetingety_4;//insert method def
+ (NSArray *)specalityArcheoence:(NSString *)specality_1;//insert method def
@end
