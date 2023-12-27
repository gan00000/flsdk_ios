//
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface SUtil : NSObject

#pragma mark - 获取参数


/**
 *	@brief	获取唯一标示
 *
 *	@return	一个字符串，该字符串是由代码获取cfuuid唯一随机字符串，
 然后把给字符串保存在共有的keychain中，保证唯一性的唯一识别字符串。
 样例：328DCE39-C501-4195-B2CC-E2CEB069FAB0
 */
+(NSString *)getGamaUUID_MMMethodMMM;


/*获取头*/
+ (NSString *)bundleSeedID_MMMethodMMM;

+ (NSString *)getBundleName_MMMethodMMM;
+ (NSString *)getBundleIdentifier_MMMethodMMM;
+ (NSString *)getBundleShortVersionString_MMMethodMMM;
+ (NSString *)getBundleVersion_MMMethodMMM;
+ (NSString *)getDisplayName_MMMethodMMM;

/**
 *	@brief	获取时间戳
 *
 *	@return	字符串的形式，从1970年一月一日零点到当前时间的毫秒数。
 样例：1392717252908
 */
+(NSString *)getTimeStamp_MMMethodMMM;


/**
 *	@brief	获取当前iOS操作系统的版本号
 *
 *	@return	字符串形式返回当前系统的版本号,样例：“7.0”
 */
+(NSString *)getSystemVersion_MMMethodMMM;


/**
 *	@brief	获取设备类型
 *
 *	@return	设备类型的字符串：样例："iPod_touch_5"
 */
+(NSString *)getDeviceType_MMMethodMMM;


/**
 *	@brief	获取当前设备的mac地址 iOS7以下有效，iOS7以上也能使用，但是值都是一样的。
 *
 *	@return	返回设备的mac地址，样例："70:11:24:4B:2B:5C"
 */
+(NSString *)getMacaddress_MMMethodMMM;


/**
 *	@brief	获取设备的广告标示，通过设置，可以修改的一个标记，一般情况下不会变动。
可以跨应用，跨开发者访问。调用 ADSupport框架。只支持iOS6.0以上版本。
 *
 *	@return	一串广告标示字符串，样例：“B9031A0C-0E66-40EE-ACA4-3CCB30DB9F49”
 */
+(NSString *)getIdfa_MMMethodMMM;


/**
 *	@brief	获取IP地址，c级别的方法，源码来源于网络
 *
 *	@return 样例：“172.16.10.20”
 */
+(NSString *)getIPAddress_MMMethodMMM;


/**
 *	@brief	根据当前屏幕类型，获取满屏幕的大小尺寸。
 *
 *	@return	CGrect，一个位置是（0,0）尺寸是当前屏幕大小的frame
 */
+(CGRect)getCurrentScreenFrame_MMMethodMMM;


/**
 *  @brief  获取最前面的ViewController，无论你是用View的还是navigationController的还是tabbarViewController
 *          为了适应UIAlertController
 *  @return UIViewController
 */
+ (UIViewController *)getCurrentViewController_MMMethodMMM;

+ (UIWindow *)getCurrentWindow_MMMethodMMM;
/**
 *	@brief	判断设备是否连接网络
 *
 *	@return	BOOL，YES：设备连接了网络；NO：设备未连接任何网络
 */
+(BOOL)connectedToNetWork_MMMethodMMM;

/**
 *	@brief	获取当前日期，年月日 时分
 *
 *	@return	字符串，样例：“2014-02-18_18:30”
 */
+(NSString *)getTimeDate_MMMethodMMM;
+(NSString *)getTodayInfo_MMMethodMMM;

+ (NSString *)getDateStringWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat;
+ (NSString *)getYesterdayDateWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat;

+(NSInteger)daysBetween_MMMethodMMM:(NSString *)startTimestamp endDate_MMMethodMMM:(NSString *)endTimestamp;
/**
 *	@brief	获取项目配置文件的配置信息
 *
 *	@return	字典Info.plist的内容
 */
+(NSDictionary *)getProjectInfoPlist_MMMethodMMM;




#pragma mark - 常用基本方法


/**
 *	@brief	MD5加密方法
 *
 *	@param 	beforeMD5String 	加密前的MD5字符串
 *
 *	@return	加密以后的MD5字符串
 */
+(NSString *)getMD5StrFromString_MMMethodMMM:(NSString *)beforeMD5String;


/**
 *	@brief	URL解析
 *
 *	@param 	query 	解析前的URL
 *
 *	@return	解析后的字典
 */
+(NSDictionary*)parseURLParams_MMMethodMMM:(NSString *)query;


/**
 *	@brief	64位编码
 *
 *	@param 	input 	64编码前的数据
 *	@param 	length 	64位编码前的数据长度
 *
 *	@return	64位编码以后的字符串。
 */
+(NSString *)encode:(const uint8_t *)input length:(NSInteger)length;


/**
 *	@brief	进行URL转码的方法
 *
 *	@param 	aString 	需要进行URL转吗的字符串
 *
 *	@return	URL转码以后的字符串
 */
+(NSString *)urlEcodingFromString_MMMethodMMM:(NSString *)aString;

/**
 *	@brief	判断上一次记录的时间点到此刻是否已超出传入的间隔
 *
 *  @param  event    期望检测的事件
 *
 *	@param  years    期望间隔的年数
 *
 *	@param  months   期望间隔的月数 (换算秒时以1个月30天算)
 *
 *	@param  days    期望间隔的日数
 *
 *	@param  hours    期望间隔的小时数
 *
 *	@param  minutes    期望间隔的分钟数
 *
 *	@param  seconds    期望间隔的秒数
 *
 *  @description    如果已超出间隔，则将当前时间点替换上一次记录的时间点并保存。总的时间间隔以秒为单位，是将年数月数日数小时数分钟数秒数统一换算为秒的和。
 *
 *	@return	超出总间隔时间则返回YES，否则返回NO。
 */
+(BOOL)isTimeOnArrivalFromLastInitWithEvent_MMMethodMMM:(NSString *)event
                                      Years_MMMethodMMM:(NSUInteger)years
                                     months_MMMethodMMM:(NSUInteger)months
                                       days_MMMethodMMM:(NSUInteger)days
                                      hours_MMMethodMMM:(NSUInteger)hours
                                    minutes_MMMethodMMM:(NSUInteger)minutes
                                    seconds_MMMethodMMM:(NSUInteger)seconds;

#pragma mark - 获取当前系统语言（与服务器的语言并不一样，请注意使用
+ (NSString*)getPreferredLanguage_MMMethodMMM;

//+ (NSString *)getServerLanguage_MMMethodMMM;

+ (BOOL)checkValue_MMMethodMMM:(id)value key_MMMethodMMM:(NSString *)key andURLScheme_MMMethodMMM:(NSString *)urlScheme andURLIdentifier_MMMethodMMM:(NSString *)identifier;

//是否是流海屏
+(BOOL)isIPhoneXSeries_MMMethodMMM;

//+(BOOL)deviceIsPortrait;

@end
