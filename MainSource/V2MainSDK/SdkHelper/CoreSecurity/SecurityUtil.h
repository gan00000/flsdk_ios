


#import <Foundation/Foundation.h>


#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"                  //文件加密时候使用的Key参数
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"                   //文件加密时候使用的iv参数

/*
 GAMA的保密类,主要进行：加密，解密，转码等职能。
 */

@interface SecurityUtil : NSObject
@property (nonatomic, copy) NSString *carneerSexee;
/**
 *  从一个明文字符串，加密得到一个加密的字符串
 *
 *  @param beforeEncryptString 明文字符串
 *  @param key                 加密参数，根据加密要求，不要超过16个字符，要和解密参数保持一致
 *  @param iv                  加密参数，根据加密要求，不要超过16个字符，要和解密参数保持一致
 *
 *  @return 加密后的字符串
 */
+(NSString *)getEncryptStringFromString_MMMethodMMM:(NSString *)beforeEncryptString
                                WithKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv;

/**
 *  从一个加密过的字符串，解密得到一个明文字符串
 *
 *  @param beforeDecryptString 一个加密后的字符串
 *  @param key                 解密参数，根据加密要求，不要超过16个字符，要和加密参数保持一致
 *  @param iv                  解密参数，根据加密要求，不要超过16个字符，要和加密参数保持一致
 *
 *  @return 解密后的字符串
 */
+(NSString *)getDecryptStringFromString_MMMethodMMM:(NSString *)beforeDecryptString
                                withKey_MMMethodMMM:(NSString *)key
                                     iv_MMMethodMMM:(NSString *)iv;

/**
 *  对NSData加密
 *
 *  @param beforeEncryptData 加密前的数据
 *  @param key               加密参数，根据加密要求，不要超过16个字符，要和解密参数保持一致
 *  @param iv                加密参数，根据加密要求，不要超过16个字符，要和解密参数保持一致
 *
 *  @return 加密以后的数据
 */
+(NSData *)getEncryptDataFromData_MMMethodMMM:(NSData *)beforeEncryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv;

/**
 *  对NSData解密
 *
 *  @param beforeDecryptData 被加密的数据
 *  @param key               解密参数，根据加密要求，不要超过16个字符，要和加密参数保持一致
 *  @param iv                解密参数，根据加密要求，不要超过16个字符，要和加密参数保持一致
 *
 *  @return 解密后的数据
 */
+(NSData *)getDecryptDataFromData_MMMethodMMM:(NSData *)beforeDecryptData
                          withKey_MMMethodMMM:(NSString *)key
                               iv_MMMethodMMM:(NSString *)iv;

/**
 *  NSData转换成NSString
 *
 *  @param beforeEncodeData 转码前的NSData
 *
 *  @return 转码后的字符串
 */
+(NSString *)getEncodeStringFromData_MMMethodMMM:(NSData *)beforeEncodeData;

/**
 *  NSString转换成NSData
 *
 *  @param beforeEncodeString 转码前的NSString
 *
 *  @return 转码后的NSData
 */
+(NSData *)getEncodeDataFromString_MMMethodMMM:(NSString *)beforeEncodeString;

@end
