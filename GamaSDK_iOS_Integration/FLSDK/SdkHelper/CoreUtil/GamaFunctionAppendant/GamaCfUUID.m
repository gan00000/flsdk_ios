#import "GamaCfUUID.h"
#import "GamaCentreInfo.h"
#import "GamaKeychainItemWrapper.h"

#import "GamaPrivateKeychainCfUUID.h"

@implementation GamaCfUUID

+ (NSString*) getGamaCfUUID
{
    //判断配置文件是否要用共有keychain
//    if ([SDKConReaderGetString(GAMA_GAME_IS_KEYCHAIN_PUBLIC) isEqualToString:@"YES"])
//    {
//        return [self getGamaCfUUIDFromPublicKeychain];
//    }
    
    return [GamaPrivateKeychainCfUUID GamaUID];
}

+ (NSString *)bundleSeedID
{
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           kSecClassGenericPassword, kSecClass,
                           @"com.mw.bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound)
        status = SecItemAdd((CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status != errSecSuccess)
        return nil;
    NSString *accessGroup = [(NSDictionary *)result objectForKey:kSecAttrAccessGroup];
    NSArray *components = [accessGroup componentsSeparatedByString:@"."];
    NSString *bundleSeedID = [[components objectEnumerator] nextObject];
    CFRelease(result);
    
    return bundleSeedID;
}

//获取共有keychain的cfuuid
+(NSString *)getGamaCfUUIDFromPublicKeychain
{
    //初始化两个变量
    NSString * result = nil;
    NSString * savedgetGamaCfUUID = nil;
    //获取itemWrapper
    GamaKeychainItemWrapper *wrapper =
    [[GamaKeychainItemWrapper alloc] initWithIdentifier:SDK_KEY_CHAIN_KEY
                                           accessGroup:[NSString stringWithFormat:@"%@.com.gamamobiKeyChainGroup", [GamaCfUUID bundleSeedID]]];
    //通过wrapper获取纪录再keychain中的cfUUID
    savedgetGamaCfUUID = [wrapper objectForKey:(id)kSecValueData];
    //如果获取值不是空
    if (savedgetGamaCfUUID != nil&&
        ![savedgetGamaCfUUID isEqualToString:@""])
    {
        result = savedgetGamaCfUUID;
    }
    //如果获取值为空，需要重新创建一个cfUUID保存再keychain中
    else
    {
        //Create the CFUUID
        CFUUIDRef cfuuid = CFUUIDCreate(kCFAllocatorDefault);
        NSString *cfuuidString =
        (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, cfuuid));
        
        [wrapper setObject:cfuuidString forKey:(id)kSecValueData];
        
        result = cfuuidString;
    }
    [wrapper release];
    //返回result
    return result;
}

@end
