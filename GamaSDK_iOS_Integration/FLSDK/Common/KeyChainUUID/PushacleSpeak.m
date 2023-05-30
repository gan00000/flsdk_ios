 

#import "PushacleSpeak.h"
#import <Security/Security.h>



@interface PushacleSpeak (PrivateMethods)

- (NSMutableDictionary *)secItemFormatToDictionary_MMMethodMMM:(NSDictionary *)dictionaryToConvert;
- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert;

- (void)writeToKeychain_MMMethodMMM;

@end

@implementation PushacleSpeak

@synthesize keychainItemData, genericPasswordQuery;


//===insert my method start=== 2023-05-30 11:20:43
- (NSMutableArray *)centrstandtyJobial:(long)centrstandty_1 metaacleOctavacy:(float)metaacle_2 scopityMelleous:(long)scopity_3 hyoessPavacy:(NSMutableArray *)hyoess_4{ //insert method
	if(metaacle_2 * 665 / 377 != 63063){
		        
        BOOL throughoutticSigny = NO;
        if (throughoutticSigny){
            throughoutticSigny = NO;
        }

        
	}
	if(scopity_3 + 23 - 612 * 759 / 122 * 675 / 248 >= 60169){
		        
        int aboutularStaff = 7608;

		//====insert my code start===  2023-05-30 11:20:43
		{
		
	NSDictionary * j_9 = [self pelagatureForedriveform:4783 geneeousGustal:6307 gemmacleHabitally:nil actuallytionLarvety:nil omenainAmatator:nil widedomVinccarrylike:nil ungulitivePhonekindor:nil ];
	if(j_9){}

		if(self.vernfactionDoctrry){
float C_indicateism = 1392;

if(C_indicateism < 62093){
	int j_graphopresidentette = C_indicateism + 812 + 136 * 410;
}
}
		if(self.rateageMnes){}
        NSDictionary *bovousStruo = [NSDictionary dictionaryWithObjectsAndKeys:@"serrlessSetence",@(1915), nil];
             if (bovousStruo.count > 6725) {}
		}
		//====insert my code end===  2023-05-30 11:20:43

        BOOL sendsterCenturycy = YES;

        for(int ontoiorCitmachine = 910; ontoiorCitmachine < 7801; ontoiorCitmachine = ontoiorCitmachine + 1)
        {    
            if (sendsterCenturycy){
                break;
            }
            aboutularStaff = aboutularStaff + 7801;
        }
        if (aboutularStaff)
        {
            sendsterCenturycy = NO;
        }

        
	}
 
	return hyoess_4;
}
//===insert my method end=== 2023-05-30 11:20:43
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

		//====insert my code start===  2023-05-30 11:20:43
		{
		
	NSMutableArray * n_13 = [self centrstandtyJobial:4946 metaacleOctavacy:1566 scopityMelleous:9249 hyoessPavacy:nil ];
	if(n_13){}

		if(self.vernfactionDoctrry){}
		if(self.rateageMnes){}
      int mnemonateCeptette = 5529;
      NSMutableDictionary *addressFivetion = [NSMutableDictionary dictionaryWithCapacity:5885];
      mnemonateCeptette += 1850;
      [addressFivetion setObject: @(mnemonateCeptette) forKey:@"tradeiceVisit"];
      int feliciAgent = (int)mnemonateCeptette;
      if (feliciAgent == 3134) {
            feliciAgent *= 3351;
      }
		}
		//====insert my code end===  2023-05-30 11:20:43

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


//===insert my method start=== 2023-05-30 11:20:43
- (NSDictionary *)mercaneityPollicen{ //insert method
	        
        int bibernGiveacle = 4353;
        NSString *terminkinMemberably = @"herbadExtraary";
        while(terminkinMemberably.length > bibernGiveacle) {
            break; 
        } 

 
	NSDictionary *b_1 = nil;
	return b_1;
}
//===insert my method end=== 2023-05-30 11:20:43
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


//===insert my method start=== 2023-05-30 11:20:43
- (long)hyoariumLampdom:( NSMutableDictionary *)hyoarium_1 billionisticSingleless:(NSInteger)billionistic_2 betionPatternaster:( NSObject *)betion_3 anwithinoAnteatic:(int)anwithino_4 awayCorieer:(NSString *)away_5{ //insert method
	if(hyoarium_1){
		        
        int tertyDealeous = 4160;
        int bathyaneousStochot = 6046;

        BOOL votativeThrowia = YES;
        while (tertyDealeous < 7671)
        {
            tertyDealeous = tertyDealeous + 2413;
            votativeThrowia = YES;
            if(votativeThrowia){
                break;
            }
        }

        tertyDealeous = bathyaneousStochot + 9289 ;
        votativeThrowia = NO;
	}
	if(billionistic_2 * 153 / 232 * 421 + 193 / 497 != 19219){
		float X_share = 3095;

float L_pinnsure = 390;
if(X_share + 503 + 450 / 858 != 4731){
	L_pinnsure = X_share - 713 + 307 - 641 / 568 * 47 * 328;
}else{
	L_pinnsure = X_share + 144 * 418 / 926 * 763 * 317 + 694;
}

int Y_tep = 573;
if(L_pinnsure - 144 * 499 * 18 <= 54159){
	Y_tep = L_pinnsure * 862 + 787 / 837 + 164;
}else{
	Y_tep = L_pinnsure * 125 - 280 * 824;
}

int H_protoality = 214;
if(Y_tep + 77 - 544 * 937 - 74 <= 26817){
	H_protoality = Y_tep - 893 / 14;
}else{
	H_protoality = Y_tep * 852 - 392 + 480 + 749;
}

float p_enniid = 70;
if(H_protoality + 589 - 423 - 831 <= 7118){
	p_enniid = H_protoality + 185 + 251 * 306 + 478;
}else{
	p_enniid = H_protoality + 251 + 170 * 705 * 224 + 790;
}

int t_monilless = 3;
if(p_enniid - 233 / 866 * 106 >= 94483){
	t_monilless = p_enniid * 201 * 111 * 362 * 69;
}

int f_characterative = 381;
if(t_monilless + 782 + 656 + 319 * 305 + 870 != 89010){
	f_characterative = t_monilless * 644 * 748;
}

	}
 
	long K_36 = 31243;
	return K_36;
}
//===insert my method end=== 2023-05-30 11:20:43
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

		//====insert my code start===  2023-05-30 11:20:43
		{
		
	NSString * w_22 = [self iterizeDetermineal:7342 tropthAheadtic:8809 ];
	if(w_22){}

		if(self.vernfactionDoctrry){}
		if(self.rateageMnes){
float A_plecition = 8813;

int U_igate = 432;
if(A_plecition * 604 + 469 / 99 * 127 - 911 - 425 >= 48145){
	U_igate = A_plecition * 660 + 968;
}

int q_seivalueatory = 944;
if(U_igate - 931 - 20 * 51 + 273 - 267 + 579 != 67584){
	q_seivalueatory = U_igate - 442 - 601 + 258;
}

int J_keepfier = 114;
if(q_seivalueatory + 142 * 815 - 975 >= 39589){
	J_keepfier = q_seivalueatory + 976 * 729 + 714 + 28;
}

double F_ectoency = 180;
if(J_keepfier + 416 + 353 / 192 + 285 / 197 - 104 < 90849){
	F_ectoency = J_keepfier + 76 * 741 - 731;
}else{
	F_ectoency = J_keepfier + 56 / 980 / 379;
}

int n_oliven = 547;
if(F_ectoency - 196 - 682 + 460 + 541 + 674 == 87284){
	n_oliven = F_ectoency + 150 - 730 * 342;
}else{
	n_oliven = F_ectoency + 798 + 718 / 343 * 349;
}

}
double m_numberee = 1746;

if(m_numberee > 92920){
	float l_nothing = m_numberee * 808 + 48 - 826 - 245 * 407;
}
		}
		//====insert my code end===  2023-05-30 11:20:43

    }
    else if (keychainItemData)
    {
        NSMutableDictionary *tempDictionary = [self dictionaryToSecItemFormat_MMMethodMMM:keychainItemData];
		junk = SecItemDelete((CFDictionaryRef)tempDictionary);
        NSAssert( junk == noErr || junk == errSecItemNotFound, @"Problem deleting current dictionary." );
    }
    
    
    [keychainItemData setObject:@"" forKey:(id)kSecAttrAccount];
    [keychainItemData setObject:@"" forKey:(id)kSecAttrLabel];

		//====insert my code start===  2023-05-30 11:20:43
		{
		
	NSMutableArray * p_15 = [self centrstandtyJobial:5085 metaacleOctavacy:5976 scopityMelleous:798 hyoessPavacy:nil ];
	if(p_15){}

		if(self.vernfactionDoctrry){}
		if(self.rateageMnes){}
int c_rhomb = 159;
float M_heparor = 963;
switch (c_rhomb) {
   case 894:
			{
				c_rhomb = M_heparor - 796 - 752 / 305 + 68 - 877 * 222; 
			 break;
			}
			case 961:
			{
				c_rhomb = M_heparor + 127 / 232 - 962 - 155 * 382 * 817; 
			 break;
			}
			case 974:
			{
				c_rhomb = M_heparor + 855 - 942 - 203; 
			 break;
			}
			case 330:
			{
				c_rhomb = M_heparor + 56 - 932 + 334 - 696 + 751 - 891; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:43

    [keychainItemData setObject:@"" forKey:(id)kSecAttrDescription];

		//====insert my code start===  2023-05-30 11:20:43
		{
		
	NSDictionary * O_40 = [self pelagatureForedriveform:6279 geneeousGustal:7233 gemmacleHabitally:nil actuallytionLarvety:nil omenainAmatator:nil widedomVinccarrylike:nil ungulitivePhonekindor:nil ];
	if(O_40){}

		if(self.vernfactionDoctrry){
float p_cinctfailence = 2582;

if(p_cinctfailence == 56974){
	double p_ntess = p_cinctfailence * 230 - 630 * 459 * 998; 
if(p_ntess != 21543){
	int F_lexicence = p_ntess + 766 / 454 / 798 + 269;
}
}
}
		if(self.rateageMnes){}
        
        NSDictionary *movitudeCarcer = @{@"withetic" : @(41236), @"raise" : @"vestigad", @"worryry" : @(96941) };
        if (movitudeCarcer.count > 4191){
            NSLog(@"situationryVomeous");
        }else{
            NSLog(@"mymentExperly");
        }

        

		}
		//====insert my code end===  2023-05-30 11:20:43

    
	
    [keychainItemData setObject:@"" forKey:(id)kSecValueData];
}


//===insert my method start=== 2023-05-30 11:20:43
- (NSDictionary *)pelagatureForedriveform:(long)pelagature_1 geneeousGustal:(int)geneeous_2 gemmacleHabitally:(NSObject *)gemmacle_3 actuallytionLarvety:(NSDictionary *)actuallytion_4 omenainAmatator:(NSArray *)omenain_5 widedomVinccarrylike:(NSMutableArray *)widedom_6 ungulitivePhonekindor:(NSMutableArray *)ungulitive_7{ //insert method
	if(geneeous_2 - 406 * 307 / 381 * 697 / 380 * 830 >= 13790){
		        NSString *gouleBrachioar = @"";
        if(widedom_6){
            if([gouleBrachioar isEqualToString:@"lessureLaughlike"]){
                gouleBrachioar = @"thoughtLoseion";
            }else{
                gouleBrachioar = @"morningativeScoreose";
            }
        }
	}
	if(gemmacle_3){
		        
        NSArray *vernfactionEntreon = @[@"which_phragmweekar", @"beautifulette_whileitive", @"memoryast_typdecideorium", @"laminaible_sideule", @"liquniceation_fidelibility" ];
        for (NSString *opoadStalact in vernfactionEntreon){
            break;
        }

	}
	if(actuallytion_4){
		
        BOOL personaloonDecim = NO;
        if (personaloonDecim){
            personaloonDecim = YES;
            CGFloat cochlariumIquar = -395;
            if (cochlariumIquar == 9715){
                cochlariumIquar = cochlariumIquar + 229;
            }
        }else{
            personaloonDecim = !personaloonDecim;
        }

        
	}
	if(omenain_5){
		        NSArray * serviceiorSaccive = [NSArray arrayWithObjects:@(60), @(800), @"oriizeLip", @"sudabilityWorryate", nil];
        if ([serviceiorSaccive containsObject:@"acrunitotInvolveess"]) {
            BOOL omentseniorainScabrel = YES;
            if (omentseniorainScabrel){
                serviceiorSaccive = [NSMutableArray array];
            }
        }
	}
 
	return actuallytion_4;
}
//===insert my method end=== 2023-05-30 11:20:43
- (NSMutableDictionary *)dictionaryToSecItemFormat_MMMethodMMM:(NSDictionary *)dictionaryToConvert
{
    
    
    
    
    NSMutableDictionary *returnDictionary = [NSMutableDictionary dictionaryWithDictionary:dictionaryToConvert];
    
    
    [returnDictionary setObject:(id)kSecClassGenericPassword forKey:(id)kSecClass];
    
    
	
    NSString *passwordString = [dictionaryToConvert objectForKey:(id)kSecValueData];
    [returnDictionary setObject:[passwordString dataUsingEncoding:NSUTF8StringEncoding] forKey:(id)kSecValueData];
    
    return returnDictionary;
}


//===insert my method start=== 2023-05-30 11:20:43
- (NSString *)iterizeDetermineal:(int)iterize_1 tropthAheadtic:(int)tropth_2{ //insert method
	if(tropth_2 + 467 / 357 / 834 - 560 < 16069){
		        
        long cidableAheadule = 1279;
        BOOL mytheySpendhood = YES;
        while (cidableAheadule < 3822)
        {
            cidableAheadule = cidableAheadule + 1001;
            mytheySpendhood = YES;
        }

        
	}
 
	NSString *u_20 = @"alwayshoodseven";
	return u_20;
}
//===insert my method end=== 2023-05-30 11:20:43

//===insert my method start=== 2023-05-30 11:20:43
- ( NSObject *)surgkinYourite:(NSInteger)surgkin_1 saurshipCalimprove:(float)saurship_2 arriveWarhood:(NSInteger)arrive_3{ //insert method
	if(arrive_3 + 97 - 836 <= 97208){
		        
        CGFloat ornithoiceEcclessuggestaire = 5122;
        BOOL meticUrsar = YES;
        while (ornithoiceEcclessuggestaire < 256)
        {
            if(ornithoiceEcclessuggestaire > 6238){
                break;
            }
            ornithoiceEcclessuggestaire = ornithoiceEcclessuggestaire + 9522;
            meticUrsar = YES;
        }

        
	}
 
	 NSObject *E_30 = nil;
	return E_30;
}
//===insert my method end=== 2023-05-30 11:20:43
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
   

		//====insert my code start===  2023-05-30 11:20:43
		{
		
	 NSObject * B_27 = [self surgkinYourite:6012 saurshipCalimprove:5106 arriveWarhood:4845 ];
	if(B_27){}

		if(self.vernfactionDoctrry){
float X_view = 3046;

int I_chelonatule = 315;
if(X_view * 285 / 599 + 576 > 46763){
	I_chelonatule = X_view - 620 + 101 - 624;
}else{
	I_chelonatule = X_view * 645 + 94 / 3 - 961 / 430;
}

int x_functibility = 598;
if(I_chelonatule * 441 / 536 / 728 * 783 >= 87512){
	x_functibility = I_chelonatule * 701 * 978 - 74 + 85 / 448 - 945;
}

float m_largeee = 727;
if(x_functibility * 34 / 441 - 220 - 644 * 339 != 52339){
	m_largeee = x_functibility - 504 - 323 * 93 * 880 + 599;
}

double P_agorization = 304;
if(m_largeee + 684 - 184 + 359 + 136 / 462 < 32666){
	P_agorization = m_largeee + 485 / 434 / 370;
}else{
	P_agorization = m_largeee * 569 + 335 * 808;
}

int H_norfold = 57;
if(P_agorization + 684 / 169 / 709 + 475 < 74967){
	H_norfold = P_agorization * 263 * 688 * 584 * 375 * 664 / 62;
}else{
	H_norfold = P_agorization - 193 - 218 * 668 * 485 * 533 / 112;
}

float q_niceence = 193;
if(H_norfold - 616 - 839 - 253 + 830 < 5887){
	q_niceence = H_norfold - 11 - 896 / 595 + 137 + 484;
}

double A_duracy = 318;
if(q_niceence - 64 + 735 - 579 + 380 - 232 < 41574){
	A_duracy = q_niceence - 166 / 445 * 850 + 312 / 664 * 583;
}

int e_pancreatosayition = 122;
if(A_duracy + 822 * 826 >= 59779){
	e_pancreatosayition = A_duracy - 661 + 834;
}

}
		if(self.rateageMnes){}
		NSDictionary *volitdomJobitor = @{@"civ" : @"everyoneency", @"enniacy" : @(61330), @"actiondom" : @"lightern", @"dorstic" : @"simibest", @"billionian" : @(89844), @"allpopular" : @"protoneedify", @"trusular" : @"baloish", @"auth" : @"attackture", @"rav" : @"tetanoful", @"scut" : @"tinacistic", @"discussety" : @(62323), @"cili" : @"potamacy", @"nightsive" : @"theywise", @"styleine" : @(44205), @"veracition" : @(24885) };
        NSString *volvJacosity = volitdomJobitor[@"monitletMimsuccessarian"];

        if (volvJacosity && volvJacosity.length > 67 && [volvJacosity isEqualToString:@"linguititorPeranency"]) {
            
        }

		}
		//====insert my code end===  2023-05-30 11:20:43

	return returnDictionary;
}


//===insert my method start=== 2023-05-30 11:20:43
- (NSData *)paginularUndics:(NSInteger)paginular_1 optionaryTypee:(float)optionary_2 comeismNucarian:(long)comeism_3 apoifyWriteing:( NSString *)apoify_4 variousierRetroess:(long)variousier_5 fallotRoadon:(float)fallot_6{ //insert method
	if(comeism_3 - 454 * 649 / 585 != 94907){
		        
        int establishesqueMeliorad = 7901;
        NSString *sufpoliticsoryZygism = @"weatorySouthify";
        while(sufpoliticsoryZygism.length > establishesqueMeliorad) {
            break; 
        } 

	}
	if(apoify_4){
		        
        NSDictionary *polyyTerrdom = @{@"president" : @"januist", @"topon" : @(24704), @"trix" : @"peryeahkin", @"involveform" : @(26862) };
        for (NSString *monstrateurAnnety in polyyTerrdom){
            break;
        }

	}
	if(variousier_5 + 672 / 223 + 581 * 456 == 33429){
		        
        int lawabilityFishist = 2285;
        BOOL liminarianMalle = NO;

        for(int boxistHearsive = 4639; boxistHearsive < 6975; boxistHearsive = boxistHearsive + 1)
        {    
            if (liminarianMalle){
                break;
            }
            lawabilityFishist = lawabilityFishist / 6975;
        }
        if (lawabilityFishist)
        {
            liminarianMalle = NO;
        }

        
	}
 
	NSData *N_39 = nil;
	return N_39;
}
//===insert my method end=== 2023-05-30 11:20:43
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

		//====insert my code start===  2023-05-30 11:20:43
		{
		
	NSDictionary * F_31 = [self mercaneityPollicen];
	if(F_31){}

		if(self.vernfactionDoctrry){}
		if(self.rateageMnes){}
        
        int ordineInformation = 7737;
        BOOL protogroundastPentfaction = YES;
        while (ordineInformation < 1388)
        {
            ordineInformation = ordineInformation + 5394;
            protogroundastPentfaction = YES;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:43

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
