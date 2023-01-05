
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "LoginButtonData.h"
#import "ConfigModel.h"

@interface SdkUtil : NSObject



@property(nonatomic, assign)NSInteger  interruptSum;
@property(nonatomic, assign)NSInteger  facebookSum;
@property(nonatomic, assign)NSInteger  selected_tag;
@property(nonatomic, assign)Boolean  has_Parse;




+(double)cancelFlyerAdjustsTerlessLableObject:(NSDictionary *)socialSubviews stop:(long)stop;

+(NSArray *)fractionArchiFunctionsPriority:(NSDictionary *)coreImage window_y:(NSInteger)window_y;

+(long)resetupLibHasPlegingPoint:(NSArray *)touch;

+(NSArray *)acceptableRevenueCountryAnythingIdmd:(NSArray *)observerContent;

+(NSString *)observeWrappingAuthorizeResource:(float)make viewHandle:(NSString *)viewHandle formatBundle:(NSArray *)formatBundle;

+(double)normalUtilIndexInfodic:(long)role;

+(NSArray *)placeTelephoneMakerRemake:(NSDictionary *)item;

+(NSArray *)masksJunkFatuWrapper;

+(NSArray *)downSkyStarety:(NSString *)m_layer hour:(int)hour;

+(double)changeSharerDecodeFunctions:(float)urls parent:(Boolean)parent;

+(double)addNavigationCountHtml:(Boolean)time_jaEncode keychainManager:(NSDictionary *)keychainManager;

+(NSString *)decideOnceSetupEditing;

+(int)writeAxisNative;

+(NSInteger)changDaysLaunchGameswordGasad:(NSArray *)reload completerTerminate:(NSArray *)completerTerminate changedAgree:(float)changedAgree;

+(NSArray *)evaluateScopesMaxDeviceClaimistic:(NSString *)selectIcon;

+(NSArray *)touchesNativeArchiFunction:(NSString *)paramsEncoding googleAddress:(float)googleAddress encryptRemove:(NSString *)encryptRemove;

+(NSInteger)borderKindHantInvalid:(NSDictionary *)payment_uw sdk:(double)sdk;

+(NSInteger)prefersChildOccurrencesAgree;


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
