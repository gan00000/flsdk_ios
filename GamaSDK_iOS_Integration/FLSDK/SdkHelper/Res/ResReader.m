
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


+ (ResReader *)reader
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
        [self copyConfigeFileToDocument];
        
//        [self readCoreConfInfo];
        
//        [self checkInfoPlistConfiguration];
        
        //获取是否调试模式信息
        self.ISPRINT=YES;
        //[self setWhetherPrint];
        
        [self setBundleInfo];
        
    }
    return self;
}

//复制配置文件到Documents，根据版本号CFBundleShortVersionString更新
- (void)copyConfigeFileToDocument
{
    
  
//    NSString *appVersionPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/gamaGameVersion.txt"];
//    NSString *appVersionOld = [NSString stringWithContentsOfFile:appVersionPath encoding:NSUTF8StringEncoding error:nil];
//    NSString *appVersionNow = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    
//    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    //读取bundle
    NSURL *sdkBundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName] withExtension:@"bundle"];
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
//        [self copyConfigeFileToDocument];
        SDK_LOG(@"config copyItemAtPath error:%@",error);
    }else{
        SDK_LOG(@"配置文件复制成功");
    }
   
   
}

- (void)reloadCoreConf{
    
}

-(NSDictionary *)coreConfDic{
    if (!_coreConfDic) {
        _coreConfDic = [self readCoreConfInfo];
    }
    return _coreConfDic;
}

-(NSDictionary *)mainBundleConfDic{
    if (!_mainBundleConfDic) {
        _mainBundleConfDic = [self readMainBundleCoreConfInfo];
    }
    return _mainBundleConfDic;
}

#pragma mark -
//从文件中读取配置信息
-(NSDictionary *)readCoreConfInfo
{
    //1.先读取sdk bundle里面
    NSURL *sdkBundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName] withExtension:@"bundle"];
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

-(NSDictionary *)readMainBundleCoreConfInfo
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
-(NSString *)getStringForKey:(NSString *)key
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
//    return [self getLocalizedStringForKey:key];
}

-(BOOL)getBoolForKey:(NSString *)key
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

-(NSString *)getLocalizedStringForKey:(NSString *)key
{
    return NSLocalizedStringFromTableInBundle(key, _m_stringsName, _m_stringsBundle, nil);
}

//
//
//#pragma mark - 初始化 Bundle
- (void)setBundleInfo {

//    NSString *GamaResourceBundleName = _coreConfDic[GAMA_GAME_RESOURCE_BUNDLE_NAME];
//    NSString *languageStr = _coreConfDic[GAMA_GAME_LANGUAGE];//不通过配置文件读取对应的本地化文件
    // song:20170406 通过手机设置的语言显示对应地区的本地化文件
    NSString *languageStr = @"zh-Hant";//[[NSString alloc] init];
//    if (_coreConfDic[GAMA_GMAE_mLanguge]) {
//        languageStr  = [[GamaFunction getPreferredLanguage] containsString:@"zh-"]? @"zh-Hant": [GamaFunction getPreferredLanguage];
//    }else{
//        languageStr = _coreConfDic[GAMA_GAME_LANGUAGE];//不通过配置文件读取对应的本地化文件
//    }

    self.m_stringsBundle = [NSBundle mainBundle];
    self.m_stringsName = @"";

    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:[self getSdkBundleName] withExtension:@"bundle"];

    if (bundleURL) {

        self.m_stringsBundle = [NSBundle bundleWithURL:bundleURL];

        NSURL *lprojBundleURL = [[NSBundle bundleWithURL:bundleURL] URLForResource:languageStr withExtension:@"lproj"];

        if (lprojBundleURL) {
            self.m_stringsBundle = [NSBundle bundleWithURL:lprojBundleURL];
            self.m_stringsName = @"Localizable";
        }
    }
}

-(NSString *) getGameCode
{
    return [self getStringForKey:@"gameCode"];
}
-(NSString *) getAppkey
{
    return [self getStringForKey:@"appKey"];
}
-(NSString *) getGameLanguage
{
    return [self getStringForKey:@"gameLanguage"];
}
-(NSString *) getLoginUrl
{
    return [self getStringForKey:@"sdk_url_login"];
}

-(NSString *) getPayUrl
{
    return [self getStringForKey:@"sdk_url_pay"];
}

-(NSString *) getCdnUrl
{
    return [self getStringForKey:@"sdk_url_cdn"];
}

-(NSString *) getTermsServiceUrl
{
    return [self getStringForKey:@"terms_service_url"];
}

-(NSString *) getAfDevKey
{
    return [self getStringForKey:@"af_dev_key"];
}

-(NSString *) getAppId
{
    return [self getStringForKey:@"sdk_appId"];
}

-(BOOL) isAdDebug
{
    return [self getBoolForKey:@"sdk_ad_bug"];
}

-(BOOL) isVersion2
{
    return [[self getStringForKey:@"sdk_v_version"].lowercaseString isEqualToString:@"v2"];
}

- (NSString *)getSdkBundleName
{
    NSString * bundleName = self.mainBundleConfDic[@"sdk_res_bundle_name"];
    if (bundleName && ![bundleName isEqualToString:@""]) {
        return bundleName;
    }
    return SDK_BUNDLE_NAME_v1;
}

-(NSString *) getFacebookAppId
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
    NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
    return facebookAppID;
}

@end
