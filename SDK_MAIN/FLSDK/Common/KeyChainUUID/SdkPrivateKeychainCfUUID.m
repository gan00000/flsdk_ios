

#import "SdkPrivateKeychainCfUUID.h"
#import "ResHeader.h"


@implementation SdkPrivateKeychainCfUUID

+ (NSString*)customUUID_MMMethodMMM
{
    NSString *result = nil;
    result=[SdkPrivateKeychainCfUUID getCfUUID_MMMethodMMM];
    
    if (result==nil)
    {
        [self saveCfUUID_MMMethodMMM];
        result=[self getCfUUID_MMMethodMMM];
    }
    return result;
}

+(void)saveCfUUID_MMMethodMMM
{
    
    CFUUIDRef cfuuid = CFUUIDCreate(kCFAllocatorDefault);
    NSString *cfuuidString = (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, cfuuid));
    
    if (SDK_KEY_CHAIN_KEY.length > 0 && cfuuidString.length > 0)
    {
        
        NSMutableDictionary* dic = [NSMutableDictionary dictionary];
        
        [dic setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
        
        [dic setObject:SDK_KEY_CHAIN_KEY forKey:(id)kSecAttrAccount];
        
        [dic setObject:[cfuuidString dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];
        
        OSStatus s = SecItemAdd((CFDictionaryRef)dic, NULL);
    }
}

+(NSString *)getCfUUID_MMMethodMMM
{
    if (SDK_KEY_CHAIN_KEY.length >0)
    {
        
        NSDictionary* query = [NSDictionary dictionaryWithObjectsAndKeys:
                               kSecClassGenericPassword,
                               kSecClass,
                               SDK_KEY_CHAIN_KEY,
                               kSecAttrAccount,
                               kCFBooleanTrue,
                               kSecReturnAttributes,
                               nil];
        CFTypeRef result = nil;
        
        OSStatus s = SecItemCopyMatching((CFDictionaryRef)query, &result);

        if (s == noErr)
        {
            
            NSMutableDictionary* dic = [NSMutableDictionary dictionaryWithDictionary:result];
            
            [dic setObject:(id)kCFBooleanTrue forKey:kSecReturnData];
            
            [dic setObject:[query objectForKey:kSecClass] forKey:kSecClass];
            NSData* data = [[NSData alloc]init];
            if (SecItemCopyMatching((CFDictionaryRef)dic, (CFTypeRef*)&data) == noErr)
            {
                if (data.length)
                {
                    return [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
                }
            }
        }
    }
    return nil;
}

@end
