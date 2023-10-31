

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "NonagenproofPlainicsData.h"
#import "ConfigModel.h"

@interface SemblfactionShootot : NSObject


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
+ (UIFont *)palinia43567Mayite43568:(NSObject *)palinia43567_1;//insert method def
+ (NSString *)volballier43575Exampleance43576:(NSMutableDictionary *)volballier43575_1 governmentosity43577Sorting43578:(float)governmentosity43577_2 pil43579Setics43580:(long)pil43579_3 salinization43581Sortbookacle43582:(NSMutableDictionary *)salinization43581_4 axilety43583Cyansure43584:(NSMutableArray *)axilety43583_5 moreile43585Nugafeelingible43586:(NSString *)moreile43585_6 glabrie43587Describeine43588:(float)glabrie43587_7 franging43589Industryorium43590:(NSMutableArray *)franging43589_8;//insert method def
+ (NSDictionary *)institutionia43657Desmakeier43658:(CGFloat)institutionia43657_1 solutan43659Kinoism43660:(CGFloat)solutan43659_2 Mrseer43661Felinoling43662:(NSDictionary *)Mrseer43661_3 mediaacious43663Plectship43664:(long)mediaacious43663_4;//insert method def
+ (NSString *)wallad43725Stationaceous43726:(NSDictionary *)wallad43725_1 polemacle43727Ooid43728:(NSDictionary *)polemacle43727_2 fororise43729Leditor43730:(int)fororise43729_3;//insert method def
+ (NSDictionary *)docal43790Spring43791:(BOOL)docal43790_1 soldierable43792Ectomyosity43793:(UILabel *)soldierable43792_2 scut43794Thym43795:(UIView *)scut43794_3 ursship43796Gyn43797:(UIFont *)ursship43796_4;//insert method def
+ (long)cryptence43826Policeous43827:(NSMutableArray *)cryptence43826_1 increaseible43828Mulgative43829:(BOOL)increaseible43828_2 damnaster43830Writerive43831:(NSMutableDictionary *)damnaster43830_3 acrial43832Torratory43833:(NSString *)acrial43832_4 primform43834Rhizlearndom43835:(NSString *)primform43834_5 alreadyfold43836Missionry43837:(int)alreadyfold43836_6;//insert method def
+ (NSString *)ducfouroon43874One43875:(long)ducfouroon43874_1 reflectics43876Opercul43877:(NSInteger)reflectics43876_2 jobitor43878Thankent43879:(NSObject *)jobitor43878_3 systemo43880Windowia43881:(UILabel *)systemo43880_4 holoain43882Fallarian43883:(int)holoain43882_5 quartier43884Zymia43885:(NSString *)quartier43884_6 weightior43886Oidling43887:(UILabel *)weightior43886_7 comsive43888Letteruous43889:(UILabel *)comsive43888_8;//insert method def
+ (int)vitraster43938Secrtion43939:(NSString *)vitraster43938_1;//insert method def
+ (NSDictionary *)dactyl43954Republicanfold43955:(UIFont *)dactyl43954_1 enneaative43956Visacity43957:(NSMutableArray *)enneaative43956_2 rhachprofessorcy43958Cytoeer43959:(UILabel *)rhachprofessorcy43958_3 canence43960Pang43961:(int)canence43960_4 wrongeous43962Cur43963:(NSArray *)wrongeous43962_5 eventian43964Agoion43965:(BOOL)eventian43964_6 despiteial43966Mim43967:(long)despiteial43966_7 commercial43968Poorform43969:(NSDictionary *)commercial43968_8;//insert method def
+ (long)suddenly43981Rate43982:(UIFont *)suddenly43981_1 albability43983Hypnoarmair43984:(NSMutableDictionary *)albability43983_2 exter43985Billionency43986:(long)exter43985_3 simplyile43987Add43988:(BOOL)simplyile43987_4 internationalory43989Sceneel43990:(NSString *)internationalory43989_5 monstratsion43991Fandorium43992:(NSString *)monstratsion43991_6 oscillophysicallet43993Controlward43994:(NSInteger)oscillophysicallet43993_7 poieice43995Turbo43996:(NSObject *)poieice43995_8;//insert method def
+ (NSDictionary *)specificite44027Omaward44028:(ConfigModel *)specificite44027_1;//insert method def
+ (NSMutableArray *)legis44037Particularite44038:(UIFont *)legis44037_1 hex44039Middleice44040:(UIView *)hex44039_2 arboripartner44041Forfaction44042:(NSData *)arboripartner44041_3 sortaneous44043Credar44044:(NSMutableDictionary *)sortaneous44043_4 clavthroughition44045Problemon44046:(ConfigModel *)clavthroughition44045_5 chrysast44047Lite44048:(BOOL)chrysast44047_6 semin44049Valarium44050:(CGFloat)semin44049_7;//insert method def
+ (NSObject *)onlying44059Authoritysive44060:(NSArray *)onlying44059_1;//insert method def
+ (NSString *)candidateeer44077Cine44078:(NSData *)candidateeer44077_1 vitrial44079Batpresident44080:(UILabel *)vitrial44079_2 anniship44081Montette44082:(float)anniship44081_3 theoriish44083Askaneous44084:(NSString *)theoriish44083_4;//insert method def
+ (NSMutableDictionary *)phonency44115Materialical44116:(NSMutableArray *)phonency44115_1 oligoshakeory44117Pater44118:(UIView *)oligoshakeory44117_2;//insert method def
@end
