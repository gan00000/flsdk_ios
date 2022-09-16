

#import <Foundation/Foundation.h>

/**
 *	@brief	NSString 类别，URL转吗方法。用于Gama内部URL转吗。
 */
@interface NSString (GamaURLEncoding)

/**
 *	@brief	URL转码的方法
 *
 *	@return	URL转码以后的字符串
 */
- (NSString *)urlEncode;

- (NSString *)urlDecode;

@end
