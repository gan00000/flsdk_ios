

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "PhylindustryMilitryData.h"
#import "ConfigModel.h"

@interface ElsureTraditional : NSObject


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
+ (UIView *)father38481Ethoion38482:(NSString *)father38481_1 businessibility38483Athlon38484:(ConfigModel *)businessibility38483_2 mantage38485Use38486:(UIFont *)mantage38485_3 frateraceous38487Lab38488:(UIFont *)frateraceous38487_4 omoery38489Treatkin38490:(long)omoery38489_5 trachyperhapsful38491Poorist38492:(ConfigModel *)trachyperhapsful38491_6 cruraceous38493Phagaceous38494:(NSArray *)cruraceous38493_7;//insert method def
+ (float)anguent38576Helwest38577:(UIFont *)anguent38576_1 securitydom38578Senkin38579:(UIFont *)securitydom38578_2 statementad38580Proximage38581:(NSString *)statementad38580_3 everysion38582Untilable38583:(CGFloat)everysion38582_4 assumelet38584Basely38585:(ConfigModel *)assumelet38584_5 deep38586Reasoneer38587:(CGFloat)deep38586_6;//insert method def
+ (CGFloat)safeator38615Mincy38616:(float)safeator38615_1 gasative38617Experienceative38618:(NSMutableDictionary *)gasative38617_2;//insert method def
+ (NSString *)drive38641Leaduous38642:(NSObject *)drive38641_1 infraian38643Shakeard38644:(NSString *)infraian38643_2 anotherible38645Venerartist38646:(NSInteger)anotherible38645_3;//insert method def
+ (UILabel *)simulaneous38707Withinery38708:(BOOL)simulaneous38707_1 facesion38709Pur38710:(long)facesion38709_2 let38711Nau38712:(UILabel *)let38711_3 autols38713Modern38714:(NSInteger)autols38713_4 returnant38715Dox38716:(NSMutableDictionary *)returnant38715_5 realular38717Demn38718:(BOOL)realular38717_6 sylative38719Misscancerot38720:(ConfigModel *)sylative38719_7 billionster38721Pluvition38722:(NSString *)billionster38721_8;//insert method def
+ (int)billsure38805Phyttroublety38806:(NSInteger)billsure38805_1 adultast38807Physicalaster38808:(UIFont *)adultast38807_2 pullth38809Cosmetee38810:(NSDictionary *)pullth38809_3 felicitor38811Locoish38812:(UIView *)felicitor38811_4 ocul38813Prove38814:(NSMutableArray *)ocul38813_5 pensor38815Matr38816:(BOOL)pensor38815_6;//insert method def
+ (void)plicacle38915Churchen38916:(float)plicacle38915_1 marketship38917Tussabilityite38918:(NSString *)marketship38917_2 balo38919Cochlwellable38920:(NSMutableArray *)balo38919_3 plumery38921Barfederal38922:(UIFont *)plumery38921_4;//insert method def
+ (NSMutableDictionary *)resultious38977Wallature38978:(CGFloat)resultious38977_1 becauseid38979Discusstic38980:(ConfigModel *)becauseid38979_2 baseia38981Lunlossarian38982:(NSArray *)baseia38981_3 sculpably38983Toxity38984:(NSString *)sculpably38983_4 feliciy38985Archyical38986:(NSString *)feliciy38985_5 vehexactlyite38987Stage38988:(NSMutableArray *)vehexactlyite38987_6 takeal38989In2matterise38990:(long)takeal38989_7 neverile38991Horrcy38992:(long)neverile38991_8;//insert method def
+ (NSObject *)archaier39059Sapiing39060:(UIView *)archaier39059_1 peritive39061Headorium39062:(NSObject *)peritive39061_2 lightacious39063Rumpion39064:(NSString *)lightacious39063_3 minimence39065Tredec39066:(NSObject *)minimence39065_4;//insert method def
+ (UIView *)shotage39107Jocaneity39108:(long)shotage39107_1 anotherorium39109Genacle39110:(NSObject *)anotherorium39109_2 theseally39111Icosroleer39112:(NSArray *)theseally39111_3 enjoyoon39113Octav39114:(NSString *)enjoyoon39113_4;//insert method def
+ (NSString *)pacho39133Vicfier39134:(NSArray *)pacho39133_1 eye39135Sectitious39136:(NSMutableDictionary *)eye39135_2 modent39137Homoward39138:(long)modent39137_3 myx39139Caldfic39140:(NSDictionary *)myx39139_4 admit39141Healthel39142:(NSMutableDictionary *)admit39141_5 lepoature39143Ratefy39144:(UIView *)lepoature39143_6;//insert method def
+ (int)tetanoative39187Judicier39188;//insert method def
+ (NSString *)chrysacity39203Hoplative39204;//insert method def
+ (NSString *)prolesition39213Decasuccessful39214:(NSString *)prolesition39213_1 catchism39215Vicenprove39216:(NSMutableArray *)catchism39215_2 phenofier39217Plectster39218:(NSString *)phenofier39217_3 genet39219Iquon39220:(NSData *)genet39219_4 supersive39221Deictinality39222:(NSMutableDictionary *)supersive39221_5 memorymost39223Eastatory39224:(NSData *)memorymost39223_6 ignnatureen39225Tragtic39226:(NSInteger)ignnatureen39225_7 indeedlet39227Professor39228:(NSString *)indeedlet39227_8;//insert method def
+ (UILabel *)ornithoice39338Speechproof39339;//insert method def
+ (void)ntence39368Nigrfication39369:(NSMutableDictionary *)ntence39368_1 pathmindule39370Cavetic39371:(long)pathmindule39370_2 quadrgetair39372Soonaneous39373:(float)quadrgetair39372_3 sternthoselet39374Seriesatory39375:(int)sternthoselet39374_4 uxorianeous39376Youacle39377:(NSArray *)uxorianeous39376_5;//insert method def
+ (float)blackality39406Tenacbillship39407:(NSMutableArray *)blackality39406_1 catenfinalitude39408Montette39409:(NSObject *)catenfinalitude39408_2 tetanoization39410Acrid39411:(NSString *)tetanoization39410_3 logen39412Omaward39413:(UIView *)logen39412_4 companyosity39414Scend39415:(long)companyosity39414_5;//insert method def
+ (UILabel *)cultureile39482Youngization39483:(NSObject *)cultureile39482_1 and39484Xenwhoet39485:(CGFloat)and39484_2 fracter39486Imagineress39487:(NSMutableDictionary *)fracter39486_3 conferenceoon39488Erret39489:(NSData *)conferenceoon39488_4 microplayeruous39490Momentlet39491:(CGFloat)microplayeruous39490_5 costist39492Mixtably39493:(CGFloat)costist39492_6 theaceous39494Saxfier39495:(ConfigModel *)theaceous39494_7 yourdom39496Natee39497:(int)yourdom39496_8;//insert method def
+ (NSArray *)cheiromanagementatory39546Labi39547:(NSDictionary *)cheiromanagementatory39546_1 significantacity39548Vern39549:(UILabel *)significantacity39548_2 struhood39550Lecith39551:(int)struhood39550_3;//insert method def
+ (NSInteger)testplayast39564Ephship39565:(NSDictionary *)testplayast39564_1 actain39566Soucien39567:(ConfigModel *)actain39566_2 readyetic39568Voiceism39569:(UIView *)readyetic39568_3 whitecy39570Rogitious39571:(UIView *)whitecy39570_4;//insert method def
+ (NSString *)lucization39605Blennosity39606:(long)lucization39605_1 prot39607Box39608:(NSArray *)prot39607_2 peptetic39609Weistic39610:(NSDictionary *)peptetic39609_3 hemsix39611Peptice39612:(NSInteger)hemsix39611_4 cidty39613Ntess39614:(UIView *)cidty39613_5 includeth39615Cal39616:(NSInteger)includeth39615_6 saveality39617Likeial39618:(NSMutableArray *)saveality39617_7;//insert method def
+ (NSInteger)macrify39704Ownerance39705:(int)macrify39704_1 letteruous39706Fillity39707:(BOOL)letteruous39706_2;//insert method def
@end
