 

#import "SdkKeychainItemWrapper.h"
#import <Security/Security.h>



@interface SdkKeychainItemWrapper (PrivateMethods)

- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert;
- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert;

- (void)writeToKeychain_MMMethodMMM;

@end

@implementation SdkKeychainItemWrapper

@synthesize keychainItemData_MMMPRO, genericPasswordQuery_MMMPRO;

- (id)initWithIdentifier_MMMethodMMM: (NSString *)identifier accessGroup_MMMethodMMM:(NSString *) accessGroup
{
    if (self = [super init])
    {
        
        
        
        genericPasswordQuery_MMMPRO = [[NSMutableDictionary alloc] init];
        
		[genericPasswordQuery_MMMPRO setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
        [genericPasswordQuery_MMMPRO setObject:identifier forKey:(id)kSecAttrGeneric];
		
		
		
		if (accessGroup != nil)
		{
#if TARGET_IPHONE_SIMULATOR
			
			
			
			
			
			
			
			
#else			
			[genericPasswordQuery_MMMPRO setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
#endif
		}
		
		
        [genericPasswordQuery_MMMPRO setObject:(id)kSecMatchLimitOne forKey:(id)kSecMatchLimit];
        [genericPasswordQuery_MMMPRO setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnAttributes];
        
        NSDictionary *tempQuery = [NSDictionary dictionaryWithDictionary:genericPasswordQuery_MMMPRO];
        
        NSMutableDictionary *outDictionary = nil;
        
        if (! SecItemCopyMatching((CFDictionaryRef)tempQuery, (CFTypeRef *)&outDictionary) == noErr)
        {
            
            [self resetKeychainItem_MMMethodMMM];
			
			
			[keychainItemData_MMMPRO setObject:identifier forKey:(id)kSecAttrGeneric];
			if (accessGroup != nil)
			{
#if TARGET_IPHONE_SIMULATOR
				
				
				
				
				
				
				
				
#else			
				[keychainItemData_MMMPRO setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
#endif
			}
		}
        else
        {
            
            self.keychainItemData_MMMPRO = [self secItemFormatToDictionary_MMMethodMMM:outDictionary];
        }
       
		[outDictionary release];
    }
    
	return self;
}

- (void)dealloc
{
    [keychainItemData_MMMPRO release];
    [genericPasswordQuery_MMMPRO release];
    
	[super dealloc];
}

- (void)setObject:(id)inObject forKey:(id)key 
{
    if (inObject == nil) {
        return;
    }
    id currentObject = [keychainItemData_MMMPRO objectForKey:key];
    if (![currentObject isEqual:inObject])
    {
        [keychainItemData_MMMPRO setObject:inObject forKey:key];
        [self writeToKeychain_MMMethodMMM];
    }
}

- (id)objectForKey:(id)key
{
    return [keychainItemData_MMMPRO objectForKey:key];
}

- (void)resetKeychainItem_MMMethodMMM
{
	OSStatus junk = noErr;
    if (!keychainItemData_MMMPRO) 
    {
        self.keychainItemData_MMMPRO = [[[NSMutableDictionary alloc] init] autorelease];
    }
    else if (keychainItemData_MMMPRO)
    {
        NSMutableDictionary *tempDictionary = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData_MMMPRO];
		junk = SecItemDelete((CFDictionaryRef)tempDictionary);
        NSAssert( junk == noErr || junk == errSecItemNotFound, wwwww_tag_wwwww_Problem_deleting_current_dictionary_ );
    }
    
    
    [keychainItemData_MMMPRO setObject:@"" forKey:(id)kSecAttrAccount];
    [keychainItemData_MMMPRO setObject:@"" forKey:(id)kSecAttrLabel];
    [keychainItemData_MMMPRO setObject:@"" forKey:(id)kSecAttrDescription];
    
	
    [keychainItemData_MMMPRO setObject:@"" forKey:(id)kSecValueData];
}

- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert
{
    
    
    
    
    NSMutableDictionary *returnDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    
    
    [returnDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    
    
	
    NSString *passwordString = [dictionaryToConvert objectForKey:(id)kSecValueData];
    [returnDictionary setObject:[passwordString dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];
    
    return returnDictionary;
}

- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert
{
    
    
    
    
    NSMutableDictionary *returnDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    
    
    [returnDictionary setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
    [returnDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    
    
    NSData *passwordData = NULL;
    if (SecItemCopyMatching((CFDictionaryRef)returnDictionary, (CFTypeRef *)&passwordData) == noErr)
    {
        
        [returnDictionary removeObjectForKey:(id)kSecReturnData];
        
        
        NSString *password = [[[NSString alloc]
                               initWithBytes:[passwordData bytes]
                               length:[passwordData length]encoding:NSUTF8StringEncoding] autorelease];
        [returnDictionary setObject:password forKey:(id)kSecValueData];
    }
    else
    {
        
        NSAssert(NO, wwwww_tag_wwwww_liveel_impact);
    }
    
    [passwordData release];
   
	return returnDictionary;
}

- (void)writeToKeychain_MMMethodMMM
{
    NSDictionary *attributes = NULL;
    NSMutableDictionary *updateItem = NULL;
	OSStatus result;
    
    if (SecItemCopyMatching((CFDictionaryRef)genericPasswordQuery_MMMPRO, (CFTypeRef *)&attributes) == noErr)
    {
        
        updateItem = [NSMutableDictionary dictionaryWithDictionary:attributes];
        
        [updateItem setObject:[genericPasswordQuery_MMMPRO objectForKey:(id)kSecClass] forKey:(id)kSecClass];
        
        
        NSMutableDictionary *tempCheck = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData_MMMPRO];
        [tempCheck removeObjectForKey:(id)kSecClass];
		
#if TARGET_IPHONE_SIMULATOR
		
		
		
		
		
		
		
		
		
		
		
		[tempCheck removeObjectForKey:(id)kSecAttrAccessGroup];
#endif
        
        
		
        result = SecItemUpdate((CFDictionaryRef)updateItem, (CFDictionaryRef)tempCheck);
        if (result != noErr) {
            NSLog(wwwww_tag_wwwww_archeoally_nuern,(int)result);
        }
    }
    else
    {
        
        result = SecItemAdd((CFDictionaryRef)[self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData_MMMPRO], NULL);
        if (result != noErr) {
            NSLog(wwwww_tag_wwwww_pylent_mandeous,(int)result);
        }
    }
}

@end
