


#import <Foundation/Foundation.h>


#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"                  
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"                   

 

@interface CHMXTTImpl : NSObject
 

@property(nonatomic, assign)NSInteger  click_idx;
@property(nonatomic, assign)double  accountOffset;
@property(nonatomic, assign)long  transactionMark;
@property(nonatomic, assign)long  updataFlag;




+(NSDictionary *)memsetOccurServices:(NSInteger)ramework dismiss:(NSArray *)dismiss line:(long)line;

+(long)identityOnlyContainsCanceledPurchasingIdentifiers:(NSDictionary *)homeToken info:(int)info boundsLogin:(Boolean)boundsLogin;

+(NSArray *)contentHaveRadius;

+(NSInteger)morePlegingEntriesException:(float)hiddenHttp hideGeneric:(Boolean)hideGeneric;


+(NSString *)getEncryptStringFromString_MMMethodMMM:(NSString *)beforeEncryptString
                                WithKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv;

 
+(NSString *)getDecryptStringFromString_MMMethodMMM:(NSString *)beforeDecryptString
                                withKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv;

 
+(NSData *)getEncryptDataFromData_MMMethodMMM:(NSData *)beforeEncryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv;

 
+(NSData *)getDecryptDataFromData_MMMethodMMM:(NSData *)beforeDecryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv;

 
+(NSString *)getEncodeStringFromData_MMMethodMMM:(NSData *)beforeEncodeData;

 
+(NSData *)getEncodeDataFromString_MMMethodMMM:(NSString *)beforeEncodeString;

@end
