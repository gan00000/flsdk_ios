
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
        
        [self setBundleInfo_MMMethodMMM];
        
    }
    return self;
}


- (NSBundle *)getMySdkBundle_MMMethodMMM
{
    NSURL *sdkBundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName_MMMethodMMM] withExtension:@"bundle"];
    NSBundle *sdkBundle = nil;
    if (sdkBundleURL) {
        sdkBundle = [NSBundle bundleWithURL:sdkBundleURL];
    }
    return sdkBundle;
}

- (NSString *)getSdkBundleFilePath_MMMethodMMM:(nullable NSString *)name ofType_MMMethodMMM:(nullable NSString *)ext
{
    NSBundle *sdkBundle = [self getMySdkBundle_MMMethodMMM];
    if (sdkBundle) {
        return [sdkBundle pathForResource:name ofType:ext];
    }
    return nil;
}

#pragma mark -手机区号信息
- (NSMutableArray *)areaInfoArray
{
    if(!_areaInfoArray){
        _areaInfoArray = [NSMutableArray array];
        NSString *areaInfo_path= [self getSdkBundleFilePath_MMMethodMMM:@"areaInfo" ofType_MMMethodMMM:@"json"];
        if (areaInfo_path) {
            
            // 将文件数据化
            NSData *resultData = [[NSData alloc] initWithContentsOfFile:areaInfo_path];
            // 对数据进行JSON格式化并返回字典形式
            NSArray *areaInfo_arry = [NSJSONSerialization JSONObjectWithData:resultData options:kNilOptions error:nil];
            
            if (areaInfo_arry) {
                [_areaInfoArray addObjectsFromArray:areaInfo_arry];
    //            [areaInfo_arry enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    //
    //                if (obj) {
    //                    [self.areaCodeDic addEntriesFromDictionary:obj];
    //                }
    //
    //            }];
            }
            
        }
    }
    return _areaInfoArray;
}

#pragma mark -配置属性信息
-(NSDictionary *)mySdkConfDic{
    if (!_mySdkConfDic) {
        //1.先读取main bundle
        _mySdkConfDic = self.mainBundleConfDic;
        if(!_mySdkConfDic)
        {   //2.再去读sdk bundle
            _mySdkConfDic = [self readCoreConfInfo_MMMethodMMM];
        }
    }
    return _mySdkConfDic;
}

-(NSDictionary *)mainBundleConfDic{
    if (!_mainBundleConfDic) {
        _mainBundleConfDic = [self readMainBundleCoreConfInfo_MMMethodMMM];
    }
    return _mainBundleConfDic;
}

#pragma mark -从sdk bundle配置文件中读取配置信息
-(NSDictionary *)readCoreConfInfo_MMMethodMMM
{
    //1.先读取sdk bundle里面
    NSString *infoPlistPath= [self getSdkBundleFilePath_MMMethodMMM:SDK_CONFIG_INFO_PLIST_NAME ofType_MMMethodMMM:@"plist"];
    if (infoPlistPath) {
        NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:infoPlistPath];
        if (infoDic) {
            return infoDic;
        }
    }
    return nil;
}
#pragma mark -从main bundle配置文件中读取配置信息
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
    id aresult = [self.mySdkConfDic objectForKey:key];
    if (aresult) {
        return [NSString stringWithFormat:@"%@", aresult];
    }
    return nil;
}

-(BOOL)getBoolForKey_MMMethodMMM:(NSString *)key
{
    
    id obj = [self.mySdkConfDic objectForKey:key];;
    BOOL boolValue = [obj boolValue];
    return boolValue;
}

-(NSString *)getLocalizedStringForKey_MMMethodMMM:(NSString *)key
{
    NSString *ms = [NSString stringWithFormat:@"%@",[self.textStringDic objectForKey:key]];
    if (ms){
        return ms;
    }
    return NSLocalizedStringFromTableInBundle(key, _m_stringsName, _m_stringsBundle, nil);
}

#pragma mark - 初始化加密json文本
-(NSMutableDictionary *)textStringDic
{
    if(!_textStringDic){
        _textStringDic = [NSMutableDictionary dictionary];
        
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
        
        NSString *textStringContent = [self getSdkBundleFilePath_MMMethodMMM:languageStr ofType_MMMethodMMM:@"json"];
        if (textStringContent){
            // 将文件数据化
            NSData *textData = [[NSData alloc] initWithContentsOfFile:textStringContent];
            // 对数据进行JSON格式化并返回字典形式
            NSDictionary *dicTemp = [NSJSONSerialization JSONObjectWithData:textData options:kNilOptions error:nil];
            [_textStringDic addEntriesFromDictionary:dicTemp];
            SDK_LOG(@"AAA=%@",_textStringDic);
        }
    }
    return _textStringDic;

}


#pragma mark - 初始化 Bundle
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

    NSBundle *sdkBundle = [self getMySdkBundle_MMMethodMMM];
    if (sdkBundle) {

        self.m_stringsBundle = sdkBundle;
        
        NSURL *lprojBundleURL = [sdkBundle URLForResource:languageStr withExtension:@"lproj"];

        if (lprojBundleURL) {
            self.m_stringsBundle = [NSBundle bundleWithURL:lprojBundleURL];
            //self.m_stringsName = @"Localizable";
        }
    }
}


#pragma mark - 获取配置文件对应的key内容
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
