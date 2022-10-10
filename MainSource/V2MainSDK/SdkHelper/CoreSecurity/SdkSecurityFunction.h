

/*
 这个类是给“GamaSecurity”用的功能实现
 */

#import <Foundation/Foundation.h>

@interface SdkBase64Encoding : NSObject
@property(nonatomic, weak) id leaveerChoreadeAnimshortless;

/**
 *	@brief	base64 吧data转吗成字符串
 *
 *	@return	base64转吗以后的字符串
 */
+ (NSString*) encode:(NSData*) rawBytes;

/**
 *	@brief	base64 把字符串转吗回data
 *
 *	@return	base64转吗以后的data
 */
+ (NSData*) decode:(NSString*) string;

@end



@interface NSData (SdkAES128)
@property (nonatomic, copy) NSString *dogismLaminaceousCaldet;

/**
 *	@brief	AES128加密
 *
 *	@param 	key 	一个字符串,注意不要超过16个字符
 *	@param 	iv 	一个字符串，注意不要超过16个字符
 *
 *	@return	一个data
 */
- (NSData *)gama_AES128EncryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv;

/**
 *	@brief	AES128解密
 *
 *	@param 	key 	一个字符串（跟加密时候保持一致），注意不要超过16个字符
 *	@param 	iv 	一个字符串（跟加密时候保持一致），注意不要超过16个字符
 *
 *	@return	一个data
 */
- (NSData *)gama_AES128DecryptWithKey_MMMethodMMM:(NSString *)key iv_MMMethodMMM:(NSString *)iv;

@end
