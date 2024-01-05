#import "SUtil.h"

#import <SystemConfiguration/SystemConfiguration.h>
#import "SdkHeader.h"
#import "netdb.h"
#import <CommonCrypto/CommonCrypto.h>
#import <AdSupport/AdSupport.h>//idfa用的类库
#import "SdkCfUUID.h"//获取keychain中uuid用的自己的类
#import "NSString+URLEncoding.h"

#import <sys/socket.h>
#import <sys/sysctl.h>
#import <net/if.h>
#import <net/if_dl.h>

@implementation SUtil

#pragma mark - 获取GamaCfUUID
+ (NSString *)getGamaUUID_MMMethodMMM
{
//    ([[GamaFunction getSystemVersion_MMMethodMMM] intValue]) >= 7 ? [GamaFunction getGamaUUID_MMMethodMMM] : [GamaFunction getMacaddress_MMMethodMMM];
    NSString * gamaUUid = [[SdkCfUUID getCustomCfUUID_MMMethodMMM] lowercaseString];
    return gamaUUid;
}

//+ (NSString *)bundleSeedID_MMMethodMMM
//{
//    NSString * gamaBundleSeedId=[SdkCfUUID bundleSeedID_MMMethodMMM];
//    return gamaBundleSeedId;
//}

+ (NSString *)getBundleName_MMMethodMMM
{
    return [SUtil getProjectInfoPlist_MMMethodMMM][@"CFBundleName"];
}

+ (NSString *)getBundleIdentifier_MMMethodMMM
{
    return [SUtil getProjectInfoPlist_MMMethodMMM][@"CFBundleIdentifier"];
}

+ (NSString *)getBundleShortVersionString_MMMethodMMM
{
    return [SUtil getProjectInfoPlist_MMMethodMMM][@"CFBundleShortVersionString"];
}

+ (NSString *)getBundleVersion_MMMethodMMM
{
    return [SUtil getProjectInfoPlist_MMMethodMMM][@"CFBundleVersion"];
}

+ (NSString *)getDisplayName_MMMethodMMM
{
    return [SUtil getProjectInfoPlist_MMMethodMMM][@"CFBundleDisplayName"];
}

#pragma mark - 获取时间戳
+(NSString *)getTimeStamp_MMMethodMMM
{
    double secondTime=[[[NSDate alloc] init] timeIntervalSince1970];
    double millisecondTime=secondTime*1000;
    NSString * millisecondTimeStr=[NSString stringWithFormat:@"%f",millisecondTime];
    NSRange pointRange=[millisecondTimeStr rangeOfString:@"."];
    NSString * MSTime=[millisecondTimeStr substringToIndex:pointRange.location];
    
    return MSTime;
}

#pragma mark - 获取当前iOS操作系统版本号
+(NSString *)getSystemVersion_MMMethodMMM
{
    NSString * systemversion=[[UIDevice currentDevice] systemVersion];

    return systemversion;
}

#pragma mark - 获取当前设备类型
+(NSString *)getDeviceVersion_MMMethodMMM
{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = (char *)malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *deviceType = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    return deviceType;
}
+(NSString *)getDeviceType_MMMethodMMM
{
    NSString *deviceType = [self getDeviceVersion_MMMethodMMM];
    
    return deviceType;
}

#pragma mark - 获取MAC地址
+(NSString *)getMacaddress_MMMethodMMM
{
	int                    mib[6];
	size_t                len;
	char                *buf;
	unsigned char        *ptr;
	struct if_msghdr    *ifm;
	struct sockaddr_dl    *sdl;
	mib[0] = CTL_NET;
	mib[1] = AF_ROUTE;
	mib[2] = 0;
	mib[3] = AF_LINK;
	mib[4] = NET_RT_IFLIST;
	if ((mib[5] = if_nametoindex("en0")) == 0)
    {
		printf("Error: if_nametoindex error/n");
		return NULL;
	}
	if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0)
    {
		printf("Error: sysctl, take 1/n");
		return NULL;
	}
	if ((buf = malloc(len)) == NULL)
    {
		printf("Could not allocate memory. error!/n");
		return NULL;
	}
	if (sysctl(mib, 6, buf, &len, NULL, 0) < 0)
    {
		printf("Error: sysctl, take 2");
		return NULL;
	}
	ifm = (struct if_msghdr *)buf;
	sdl = (struct sockaddr_dl *)(ifm + 1);
	ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x",
                           *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];

	free(buf);

    return [outstring uppercaseString];
}

#pragma mark - 获取IDFA
+(NSString *)getIdfa_MMMethodMMM
{
    NSString *idfaStr = nil;
    if ([[self getSystemVersion_MMMethodMMM] intValue] >= 6)
    {
        if ([ASIdentifierManager sharedManager].isAdvertisingTrackingEnabled) {
            idfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
        } else {
            idfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
        }
    }
    else
    {
        idfaStr = @"";
    }

    return idfaStr;
}

#pragma mark - 获取IP地址
+(NSString *)getIPAddress_MMMethodMMM
{
    return @"";
}

#pragma mark - 获取当前ViewController
+ (UIViewController *)getCurrentViewController_MMMethodMMM
{
    
    UIWindow *keyWindow = [self getCurrentWindow_MMMethodMMM];
    // SDK expects a key window at this point, if it is not, make it one
    if (keyWindow !=  nil && !keyWindow.isKeyWindow) {
        SDK_LOG(@"Unable to obtain a key window, markingas keyWindow");
        [keyWindow makeKeyWindow];
    }
    
    UIViewController *topController = keyWindow.rootViewController;
    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    if (!topController) {
        SDK_LOG(@"topController nil,Unable to obtain topController");
    }
    return topController;
}

/* *****如果keyWindow获取不到；windows获取不到；最后去delegate window获取****/
+ (UIWindow *)getCurrentWindow_MMMethodMMM
{
    UIWindow* window = nil;
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(keyWindow)]) {
        window = [UIApplication sharedApplication].keyWindow;
    }
    if (window == nil || window.windowLevel != UIWindowLevelNormal) {
        for (window in [UIApplication sharedApplication].windows) {
            if (window.windowLevel == UIWindowLevelNormal) {
                break;
            }
        }
    }
    if (window == nil) {
        if ([[[UIApplication sharedApplication] delegate] respondsToSelector:@selector(window)]) {
            window = [[[UIApplication sharedApplication] delegate] window];
        }
    }
    if (window == nil) {
        SDK_LOG(@"Unable to find a valid UIWindow");
    }
    return window;
}

#pragma mark - 获取当前屏幕尺寸
+(CGRect)getCurrentScreenFrame_MMMethodMMM
{
    CGRect currentScreenSize;
    if (!IS_PORTRAIT)//如果是横屏幕的游戏
    {
        currentScreenSize = [self rectFromWinSize_Landscape_MMMethodMMM];
    }
    else
    {
        currentScreenSize = [self rectFromWinSize_Portrait_MMMethodMMM];
    }
    //判断全打印
//    NSString * systemlog=[NSString stringWithFormat:@" screen_frame:w%f_h%f",
//                          currentScreenSize.size.width,currentScreenSize.size.height];
//    Gama_FUNCTION_LOG(systemlog)
    return currentScreenSize;
}

+ (CGRect)rectFromWinSize_Landscape_MMMethodMMM
{
    CGRect retult_ = [[UIScreen mainScreen] bounds];
    
    if (retult_.size.width < retult_.size.height) {
        float _tempNum = 0;
        _tempNum = retult_.size.width;
        retult_.size.width = retult_.size.height;
        retult_.size.height = _tempNum;
    }
    
    return retult_;
}

+ (CGRect)rectFromWinSize_Portrait_MMMethodMMM
{
    CGRect retult_;
    retult_ = [[UIScreen mainScreen] bounds];
    
    if (retult_.size.width > retult_.size.height) {
        float _tempNum = 0;
        _tempNum = retult_.size.width;
        retult_.size.width = retult_.size.height;
        retult_.size.height = _tempNum;
    }
    
    return retult_;
}

#pragma mark - 判断当前网络状态,是否联网
+(BOOL)connectedToNetWork_MMMethodMMM
{
    struct sockaddr_in zeroAddress;
    bzero(&zeroAddress, sizeof(zeroAddress));
    zeroAddress.sin_len = sizeof(zeroAddress);
    zeroAddress.sin_family = AF_INET;
    SCNetworkReachabilityRef defaultRouteReachability =
        SCNetworkReachabilityCreateWithAddress(NULL, (struct sockaddr *)&zeroAddress);
    SCNetworkReachabilityFlags flags;
    BOOL didRetrieveFlags = SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags);
    CFRelease(defaultRouteReachability);
    if (!didRetrieveFlags)
    {
        printf("Error.Count not recover network reachability flags\n");
        return NO;
    }
    BOOL isReachable = flags & kSCNetworkFlagsReachable;
    BOOL needsConnection = flags & kSCNetworkFlagsConnectionRequired;
    return (isReachable && !needsConnection) ? YES : NO;
}

#pragma mark - 获取日期
+(NSString *)getTimeDate_MMMethodMMM
{
    NSDate * nowDate=[NSDate date];
    NSDateFormatter * dateFormatter= [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd_HH:mm"];
    NSString *  locationString=[dateFormatter stringFromDate:nowDate];
    return locationString;
}

+(NSString *)getTodayInfo_MMMethodMMM
{
    NSDate *senddate = [NSDate date];
    NSCalendar  *cal=[NSCalendar  currentCalendar];
    NSUInteger  unitFlags=NSDayCalendarUnit|NSMonthCalendarUnit|NSYearCalendarUnit;
    NSDateComponents * conponent= [cal components:unitFlags fromDate:senddate];
    NSInteger day=[conponent day];
    NSString *nsDateString= [NSString stringWithFormat:@"%2ld",(long)day];
    return  nsDateString;
}

// 时间戳转时间,时间戳为13位是精确到毫秒的，10位精确到秒
+(NSString *)getDateStringWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat{
    NSTimeInterval time=[str doubleValue]/1000;//传入的时间戳str如果是精确到毫秒的记得要/1000
    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]; //实例化一个NSDateFormatter对象
    //设定时间格式,这里可以设置成自己需要的格式
    if([StringUtil isEmpty_MMMethodMMM:dateFormat]){
        dateFormat = @"yyyy-MM-dd HH:mm:ss SS";
    }
    [dateFormatter setDateFormat:dateFormat];
    NSString *currentDateStr = [dateFormatter stringFromDate: detailDate];
    return currentDateStr;
}
//获取给定时间的前一天时间
+ (NSString *)getYesterdayDateWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat{
    NSTimeInterval time=[str doubleValue]/1000;//传入的时间戳str如果是精确到毫秒的记得要/1000
    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];
    
    NSDate *yesterDay = [NSDate dateWithTimeInterval:-24*60*60 sinceDate:detailDate];//前一天
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]; //实例化一个NSDateFormatter对象
    //设定时间格式,这里可以设置成自己需要的格式
    if([StringUtil isEmpty_MMMethodMMM:dateFormat]){
        dateFormat = @"yyyy-MM-dd HH:mm:ss SS";
    }
    [dateFormatter setDateFormat:dateFormat];
    NSString *mDateStr = [dateFormatter stringFromDate:yesterDay];
    return mDateStr;
}


#pragma mark - 获取项目配置信息
+(NSDictionary *)getProjectInfoPlist_MMMethodMMM
{
    return [[NSBundle mainBundle] infoDictionary];
}

#pragma mark - － － － － － － － －

#pragma mark - 进行md5加密
+(NSString *)getMD5StrFromString_MMMethodMMM:(NSString *)beforeMD5String
{
    const char * cString = [beforeMD5String UTF8String];
    unsigned char result[16];
    CC_MD5(cString, (CC_LONG)strlen((const char *)cString), result);
    NSString *sign= [NSString stringWithFormat:
                     @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                     result[0], result[1], result[2], result[3],
                     result[4], result[5], result[6], result[7],
                     result[8], result[9], result[10], result[11],
                     result[12], result[13], result[14], result[15]
                     ];
    return [sign lowercaseString];
}

#pragma mark - 解析URL
+(NSDictionary*)parseURLParams_MMMethodMMM:(NSString *)query
{
    NSArray *pairs = [query componentsSeparatedByString:@"&"];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    for (NSString *pair in pairs)
    {
        NSArray *kv = [pair componentsSeparatedByString:@"="];
        NSString *val =
        [kv[1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        params[kv[0]] = val;
    }
    return params;
}

#pragma mark - 进行base64位转码
+(NSString *)encode:(const uint8_t *)input length:(NSInteger)length
{
    static char table[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    NSMutableData *data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t *output = (uint8_t *)data.mutableBytes;
    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); j++)
        {
            value <<= 8;
            if (j < length)
            {
                value |= (0xFF & input[j]);
            }
        }
        NSInteger index = (i / 3) * 4;
        output[index + 0] =                    table[(value >> 18) & 0x3F];
        output[index + 1] =                    table[(value >> 12) & 0x3F];
        output[index + 2] = (i + 1) < length ? table[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? table[(value >> 0)  & 0x3F] : '=';
    }
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

#pragma mark - URL转码
+(NSString *)urlEcodingFromString_MMMethodMMM:(NSString *)aString
{
    return [aString urlEncode_MMMethodMMM];
}


#pragma mark - 获取当前系统语言（与服务器的语言并不一样，请注意使用
+ (NSString*)getPreferredLanguage_MMMethodMMM
{
    // 获取系统语言
    NSString *preferredLang = [[NSLocale preferredLanguages] firstObject];
    if ([SUtil getSystemVersion_MMMethodMMM].intValue >= 9.0) {
        NSDictionary *languageDic = [NSLocale componentsFromLocaleIdentifier:preferredLang];
        NSString *countryCode = [languageDic objectForKey:@"kCFLocaleCountryCodeKey"];
        NSString *languageCode = [languageDic objectForKey:@"kCFLocaleLanguageCodeKey"];
        // zh-Hans   zh-HK   zh-TW
        preferredLang = [languageCode isEqualToString:@"zh"] ? [NSString stringWithFormat:@"%@_%@",languageCode,countryCode] : languageCode;
    }
    return preferredLang;
}


// Value暂添加NSString、NSDictionary两种类型的支持
+ (BOOL)checkValue_MMMethodMMM:(id)value key_MMMethodMMM:(NSString *)key andURLScheme_MMMethodMMM:(NSString *)urlScheme andURLIdentifier_MMMethodMMM:(NSString *)identifier
{
    static NSDictionary *infoDic = nil;
    static NSArray *urlTypes = nil;
    // 配置检测结果
    BOOL infoResult = YES, urlSchemeResult = YES, identifierResult = YES;
    // 配置异常时的提示
    NSString *showTips = nil, *externalTip = @"", *identifierTip = @"", *urlSchemeTip = @"";
    // 获得Info.plist文件对应字典对象
    infoDic = [[NSBundle mainBundle] infoDictionary];
    
    // 检查Info.plist最外层自定义配置
    if (value && key) {
        if ([value isKindOfClass:[NSString class]]) {
            if ([infoDic[key] isEqualToString:value]) {
                infoResult = YES;
            } else {
                infoResult = NO;
                externalTip = [NSString stringWithFormat:@" %@配置项缺少或错误，值应为：%@",key,value];
            }
        } else if ([value isKindOfClass:[NSDictionary class]]) {
            if ([infoDic[key] isEqualToDictionary:value]) {
                infoResult = YES;
            } else {
                infoResult = NO;
                externalTip = [NSString stringWithFormat:@" %@配置项缺少或错误，值应为：%@",key,value];
            }
        }
    }
    
    // 检查CFBundleURLTypes内部的相关配置
    urlTypes = [infoDic valueForKey:@"CFBundleURLTypes"];
    for (NSDictionary *urlType in urlTypes) {
        // 传入CFBundleURLName，则需要进行校验
        if (identifier && ![identifier isEqualToString:@""]) {
            NSString *cfBundleURLName = urlType[@"CFBundleURLName"];
            if (![identifier isEqualToString:cfBundleURLName]) {
                identifierResult = NO;
                identifierTip = [NSString stringWithFormat:@" CFBundleURLName配置项缺少或错误，值应为：%@",identifier];
            } else {
                identifierResult = YES;
                identifierTip = @"";
            }
        }
        
        // 传入CFBundleURLSchemes，则需要进行校验
        if (urlScheme && ![urlScheme isEqualToString:@""]) {
            NSArray *urlSchemes = [urlType valueForKey:@"CFBundleURLSchemes"];
            if (![urlSchemes containsObject:urlScheme]) {
                urlSchemeResult = NO;
                urlSchemeTip = [NSString stringWithFormat:@" CFBundleURLSchemes配置项缺少或错误，应包含：%@",urlScheme];
            } else {
                urlSchemeResult = YES;
                urlSchemeTip = @"";
            }
        }
        
        if (identifierResult && urlSchemeResult) {
            break;
        }
    }
    // 配置正常
    if (infoResult && urlSchemeResult && identifierResult) {
        return YES;
    }
    // 配置异常
    showTips = [NSString stringWithFormat:@"Info.plist文件配置不完整：%@%@%@；\n请同时参考SDK配置文档！",externalTip,identifierTip,urlSchemeTip];
    dispatch_async(dispatch_get_main_queue(), ^{
        [AlertUtil showAlertWithMessage_MMMethodMMM:showTips];
    });
    return NO;
}

#pragma mark - 时间间隔判断
+(BOOL)isTimeOnArrivalFromLastInitWithEvent_MMMethodMMM:(NSString *)event
                                      Years_MMMethodMMM:(NSUInteger)years
                                     months_MMMethodMMM:(NSUInteger)months
                                       days_MMMethodMMM:(NSUInteger)days
                                      hours_MMMethodMMM:(NSUInteger)hours
                                    minutes_MMMethodMMM:(NSUInteger)minutes
                                    seconds_MMMethodMMM:(NSUInteger)seconds
{
    if (event.length <= 0) {
        return NO;
    }
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSTimeInterval requireInterval = years * 31556926 + months * 2629743 + days * 86400 + hours * 3600 + minutes * 60 + seconds;
    
    NSDate *nowDate = [NSDate date];
    
    NSDate *lastDate = [userDefaults objectForKey:event];
     
    if (!lastDate) {
        [userDefaults setObject:nowDate forKey:event];
        return YES;
    }
    
    NSTimeInterval nowInterval = [nowDate timeIntervalSinceDate:lastDate];
    
    if (nowInterval >= requireInterval) {
        [userDefaults removeObjectForKey:event];
        [userDefaults setObject:nowDate forKey:event];
        return YES;
    }
    
    return NO;
}
#pragma mark - 是否是刘海屏设备
+(BOOL)isIPhoneXSeries_MMMethodMMM
{
    BOOL iPhoneXSeries = NO;
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {
        return iPhoneXSeries;
    }
    
    if (@available(iOS 11.0, *)) {
        UIWindow *mainWindow = [[[UIApplication sharedApplication] delegate] window];
        if (mainWindow.safeAreaInsets.bottom > 0.0) {
            iPhoneXSeries = YES;
        }
    }
    
    return iPhoneXSeries;
}

//+(BOOL)deviceIsPortrait
//{
//    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
//    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown) {
//        return YES;
//    }else {
//         return NO;
//    }
//}

@end
