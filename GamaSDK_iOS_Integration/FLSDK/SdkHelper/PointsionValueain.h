

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"

@interface PointsionValueain : NSObject


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

+ (void)saveAlready14Age_MMMethodMMM:(BOOL)isAge14;
+ (BOOL)isAlready14Age_MMMethodMMM;
+ (NSDictionary *)cricyardator15776Covertion15777:(BOOL)cricyardator15776_1 property15778Knowledgemost15779:(float)property15778_2 laminoel15780Pterofication15781:(NSArray *)laminoel15780_3 attorneyth15782Runaceous15783:(NSMutableDictionary *)attorneyth15782_4 siccuous15784Everitor15785:(int)siccuous15784_5 lieibility15786Florot15787:(float)lieibility15786_6 passerartency15788Strongion15789:(NSArray *)passerartency15788_7;//insert method def
+ (NSMutableDictionary *)failism15833Investmenty15834;//insert method def
+ (NSMutableArray *)tryling15853Judicous15854:(NSData *)tryling15853_1 hangency15855Heart15856:(NSDictionary *)hangency15855_2 nominifederalics15857Receivedom15858:(NSMutableDictionary *)nominifederalics15857_3;//insert method def
+ (NSInteger)alone15897Encephaloeous15898:(ConfigModel *)alone15897_1 machinewise15899Authorityoon15900:(NSString *)machinewise15899_2;//insert method def
+ (float)ornithoism15917Juxtaast15918:(UIFont *)ornithoism15917_1 statewise15919Ramian15920:(UIView *)statewise15919_2 addery15921Puni15922:(NSMutableArray *)addery15921_3 bromoot15923Manthscience15924:(NSString *)bromoot15923_4;//insert method def
+ (NSArray *)vivaneous15937Funct15938:(int)vivaneous15937_1;//insert method def
+ (NSMutableDictionary *)moreature15949Pejorproof15950:(NSData *)moreature15949_1;//insert method def
+ (NSData *)phaeary15955Imageet15956:(NSArray *)phaeary15955_1 askcy15957Hibernize15958:(UIFont *)askcy15957_2 ephsure15959Failion15960:(BOOL)ephsure15959_3 meniful15961Phemiafy15962:(float)meniful15961_4;//insert method def
+ (CGFloat)increaseal16010Efflooribility16011:(NSArray *)increaseal16010_1 argueosity16012Caldfic16013:(NSString *)argueosity16012_2 dealize16014Nationit16015:(UILabel *)dealize16014_3 cyclify16016Patternling16017:(NSDictionary *)cyclify16016_4 levisixics16018Willite16019:(BOOL)levisixics16018_5 adiplanguage16020Punmaterialuous16021:(NSMutableArray *)adiplanguage16020_6;//insert method def
+ (UILabel *)alleloise16055Continue16056;//insert method def
+ (float)hibular16067Alongacious16068:(NSString *)hibular16067_1 get16069Vicenery16070:(long)get16069_2 beatship16071Worldet16072:(CGFloat)beatship16071_3;//insert method def
+ (NSArray *)able16079Toxatic16080:(BOOL)able16079_1 blast16081Score16082:(BOOL)blast16081_2;//insert method def
+ (NSString *)stochosity16090Stinctty16091:(NSInteger)stochosity16090_1;//insert method def
+ (NSDictionary *)palliature16106Chrysful16107:(NSArray *)palliature16106_1 dogfold16108Pectsureian16109:(NSDictionary *)dogfold16108_2 quadragendeterminetion16110Electioneer16111:(BOOL)quadragendeterminetion16110_3 jejunruleoon16112Not16113:(NSInteger)jejunruleoon16112_4 pausette16114Planoon16115:(NSArray *)pausette16114_5 scripteous16116Momently16117:(NSObject *)scripteous16116_6 cupon16118Rubr16119:(UIView *)cupon16118_7;//insert method def
+ (UIFont *)suddenly16196Pastorderize16197:(NSMutableArray *)suddenly16196_1 shortture16198Monstratetic16199:(CGFloat)shortture16198_2 phenofier16200Dogmatit16201:(NSData *)phenofier16200_3 needo16202Utern16203:(NSMutableDictionary *)needo16202_4;//insert method def
@end
