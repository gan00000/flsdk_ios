
//
#import <malloc/malloc.h>
#import <objc/runtime.h>
#import "ResReader.h"
#import "ResHeader.h"
#import "SdkHeader.h"


@interface ResReader ()
@property (nonatomic, copy) NSString *m_stringsName;
@property (nonatomic, strong) NSBundle *m_stringsBundle;
@end

@implementation ResReader

static ResReader * coreReader;
static dispatch_once_t onceToken;


+ (ResReader *)reader_MMMethodMMM
{
    
    dispatch_once(&onceToken,^{
        coreReader = [[ResReader alloc] init];
        
    });
    return coreReader;
}

//+ (void)releaseReader
//{
//    SDK_LOG(@"releaseReader");
//    onceToken = 0;
//    [coreReader release];
//    coreReader = nil;
//}

- (instancetype)init
{
    self=[super init];
    if (self)
    {
        SDK_LOG(@"reader init");
//        self.areaCodeDic = [NSMutableDictionary dictionary];
        self.areaInfoArray = [NSMutableArray array];
        [self copyConfigeFileToDocument_MMMethodMMM];
        
//        [self readCoreConfInfo_MMMethodMMM];
        
//        [self checkInfoPlistConfiguration];
        
        //获取是否调试模式信息
        self.ISPRINT=YES;
        //[self setWhetherPrint];
        
        [self setBundleInfo_MMMethodMMM];
        
    }
    return self;
}

//复制配置文件到Documents，根据版本号CFBundleShortVersionString更新
- (void)copyConfigeFileToDocument_MMMethodMMM
{
    
  
//    NSString *appVersionPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/gamaGameVersion.txt"];
//    NSString *appVersionOld = [NSString stringWithContentsOfFile:appVersionPath encoding:NSUTF8StringEncoding error:nil];
//    NSString *appVersionNow = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    
//    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    //读取bundle
    NSURL *sdkBundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName_MMMethodMMM] withExtension:@"bundle"];
    NSBundle *sdkBundle = nil;
    if (sdkBundleURL) {
        sdkBundle = [NSBundle bundleWithURL:sdkBundleURL];
        
        NSString *areaInfo_path=[sdkBundle pathForResource:@"areaInfo" ofType:@"json"];
        if (areaInfo_path) {
            
            // 将文件数据化
            NSData *resultData = [[NSData alloc] initWithContentsOfFile:areaInfo_path];
            // 对数据进行JSON格式化并返回字典形式
            NSArray *areaInfo_arry = [NSJSONSerialization JSONObjectWithData:resultData options:kNilOptions error:nil];
            
            if (areaInfo_arry) {
                [self.areaInfoArray addObjectsFromArray:areaInfo_arry];
                [areaInfo_arry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    
                    if (obj) {
                        [self.areaCodeDic addEntriesFromDictionary:obj];
                    }
                    
                }];
            }
            
//            NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:resultData options:NSJSONReadingMutableLeaves error:&errors];
            
        }
       
    }
    
    NSString *infoPlistPath=[sdkBundle pathForResource:SDK_CONFIG_INFO_PLIST_NAME ofType:@"plist"];
    if (!infoPlistPath) {
        infoPlistPath = [[NSBundle mainBundle] pathForResource:SDK_CONFIG_INFO_PLIST_NAME ofType:@"plist"];
    }
    NSAssert(infoPlistPath ? YES : NO, @"找不到plist 文件");
    
    NSString *configDesPath = [NSHomeDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"Documents/%@.plist",SDK_CONFIG_INFO_PLIST_NAME]];
    
    NSFileManager *mNSFileManager = [NSFileManager defaultManager];
    if ([mNSFileManager fileExistsAtPath:configDesPath]) {
        [mNSFileManager removeItemAtPath:configDesPath error:nil];
    }
    
    NSError * error = nil;
    [[NSFileManager defaultManager] copyItemAtPath:infoPlistPath toPath:configDesPath error:&error];
    if (error) {
//        [self copyConfigeFileToDocument_MMMethodMMM];
        SDK_LOG(@"config copyItemAtPath error:%@",error);
    }else{
        SDK_LOG(@"配置文件复制成功");
    }
   
   
}

- (void)reloadCoreConf_MMMethodMMM{
    
}

-(NSDictionary *)coreConfDic{
    if (!_coreConfDic) {
        _coreConfDic = [self readCoreConfInfo_MMMethodMMM];
    }
    return _coreConfDic;
}

-(NSDictionary *)mainBundleConfDic{
    if (!_mainBundleConfDic) {
        _mainBundleConfDic = [self readMainBundleCoreConfInfo_MMMethodMMM];
    }
    return _mainBundleConfDic;
}

#pragma mark -
//从文件中读取配置信息
-(NSDictionary *)readCoreConfInfo_MMMethodMMM
{
    //1.先读取sdk bundle里面
    NSURL *sdkBundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName_MMMethodMMM] withExtension:@"bundle"];
    NSBundle *sdkBundle = nil;
    if (sdkBundleURL) {
        sdkBundle = [NSBundle bundleWithURL:sdkBundleURL];
    }
    NSString *infoPlistPath=[sdkBundle pathForResource:SDK_CONFIG_INFO_PLIST_NAME ofType:@"plist"];
    if (!infoPlistPath) {
       infoPlistPath = [[NSBundle mainBundle] pathForResource:SDK_CONFIG_INFO_PLIST_NAME ofType:@"plist"];
    }
    if (infoPlistPath) {
        NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:infoPlistPath];
        if (infoDic) {
            return infoDic;
        }
    }
    //2.在读取复制的documents文件
    //获取配置文件路径
    infoPlistPath=[NSHomeDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"Documents/%@.plist",SDK_CONFIG_INFO_PLIST_NAME]];
    //获取配置内容字典
    NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:infoPlistPath];
    
    return infoDic;
}

-(NSDictionary *)readMainBundleCoreConfInfo_MMMethodMMM
{
    //读取自定义的 plist文件的写法
    NSString *infoPlistPath = [[NSBundle mainBundle] pathForResource:SDK_CONFIG_INFO_PLIST_NAME ofType:@"plist"];
    
    if (infoPlistPath) {
        NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:infoPlistPath];
        if (infoDic) {
            return infoDic;
        }
    }
    
    // NSLog(@"dictionary = %@",dictionary);
    //读取系统产生的 plist文件的写法
    // NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    SDK_LOG(@"======================readMainBundleCoreConfInfo error =================");
//    SDK_LOG(@"======================readMainBundleCoreConfInfo error =================");
//    SDK_LOG(@"======================readMainBundleCoreConfInfo error =================");
    
    return nil;
}


#pragma mark - 获取某个key对应的确定的配置值
-(NSString *)getStringForKey_MMMethodMMM:(NSString *)key
{
    NSString *strconfig = [self.mainBundleConfDic objectForKey:key];
    if (strconfig && ![strconfig isEqualToString:@""]) {
        return strconfig;
    }
    
    strconfig = [self.coreConfDic objectForKey:key];
    if (strconfig && ![strconfig isEqualToString:@""]) {
        return strconfig;
    }
    return @"";
//    return [self getLocalizedStringForKey_MMMethodMMM:key];
}

-(BOOL)getBoolForKey_MMMethodMMM:(NSString *)key
{
    
//    return [self.coreConfDic objectForKey:key];
    id obj = [self.coreConfDic objectForKey:key];
    BOOL boolValue = [obj boolValue];
//    NSString *boolStr = [[self.coreConfDic objectForKey:key] lowercaseString];
//    if ([boolStr isEqualToString:@"yes"] || [boolStr isEqualToString:@"true"]) {
//        return YES;
//    } else if ([boolStr isEqualToString:@"no"] || [boolStr isEqualToString:@"false"]) {
//        return NO;
//    } else {
//        NSLog(@"Can't Find BOOL Key: %@ \n------------------------------",key);
//        return NO;
//    }
    return boolValue;
}

-(NSString *)getLocalizedStringForKey_MMMethodMMM:(NSString *)key
{
    return NSLocalizedStringFromTableInBundle(key, _m_stringsName, _m_stringsBundle, nil);
}

//
//
//#pragma mark - 初始化 Bundle
- (void)setBundleInfo_MMMethodMMM {

    NSString *languageStr = @"zh-Hant";
    
    if ([self isMoreLanguage_MMMethodMMM]) {//是否使用多语言
        
        NSString *preferredLang = [[NSLocale preferredLanguages] firstObject];
        if ([preferredLang hasPrefix:@"zh-Hans"]) {//简体中文
            
            languageStr = @"zh-Hans";
            
        }else if ([preferredLang hasPrefix:@"zh-Hant"]){//繁体
            languageStr = @"zh-Hant";
        }else if ([preferredLang hasPrefix:@"en"]){
            languageStr = @"en";
        }else{
            languageStr = @"zh-Hant";
        }
    }
    
 
    self.m_stringsBundle = [NSBundle mainBundle];
    self.m_stringsName = @"Localizable";

    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName_MMMethodMMM] withExtension:@"bundle"];

    if (bundleURL) {

        self.m_stringsBundle = [NSBundle bundleWithURL:bundleURL];

        NSURL *lprojBundleURL = [[NSBundle bundleWithURL:bundleURL] URLForResource:languageStr withExtension:@"lproj"];

        if (lprojBundleURL) {
            self.m_stringsBundle = [NSBundle bundleWithURL:lprojBundleURL];
            //self.m_stringsName = @"Localizable";
        }
    }
}

-(NSString *)getGameCode_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"gameCode"];
}
-(NSString *)getAppkey_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"appKey"];
}
-(NSString *)getGameLanguage_MMMethodMMM
{
    if ([self isMoreLanguage_MMMethodMMM]) {
        return [SUtil getServerLanguage_MMMethodMMM];
    }
    if ([StringUtil isNotEmpty_MMMethodMMM:[self getStringForKey_MMMethodMMM:@"gameLanguage"]]) {
        return [self getStringForKey_MMMethodMMM:@"gameLanguage"];
    }
    return @"zh_TW";
}

-(NSString *)getLoginUrl_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"sdk_url_login"];
}

-(NSString *)getPayUrl_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"sdk_url_pay"];
}

-(NSString *)getCdnUrl_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"sdk_url_cdn"];
}

-(NSString *)getLogUrl_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"sdk_url_log"];
}

-(NSString *)getTermsServiceUrl_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"terms_service_url"];
}

-(NSString *)getAfDevKey_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"af_dev_key"];
}

-(NSString *)getAppId_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"sdk_appId"];
}

-(BOOL)isAdDebug_MMMethodMMM
{
    return [self getBoolForKey_MMMethodMMM:@"sdk_ad_bug"];
}

-(BOOL)isVersion2_MMMethodMMM
{
    return [[self getStringForKey_MMMethodMMM:@"sdk_v_version"].lowercaseString isEqualToString:@"v2"] || [[self getStringForKey_MMMethodMMM:@"sdk_v_version"].lowercaseString isEqualToString:@"v3"];
}

-(BOOL)isMoreLanguage_MMMethodMMM
{
    return [self getBoolForKey_MMMethodMMM:@"sdk_more_language"];
}


- (NSString *)getSdkBundleName_MMMethodMMM
{
    NSString * bundleName = self.mainBundleConfDic[@"sdk_res_bundle_name"];
    if (bundleName && ![bundleName isEqualToString:@""]) {
        return bundleName;
    }
    return SDK_BUNDLE_NAME_v1;
}

-(NSString *)getFacebookAppId_MMMethodMMM
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
    NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
    return facebookAppID;
}

@end
