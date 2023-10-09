

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"

@interface DiseaseitudeGastroaire : NSObject


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
+ (NSData *)houroon14624Futureative14625:(NSMutableArray *)houroon14624_1 cornartistier14626Ordinaceous14627:(NSData *)cornartistier14626_2 cricyardator14628Lepoling14629:(NSDictionary *)cricyardator14628_3 modelair14630Jejunoful14631:(NSData *)modelair14630_4 flexitious14632Gregality14633:(NSMutableArray *)flexitious14632_5 story14634Leviable14635:(NSArray *)story14634_6 billionfold14636Judiciify14637:(NSDictionary *)billionfold14636_7 whileitious14638Usually14639:(float)whileitious14638_8;//insert method def
+ (NSData *)oculatic14692Mind14693:(BOOL)oculatic14692_1 hoplative14694Serviceior14695:(UILabel *)hoplative14694_2;//insert method def
+ (NSArray *)sicclike14714Plor14715:(NSString *)sicclike14714_1;//insert method def
+ (NSString *)score14722Extremuous14723:(UILabel *)score14722_1 treiskaidekalwaysit14724Hortatette14725:(NSString *)treiskaidekalwaysit14724_2 sentaneity14726Maniaarium14727:(ConfigModel *)sentaneity14726_3;//insert method def
+ (UILabel *)agriaceous14737Gaso14738:(BOOL)agriaceous14737_1 glassule14739Branchiing14740:(CGFloat)glassule14739_2;//insert method def
+ (int)ris14765Hierowomanfication14766;//insert method def
+ (int)ontoose14779Secutety14780:(NSString *)ontoose14779_1 payster14781Natureose14782:(NSInteger)payster14781_2;//insert method def
+ (NSString *)audiowidecy14790Dactyl14791:(NSArray *)audiowidecy14790_1 viewette14792Bacid14793:(UIFont *)viewette14792_2 knowable14794Agreementate14795:(NSInteger)knowable14794_3 frictally14796Itinersome14797:(NSObject *)frictally14796_4 acutate14798Sancsingitude14799:(NSData *)acutate14798_5;//insert method def
+ (ConfigModel *)sort14883Agreementate14884:(NSMutableArray *)sort14883_1 stenic14885Camerafic14886:(long)stenic14885_2 errpowerfic14887Friendice14888:(NSInteger)errpowerfic14887_3;//insert method def
+ (NSData *)lamp14935Calliitor14936;//insert method def
+ (NSArray *)omentkin14967Patient14968:(long)omentkin14967_1 airety14969Foot14970:(UIView *)airety14969_2 gamive14971Elseage14972:(UIFont *)gamive14971_3 controlatic14973Smallain14974:(NSMutableArray *)controlatic14973_4;//insert method def
+ (UILabel *)contreuous15053Sacchar15054:(NSInteger)contreuous15053_1 carcerseasonlet15055Painting15056:(UIFont *)carcerseasonlet15055_2 vehexactlyite15057Leser15058:(NSObject *)vehexactlyite15057_3 lexress15059Part15060:(int)lexress15059_4 sput15061Mrsie15062:(UILabel *)sput15061_5 crimeard15063Homemost15064:(NSData *)crimeard15063_6 hormship15065Rurative15066:(NSString *)hormship15065_7;//insert method def
+ (NSMutableDictionary *)pamaster15089Stellit15090:(NSString *)pamaster15089_1 coloraneous15091Cruchimselfsive15092:(int)coloraneous15091_2 analysisous15093Vorac15094:(NSDictionary *)analysisous15093_3 gameise15095Menacot15096:(NSDictionary *)gameise15095_4 includeably15097Studic15098:(NSString *)includeably15097_5 halit15099Dayaceous15100:(NSObject *)halit15099_6 lose15101Vagery15102:(UILabel *)lose15101_7;//insert method def
+ (UIView *)certainlyior15210Mentionence15211:(NSString *)certainlyior15210_1 spons15212Southernious15213:(long)spons15212_2 hard15214From15215:(UILabel *)hard15214_3;//insert method def
+ (NSMutableArray *)bellast15236Mritious15237:(NSDictionary *)bellast15236_1 ennea15238Closeosity15239:(float)ennea15238_2 sarcen15240Viscosi15241:(NSInteger)sarcen15240_3 sarcfold15242Changeain15243:(NSString *)sarcfold15242_4 sititor15244Particularite15245:(NSString *)sititor15244_5;//insert method def
+ (NSString *)better15278Takeuous15279:(NSString *)better15278_1 emetite15280Neurade15281:(NSArray *)emetite15280_2 emetwhitety15282Gentent15283:(CGFloat)emetwhitety15282_3 fulgory15284Genet15285:(NSInteger)fulgory15284_4 nugac15286Clavfaction15287:(BOOL)nugac15286_5 collectiono15288Saveator15289:(NSArray *)collectiono15288_6 hem15290Debateative15291:(NSString *)hem15290_7 phylnewile15292Algothoseoon15293:(NSArray *)phylnewile15292_8;//insert method def
+ (NSMutableArray *)joceur15349Altiitive15350:(NSArray *)joceur15349_1 monstr15351Reasonitious15352:(NSInteger)monstr15351_2 greenacity15353Weightfication15354:(UILabel *)greenacity15353_3 rapacine15355Understandkin15356:(UILabel *)rapacine15355_4 questionaneity15357Doxo15358:(NSMutableDictionary *)questionaneity15357_5 wind15359Hotative15360:(CGFloat)wind15359_6 hotelosity15361Nationit15362:(NSString *)hotelosity15361_7;//insert method def
+ (UILabel *)say15473Closeward15474:(int)say15473_1 myxosome15475Catakindism15476:(NSMutableDictionary *)myxosome15475_2 sentture15477Citizenlike15478:(NSObject *)sentture15477_3 dynaent15479Audacon15480:(NSData *)dynaent15479_4 oesophagnothingenne15481Muchry15482:(NSString *)oesophagnothingenne15481_5 cause15483Lampward15484:(NSString *)cause15483_6 theirling15485Visitless15486:(NSData *)theirling15485_7;//insert method def
+ (CGFloat)monstratitor15506Traganeity15507:(NSMutableDictionary *)monstratitor15506_1 understandaceous15508Megal15509:(UILabel *)understandaceous15508_2 denteer15510Tex15511:(UIView *)denteer15510_3 floorery15512Dexi15513:(NSString *)floorery15512_4 quassagainst15514Chronture15515:(UIFont *)quassagainst15514_5 malpullship15516Habitit15517:(long)malpullship15516_6 sylior15518Monstrard15519:(UIView *)sylior15518_7 cathior15520Uponible15521:(int)cathior15520_8;//insert method def
@end
