  

#import "CHMXTTTimerDelegate.h"
#import <Security/Security.h>

 

@interface CHMXTTTimerDelegate (PrivateMethods)
 
- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert;
- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert;

- (void)writeToKeychain_MMMethodMMM;

@end

@implementation CHMXTTTimerDelegate

@synthesize keychainItemData, genericPasswordQuery;

- (id)initWithIdentifier_MMMethodMMM: (NSString *)identifier accessGroup_MMMethodMMM:(NSString *) accessGroup;
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
            double v_subviews4 = 3150.0;
             if (@(v_subviews4).longValue < 54) {}
    [genericPasswordQuery release];
    
	[super dealloc];
            Boolean stringy = YES;
             if (!stringy) { __asm__("NOP"); }
}

-(Boolean)clearUncompleteResetupEncryptLocalizedOrder:(int)setupLevel helperLocal_fs:(NSString *)helperLocal_fs {
     float private_hFile = 3565.0;
    BOOL asynchronousDerelictHerd = NO;
    private_hFile = 9509;
    asynchronousDerelictHerd = private_hFile > 31;
         int temp_u_82 = (int)private_hFile;
     temp_u_82 -= 89;

    return asynchronousDerelictHerd;

}





- (void)setObject:(id)inObject forKey:(id)key 
{

         {
    [self clearUncompleteResetupEncryptLocalizedOrder:4761 helperLocal_fs:@"outofshape"];

}

    if (inObject == nil) return;
    id existingObject = [keychainItemData objectForKey:key];
    if (![existingObject isEqual:inObject])
    {
        [keychainItemData setObject:inObject forKey:key];
            NSArray * toastF = [NSArray arrayWithObjects:@(675), @(567), @(142), nil];
             if ([toastF containsObject:@"E"]) {}
        [self writeToKeychain_MMMethodMMM];
    }
}

-(NSString *)afterAgainTouchOriginFragment:(NSDictionary *)began {
    NSMutableString *jewelryValid = [NSMutableString new];

    return jewelryValid;

}





- (id)objectForKey:(id)key
{

         {
    [self afterAgainTouchOriginFragment:@{@"thesis":@(957), @"cerebral":@(490)}];

}

    return [keychainItemData objectForKey:key];
}

-(NSDictionary *)displayCharacterEffortfoldAresult{
     double orientation = 4254.0;
    NSMutableDictionary * windowsillJune = [NSMutableDictionary dictionary];
    orientation = 5865;
    [windowsillJune setObject: @(orientation) forKey:@"fascist"];
         int tmp_j_24 = (int)orientation;
     switch (tmp_j_24) {
          case 59: {
          tmp_j_24 += 61;
             break;

     }
          case 76: {
          tmp_j_24 += 54;
          tmp_j_24 *= 46;
             break;

     }
          case 94: {
          int h_17 = 1;
     int o_64 = 0;
     if (tmp_j_24 > o_64) {
         tmp_j_24 = o_64;
     }
     while (h_17 <= tmp_j_24) {
         h_17 += 1;
     int c_4 = h_17;
          switch (c_4) {
          case 61: {
                  break;

     }
          case 69: {
                  break;

     }
          case 92: {
          c_4 *= 71;
             break;

     }
          case 38: {
                  break;

     }
          case 67: {
          c_4 *= 49;
             break;

     }
          case 39: {
          c_4 -= 49;
                  break;

     }
          case 57: {
          c_4 += 38;
          c_4 *= 75;
             break;

     }
          case 16: {
          c_4 *= 80;
             break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 74: {
          int r_85 = 0;
     int v_7 = 1;
     if (tmp_j_24 > v_7) {
         tmp_j_24 = v_7;

     }
     for (int z_47 = 1; z_47 <= tmp_j_24; z_47++) {
         r_85 += z_47;
          if (z_47 > 0) {
          tmp_j_24 -=  z_47;

     }
     int u_100 = r_85;
          switch (u_100) {
          case 55: {
                  break;

     }
          case 42: {
          u_100 /= 59;
                  break;

     }
          case 33: {
          u_100 -= 43;
          u_100 += 46;
             break;

     }
          case 3: {
          u_100 *= 77;
                  break;

     }
          case 67: {
                  break;

     }
          case 100: {
          u_100 -= 49;
                  break;

     }
          case 93: {
          u_100 -= 65;
          u_100 -= 84;
             break;

     }
          case 8: {
          u_100 -= 87;
             break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
     default:
         break;

     }

    return windowsillJune;

}





- (void)resetKeychainItem_MMMethodMMM
{

   self.indicator_min = 6714.0;

   self.implTitleMore_string = @"margin";

	OSStatus currentv = noErr;
    if (!keychainItemData) 
    {
        self.keychainItemData = [[[NSMutableDictionary alloc] init] autorelease];

         {
    [self displayCharacterEffortfoldAresult];

}
    }
    else if (keychainItemData)
    {
        NSMutableDictionary *util = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData];
            NSDictionary * securityS = @{@"ethos":@(820), @"communicable":@(766), @"oppression":@(644)};
             if (securityS.count > 169) {}
		currentv = SecItemDelete((CFDictionaryRef)util);
            NSString * responsek = @"pupil";
        NSAssert( currentv == noErr || currentv == errSecItemNotFound, @"Problem deleting current dictionary." );
    }
    
    
    [keychainItemData setObject:@"" forKey:(id)kSecAttrAccount];
            double pple8 = 2893.0;
             for(NSInteger pple8_idx = 40; pple8_idx < @(pple8).intValue; pple8_idx--) { break; } 
    [keychainItemData setObject:@"" forKey:(id)kSecAttrLabel];
    [keychainItemData setObject:@"" forKey:(id)kSecAttrDescription];
    
	
    [keychainItemData setObject:@"" forKey:(id)kSecValueData];
            NSString * editingJ = @"participation";
             if ([editingJ isEqualToString:@"j"]) {}
}

- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert
{

    
    
    
    
    NSMutableDictionary *r_image = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    
    
    [r_image setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    
    
	
    NSString *resetup = [dictionaryToConvert objectForKey:(id)kSecValueData];
            NSArray * parent7 = @[@"reliance", @"recruit"];
             if ([parent7 containsObject:@"3"]) {}
    [r_image setObject:[resetup dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];
    
    return r_image;
}

- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert
{

    
    
    
    
    NSMutableDictionary *r_imageT = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    
    
    [r_imageT setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
            NSDictionary * scriptV = @{@"perseverance":[NSArray arrayWithObjects:@"frantic", @"judgement", @"propinquity", nil]};
    [r_imageT setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    
    
    NSData *dismiss = NULL;
    if (SecItemCopyMatching((CFDictionaryRef)r_imageT, (CFTypeRef *)&dismiss) == noErr)
    {
        
        [r_imageT removeObjectForKey:(id)kSecReturnData];
        
        
        NSString *bundle = [[[NSString alloc]
                               initWithBytes:[dismiss bytes]
                               length:[dismiss length]encoding:NSUTF8StringEncoding] autorelease];
            NSArray * regist5 = [NSArray arrayWithObjects:@(930), @(456), @(19), nil];
        [r_imageT setObject:bundle forKey:(id)kSecValueData];
    }
    else
    {
        
        NSAssert(NO, @"Serious error, no matching item found in the keychain.\n");
    }
    
    [dismiss release];
   
	return r_imageT;
}

-(double)inputModeGradientLen:(NSArray *)line alert:(float)alert {
     double flows = 648.0;
     float levelEncode = 7163.0;
    double capeAllowanceThreshold = 0;
    flows = flows / MAX(levelEncode, 1);
    capeAllowanceThreshold *= flows;
         int temp_v_48 = (int)flows;
     if (temp_v_48 == 839) {
          int b_37 = 0;
     int n_57 = 1;
     if (temp_v_48 > n_57) {
         temp_v_48 = n_57;

     }
     for (int b_98 = 1; b_98 <= temp_v_48; b_98++) {
         b_37 += b_98;
          temp_v_48 += b_98;
         break;

     }
     }
    levelEncode = levelEncode;
    capeAllowanceThreshold -= levelEncode;
         int g_19 = (int)levelEncode;
     int q_21 = 1;
     int f_79 = 1;
     if (g_19 > f_79) {
         g_19 = f_79;
     }
     while (q_21 <= g_19) {
         q_21 += 1;
     int s_57 = q_21;
          int p_71 = 0;
     for (int a_20 = s_57; a_20 > s_57 - 1; a_20--) {
         p_71 += a_20;
          s_57 -= a_20;
         break;

     }
         break;
     }

    return capeAllowanceThreshold;

}





- (void)writeToKeychain_MMMethodMMM
{

    NSDictionary *post = NULL;
            int successi = 5309;

         {
    [self inputModeGradientLen:@[@(609), @(91), @(608)] alert:1826.0];

}
             if (@(successi).doubleValue <= 200) {}
    NSMutableDictionary *s_subviewsItem = NULL;
            NSInteger wkwebf = 7610;
             for(int wkwebf_idx = 79; wkwebf_idx < @(wkwebf).intValue; wkwebf_idx--) { break; } 
	OSStatus foot;
    
    if (SecItemCopyMatching((CFDictionaryRef)genericPasswordQuery, (CFTypeRef *)&post) == noErr)
    {
        
        s_subviewsItem = [NSMutableDictionary dictionaryWithDictionary:post];
        
        [s_subviewsItem setObject:[genericPasswordQuery objectForKey:(id)kSecClass] forKey:(id)kSecClass];
        
        
        NSMutableDictionary *param = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData];
            NSInteger formatd = 8406;
             while (@(formatd).longLongValue <= 41) { break; }
        [param removeObjectForKey:(id)kSecClass];
		
#if TARGET_IPHONE_SIMULATOR
		
		
		
		
		
		
		
		
		
		
		
		[param removeObjectForKey:(id)kSecAttrAccessGroup];
#endif
        
        
		
        foot = SecItemUpdate((CFDictionaryRef)s_subviewsItem, (CFDictionaryRef)param);
        if (foot != noErr) {
            NSLog(@"Dangerous!!! Couldn't update the Keychain Item. result: %d",(int)foot);
        }
    }
    else
    {
        
        foot = SecItemAdd((CFDictionaryRef)[self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData], NULL);
        if (foot != noErr) {
            NSLog(@"Dangerous!!! Couldn't add the Keychain Item. result: %d",(int)foot);
        }
    }
}

@end
