
#import <malloc/malloc.h>
#import <objc/runtime.h>
#import "PennressAmphee.h"
#import "ResHeader.h"
#import "SdkHeader.h"
#import "ProvideardDogmattripform.h"
#import "ArchaeitiveCivilant.h"
#import "MWSDK.h"

@interface PennressAmphee ()
@end

@implementation PennressAmphee

static PennressAmphee * coreReader;
static dispatch_once_t onceToken;


+ (PennressAmphee *)reader_MMMethodMMM
{
    
    dispatch_once(&onceToken,^{
        coreReader = [[PennressAmphee alloc] init];
        
    });
    return coreReader;
}


- (instancetype)init
{
    self=[super init];
    if (self)
    {
        SDK_LOG(@"reader init");
        
        [self setBundleInfo_MMMethodMMM];
        [self logSdkResConfig_MMMethodMMM];
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

#pragma mark -获取sdk bundle文件路径，不存在返回nil
- (NSString *)getSdkBundleFilePath_MMMethodMMM:(nullable NSString *)name ofType_MMMethodMMM:(nullable NSString *)ext
{
    NSBundle *sdkBundle = [self getMySdkBundle_MMMethodMMM];
    if (sdkBundle) {
        return [sdkBundle pathForResource:name ofType:ext];
    }
    return nil;
}

#pragma mark -本地bundle手机区号信息
- (NSMutableArray *)areaInfoArray
{
    if(!_areaInfoArray){
        _areaInfoArray = [NSMutableArray array];
        
        NSArray *areaInfo_arry = [self getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:@"areaInfo" ofType_MMMethodMMM:@"txt"];
        if (areaInfo_arry) {
            [_areaInfoArray addObjectsFromArray:areaInfo_arry];
        }
        
        areaInfo_arry = [self getJsonContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:@"areaInfo" ofType_MMMethodMMM:@"json"];
        if (areaInfo_arry) {
            [_areaInfoArray addObjectsFromArray:areaInfo_arry];
        }
    }
    return _areaInfoArray;
}

#pragma mark -配置属性信息
-(NSDictionary *)mySdkConfDic{
    if (!_mySdkConfDic) {
        
        _mySdkConfDic = self.mainBundleConfDic;
    }
    return _mySdkConfDic;
}

-(NSDictionary *)mainBundleConfDic{
    if (!_mainBundleConfDic) {
        _mainBundleConfDic = [self readMainBundleCoreConfInfo_MMMethodMMM];
    }
    return _mainBundleConfDic;
}

#pragma mark -从main bundle配置文件中读取配置信息
-(NSDictionary *)readMainBundleCoreConfInfo_MMMethodMMM
{
    SDK_LOG(@"======================readMainBundleCoreConfInfo start =================");
    
    NSString *configName = [self getSdkConfigInfoName_MMMethodMMM];
    
    NSDictionary *configDic = [self getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:[NSBundle mainBundle] name_MMMethodMMM:configName ofType_MMMethodMMM:@"txt"];
    
    if(configDic){
        return configDic;
    }
    
    configDic =[self getJsonContentWithBundle_MMMethodMMM:[NSBundle mainBundle] name_MMMethodMMM:configName ofType_MMMethodMMM:@"json"];
    
    if(configDic){
        return configDic;
    }
    
    configDic =[self getJsonContentWithBundle_MMMethodMMM:[NSBundle mainBundle] name_MMMethodMMM:[[ArchaeitiveCivilant getBundleIdentifier_MMMethodMMM] stringByReplacingOccurrencesOfString:@"." withString:@"_"] ofType_MMMethodMMM:@"json"];
    
    if(configDic){
        return configDic;
    }
    
    
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
    id mValue = [self.textStringDic objectForKey:key];
    if (mValue){
        NSString *ms = [NSString stringWithFormat:@"%@",mValue];
        return ms;
    }
    return key;
}


#pragma mark - 设置一个名称获取该文件名称拼接bundleId后的md5名称（用于混淆文件名防止被关联）
- (NSString *)getMd5ResFileName_MMMethodMMM:(NSString *)originalName {
    NSString *textEncryptFileName = [NSString stringWithFormat:@"%@-%@",[self getSdkBaseEncryptKey_MMMethodMMM],originalName];
    NSString *md5EncryptFileName = [ArchaeitiveCivilant getMD5StrFromString_MMMethodMMM:textEncryptFileName];
    return md5EncryptFileName;
}

#pragma mark - 加密内容
- (NSString *)encryptContent_MMMethodMMM:(NSString *)textStringContent {
    NSString *eKey = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"KEY");
    NSString *eIV = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"IV");
    SDK_LOG(@"decryptContent eKey=%@,eIV=%@",eKey,eIV);
    
    NSString *encryptStr = [ProvideardDogmattripform getEncryptStringFromString_MMMethodMMM:textStringContent WithKey_MMMethodMMM:eKey iv_MMMethodMMM:eIV];
    return encryptStr;
}
#pragma mark - 解密内容
- (NSString *)decryptContent_MMMethodMMM:(NSString *)textEncrypContent {
    NSString *eKey = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"KEY");
    NSString *eIV = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"IV");
    SDK_LOG(@"decryptContent eKey=%@,eIV=%@",eKey,eIV);
    
    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    NSString *textContent = [ProvideardDogmattripform getDecryptStringFromString_MMMethodMMM:textEncrypContent withKey_MMMethodMMM:eKey iv_MMMethodMMM:eIV];
    return textContent;
}


#pragma mark - 打印配置文件加密内容
- (void)logSdkResConfig_MMMethodMMM {
    
    NSArray *languageArr = @[@"zh-Hant",@"zh-Hans",@"en", @"vi",@"ko", @"areaInfo"];
    for (NSString *languageStr in languageArr) {
        
        NSString *textStringPath = [self getSdkBundleFilePath_MMMethodMMM:languageStr ofType_MMMethodMMM:@"json"];
        if (textStringPath){
            NSData *textData = [[NSData alloc] initWithContentsOfFile:textStringPath];
            NSString *textStringContent = [[NSString alloc] initWithData:textData encoding:NSUTF8StringEncoding];
            NSString * encryptStr = [self encryptContent_MMMethodMMM:textStringContent];
            
            
            NSString * md5EncryptFileName = [self getMd5ResFileName_MMMethodMMM:languageStr];
            
            SDK_LOG(@"languageStr=%@,md5EncryptFileName=%@,encryptStr=%@",languageStr,md5EncryptFileName,encryptStr);
        }else{
            SDK_LOG(@"file not find : %@.json", languageStr);
        }
    }
    
    NSString *configInfoName = [self getSdkConfigInfoName_MMMethodMMM];
    NSString *configInfoName_path = [[NSBundle mainBundle] pathForResource:configInfoName ofType:@"json"];
    
    if (configInfoName_path) {
        NSData *textData = [[NSData alloc] initWithContentsOfFile:configInfoName_path];
        NSString *textStringContent = [[NSString alloc] initWithData:textData encoding:NSUTF8StringEncoding];
        NSString * encryptStr = [self encryptContent_MMMethodMMM:textStringContent];
        NSString * md5EncryptFileName = [self getMd5ResFileName_MMMethodMMM:configInfoName];
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
        
        NSString *languageStr = [self getsdkLanguage_MMMethodMMM]; 
        NSString *languageStr_defalut = languageStr;
        
        if ([self isMoreLanguage_MMMethodMMM]) {
            
            NSString *preferredLang = [[NSLocale preferredLanguages] firstObject];
            if ([preferredLang hasPrefix:@"zh-Hans"]) {
                
                languageStr = @"zh-Hans";
                
            }else if ([preferredLang hasPrefix:@"zh-Hant"]){
                languageStr = @"zh-Hant";
            }else if ([preferredLang hasPrefix:@"en"]){
                languageStr = @"en";
            }else if ([preferredLang hasPrefix:@"vi"]){
                languageStr = @"vi";
            }else if ([preferredLang hasPrefix:@"ko"]){
                languageStr = @"ko";
            }
        }
        NSDictionary *dicTemp = [self getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:languageStr ofType_MMMethodMMM:@"txt"];
        
        if(dicTemp){
            [_textStringDic addEntriesFromDictionary:dicTemp];
            return _textStringDic;
        }
        
        dicTemp = [self getJsonContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:languageStr ofType_MMMethodMMM:@"json"];
        if(dicTemp){
            [_textStringDic addEntriesFromDictionary:dicTemp];
            return _textStringDic;
        }
        
        SDK_LOG(@"language = %@ not exist",languageStr);
        dicTemp = [self getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:languageStr_defalut ofType_MMMethodMMM:@"txt"];
        if (dicTemp){
            [_textStringDic addEntriesFromDictionary:dicTemp];
            SDK_LOG(@"set language str = %@ ",languageStr_defalut);
            return _textStringDic;
        }
        
        dicTemp = [self getJsonContentWithBundle_MMMethodMMM:[self getMySdkBundle_MMMethodMMM] name_MMMethodMMM:languageStr_defalut ofType_MMMethodMMM:@"json"];
        if(dicTemp){
            [_textStringDic addEntriesFromDictionary:dicTemp];
            return _textStringDic;
        }
        
    }
    return _textStringDic;

}

#pragma mark - 获取加密的文件名中的加密josn内容，返回NSDictionary，文件名加密规则 getMd5ResFileName,优先从sdkBundle获取
-(id)getEncryptFileAndEncryptContentWithBundle_MMMethodMMM:(NSBundle *)bundle name_MMMethodMMM:(nullable NSString *)name ofType_MMMethodMMM:(nullable NSString *)type
{
    NSString *md5EncryptFileName = [self getMd5ResFileName_MMMethodMMM:name];
    SDK_LOG(@"md5EncryptFileName=%@",md5EncryptFileName);
    NSString *textEncryptFilePath = [bundle pathForResource:md5EncryptFileName ofType:type];
    
    if(textEncryptFilePath){
        
        NSData *textData = [[NSData alloc] initWithContentsOfFile:textEncryptFilePath];
        NSString *textEncrypContent = [[NSString alloc] initWithData:textData encoding:NSUTF8StringEncoding];
        NSString * textContent = [self decryptContent_MMMethodMMM:textEncrypContent];
        SDK_LOG(@"textEncrypContent =%@,textContent=%@",textEncrypContent,textContent);
        if(textContent){
            NSData *jsonData = [textContent dataUsingEncoding:NSUTF8StringEncoding];
            
            NSError *error = nil;
            id resultTemp = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
            return resultTemp;
        }
    }
    return nil;
}

#pragma mark - 获取未加密的josn文本内容
-(id)getJsonContentWithBundle_MMMethodMMM:(NSBundle *)bundle name_MMMethodMMM:(nullable NSString *)name ofType_MMMethodMMM:(nullable NSString *)type
{
    
    NSString *textFilePath = [bundle pathForResource:name ofType:type];
    
    if(textFilePath){
        
        NSData *textData = [[NSData alloc] initWithContentsOfFile:textFilePath];
        NSString *textContent = [[NSString alloc] initWithData:textData encoding:NSUTF8StringEncoding];
        if(textContent){
            NSData *jsonData = [textContent dataUsingEncoding:NSUTF8StringEncoding];
            
            NSError *error = nil;
            id resultTemp = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
            return resultTemp;
        }
    }
    return nil;
}


#pragma mark - 初始化 Bundle
- (void)setBundleInfo_MMMethodMMM {

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
    
    return [self getServerLanguage_MMMethodMMM];
}

- (NSString *)getServerLanguage_MMMethodMMM{
    
    NSString *languageStr = @"";
    if ([self isMoreLanguage_MMMethodMMM]) {
        
        NSString *preferredLang = [[NSLocale preferredLanguages] firstObject];
        if ([preferredLang hasPrefix:@"zh-Hans"]) {
            
            languageStr = @"zh_CN";
            
        }else if ([preferredLang hasPrefix:@"zh-Hant"]){
            languageStr = @"zh_TW";
            
        }else if ([preferredLang hasPrefix:@"en"]){
            languageStr = @"en_US";
            
        }else if ([preferredLang hasPrefix:@"vi"]){
            languageStr = @"vi_VN";
        }else if ([preferredLang hasPrefix:@"ko"]){
            languageStr = @"ko_KR";
        }
    }
    if ([DemocratficationNeedern isNotEmpty_MMMethodMMM:languageStr]) {
        return languageStr;
    }
    
    if ([DemocratficationNeedern isNotEmpty_MMMethodMMM:[self getStringForKey_MMMethodMMM:@"gameLanguage"]]) {
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

-(NSString *)getPlatUrl_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"sdk_url_plat"];
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
    return YES;
}

-(NSString *)getSdkVersion_MMMethodMMM 
{
    return [self getStringForKey_MMMethodMMM:@"sdk_v_version"].lowercaseString;
}

-(BOOL)isMoreLanguage_MMMethodMMM
{
    return [self getBoolForKey_MMMethodMMM:@"sdk_more_language"];
}

-(NSString *)getsdkLanguage_MMMethodMMM
{
    return [self getStringForKey_MMMethodMMM:@"sdk_language"];
}

#pragma mark - 获取配置文件中sdk bundle名字，获取不到去gameCode作为名字
- (NSString *)getSdkBundleName_MMMethodMMM
{
    NSString * bundleName = self.mainBundleConfDic[@"sdk_res_bundle_name"];
    if (bundleName && ![bundleName isEqualToString:@""]) {
        return bundleName;
    }
    return [self getGameCode_MMMethodMMM];
}

#pragma mark - 获取info.plist配置文件中facebook appid
-(NSString *)getFacebookAppId_MMMethodMMM
{
    
    return [ArchaeitiveCivilant getProjectInfoPlist_MMMethodMMM][@"FacebookAppID"];
}

#pragma mark - 获取config配置文件名称，使用bundleId命名
- (NSString *)getSdkConfigInfoName_MMMethodMMM
{
    return [[self getSdkBaseEncryptKey_MMMethodMMM] stringByReplacingOccurrencesOfString:@"." withString:@"_"];
}

- (NSString *)getSdkBaseEncryptKey_MMMethodMMM{
    if([MWSDK share].sdkBaseEncryptKey){
        return [MWSDK share].sdkBaseEncryptKey;
    }
    return [ArchaeitiveCivilant getBundleIdentifier_MMMethodMMM];
}

- (NSString *)getSdkEncryptKey_MMMethodMMM
{
    NSString *bundleId = [self getSdkBaseEncryptKey_MMMethodMMM];
    NSString *keyTemp = [bundleId stringByReplacingOccurrencesOfString:@"com" withString:@""];
    NSString *key = [keyTemp stringByReplacingOccurrencesOfString:@"." withString:@""];
    return key;
}

#pragma mark - 解密所有字符串 内容
- (NSString *)decryptAllStringContent_MMMethodMMM:(NSString *)textEncrypContent {
    NSString *eKey = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"KEY");
    NSString *eIV = STRING_COMBIN([self getSdkEncryptKey_MMMethodMMM], @"IV");
    
    textEncrypContent = [textEncrypContent stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    NSString *textContent = [ProvideardDogmattripform getDecryptStringFromString_MMMethodMMM:textEncrypContent withKey_MMMethodMMM:eKey iv_MMMethodMMM:eIV];
    SDK_LOG(@"textEncrypContent =%@,textContent=%@",textEncrypContent,textContent);
    return textContent;
}

@end
