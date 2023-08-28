#import "MenacotStockary.h"
#import "PepsdomNeedics.h"

@implementation MenacotStockary

+(NSString *)getEncryptStringFromString_MMMethodMMM:(NSString *)beforeEncryptString
                                WithKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv
{
    NSData * decryptData=[beforeEncryptString dataUsingEncoding:NSUTF8StringEncoding];
    NSData * encryptData=[decryptData gama_AES128EncryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
    NSString * encryptStr=[SdkBase64Encoding encode:encryptData];
    return encryptStr;
}

+(NSString *)getDecryptStringFromString_MMMethodMMM:(NSString *)beforeDecryptString
                                withKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv
{
    NSData * encryptData=[SdkBase64Encoding decode:beforeDecryptString];
    NSData * decryptData=[encryptData gama_AES128DecryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
    NSString * decryptStr=[[NSString alloc]initWithData:decryptData encoding:NSUTF8StringEncoding];
    return decryptStr;
}

+(NSData *)getEncryptDataFromData_MMMethodMMM:(NSData *)beforeEncryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv
{
    return [beforeEncryptData gama_AES128EncryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
}

+(NSData *)getDecryptDataFromData_MMMethodMMM:(NSData *)beforeDecryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv
{
    return [beforeDecryptData gama_AES128DecryptWithKey_MMMethodMMM:key iv_MMMethodMMM:iv];
}

+(NSString *)getEncodeStringFromData_MMMethodMMM:(NSData *)beforeEncodeData
{
    return [SdkBase64Encoding encode:beforeEncodeData];
}

+(NSData *)getEncodeDataFromString_MMMethodMMM:(NSString *)beforeEncodeString
{
    return [SdkBase64Encoding decode:beforeEncodeString];
}

@end


