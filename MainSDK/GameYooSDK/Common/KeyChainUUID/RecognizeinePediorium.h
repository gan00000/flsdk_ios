//

#define SDK_KEY_CHAIN_KEY @"MW_UID"

#import <Foundation/Foundation.h>

@interface RecognizeinePediorium : NSObject

/**
 *	@brief	获取私有keychain中的cfUUID
    先从私有域keychain中获取cfuuid
        如果获取不到，证明没有保存过，就创建一个cfuuid，并且保存在私用域keychain中，之后把该cfuuid返回。
        如果获取成功，直接返回。
 *
 *	@return	字符串，cfuuid 样例：“34B6AFC6-42B3-4ABC-A555-E0625EADA903”
 */
+(NSString*) customUUID;


@end
