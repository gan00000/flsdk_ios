

/**
  just the thing to produce rapid progress. If you want to ace a class, you assume long, distraction-free study sessions are key. But research has shown that focusing on efficiency can leave you high and dry because you'll negle 
**/
#import <Foundation/Foundation.h>
@interface SdkBase64Encoding : NSObject
+ (NSString*) encode:(NSData*) rawBytes;
+ (NSData*) decode:(NSString*) string;
@end
@interface NSData (SdkAES128)

/**
  这条法则如此重要呢？格兰德纳解释道，因为醒着躺在床上会在大脑中形成关联，从而导致长期失眠。这样一来，床就不再是你安眠的舒适窝，而成为你辗转反侧心生焦虑并在疲惫中醒来的地方。

Establishing that positive relationship between the bed and sleep can be beneficial on n 
**/
- (NSData *)gama_AES128EncryptWithKey:(NSString *)key iv:(NSString *)iv;
- (NSData *)gama_AES128DecryptWithKey:(NSString *)key iv:(NSString *)iv;
@end
