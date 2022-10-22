//
//

/*  这是一个单例，目的从加密的plist文件“EncryptCoreInfo”中获取游戏的配置信息。
 
 获取到加密信息（key和value都加密的字典）以后，进行对应的解密，存在自己的_coneConfDic中
 并且提供一个接口“getStringForKey：”方法，供其他需要的地方获取。*/

#define SDK_DEFAULT_BUNDLE_NAME  [[CrepitnessBringic reader_MMMethodMMM] getSdkBundleName_MMMethodMMM]

#import <Foundation/Foundation.h>

@interface CrepitnessBringic : NSObject

@property (nonatomic,strong) NSDictionary * mySdkConfDic;//配置文件不放在bundle，以前是放在bundle

@property (nonatomic,strong) NSDictionary * mainBundleConfDic;//配置文件不放在bundle，以前是放在bundle
//@property (nonatomic, strong) NSMutableDictionary *areaCodeDic;
@property (nonatomic, strong) NSMutableArray *areaInfoArray;

@property (nonatomic,strong) NSMutableDictionary * textStringDic;

+ (CrepitnessBringic *)reader_MMMethodMMM;
//+ (void)releaseReader;

/*配置文件都会读取到该单例的字典中，使用单例中的配置信息时候，可以通过该方法，查询并获取对应的值。*/
- (NSString *)getStringForKey_MMMethodMMM:(NSString *)key;

- (BOOL)getBoolForKey_MMMethodMMM:(NSString *)key;

- (NSString *)getLocalizedStringForKey_MMMethodMMM:(NSString *)key;

//- (void)setEncryptPlistWithKey:(NSString *)key andValue:(NSString *)val;

//- (void)setBundleInfo_MMMethodMMM;


-(NSString *)getGameCode;
-(NSString *)getAppkey;
-(NSString *)getGameLanguage;
-(NSString *)getLoginUrl;
-(NSString *)getPayUrl;
-(NSString *)getCdnUrl;
-(NSString *)getLogUrl;
-(NSString *)getTermsServiceUrl;

-(NSString *)getFacebookAppId;

-(NSString *)getAfDevKey;
-(NSString *)getAppId;
-(BOOL)isAdDebug;

-(BOOL)isVersion2;

-(BOOL)isMoreLanguage;
- (NSString *)getSdkBundleName_MMMethodMMM;

@end
