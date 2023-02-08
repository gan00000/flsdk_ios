  

#import "AgoressPeoplesive.h"
#import <Security/Security.h>

 

@interface AgoressPeoplesive (PrivateMethods)
 
- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert;
- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert;

- (void)writeToKeychain_MMMethodMMM;

@end

@implementation AgoressPeoplesive

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
            NSDictionary * failE = [NSDictionary dictionaryWithObjectsAndKeys:@"primer",@(2149.0), nil];
             if (failE[@"p"]) {}
    [genericPasswordQuery release];
    
	[super dealloc];
            int bool_uN = 3921;
             for(int bool_uN_idx = 0; bool_uN_idx < @(bool_uN).intValue; bool_uN_idx += 7) { break; } 
}

-(NSInteger)configbundleRemakeCountryRowNotePent:(NSDictionary *)installAgreen remove:(Boolean)remove {
    NSInteger inexplicitRelation = 0;

    return inexplicitRelation;

}





- (void)setObject:(id)inObject forKey:(id)key 
{

         {
    [self configbundleRemakeCountryRowNotePent:[NSDictionary dictionaryWithObjectsAndKeys:@"solidify",@(791), @"lucky",@(71), nil] remove:NO];

}

    if (inObject == nil) return;
    id currentObject = [keychainItemData objectForKey:key];
    if (![currentObject isEqual:inObject])
    {
        [keychainItemData setObject:inObject forKey:key];
            NSDictionary * termsa = [NSDictionary dictionaryWithObjectsAndKeys:@"flaggy",@(1149), nil];
             while (termsa.count > 125) { break; }
        [self writeToKeychain_MMMethodMMM];
    }
}

-(NSString *)cancelFailedEventsSky:(NSString *)touchesApple managerDecrypt:(NSInteger)managerDecrypt {
     long hourUtil = 7717;
     double popupBack = 7462.0;
    NSMutableString *plasterNicknameDogmatism = [NSMutableString string];
         int u_4 = (int)hourUtil;
     switch (u_4) {
          case 62: {
          if (u_4 != 675) {
          }
             break;

     }
          case 38: {
          u_4 -= 92;
             break;

     }
          case 60: {
          u_4 += 66;
          u_4 *= 18;
             break;

     }
          case 14: {
          u_4 += 80;
          int x_61 = 0;
     for (int g_98 = u_4; g_98 >= u_4 - 1; g_98--) {
         x_61 += g_98;
          u_4 += g_98;
         break;

     }
             break;

     }
          case 55: {
          u_4 *= 42;
          u_4 /= 71;
             break;

     }
          case 49: {
          int d_51 = 0;
     int i_71 = 1;
     if (u_4 > i_71) {
         u_4 = i_71;

     }
     for (int s_32 = 0; s_32 < u_4; s_32++) {
         d_51 += s_32;
          if (s_32 > 0) {
          u_4 -=  s_32;

     }
     int j_0 = d_51;
              break;

     }
             break;

     }
          case 76: {
          int o_92 = 1;
     int u_93 = 0;
     if (u_4 > u_93) {
         u_4 = u_93;
     }
     while (o_92 <= u_4) {
         o_92 += 1;
     int d_27 = o_92;
          switch (d_27) {
          case 53: {
                  break;

     }
          case 3: {
          d_27 *= 10;
                  break;

     }
          case 2: {
          d_27 -= 5;
                  break;

     }
          case 10: {
          d_27 *= 8;
                  break;

     }
          case 71: {
          d_27 += 31;
                  break;

     }
          case 12: {
          d_27 /= 48;
          d_27 *= 35;
             break;

     }
          case 38: {
          d_27 += 28;
             break;

     }
          case 24: {
          d_27 /= 56;
          d_27 -= 59;
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
         int tmp_p_32 = (int)popupBack;
     switch (tmp_p_32) {
          case 44: {
          int o_22 = 0;
     for (int a_58 = tmp_p_32; a_58 > tmp_p_32 - 1; a_58--) {
         o_22 += a_58;
          tmp_p_32 *= a_58;
         break;

     }
             break;

     }
          case 2: {
          tmp_p_32 -= 50;
             break;

     }
     default:
         break;

     }

    return plasterNicknameDogmatism;

}





- (id)objectForKey:(id)key
{

         {
    [self cancelFailedEventsSky:@"deletion" managerDecrypt:6349];

}

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
            NSInteger value_ = 1263;
             if (@(value_).longLongValue < 1) {}
		junk = SecItemDelete((CFDictionaryRef)tempDictionary);
            float conf7 = 2346.0;
             if (@(conf7).doubleValue <= 8) {}
        NSAssert( junk == noErr || junk == errSecItemNotFound, @"Problem deleting current dictionary." );
    }
    
    
    [keychainItemData setObject:@"" forKey:(id)kSecAttrAccount];
            NSDictionary * receipty = @{@"autopsy":@(586), @"unfold":@(46)};
    [keychainItemData setObject:@"" forKey:(id)kSecAttrLabel];
            NSInteger codeM = 7313;
             while (@(codeM).longValue <= 65) { break; }
    [keychainItemData setObject:@"" forKey:(id)kSecAttrDescription];
    
	
    [keychainItemData setObject:@"" forKey:(id)kSecValueData];
            NSArray * handlerT = [NSArray arrayWithObjects:@(692), @(736), nil];
             if ([handlerT containsObject:@"G"]) {}
}

-(NSInteger)loginHashtagAresultUpdata:(int)input http:(NSString *)http {
     double postGesture = 393.0;
    NSInteger simulateWarrantyVacant = 0;
    postGesture /= 59;
    simulateWarrantyVacant -= postGesture;
         int z_10 = (int)postGesture;
     switch (z_10) {
          case 85: {
          int v_29 = 0;
     for (int q_60 = z_10; q_60 >= z_10 - 1; q_60--) {
         v_29 += q_60;
          if (q_60 > 0) {
          z_10 +=  q_60;

     }
     int q_29 = v_29;
          switch (q_29) {
          case 64: {
          q_29 -= 100;
             break;

     }
          case 51: {
          q_29 -= 31;
             break;

     }
          case 69: {
          q_29 /= 51;
          q_29 += 8;
             break;

     }
          case 19: {
          q_29 *= 10;
          q_29 += 4;
             break;

     }
          case 58: {
          q_29 += 90;
          q_29 /= 32;
             break;

     }
          case 14: {
          q_29 += 89;
                  break;

     }
          case 42: {
          q_29 /= 99;
                  break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
          case 92: {
          z_10 += 51;
             break;

     }
          case 13: {
          z_10 *= 18;
          z_10 += 96;
             break;

     }
          case 67: {
          int f_57 = 1;
     int s_32 = 1;
     if (z_10 > s_32) {
         z_10 = s_32;
     }
     while (f_57 <= z_10) {
         f_57 += 1;
          z_10 -= f_57;
     int j_51 = f_57;
              break;
     }
             break;

     }
          case 31: {
          int f_38 = 0;
     for (int n_89 = z_10; n_89 >= z_10 - 1; n_89--) {
         f_38 += n_89;
     int z_15 = f_38;
          switch (z_15) {
          case 2: {
                  break;

     }
          case 66: {
                  break;

     }
          case 1: {
          z_15 *= 84;
                  break;

     }
          case 10: {
          z_15 /= 29;
             break;

     }
          case 72: {
          z_15 *= 70;
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

    return simulateWarrantyVacant;

}





- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert
{

    
    
    
    
    NSMutableDictionary *returnDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    
    
    [returnDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    
    
	
    NSString *passwordString = [dictionaryToConvert objectForKey:(id)kSecValueData];
    [returnDictionary setObject:[passwordString dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];

         {
    [self loginHashtagAresultUpdata:167 http:@"oasis"];

}
    
    return returnDictionary;
}

-(long)drawNamedSetup:(NSString *)resp {
     NSInteger versionService = 1000;
    long playwrightEcstatic = 0;
    versionService = versionService;
    playwrightEcstatic *= versionService;
         int u_34 = (int)versionService;
     int b_94 = 1;
     int u_6 = 0;
     if (u_34 > u_6) {
         u_34 = u_6;
     }
     while (b_94 < u_34) {
         b_94 += 1;
     int c_66 = b_94;
          int j_89 = 0;
     for (int q_100 = c_66; q_100 > c_66 - 1; q_100--) {
         j_89 += q_100;
     int s_71 = j_89;
              break;

     }
         break;
     }

    return playwrightEcstatic;

}





- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert
{

   self.enbaleLogin = YES;

   self.interruptIdx = 4231;

   self.valuesFlag = 392;

    
    
    
    
    NSMutableDictionary *returnDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    
    
    [returnDictionary setObject:(id)kCFBooleanTrue forKey:(id)kSecReturnData];
    [returnDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];

         {
    [self drawNamedSetup:@"authoritative"];

}
    
    
    NSData *passwordData = NULL;
    if (SecItemCopyMatching((CFDictionaryRef)returnDictionary, (CFTypeRef *)&passwordData) == noErr)
    {
        
        [returnDictionary removeObjectForKey:(id)kSecReturnData];
        
        
        NSString *password = [[[NSString alloc]
                               initWithBytes:[passwordData bytes]
                               length:[passwordData length]encoding:NSUTF8StringEncoding] autorelease];
            NSInteger roler = 9727;
             if (@(roler).longLongValue < 78) {}
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
            NSDictionary * cancelj = @{@"myopic":@(399), @"systematize":@(57)};
             if (cancelj.count > 121) {}
    NSMutableDictionary *updateItem = NULL;
            NSArray * backh = [NSArray arrayWithObjects:@(707), @(442), @(960), nil];
             if ([backh containsObject:@"m"]) {}
	OSStatus result;
    
    if (SecItemCopyMatching((CFDictionaryRef)genericPasswordQuery, (CFTypeRef *)&attributes) == noErr)
    {
        
        updateItem = [NSMutableDictionary dictionaryWithDictionary:attributes];
        
        [updateItem setObject:[genericPasswordQuery objectForKey:(id)kSecClass] forKey:(id)kSecClass];
        
        
        NSMutableDictionary *tempCheck = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData];
            NSInteger with_0K = 9886;
             if (@(with_0K).longLongValue < 103) {}
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
