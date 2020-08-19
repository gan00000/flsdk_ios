//
//

#import <Foundation/Foundation.h>

#define GAMA_ENCRYPT_INFO_PLIST_NAME    @"GamaEncryptCoreInfo"
#define GAMA_DECRYPT_INFO_PLIST_NAME    @"GamaCoreInfo"
#define GAMA_CONF_DEFAULT_KEY    @"GAMA128KEY"                  //文件加密时候使用的Key参数
#define GAMA_CONF_DEFAULT_IV     @"GAMA128IV"                   //文件加密时候使用的iv参数

@interface GamaEnDeFunc : NSObject
+ (void)creatEncryptedPlistWithFilePath:(NSString *)filepath;
+ (void)creatDecryptedPlistWithFilePath:(NSString *)filepath;

+ (NSString *)getEncryptStringFromString:(NSString *)string;
@end
