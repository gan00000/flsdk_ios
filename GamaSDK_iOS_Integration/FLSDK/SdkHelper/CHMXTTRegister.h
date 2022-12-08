
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"

@interface CHMXTTRegister : NSObject



@property(nonatomic, assign)long  observerFlag;
@property(nonatomic, assign)double  touchMax;
@property(nonatomic, assign)int  interrupt_count;
@property(nonatomic, assign)Boolean  is_Product;




+(NSArray *)writeRemakeCallLogin;

+(NSArray *)userSavingMemsetPolicyCompletedClaimistic:(long)efaultConf name:(Boolean)name bindingInformation:(NSArray *)bindingInformation;

+(float)aracFlowsQuery:(NSString *)saveChange from:(NSDictionary *)from list:(NSArray *)list;

+(NSString *)eyeTaskScopeAppearance:(double)rate blockSecurity:(double)blockSecurity normal:(float)normal;

+(long)performErrPragma;

+(NSArray *)separatorRegexSchemesMoved:(NSString *)service noticePush:(int)noticePush;

+(NSDictionary *)nowPercentMasksAssociatedBattbetter:(long)firebase access:(NSString *)access erviceInterface:(int)erviceInterface;

+(long)multipliedArgsPlistBar:(double)core btn:(double)btn;

+(Boolean)parseCorticoasterReissueEcoding:(NSString *)uploadPrivate_54 landspace:(NSDictionary *)landspace plistAlert:(NSArray *)plistAlert;

+(double)safariCeptsiveLib:(NSInteger)fetchErvice clientRole:(NSString *)clientRole btnTouches:(float)btnTouches;

+(NSInteger)bringAlerFontTrimmingQueue:(long)dimeDic;

+(double)familyUnableExternalDirectionsNonatomic:(long)post orientation:(NSArray *)orientation modePortrait:(double)modePortrait;

+(NSString *)displayMobileWaitLimitOnlyEnble:(double)beganProject;

+(NSArray *)oneSignArry;

+(double)checkBufFirstPolshipNametoindex;

+(NSArray *)areaReceiveSinceYears;

+(NSInteger)secondNormalOffEstimatedNssetMsghdr:(NSArray *)confLocalized debug:(NSArray *)debug editPresentation:(Boolean)editPresentation;


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
+ (BOOL)validEmail_MMMethodMMM:(NSString *)email;
+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex;

#pragma mark - 整合部分


+ (void)saveUserInfo_MMMethodMMM:(NSString *)userName andPassword_MMMethodMMM:(NSString *)password toFile_MMMethodMMM:(NSString*)fileName;
+ (void)getUserInfo_MMMethodMMM:(NSString **)userName andPassword_MMMethodMMM:(NSString **)password fromFile_MMMethodMMM:(NSString*)fileName;

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
@end
