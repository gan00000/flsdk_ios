



#define SDK_DEFAULT_BUNDLE_NAME  [[ResReader reader_MMMethodMMM] getSdkBundleName_MMMethodMMM]
#define SDK_BUNDLE  [[ResReader reader_MMMethodMMM] getMySdkBundle_MMMethodMMM]

#import <Foundation/Foundation.h>

@interface ResReader : NSObject

@property (nonatomic,strong) NSDictionary * mySdkConfDic_MMMPRO;

@property (nonatomic,strong) NSDictionary * mainBundleConfDic_MMMPRO;
@property (nonatomic, strong) NSMutableArray *areaInfoArray_MMMPRO;

@property (nonatomic,strong) NSMutableDictionary * textStringDic_MMMPRO;

+ (ResReader *)reader_MMMethodMMM;


- (NSString *)getStringForKey_MMMethodMMM:(NSString *)key;

- (BOOL)getBoolForKey_MMMethodMMM:(NSString *)key;

- (NSString *)getLocalizedStringForKey_MMMethodMMM:(NSString *)key;




-(NSString *)getGameCode_MMMethodMMM;
-(NSString *)getAppkey_MMMethodMMM;
-(NSString *)getGameLanguage_MMMethodMMM;
-(NSString *)getLoginUrl_MMMethodMMM;
-(NSString *)getPayUrl_MMMethodMMM;
-(NSString *)getCdnUrl_MMMethodMMM;
-(NSString *)getLogUrl_MMMethodMMM;
-(NSString *)getPlatUrl_MMMethodMMM;
-(NSString *)getTermsServiceUrl_MMMethodMMM;

-(NSString *)getFacebookAppId_MMMethodMMM;

-(NSString *)getAfDevKey_MMMethodMMM;
-(NSString *)getAppId_MMMethodMMM;
-(BOOL)isAdDebug_MMMethodMMM;

-(BOOL)isVersion2_MMMethodMMM;

-(NSString *)getSdkVersion_MMMethodMMM;

-(BOOL)isMoreLanguage_MMMethodMMM;
- (NSString *)getSdkBundleName_MMMethodMMM;

- (NSString *)getSdkBaseEncryptKey_MMMethodMMM;
- (NSString *)getSdkEncryptKey_MMMethodMMM;

- (NSString *)decryptAllStringContent_MMMethodMMM:(NSString *)textEncrypContent;

- (NSBundle *)getMySdkBundle_MMMethodMMM;

- (void)logSdkResConfig_MMMethodMMM;
@end
