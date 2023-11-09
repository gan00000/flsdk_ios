



#define SDK_DEFAULT_BUNDLE_NAME  [[PennressAmphee reader_MMMethodMMM] getSdkBundleName_MMMethodMMM]
#define SDK_BUNDLE  [[PennressAmphee reader_MMMethodMMM] getMySdkBundle_MMMethodMMM]

#import <Foundation/Foundation.h>

@interface PennressAmphee : NSObject

@property (nonatomic,strong) NSDictionary * mySdkConfDic;

@property (nonatomic,strong) NSDictionary * mainBundleConfDic;
@property (nonatomic, strong) NSMutableArray *areaInfoArray;

@property (nonatomic,strong) NSMutableDictionary * textStringDic;

+ (PennressAmphee *)reader_MMMethodMMM;


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

@end
