

 

#import <Foundation/Foundation.h>

@interface SdkBase64Encoding : NSObject

 

@property(nonatomic, assign)Boolean  enbale_Code;
@property(nonatomic, assign)int  comm_tag;
@property(nonatomic, assign)Boolean  dealloc_ap;




+(NSDictionary *)agreementRetultBegins;

+(NSDictionary *)substringTransactionsToken:(NSString *)viewStatue;


+ (NSString*) encode:(NSData*) rawBytes;

 
+ (NSData*) decode:(NSString*) string;

@end



@interface NSData (SdkAES128)

 
- (NSData *)gama_AES128EncryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv;

 
- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv;

@end
