
//
#import <malloc/malloc.h>
#import <objc/runtime.h>
#import "GamaCoreConfReader.h"
#import "GamaCentreInfo.h"
//#import "GamaSecurityFunction.h"

#define GAMA_INFO_PLIST_NAME     @"SDKCoreInfo"         //加密的游戏配置文件名字

@interface GamaCoreConfReader ()
@property (nonatomic, retain) NSString *m_stringsName;
@property (nonatomic, retain) NSBundle *m_stringsBundle;
@end

@implementation GamaCoreConfReader

static GamaCoreConfReader * coreReader;
static dispatch_once_t onceToken;

-(void)dealloc
{
    if (_coreConfDic)
    {
        [_coreConfDic release];
        _coreConfDic=nil;
        [_thirdConfigInfo release];
        _thirdConfigInfo=nil;
    }
    
    [_m_stringsBundle release]; _m_stringsBundle = nil;
    [_m_stringsName release]; _m_stringsName = nil;
    
    [super dealloc];
}

+ (GamaCoreConfReader *)reader
{
    
    dispatch_once(&onceToken,^{
        coreReader = [[GamaCoreConfReader alloc] init];
    });
    return coreReader;
}

+ (void)releaseReader
{
    onceToken = 0;
    [coreReader release];
    coreReader = nil;
}

- (instancetype)init
{
    self=[super init];
    if (self)
    {
        [self initConfigeFileToDocument];
        
        [self reloadCoreConf];
        
        [self checkInfoPlistConfiguration];
        
        //获取是否调试模式信息
        self.ISPRINT=YES;
        //[self setWhetherPrint];
        
        [self setBundleInfo];
    }
    return self;
}

- (void)checkInfoPlistConfiguration
{
    // 检查HTTP不安全配置
    // 拿到SDK的版本号
    static NSDictionary *infoDic = nil;
    infoDic = [[NSBundle mainBundle] infoDictionary];
    CGFloat sdkVersion = [[infoDic objectForKey:@"DTPlatformVersion"] floatValue];

    if (sdkVersion >= 9.0f) {
        // 获取urlscheme配置项
        NSArray *urlSchemeArr = [[_coreConfDic objectForKey:@"urlschemeWhiteLists"] componentsSeparatedByString:@","];
        // 获取现有urlscheme白名单列表
        NSArray *urlSchemeList = [infoDic objectForKey:@"LSApplicationQueriesSchemes"];
        NSMutableArray *lostQueriesSchemes = [NSMutableArray array];
        [urlSchemeArr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSString *urlscheme = [obj stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if (![urlscheme isEqualToString:@""] && urlscheme != nil && ![urlSchemeList containsObject:urlscheme]) {
                [lostQueriesSchemes addObject:urlscheme];
            }
        }];
        if (lostQueriesSchemes.count > 0) {
            NSString *strLostTips = [NSString stringWithFormat:@"Info.plist配置文件中，LSApplicationQueriesSchemes缺少如下URLScheme白名单配置：\n%@\n请同时参考SDK配置文档！", lostQueriesSchemes];
            dispatch_async(dispatch_get_main_queue(), ^{
                [GamaAlertView showAlertWithMessage:strLostTips];
            });
        }
    }
    // 检查Facebook配置
    NSString *facebookAppId = self.thirdConfigInfo[@"facebookAppID"];
    if (facebookAppId && ![facebookAppId isEqualToString:@""]) {
        [GamaFunction checkValue:facebookAppId
                        key:@"FacebookAppID"
               andURLScheme:[NSString stringWithFormat:@"fb%@",facebookAppId]
           andURLIdentifier:nil];
    }    
}

//复制配置文件到Documents，根据版本号CFBundleShortVersionString更新
- (void)initConfigeFileToDocument
{
    
    NSString *targetPath = [NSHomeDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"Documents/%@.plist",GAMA_INFO_PLIST_NAME]];
    
    NSString *appVersionPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/gamaGameVersion.txt"];
    NSString *appVersionOld = [NSString stringWithContentsOfFile:appVersionPath encoding:NSUTF8StringEncoding error:nil];
    NSString *appVersionNow = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    //读取bundle
    NSURL *GamaBundleURL = [[NSBundle mainBundle] URLForResource:@"SDKResources"
                                                   withExtension:@"bundle"];
    NSBundle *gamaBundle = nil;
    if (GamaBundleURL) {
        gamaBundle = [NSBundle bundleWithURL:GamaBundleURL];
    }
    
    if (![fileManager fileExistsAtPath:targetPath])
    {
        NSString * infoPlistPath=[gamaBundle pathForResource:GAMA_INFO_PLIST_NAME ofType:@"plist"];
        if (!infoPlistPath) {
            infoPlistPath = [[NSBundle mainBundle] pathForResource:GAMA_INFO_PLIST_NAME ofType:@"plist"];
        }
        NSAssert(infoPlistPath ? YES : NO, @"找不到plist 文件");
        NSError * error = nil;
        [[NSFileManager defaultManager] copyItemAtPath:infoPlistPath toPath:targetPath error:&error];
        if (error) {
            [self initConfigeFileToDocument];
        }
        
        [appVersionNow writeToFile:appVersionPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
    } else {
        // 判断应用是否改版，改版则替换掉旧的coreInfo.plist
        if (![fileManager fileExistsAtPath:appVersionPath] || ![appVersionOld isEqualToString:appVersionNow]) {
            [fileManager removeItemAtPath:targetPath error:nil];
            
            NSString * infoPlistPath=[gamaBundle pathForResource:GAMA_INFO_PLIST_NAME ofType:@"plist"];
            if (!infoPlistPath) {
                infoPlistPath = [[NSBundle mainBundle] pathForResource:GAMA_INFO_PLIST_NAME ofType:@"plist"];
            }
            NSAssert(infoPlistPath ? YES : NO, @"找不到plist 文件");
            NSError * error = nil;
            [[NSFileManager defaultManager] copyItemAtPath:infoPlistPath toPath:targetPath error:&error];
            if (error) {
                [self initConfigeFileToDocument];
            }
            
            [appVersionNow writeToFile:appVersionPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
        }
    }
}

#pragma mark -
//从文件中读取配置信息
-(void)readCoreConfInfo
{
    //获取配置文件路径
    NSString * infoPlistPath=[NSHomeDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"Documents/%@.plist",GAMA_INFO_PLIST_NAME]];
    //获取配置内容字典
    NSDictionary * infoDic=[NSDictionary dictionaryWithContentsOfFile:infoPlistPath];
    
    //给单例字典添加键值对
    //先添加配置的所有键值对
    for (NSString * key in infoDic.allKeys)
    {
        // 过滤SDK核心配置信息，读取到内存
        NSDictionary * tempDic=[infoDic objectForKey:key];
        if ([tempDic isKindOfClass:[NSDictionary class]]) {
            [_coreConfDic addEntriesFromDictionary:tempDic];
        }
        // 输出SDK配置文件的生成日期
        if ([key isEqualToString:@"PACKAGE_DATE"]) {
//            NSLog(@"SDK Delivery Date: %@",infoDic[key]);
        }
        // 过滤第三方广告、登录等配置信息
        NSString *decodeExternalKey= key;//[GamaSecurity getDecryptStringFromString:key
//                                                             withKey:GAMA_CONF_DEFAULT_KEY
//                                                                  iv:GAMA_CONF_DEFAULT_IV];
        if ([decodeExternalKey isEqualToString:@"thirdPartyInfo"] || [decodeExternalKey isEqualToString:@"ThirdLoginParams"]) {
            [tempDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
                NSString *decodeKey=  key;//[GamaSecurity getDecryptStringFromString:key
//                                                                     withKey:GAMA_CONF_DEFAULT_KEY
//                                                                          iv:GAMA_CONF_DEFAULT_IV];
                NSString *decodeObj = [self getDecodeString:obj];
                if (!decodeObj || ![decodeObj isEqualToString:@""]) {
                    self.thirdConfigInfo[decodeKey] = decodeObj;
                }
            }];
        }
    }
    
    //给单例字典中的键值对解码
    [self getDecodeDictionary];
    
}

- (NSMutableDictionary *)thirdConfigInfo
{
    if (_thirdConfigInfo == nil) {
        _thirdConfigInfo = [[NSMutableDictionary alloc] init];
    }
    return _thirdConfigInfo;
}

- (void)reloadCoreConf
{
    if (_coreConfDic) {
        [_coreConfDic release];
        _coreConfDic = nil;
    }
    _coreConfDic=[[NSMutableDictionary alloc]initWithCapacity:6];
    //从plist中读取配置
    [self readCoreConfInfo];
}

//对获取的密文的字典，进行解密，获取明文
-(void)getDecodeDictionary
{
    NSMutableDictionary * tempDic=[[[NSMutableDictionary alloc]init]autorelease];
    for (NSString * key in _coreConfDic.allKeys)
    {
        NSString * content=[_coreConfDic objectForKey:key];
        NSString * decodeKey= key;//[GamaSecurity getDecryptStringFromString:key
//                                                              withKey:GAMA_CONF_DEFAULT_KEY
//                                                                   iv:GAMA_CONF_DEFAULT_IV];
        NSString * trueDecodeContent=[self getDecodeString:content];
        
        if (!decodeKey) {
            NSLog(@"配置项键%@解码后为空！",key);
            continue;
        }
        if (!trueDecodeContent) {
            NSLog(@"配置项值%@解码后为空！",content);
            continue;
        }
        NSDictionary * tempDicIn=[NSDictionary dictionaryWithObjectsAndKeys:
                                  trueDecodeContent,
                                  decodeKey,
                                  nil];
        [tempDic addEntriesFromDictionary:tempDicIn];
    }
    
    if (tempDic.allKeys.count > 0) {
        [_coreConfDic removeAllObjects];
        [_coreConfDic addEntriesFromDictionary:tempDic];
    }
    
    // 替换配置文件中含有服务器（__replaceServer__、__replaceServerCDN__） 和 账号前缀占位符的值
    [self setServerWithRegion];
    // 替换配置文件中含有GameCode（__replaceGameShortName__）占位符的值
    [self setupGameCodeStuffWithGameName];
    
}

-(NSString *)getDecodeString:(NSString *)content
{
    NSString * decodeContent= content;//[GamaSecurity getDecryptStringFromString:content
//                                                              withKey:GAMA_CONF_DEFAULT_KEY
//                                                                   iv:GAMA_CONF_DEFAULT_IV];
    //還原“\”转译字符
    NSString * trueDecodeContent=[decodeContent stringByReplacingOccurrencesOfString:@"\\n"
                                                                          withString:@"\n"];
    return trueDecodeContent;
}


#pragma mark - setup Server
- (void)setServerWithRegion
{
    NSString *currentRegion = [_coreConfDic objectForKey:@"current_Select_Region"];
    
    //设置服务器
    NSString *currentServer = [_coreConfDic objectForKey:currentRegion];
    NSString *currentServer_Backup = [_coreConfDic objectForKey:[currentRegion stringByAppendingString:@"_Backup"]];
    
    //设置CDN域名服务器
    NSString *currentServerCDN = [_coreConfDic objectForKey:[currentRegion stringByAppendingString:@"_CDN"]];
    NSString *currentServer_BackupCDN = [_coreConfDic objectForKey:[currentRegion stringByAppendingString:@"_CDN_Backup"]];
    
    for (NSString *key in _coreConfDic.allKeys) {
        NSString *value = [_coreConfDic objectForKey:key];
        NSString *tmpBackupKey = [key stringByAppendingString:@"InReserve"];
        
        if ([value rangeOfString:@"__replaceServer__"].location != NSNotFound
            ||  [value rangeOfString:@"http"].location == 0)
        {
            NSString * resultValue = [value stringByReplacingOccurrencesOfString:@"__replaceServer__" withString:currentServer];
            [_coreConfDic setObject:resultValue forKey:key];
            
            resultValue = [value stringByReplacingOccurrencesOfString:@"__replaceServer__" withString:currentServer_Backup];
            [_coreConfDic setObject:resultValue forKey:tmpBackupKey];
        }
        
        //设置CDN的域名
        if ([value rangeOfString:@"__replaceServerCDN__"].location != NSNotFound)
        {
            NSString * resultValue = [value stringByReplacingOccurrencesOfString:@"__replaceServerCDN__" withString:currentServerCDN];
            [_coreConfDic setObject:resultValue forKey:key];
            
            resultValue = [value stringByReplacingOccurrencesOfString:@"__replaceServerCDN__" withString:currentServer_BackupCDN];
            [_coreConfDic setObject:resultValue forKey:tmpBackupKey];
        }
    }
}

#pragma mark - setup GameCode
- (void)setupGameCodeStuffWithGameName
{
    NSString *currentGameName = [_coreConfDic objectForKey:SDK_GAME_CODE];
    
    for (NSString *key in _coreConfDic.allKeys) {
        NSString *value = [_coreConfDic objectForKey:key];
        if ([value rangeOfString:@"__replaceGameShortName__"].location != NSNotFound)
        {
            NSString * resultValue = [value stringByReplacingOccurrencesOfString:@"__replaceGameShortName__" withString:currentGameName];
            [_coreConfDic setObject:resultValue forKey:key];
        }
    }
}


#pragma mark - 获取某个key对应的确定的配置值
-(NSString *)getStringForKey:(NSString *)key
{
    // 此处是兼容之前调用此方法获取本地化语言信息，此方法仍然可以返回text,title打头的本地化信息，反之，需调用getLocalizedStringForKey
//    if ([key length] >= 4 && ([[key substringWithRange:NSMakeRange(0, 4)] isEqualToString:@"text"] ||
//        [[key substringWithRange:NSMakeRange(0, 5)] isEqualToString:@"title"]))
//    {
//        return [self getLocalizedStringForKey:key];
//    }
    NSString *strconfig = [_coreConfDic objectForKey:key];
    if (strconfig && ![strconfig isEqualToString:@""]) {
        return strconfig;
    }
    return [self getLocalizedStringForKey:key];
}

-(BOOL)getBoolForKey:(NSString *)key
{
    NSString *boolStr = [[_coreConfDic objectForKey:key] lowercaseString];
    if ([boolStr isEqualToString:@"yes"] || [boolStr isEqualToString:@"true"]) {
        return YES;
    } else if ([boolStr isEqualToString:@"no"] || [boolStr isEqualToString:@"false"]) {
        return NO;
    } else {
        NSLog(@"Can't Find BOOL Key: %@ \n------------------------------",key);
        return NO;
    }
}

-(NSString *)getLocalizedStringForKey:(NSString *)key
{
    return NSLocalizedStringFromTableInBundle(key, _m_stringsName, _m_stringsBundle, nil);
}

-(void)setEncryptPlistWithKey:(NSString *)key andValue:(NSString *)val
{
    @synchronized(_coreConfDic)
    {
        [_coreConfDic setValue:val forKey:key];
        
        NSString *tmpEncryptedKey =  key;//[self getEncryptStringFromString:key];
        NSString *tmpEncryptedVal = val;//[self getEncryptStringFromString:val];
        
        //获取配置文件路径
        NSString * infoPlistPath=[NSHomeDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"Documents/%@.plist",GAMA_INFO_PLIST_NAME]];
        //获取配置内容字典
        NSMutableDictionary * infoDic=[NSMutableDictionary dictionaryWithContentsOfFile:infoPlistPath];
        
        for (NSString * key in infoDic) {
            NSMutableDictionary *tmpDic = [infoDic objectForKey:key];
            if ([tmpDic isKindOfClass:[NSDictionary class]]) {
                for (NSString * tmpSecKey in tmpDic.allKeys) {
                    if ([tmpSecKey isEqualToString:tmpEncryptedKey]) {
                        [tmpDic setValue:tmpEncryptedVal forKey:tmpSecKey];
                    }
                }
            }
        }
        
        [infoDic writeToFile:infoPlistPath atomically:YES];
    }
}

//Class GamaBase64Encoding;
//- (NSString *)getEncryptStringFromString:(NSString *)string
//{
//    NSData * data=[string dataUsingEncoding:NSUTF8StringEncoding];
//    NSData * midata=[data gama_AES128EncryptWithKey:GAMA_CONF_DEFAULT_KEY iv:GAMA_CONF_DEFAULT_IV];
//    return [GamaBase64Encoding encode:midata];
//}


//获取是否打印的路径
-(NSString *)getPrintFilePath
{
    NSString * keyPaths= [NSHomeDirectory()stringByAppendingPathComponent:@"Library"];
    NSString * printFileName=[self getStringForKey:GAMA_GAME_JUDGE_LOG_FILE_NAME];
    NSString * printfPath = [keyPaths stringByAppendingFormat:@"/Caches/%@",printFileName];
    return printfPath ;
}

#pragma mark - 初始化 Bundle
- (void)setBundleInfo {
    
    NSString *GamaResourceBundleName = _coreConfDic[GAMA_GAME_RESOURCE_BUNDLE_NAME];
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
    
    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:GamaResourceBundleName withExtension:@"bundle"];
    
    if (bundleURL) {
        
        self.m_stringsBundle = [NSBundle bundleWithURL:bundleURL];
        
        NSURL *lprojBundleURL = [[NSBundle bundleWithURL:bundleURL] URLForResource:languageStr withExtension:@"lproj"];
        
        
        if (lprojBundleURL) {
            self.m_stringsBundle = [NSBundle bundleWithURL:lprojBundleURL];
            self.m_stringsName = @"Localizable";
        }else if(_coreConfDic[GAMA_GMAE_mLanguge]){
            NSURL *lprojBundleURL = [[NSBundle bundleWithURL:bundleURL] URLForResource:@"en" withExtension:@"lproj"];
            self.m_stringsBundle = [NSBundle bundleWithURL:lprojBundleURL];
            self.m_stringsName = @"Localizable";

        }
    }
}

-(NSString *) getGameCode
{
    return [self getStringForKey:SDK_GAME_CODE];
}
-(NSString *) getAppkey
{
    return [self getStringForKey:GAMA_GAME_KEY];
}
-(NSString *) getGameLanguage
{
    return [self getStringForKey:GAMA_GAME_LANGUAGE];
}
-(NSString *) getLoginUrl
{
    return [self getStringForKey:GAMA_LOGIN_DOMAIN_NAME];
}

-(NSString *) getPayUrl
{
    return [self getStringForKey:GAMA_IAP_DOMAIN_NAME];
}

-(NSString *) getFreeRegisterPath
{
    return [self getStringForKey:GAMA_LOGIN_STANDARD_FREE_LOGIN_PRO_NAME];
}

-(NSString *) getThirdPlatLoginOrRegisterPath
{
    return [self getStringForKey:GAMA_LOGIN_THIRD_LOGIN_PRO_NAME];
}

-(NSString *) getFacebookAppId
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
    NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
    return facebookAppID;
}

@end
