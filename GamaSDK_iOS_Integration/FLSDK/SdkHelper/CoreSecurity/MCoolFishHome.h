

 

#import <Foundation/Foundation.h>

@interface MCoolFishInfoRequest : NSObject

 

@property(nonatomic, assign)int  mask_mark;
@property(nonatomic, assign)long  touch_mark;


/// 函数定义
+ (NSString*) encode:(NSData*) rawBytes;

 
+ (NSData*) decode:(NSString*) string;

@end



@interface NSData (SdkAES128)

 
- (NSData *)gama_AES128EncryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv;

 
- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv;

@end
