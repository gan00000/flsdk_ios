//
//  NSData+AES128.h
//  AES128加密
//

#import <Foundation/Foundation.h>

#import <CommonCrypto/CommonCrypto.h>

@interface NSData (AES128)

- (NSData *)AES128EncryptWithKey:(NSString *)key iv:(NSString *)iv;

- (NSData *)AES128DecryptWithKey:(NSString *)key iv:(NSString *)iv;

@end
