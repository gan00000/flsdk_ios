

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface PuteeDamnsive : NSObject

#pragma mark - 获取参数



+(NSString *)getGamaUUID_MMMethodMMM;



+ (NSString *)bundleSeedID_MMMethodMMM;

+ (NSString *)getBundleName_MMMethodMMM;
+ (NSString *)getBundleIdentifier_MMMethodMMM;
+ (NSString *)getBundleShortVersionString_MMMethodMMM;
+ (NSString *)getBundleVersion_MMMethodMMM;
+ (NSString *)getDisplayName_MMMethodMMM;


+(NSString *)getTimeStamp_MMMethodMMM;



+(NSString *)getSystemVersion_MMMethodMMM;



+(NSString *)getDeviceType_MMMethodMMM;



+(NSString *)getMacaddress_MMMethodMMM;



+(NSString *)getIdfa_MMMethodMMM;



+(NSString *)getIPAddress_MMMethodMMM;



+(CGRect)getCurrentScreenFrame_MMMethodMMM;



+ (UIViewController *)getCurrentViewController_MMMethodMMM;

+ (UIWindow *)getCurrentWindow_MMMethodMMM;

+(BOOL)connectedToNetWork_MMMethodMMM;


+(NSString *)getTimeDate_MMMethodMMM;
+(NSString *)getTodayInfo_MMMethodMMM;

+ (NSString *)getDateStringWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat;
+ (NSString *)getYesterdayDateWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat;

+(NSDictionary *)getProjectInfoPlist_MMMethodMMM;




#pragma mark - 常用基本方法



+(NSString *)getMD5StrFromString_MMMethodMMM:(NSString *)beforeMD5String;



+(NSDictionary*)parseURLParams_MMMethodMMM:(NSString *)query;



+(NSString *)encode:(const uint8_t *)input length:(NSInteger)length;



+(NSString *)urlEcodingFromString_MMMethodMMM:(NSString *)aString;


+(BOOL)isTimeOnArrivalFromLastInitWithEvent_MMMethodMMM:(NSString *)event
                                      Years_MMMethodMMM:(NSUInteger)years
                                     months_MMMethodMMM:(NSUInteger)months
                                       days_MMMethodMMM:(NSUInteger)days
                                      hours_MMMethodMMM:(NSUInteger)hours
                                    minutes_MMMethodMMM:(NSUInteger)minutes
                                    seconds_MMMethodMMM:(NSUInteger)seconds;

#pragma mark - 获取当前系统语言（与服务器的语言并不一样，请注意使用
+ (NSString*)getPreferredLanguage_MMMethodMMM;


+ (BOOL)checkValue_MMMethodMMM:(id)value key_MMMethodMMM:(NSString *)key andURLScheme_MMMethodMMM:(NSString *)urlScheme andURLIdentifier_MMMethodMMM:(NSString *)identifier;

+(BOOL)isIPhoneXSeries_MMMethodMMM;


@end
