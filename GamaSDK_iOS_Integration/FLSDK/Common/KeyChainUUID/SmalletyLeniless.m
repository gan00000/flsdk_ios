#import "SmalletyLeniless.h"
#import "ResHeader.h"
#import "EcoaciousResourcefold.h"

#import "BetySimiment.h"

@implementation SmalletyLeniless

+ (NSString*)getCustomCfUUID_MMMethodMMM
{
    
    
    return [BetySimiment customUUID_MMMethodMMM];
}

+ (NSString *)bundleSeedID_MMMethodMMM
{
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           kSecClassGenericPassword, kSecClass,
                           @"com.mw.bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound){
        status = SecItemAdd((CFDictionaryRef)query, (CFTypeRef *)&result);
    }
        
    if (status != errSecSuccess){
        return nil;
    }
        
    NSString *accessGroup = [(NSDictionary *)result objectForKey:kSecAttrAccessGroup];
    NSArray *components = [accessGroup componentsSeparatedByString:@"."];
    NSString *bundleSeedID = [[components objectEnumerator] nextObject];
    CFRelease(result);
    
    return bundleSeedID;
}

+(NSString *)getGamaCfUUIDFromPublicKeychain_MMMethodMMM
{
    
    NSString * result = nil;
    NSString * savedgetGamaCfUUID = nil;
    
    EcoaciousResourcefold *wrapper =
    [[EcoaciousResourcefold alloc] initWithIdentifier_MMMethodMMM:SDK_KEY_CHAIN_KEY
                                           accessGroup_MMMethodMMM:[NSString stringWithFormat:@"%@.com.mwKeyChainGroup", [SmalletyLeniless bundleSeedID_MMMethodMMM]]];
    
    savedgetGamaCfUUID = [wrapper objectForKey:(id)kSecValueData];
    
    if (savedgetGamaCfUUID != nil&& ![savedgetGamaCfUUID isEqualToString:@""])
    {
        result = savedgetGamaCfUUID;
    }
    
    else
    {
        
        CFUUIDRef cfuuid = CFUUIDCreate(kCFAllocatorDefault);
        NSString *cfuuidString =
        (NSString*)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, cfuuid));
        
        [wrapper setObject:cfuuidString forKey:(id)kSecValueData];
        
        result = cfuuidString;
    }
    [wrapper release];
    
    return result;
}

@end
