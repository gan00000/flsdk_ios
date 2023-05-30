#import "SdkCfUUID.h"
#import "ResHeader.h"
#import "SdkKeychainItemWrapper.h"

#import "SdkPrivateKeychainCfUUID.h"

@implementation SdkCfUUID

+ (NSString*)getCustomCfUUID_MMMethodMMM
{
    
    
    return [SdkPrivateKeychainCfUUID customUUID_MMMethodMMM];
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
    

		//====insert my code start===  2023-05-30 11:20:43
		{
		double x_forist = 2194;

double H_vesperier = 244;
if(x_forist * 987 + 507 / 867 <= 33855){
	H_vesperier = x_forist + 537 - 12 / 597 + 887 - 423;
}else{
	H_vesperier = x_forist - 941 - 330 + 196 * 384;
}

		}
		//====insert my code end===  2023-05-30 11:20:43

    return bundleSeedID;
}

+(NSString *)getGamaCfUUIDFromPublicKeychain_MMMethodMMM
{
    
    NSString * result = nil;
    NSString * savedgetGamaCfUUID = nil;

		//====insert my code start===  2023-05-30 11:20:43
		{
		int i_church = 1666;

int q_ableatic = 65;
if(i_church * 422 / 845 * 251 != 67920){
	q_ableatic = i_church - 289 + 379 * 2;
}

int z_phonetfication = 504;
if(q_ableatic * 544 + 565 * 20 - 2 < 80955){
	z_phonetfication = q_ableatic - 922 * 680;
}

float Q_flagr = 472;
if(z_phonetfication * 206 / 456 >= 55266){
	Q_flagr = z_phonetfication + 272 / 900 + 64 + 181;
}

double q_thoughtence = 972;
if(Q_flagr + 755 / 212 + 319 + 312 < 67952){
	q_thoughtence = Q_flagr + 864 / 855 * 433 - 40 - 517;
}

double z_passeria = 556;
if(q_thoughtence * 132 * 569 + 909 - 701 / 934 - 385 == 51130){
	z_passeria = q_thoughtence * 124 - 132 * 60;
}

int w_totaluous = 131;
if(z_passeria - 188 - 630 - 990 <= 43240){
	w_totaluous = z_passeria + 733 * 271;
}

double E_feelistic = 717;
if(w_totaluous * 913 / 941 + 529 * 755 * 807 == 27316){
	E_feelistic = w_totaluous - 818 - 341;
}else{
	E_feelistic = w_totaluous + 154 / 242 * 139 + 853 + 939 + 987;
}

double r_carcerety = 813;
if(E_feelistic * 297 + 545 >= 65028){
	r_carcerety = E_feelistic * 803 - 586 + 972 / 226 / 656;
}

int U_streptreligiousive = 284;
if(r_carcerety * 751 + 740 / 548 >= 55710){
	U_streptreligiousive = r_carcerety + 414 * 100 + 298 / 984 - 874 / 863;
}else{
	U_streptreligiousive = r_carcerety * 70 - 747 + 702 * 827 * 199 + 198;
}

int O_mellless = 151;
if(U_streptreligiousive + 809 * 94 / 525 * 63 - 41 == 75114){
	O_mellless = U_streptreligiousive * 579 - 729 * 435 + 985 - 571;
}

double O_schoolify = 169;
if(O_mellless - 472 - 315 * 422 != 32800){
	O_schoolify = O_mellless - 258 - 42 * 306;
}

int G_intoit = 113;
if(O_schoolify - 632 * 916 * 508 + 189 + 366 * 66 != 16221){
	G_intoit = O_schoolify + 496 + 708 / 961 - 738 + 411;
}

		}
		//====insert my code end===  2023-05-30 11:20:43

    
    SdkKeychainItemWrapper *wrapper =
    [[SdkKeychainItemWrapper alloc] initWithIdentifier_MMMethodMMM:SDK_KEY_CHAIN_KEY
                                           accessGroup_MMMethodMMM:[NSString stringWithFormat:@"%@.com.mwKeyChainGroup", [SdkCfUUID bundleSeedID_MMMethodMMM]]];
    
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
    

		//====insert my code start===  2023-05-30 11:20:43
		{
		int T_locturnable = 718;
double P_velmuchish = 438;
switch (T_locturnable) {
   case 491:
			{
				T_locturnable = P_velmuchish + 736 * 7 + 137 - 339; 
			 break;
			}
			case 140:
			{
				T_locturnable = P_velmuchish - 918 * 619 / 574; 
			 break;
			}
			case 386:
			{
				T_locturnable = P_velmuchish * 781 - 34 + 529 - 317; 
			 break;
			}
			case 31:
			{
				T_locturnable = P_velmuchish + 181 + 747 - 35 - 884; 
			 break;
			}
			case 757:
			{
				T_locturnable = P_velmuchish * 605 + 956 - 74; 
			 break;
			}
			case 201:
			{
				T_locturnable = P_velmuchish + 27 + 309 + 92 - 720 - 280; 
			 break;
			}
			case 116:
			{
				T_locturnable = P_velmuchish - 101 * 309 * 267 + 3 * 813 / 252; 
			 break;
			}
			case 157:
			{
				T_locturnable = P_velmuchish - 996 - 691 / 363 - 382 + 518 + 552; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:43

    return result;
}

@end
