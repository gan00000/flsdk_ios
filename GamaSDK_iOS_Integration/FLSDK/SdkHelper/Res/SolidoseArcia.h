



#define SDK_DEFAULT_BUNDLE_NAME  [[SolidoseArcia reader_MMMethodMMM] getSdkBundleName_MMMethodMMM]

#import <Foundation/Foundation.h>

@interface SolidoseArcia : NSObject

@property (nonatomic,strong) NSDictionary * mySdkConfDic;

@property (nonatomic,strong) NSDictionary * mainBundleConfDic;
@property (nonatomic, strong) NSMutableArray *areaInfoArray;

@property (nonatomic,strong) NSMutableDictionary * textStringDic;

+ (SolidoseArcia *)reader_MMMethodMMM;


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
@end
