

#import <Foundation/Foundation.h>

@interface TestastFatuular : NSObject

/**
 *	@brief	获取Gama保存的cfuuid
    根据配置文件，判断读取保存在共有keychain中的cfUUid，还是私用keychain中的cfuuid
    判断文件的key：“_GAME_IS_KEYCHAIN_PUBLIC”
 *
 *	@return	cfuuid字符串，样例：“34B6AFC6-42B3-4ABC-A555-E0625EADA903”
 */
+ (NSString *)getCustomCfUUID;

+ (NSString *)bundleSeedID;
@end
