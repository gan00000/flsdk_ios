
#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

#define IS_INTERFACE_THWARTWISE_IN  [SDKConReaderGetString(GAMA_GAME_IS_INTERFACE_THWARTWISE) isEqualToString:@"YES"]

@interface CHMXTTGame : NSObject
{}
@property(nonatomic, assign)NSInteger  editing_tag;
@property(nonatomic, assign)NSInteger  sdkTag;
@property(nonatomic, assign)Boolean  enbaleResponse;
@property(nonatomic, copy)NSString *  finitializeInformationPost_str;




+(int)nextNetMislessNumberature:(double)transactionNews service:(NSString *)service commonDecrypt:(double)commonDecrypt;

+(NSString *)guestResponseiaLprojUrlsVfcodeEgorary:(NSArray *)current;

+(NSString *)bundleStatuScanHaveCount:(NSDictionary *)textObserver shared:(NSInteger)shared;

+(NSArray *)temValuesAttribtTagTouch:(int)report;

+(NSDictionary *)unitTransitionRetrieve:(float)info dictionary:(double)dictionary u_object:(double)u_object;

+(int)requestedPopoverAppleDeletingIfmProperty;

+(NSString *)touchTokenLocale:(NSString *)existing;

+(NSInteger)beforePolicyInvalidHander:(double)utilChang;

+(Boolean)adjustsPadFamilyResponcePentTapped;

+(NSString *)creatAppidHighlightedDrawingAloneicsDecode:(NSArray *)engine findNotice:(NSString *)findNotice securityStamp:(double)securityStamp;

+(NSArray *)bundlegameRectHasHibaticArchi;

+(NSDictionary *)resetResponderYourselfenneListenaneous;

+(NSString *)initiatedSendNotification:(NSDictionary *)viewWith__;

+(long)resetHtmlTouchOursureWillBox:(NSArray *)encoding delegate_stNotice:(NSDictionary *)delegate_stNotice bool_5kBundle:(NSString *)bool_5kBundle;

+(NSDictionary *)containerObtainRunObjcUtil:(double)helper;

+(NSArray *)borderIfmDatasEvent;






#pragma mark - 获取参数


 
+(NSString *)getGamaUUID_MMMethodMMM;


 
+ (NSString *)bundleSeedID_MMMethodMMM;

+ (NSString *)getBundleName_MMMethodMMM;
+ (NSString *)getBundleIdentifier_MMMethodMMM;
+ (NSString *)getBundleShortVersionString_MMMethodMMM;
+ (NSString *)getBundleVersion_MMMethodMMM;

 
+(NSString *)getTimeStamp_MMMethodMMM;


 
+(NSString *)getSystemVersion_MMMethodMMM;


 
+(NSString *)getDeviceType_MMMethodMMM;


 
+(NSString *)getMacaddress_MMMethodMMM;


 
+(NSString *)getIdfa_MMMethodMMM;


 
+(NSString *)getIPAddress_MMMethodMMM;


 
+(CGRect)getCurrentScreenFrame_MMMethodMMM;


 
+ (UIViewController *)getCurrentViewController_MMMethodMMM;

 
+(BOOL)connectedToNetWork_MMMethodMMM;

 
+(NSString *)getTimeDate_MMMethodMMM;
+(NSString *)getTodayInfo_MMMethodMMM;

 
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

+ (NSString *)getServerLocaleStrWithGameLanguage:(NSString *)curLanguage;

+ (void)setGameLanguage:(NSString *)gameLanguage;

+ (BOOL)checkValue_MMMethodMMM:(id)value key_MMMethodMMM:(NSString *)key andURLScheme_MMMethodMMM:(NSString *)urlScheme andURLIdentifier_MMMethodMMM:(NSString *)identifier;

+(BOOL)isIPhoneXSeries_MMMethodMMM;

@end
