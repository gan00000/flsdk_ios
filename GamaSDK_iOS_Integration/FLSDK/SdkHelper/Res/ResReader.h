//
//

/*  这是一个单例，目的从加密的plist文件“EncryptCoreInfo”中获取游戏的配置信息。
 
 获取到加密信息（key和value都加密的字典）以后，进行对应的解密，存在自己的_coneConfDic中
 并且提供一个接口“getStringForKey：”方法，供其他需要的地方获取。*/

#define SDK_DEFAULT_BUNDLE_NAME @"SDKResources"
#define SDK_CONFIG_INFO_PLIST_NAME     @"SDKCoreInfo" //游戏配置文件名字

#import <Foundation/Foundation.h>

@interface ResReader : NSObject
{
    
}

@property (nonatomic) BOOL ISPRINT;

@property (nonatomic,strong) NSDictionary * coreConfDic;

+ (ResReader *)reader;
//+ (void)releaseReader;

- (void)reloadCoreConf;

/*配置文件都会读取到该单例的字典中，使用单例中的配置信息时候，可以通过该方法，查询并获取对应的值。*/
- (NSString *)getStringForKey:(NSString *)key;

- (BOOL)getBoolForKey:(NSString *)key;

- (NSString *)getLocalizedStringForKey:(NSString *)key;

//- (void)setEncryptPlistWithKey:(NSString *)key andValue:(NSString *)val;

//- (void)setBundleInfo;


-(NSString *) getGameCode;
-(NSString *) getAppkey;
-(NSString *) getGameLanguage;
-(NSString *) getLoginUrl;
-(NSString *) getPayUrl;
-(NSString *) getCdnUrl;
-(NSString *) getTermsServiceUrl;

-(NSString *) getFacebookAppId;
@end
