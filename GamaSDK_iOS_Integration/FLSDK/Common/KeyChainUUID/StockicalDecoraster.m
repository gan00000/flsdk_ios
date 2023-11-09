 

#import "StockicalDecoraster.h"
#import <Security/Security.h>



@interface StockicalDecoraster (PrivateMethods)

- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert;
- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert;

- (void)writeToKeychain_MMMethodMMM;

@end

@implementation StockicalDecoraster

@synthesize keychainItemData, genericPasswordQuery;

- (id)initWithIdentifier_MMMethodMMM: (NSString *)identifier accessGroup_MMMethodMMM:(NSString *) accessGroup
{
    if (self = [super init])
    {
        
        
        
        genericPasswordQuery = [[NSMutableDictionary alloc] init];
        
		[genericPasswordQuery setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
        [genericPasswordQuery setObject:identifier forKey:(id)kSecAttrGeneric];
		
		
		
		if (accessGroup != nil)
		{
#if TARGET_IPHONE_SIMULATOR
			
			
			
			
			
			
			
			
#else			
			[genericPasswordQuery setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
#endif
		}
		
		
        [genericPasswordQuery setObject:(id)kSecMatchLimitOne forKey:(id)kSecMatchLimit];
        [genericPasswordQuery setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnAttributes];
        
        NSDictionary *tempQuery = [NSDictionary dictionaryWithDictionary:genericPasswordQuery];
        
        NSMutableDictionary *outDictionary = nil;
        
        if (! SecItemCopyMatching((CFDictionaryRef)tempQuery, (CFTypeRef *)&outDictionary) == noErr)
        {
            
            [self resetKeychainItem_MMMethodMMM];
			
			
			[keychainItemData setObject:identifier forKey:(id)kSecAttrGeneric];
			if (accessGroup != nil)
			{
#if TARGET_IPHONE_SIMULATOR
				
				
				
				
				
				
				
				
#else			
				[keychainItemData setObject:accessGroup forKey:(id)kSecAttrAccessGroup];
#endif
			}
		}
        else
        {
            
            self.keychainItemData = [self secItemFormatToDictionary_MMMethodMMM:outDictionary];
        }
       
		[outDictionary release];
    }
    
	return self;
}

- (void)dealloc
{
    [keychainItemData release];
    [genericPasswordQuery release];
    
	[super dealloc];
}

- (void)setObject:(id)inObject forKey:(id)key 
{
    if (inObject == nil) {
        return;
    }
    id currentObject = [keychainItemData objectForKey:key];
    if (![currentObject isEqual:inObject])
    {
        [keychainItemData setObject:inObject forKey:key];
        [self writeToKeychain_MMMethodMMM];
    }
}

- (id)objectForKey:(id)key
{
    return [keychainItemData objectForKey:key];
}

- (void)resetKeychainItem_MMMethodMMM
{
	OSStatus junk = noErr;
    if (!keychainItemData) 
    {
        self.keychainItemData = [[[NSMutableDictionary alloc] init] autorelease];
    }
    else if (keychainItemData)
    {
        NSMutableDictionary *tempDictionary = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData];
		junk = SecItemDelete((CFDictionaryRef)tempDictionary);
        NSAssert( junk == noErr || junk == errSecItemNotFound, @"Problem deleting current dictionary." );
    }
    
    
    [keychainItemData setObject:@"" forKey:(id)kSecAttrAccount];
    [keychainItemData setObject:@"" forKey:(id)kSecAttrLabel];
    [keychainItemData setObject:@"" forKey:(id)kSecAttrDescription];
    
	
    [keychainItemData setObject:@"" forKey:(id)kSecValueData];
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
        
        NSAssert(NO, @"Serious error, no matching item found in the keychain.\n");
    }
    
    [passwordData release];
   
	return returnDictionary;
}

- (void)writeToKeychain_MMMethodMMM
{
    NSDictionary *attributes = NULL;
    NSMutableDictionary *updateItem = NULL;
	OSStatus result;
    
    if (SecItemCopyMatching((CFDictionaryRef)genericPasswordQuery, (CFTypeRef *)&attributes) == noErr)
    {
        
        updateItem = [NSMutableDictionary dictionaryWithDictionary:attributes];
        
        [updateItem setObject:[genericPasswordQuery objectForKey:(id)kSecClass] forKey:(id)kSecClass];
        
        
        NSMutableDictionary *tempCheck = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData];
        [tempCheck removeObjectForKey:(id)kSecClass];
		
#if TARGET_IPHONE_SIMULATOR
		
		
		
		
		
		
		
		
		
		
		
		[tempCheck removeObjectForKey:(id)kSecAttrAccessGroup];
#endif
        
        
		
        result = SecItemUpdate((CFDictionaryRef)updateItem, (CFDictionaryRef)tempCheck);
        if (result != noErr) {
            NSLog(@"Dangerous!!! Couldn't update the Keychain Item. result: %d",(int)result);
        }
    }
    else
    {
        
        result = SecItemAdd((CFDictionaryRef)[self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData], NULL);
        if (result != noErr) {
            NSLog(@"Dangerous!!! Couldn't add the Keychain Item. result: %d",(int)result);
        }
    }
}

@end
