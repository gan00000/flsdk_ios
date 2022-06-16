//

#import "GamaPrivateKeychainCfUUID.h"
#import "GamaCentreInfo.h"


@implementation GamaPrivateKeychainCfUUID

+ (NSString*) GamaUID
{
    NSString *result = nil;
    result=[GamaPrivateKeychainCfUUID getCfUUID];
    
    if (result==nil)
    {
        [self saveCfUUID];
        result=[self getCfUUID];
    }
    return result;
}

//创建cfUUID并且保存
+(void)saveCfUUID
{
    //创建cfUUDI
    CFUUIDRef cfuuid = CFUUIDCreate(kCFAllocatorDefault);
    NSString *cfuuidString = (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, cfuuid));
    
    if (SDK_KEY_CHAIN_KEY.length > 0 && cfuuidString.length > 0)
    {
        // 一个mutable字典结构存储item信息
        NSMutableDictionary* dic = [NSMutableDictionary dictionary];
        // 确定所属的类class
        [dic setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
        // 设置其他属性attributes
        [dic setObject:SDK_KEY_CHAIN_KEY forKey:(id)kSecAttrAccount];
        // 添加密码 secValue 注意是object 是 NSData
        [dic setObject:[cfuuidString dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];
        // SecItemAdd
        OSStatus s = SecItemAdd((CFDictionaryRef)dic, NULL);
    }
}

+(NSString *)getCfUUID
{
    if (SDK_KEY_CHAIN_KEY.length >0)
    {
        // 查找条件：1.class 2.attributes 3.search option
        NSDictionary* query = [NSDictionary dictionaryWithObjectsAndKeys:
                               kSecClassGenericPassword,
                               kSecClass,
                               SDK_KEY_CHAIN_KEY,
                               kSecAttrAccount,
                               kCFBooleanTrue,
                               kSecReturnAttributes,
                               nil];
        CFTypeRef result = nil;
        // 先找到一个item
        OSStatus s = SecItemCopyMatching((CFDictionaryRef)query, &result);

        if (s == noErr)
        {
            // 继续查找item的secValue
            NSMutableDictionary* dic = [NSMutableDictionary dictionaryWithDictionary:result];
            // 存储格式
            [dic setObject:(id)kCFBooleanTrue forKey:kSecReturnData];
            // 确定class
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
