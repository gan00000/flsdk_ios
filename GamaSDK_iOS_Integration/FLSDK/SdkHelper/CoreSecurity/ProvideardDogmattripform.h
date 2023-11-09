


#import <Foundation/Foundation.h>


#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"                  
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"                   



@interface ProvideardDogmattripform : NSObject

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
