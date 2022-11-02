
#define SDK_DEFAULT_BUNDLE_NAME  [[ExperOfficialatic reader_MMMethodMMM] getSdkBundleName_MMMethodMMM]

#import <Foundation/Foundation.h>

/**
  e at the office on weekdays during my lunch break" would fit the bill.

如果你的新年计划是每 
**/
@interface ExperOfficialatic : NSObject
{
}
@property (nonatomic,strong) NSDictionary * mySdkConfDic;//配置文件不放在bundle，以前是放在bundle

@property (nonatomic,strong) NSDictionary * mainBundleConfDic;//配置文件不放在bundle，以前是放在bundle
//@property (nonatomic, strong) NSMutableDictionary *areaCodeDic;
@property (nonatomic, strong) NSMutableArray *areaInfoArray;

@property (nonatomic,strong) NSMutableDictionary * textStringDic;

+ (ExperOfficialatic *)reader_MMMethodMMM;
//+ (void)releaseReader;

/*配置文件都会读取到该单例的字典中，使用单例中的配置信息时候，可以通过该方法，查询并获取对应的值。*/
- (NSString *)getStringForKey_MMMethodMMM:(NSString *)key;

- (BOOL)getBoolForKey_MMMethodMMM:(NSString *)key;

- (NSString *)getLocalizedStringForKey_MMMethodMMM:(NSString *)key;

//- (void)setEncryptPlistWithKey:(NSString *)key andValue:(NSString *)val;

//- (void)setBundleInfo_MMMethodMMM;


-(NSString *)getGameCode_MMMethodMMM;
-(NSString *)getAppkey_MMMethodMMM;
-(NSString *)getGameLanguage_MMMethodMMM;
-(NSString *)getLoginUrl_MMMethodMMM;
-(NSString *)getPayUrl_MMMethodMMM;
-(NSString *)getCdnUrl_MMMethodMMM;
-(NSString *)getLogUrl_MMMethodMMM;
-(NSString *)getTermsServiceUrl_MMMethodMMM;

-(NSString *)getFacebookAppId_MMMethodMMM;

-(NSString *)getAfDevKey_MMMethodMMM;
-(NSString *)getAppId_MMMethodMMM;
-(BOOL)isAdDebug_MMMethodMMM;

-(BOOL)isVersion2_MMMethodMMM;

-(BOOL)isMoreLanguage_MMMethodMMM;
- (NSString *)getSdkBundleName_MMMethodMMM;

- (NSString *)getSdkBaseEncryptKey_MMMethodMMM;
- (NSString *)getSdkEncryptKey_MMMethodMMM;

- (NSString *)decryptAllStringContent_MMMethodMMM:(NSString *)textEncrypContent;
@end
