
//
#import <malloc/malloc.h>
#import <objc/runtime.h>
#import "CrepitnessBringic.h"
#import "ResHeader.h"
#import "SdkHeader.h"
#import "CapitdecideEmeticmost.h"
#import "FoeniveNow.h"
#import "WLZSHLib.h"

@interface CrepitnessBringic ()
@property (nonatomic, strong) NSBundle *mmasyya;
@property (nonatomic, copy) NSString *m_stringsName;
@property (nonatomic, strong) NSBundle *jajdkkaa;
@property (nonatomic, strong) NSBundle *m_stringsBundle;
@end

@implementation CrepitnessBringic

static CrepitnessBringic * coreReader;
static dispatch_once_t onceToken;


+ (CrepitnessBringic *)reader_WLFuncTag
{
    
    dispatch_once(&onceToken,^{
        coreReader = [[CrepitnessBringic alloc] init];
        
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
        
        [self setBundleInfo_WLFuncTag];
        [self logSdkResConfig_WLFuncTag];
    }
    return self;
}


- (NSBundle *)getMySdkBundle_WLFuncTag
{
    NSURL *sdkBundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName_WLFuncTag] withExtension:@"bundle"];
    NSBundle *sdkBundle = nil;
    if (sdkBundleURL) {
        sdkBundle = [NSBundle bundleWithURL:sdkBundleURL];
    }
    return sdkBundle;
}

#pragma mark -获取sdk bundle文件路径，不存在返回nil
- (NSString *)getSdkBundleFilePath_WLFuncTag:(nullable NSString *)name ofType_WLFuncTag:(nullable NSString *)ext
{
    NSBundle *sdkBundle = [self getMySdkBundle_WLFuncTag];
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
        
        NSArray *areaInfo_arry = [self getEncryptFileAndEncryptContentWithBundle_WLFuncTag:[self getMySdkBundle_WLFuncTag] name_WLFuncTag:@"areaInfo" ofType_WLFuncTag:@"txt"];
        if (areaInfo_arry) {
            [_areaInfoArray addObjectsFromArray:areaInfo_arry];
        }
    }
    return _areaInfoArray;
}

#pragma mark -配置属性信息
-(NSDictionary *)mySdkConfDic{
    if (!_mySdkConfDic) {
        //1.先读取main bundle
        _mySdkConfDic = self.mainBundleConfDic;
//        if(!_mySdkConfDic)
//        {   //2.再去读sdk bundle
//            _mySdkConfDic = [self readSdkBundleCoreConfInfo_WLFuncTag];
//        }
    }
    return _mySdkConfDic;
}

-(NSDictionary *)mainBundleConfDic{
    if (!_mainBundleConfDic) {
        _mainBundleConfDic = [self readMainBundleCoreConfInfo_WLFuncTag];
    }
    return _mainBundleConfDic;
}

//#pragma mark -从sdk bundle配置文件中读取配置信息
//-(NSDictionary *)readSdkBundleCoreConfInfo_WLFuncTag
//{
//    NSString *configName = [self getSdkConfigInfoName_WLFuncTag];
//    NSString *infoPlistPath= [self getSdkBundleFilePath_WLFuncTag:configName ofType_WLFuncTag:@"plist"];
//    if (infoPlistPath) {
//        NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:infoPlistPath];
//        if (infoDic) {
//            return infoDic;
//        }
//    }
//    return nil;
//}
#pragma mark -从main bundle配置文件中读取配置信息
-(NSDictionary *)readMainBundleCoreConfInfo_WLFuncTag
{
    SDK_LOG(@"======================readMainBundleCoreConfInfo error =================");
    //获取配置文件名字
    NSString *configName = [self getSdkConfigInfoName_WLFuncTag];
    
    NSDictionary *configDic = [self getEncryptFileAndEncryptContentWithBundle_WLFuncTag:[NSBundle mainBundle] name_WLFuncTag:configName ofType_WLFuncTag:@"txt"];
    
    if(configDic){
        return configDic;
    }
    //读取自定义的 plist文件的写法
    NSString *infoPlistPath = [[NSBundle mainBundle] pathForResource:configName ofType:@"plist"];
    
    if (infoPlistPath) {
        NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:infoPlistPath];
        if (infoDic) {
            return infoDic;
        }
    }
    return nil;
}


#pragma mark - 获取某个key对应的确定的配置值
-(NSString *)getStringForKey_WLFuncTag:(NSString *)key
{
    id aresult = [self.mySdkConfDic objectForKey:key];
    if (aresult) {
        return [NSString stringWithFormat:@"%@", aresult];
    }
    return nil;
}

-(BOOL)getBoolForKey_WLFuncTag:(NSString *)key
{
    
    id obj = [self.mySdkConfDic objectForKey:key];;
    BOOL boolValue = [obj boolValue];
    return boolValue;
}

-(NSString *)getLocalizedStringForKey_WLFuncTag:(NSString *)key
{
    NSString *ms = [NSString stringWithFormat:@"%@",[self.textStringDic objectForKey:key]];
    if (ms){
        return ms;
    }
    return NSLocalizedStringFromTableInBundle(key, _m_stringsName, _m_stringsBundle, nil);
}


#pragma mark - 设置一个名称获取该文件名称拼接bundleId后的md5名称（用于混淆文件名防止被关联）
- (NSString *)getMd5ResFileName_WLFuncTag:(NSString *)originalName {
    NSString *textEncryptFileName = [NSString stringWithFormat:@"%@-%@",[self getSdkBaseEncryptKey_WLFuncTag],originalName];
    NSString *md5EncryptFileName = [FoeniveNow getMD5StrFromString:textEncryptFileName];
    return md5EncryptFileName;
}

#pragma mark - 加密内容
- (NSString *)encryptContent_WLFuncTag:(NSString *)textStringContent {
    NSString *eKey = STRING_COMBIN([self getSdkEncryptKey_WLFuncTag], @"KEY");
    NSString *eIV = STRING_COMBIN([self getSdkEncryptKey_WLFuncTag], @"IV");
    SDK_LOG(@"encryptContent eKey=%@,eIV=%@",eKey,eIV);
    //加密后的密文
    NSString *encryptStr = [CapitdecideEmeticmost getEncryptStringFromString:textStringContent WithKey_WLFuncTag:eKey iv_WLFuncTag:eIV];
    return encryptStr;
}
#pragma mark - 解密内容
- (NSString *)decryptContent_WLFuncTag:(NSString *)textEncrypContent {
    NSString *eKey = STRING_COMBIN([self getSdkEncryptKey_WLFuncTag], @"KEY");
    NSString *eIV = STRING_COMBIN([self getSdkEncryptKey_WLFuncTag], @"IV");
    SDK_LOG(@"decryptContent eKey=%@,eIV=%@",eKey,eIV);
    // 去掉首尾的空白字符
    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    // 去除掉控制字符
//    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet controlCharacterSet]];
    
    NSString *textContent = [CapitdecideEmeticmost getDecryptStringFromString_WLFuncTag:textEncrypContent withKey_WLFuncTag:eKey iv_WLFuncTag:eIV];
    return textContent;
}


#pragma mark - 打印配置文件加密内容
- (void)logSdkResConfig_WLFuncTag {
    
    NSArray *languageArr = @[@"zh-Hant",@"zh-Hans",@"en", @"areaInfo"];
    for (NSString *languageStr in languageArr) {
        
        NSString *textStringPath = [self getSdkBundleFilePath_WLFuncTag:languageStr ofType_WLFuncTag:@"json"];
        if (textStringPath){
            NSData *textData = [[NSData alloc] initWithContentsOfFile:textStringPath];
            NSString *textStringContent = [[NSString alloc] initWithData:textData encoding:NSUTF8StringEncoding];
            NSString * encryptStr = [self encryptContent_WLFuncTag:textStringContent];
            
            //文件名称md5后添加到resbundle
            NSString * md5EncryptFileName = [self getMd5ResFileName_WLFuncTag:languageStr];
            
            SDK_LOG(@"languageStr=%@,md5EncryptFileName=%@,encryptStr=%@",languageStr,md5EncryptFileName,encryptStr);
        }else{
            SDK_LOG(@"file not find : %@.json", languageStr);
        }
    }
    
    NSString *configInfoName = [self getSdkConfigInfoName_WLFuncTag];
    NSString *configInfoName_path = [[NSBundle mainBundle] pathForResource:configInfoName ofType:@"json"];
    
    if (configInfoName_path) {
        NSData *textData = [[NSData alloc] initWithContentsOfFile:configInfoName_path];
        NSString *textStringContent = [[NSString alloc] initWithData:textData encoding:NSUTF8StringEncoding];
        NSString * encryptStr = [self encryptContent_WLFuncTag:textStringContent];
        NSString * md5EncryptFileName = [self getMd5ResFileName_WLFuncTag:configInfoName];
        SDK_LOG(@"configInfoName=%@,md5EncryptFileName=%@,encryptStr=%@",configInfoName,md5EncryptFileName,encryptStr);
    }else{
        SDK_LOG(@"file not find : %@.json", configInfoName);
    }
}

#pragma mark - 初始化加密json文本
-(NSMutableDictionary *)textStringDic
{
    if(!_textStringDic){
        _textStringDic = [NSMutableDictionary dictionary];
        
        NSString *languageStr = @"zh-Hant";
        
        if ([self isMoreLanguage]) {//是否使用多语言
            
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
        NSDictionary *dicTemp = [self getEncryptFileAndEncryptContentWithBundle_WLFuncTag:[self getMySdkBundle_WLFuncTag] name_WLFuncTag:languageStr ofType_WLFuncTag:@"txt"];
        if(dicTemp){
            [_textStringDic addEntriesFromDictionary:dicTemp];
        }
    }
    return _textStringDic;

}

#pragma mark - 获取加密的文件名中的加密josn内容，返回NSDictionary，文件名加密规则 getMd5ResFileName,优先从sdkBundle获取
-(id)getEncryptFileAndEncryptContentWithBundle_WLFuncTag:(NSBundle *)bundle name_WLFuncTag:(nullable NSString *)name ofType_WLFuncTag:(nullable NSString *)type
{
    NSString *md5EncryptFileName = [self getMd5ResFileName_WLFuncTag:name];
    SDK_LOG(@"md5EncryptFileName=%@",md5EncryptFileName);
    NSString *textEncryptFilePath = [bundle pathForResource:md5EncryptFileName ofType:type];
    
    if(textEncryptFilePath){
        // 将文件数据化
        NSData *textData = [[NSData alloc] initWithContentsOfFile:textEncryptFilePath];
        NSString *textEncrypContent = [[NSString alloc] initWithData:textData encoding:NSUTF8StringEncoding];
        NSString * textContent = [self decryptContent_WLFuncTag:textEncrypContent];
        SDK_LOG(@"textEncrypContent =%@,textContent=%@",textEncrypContent,textContent);
        if(textContent){
            NSData *jsonData = [textContent dataUsingEncoding:NSUTF8StringEncoding];
            // 对数据进行JSON格式化并返回字典形式
            NSError *error = nil;
            id resultTemp = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
            return resultTemp;
        }
    }
    return nil;
}


#pragma mark - 初始化 Bundle
- (void)setBundleInfo_WLFuncTag {

    NSString *languageStr = @"zh-Hant";
    
    if ([self isMoreLanguage]) {//是否使用多语言
        
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

    NSBundle *sdkBundle = [self getMySdkBundle_WLFuncTag];
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
-(NSString *)getGameCode
{
    return [self getStringForKey_WLFuncTag:@"gameCode"];
}
-(NSString *)getAppkey
{
    return [self getStringForKey_WLFuncTag:@"appKey"];
}
-(NSString *)getGameLanguage
{
    if ([self isMoreLanguage]) {
        return [FoeniveNow getServerLanguage];
    }
    if ([CandifySiliattorney isNotEmpty:[self getStringForKey_WLFuncTag:@"gameLanguage"]]) {
        return [self getStringForKey_WLFuncTag:@"gameLanguage"];
    }
    return @"zh_TW";
}

-(NSString *)getLoginUrl
{
    return [self getStringForKey_WLFuncTag:@"sdk_url_login"];
}

-(NSString *)getPayUrl
{
    return [self getStringForKey_WLFuncTag:@"sdk_url_pay"];
}

-(NSString *)getCdnUrl
{
    return [self getStringForKey_WLFuncTag:@"sdk_url_cdn"];
}

-(NSString *)getLogUrl
{
    return [self getStringForKey_WLFuncTag:@"sdk_url_log"];
}

-(NSString *)getTermsServiceUrl
{
    return [self getStringForKey_WLFuncTag:@"terms_service_url"];
}

-(NSString *)getAfDevKey
{
    return [self getStringForKey_WLFuncTag:@"af_dev_key"];
}

-(NSString *)getAppId
{
    return [self getStringForKey_WLFuncTag:@"sdk_appId"];
}

-(BOOL)isAdDebug
{
    return [self getBoolForKey_WLFuncTag:@"sdk_ad_bug"];
}

-(BOOL)isVersion2
{
    return [[self getStringForKey_WLFuncTag:@"sdk_v_version"].lowercaseString isEqualToString:@"v2"] || [[self getStringForKey_WLFuncTag:@"sdk_v_version"].lowercaseString isEqualToString:@"v3"];
}

-(BOOL)isMoreLanguage
{
    return [self getBoolForKey_WLFuncTag:@"sdk_more_language"];
}

#pragma mark - 获取配置文件中sdk bundle名字，获取不到去gameCode作为名字
- (NSString *)getSdkBundleName_WLFuncTag
{
    NSString * bundleName = self.mainBundleConfDic[@"sdk_res_bundle_name"];
    if (bundleName && ![bundleName isEqualToString:@""]) {
        return bundleName;
    }
    return [self getGameCode];
}

#pragma mark - 获取info.plist配置文件中facebook appid
-(NSString *)getFacebookAppId
{
//    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
//    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
//    NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
//    return facebookAppID;
    
    return [FoeniveNow getProjectInfoPlist][@"FacebookAppID"];
}

#pragma mark - 获取config配置文件名称，使用bundleId命名
- (NSString *)getSdkConfigInfoName_WLFuncTag
{
    return [[self getSdkBaseEncryptKey_WLFuncTag] stringByReplacingOccurrencesOfString:@"." withString:@"_"];
}


- (NSString *)getSdkBaseEncryptKey_WLFuncTag{
    if([WLZSHLib share].sdkBaseEncryptKey){
        return [WLZSHLib share].sdkBaseEncryptKey;
    }
    return [FoeniveNow getBundleIdentifier];
}

- (NSString *)getSdkEncryptKey_WLFuncTag
{
    NSString *bundleId = [self getSdkBaseEncryptKey_WLFuncTag];
    NSString *keyTemp = [bundleId stringByReplacingOccurrencesOfString:@"com" withString:@""];
    NSString *key = [keyTemp stringByReplacingOccurrencesOfString:@"." withString:@""];
    return key;
}

#pragma mark - 解密所有字符串 内容
- (NSString *)decryptAllStringContent_WLFuncTag:(NSString *)textEncrypContent {
    NSString *eKey = STRING_COMBIN([self getSdkEncryptKey_WLFuncTag], @"KEY");
    NSString *eIV = STRING_COMBIN([self getSdkEncryptKey_WLFuncTag], @"IV");
//    SDK_LOG(@"decryptContent eKey=%@,eIV=%@",eKey,eIV);
    // 去掉首尾的空白字符
    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    // 去除掉控制字符
//    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet controlCharacterSet]];
    
    NSString *textContent = [CapitdecideEmeticmost getDecryptStringFromString_WLFuncTag:textEncrypContent withKey_WLFuncTag:eKey iv_WLFuncTag:eIV];
    SDK_LOG(@"textEncrypContent =%@,textContent=%@",textEncrypContent,textContent);
    return textContent;//[textContent stringByReplacingOccurrencesOfString:@"\0" withString:@""];
}


@end
