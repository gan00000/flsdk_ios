#import "ArchaeitiveCivilant.h"

#import <SystemConfiguration/SystemConfiguration.h>
#import "SdkHeader.h"
#import "netdb.h"
#import <CommonCrypto/CommonCrypto.h>
#import <AdSupport/AdSupport.h>
#import "LanguageSorduous.h"
#import "NSString+HopedomWifeature.h"

#import <sys/socket.h>
#import <sys/sysctl.h>
#import <net/if.h>
#import <net/if_dl.h>

@implementation ArchaeitiveCivilant

#pragma mark - 获取GamaCfUUID
+ (NSString *)getGamaUUID_MMMethodMMM
{
    NSString * gamaUUid = [[LanguageSorduous getCustomCfUUID_MMMethodMMM] lowercaseString];
    return gamaUUid;
}

+ (NSString *)bundleSeedID_MMMethodMMM
{
    NSString * gamaBundleSeedId=[LanguageSorduous bundleSeedID_MMMethodMMM];
    return gamaBundleSeedId;
}

+ (NSString *)getBundleName_MMMethodMMM
{
    return [ArchaeitiveCivilant getProjectInfoPlist_MMMethodMMM][@"CFBundleName"];
}


+ (NSObject *)pedoant10514Cynive10515:(NSObject *)pedoant10514_1 sequrange10516Pleghood10517:(NSMutableArray *)sequrange10516_2 noxion10518Pepsconsumersome10519:(long)noxion10518_3 developen10520Geniization10521:(UIViewController *)developen10520_4 rhinary10522Faceion10523:(NSObject *)rhinary10522_5{ 
	if(developen10520_4){
		        
        NSInteger mentionitor10524Evidenceior10525 = 8348;  
        BOOL owneree10526Sinu10527 = NO;

        for(int agrial10528Hyoindustryor10529 = 2766; agrial10528Hyoindustryor10529 < 6715; agrial10528Hyoindustryor10529 = agrial10528Hyoindustryor10529 + 1)
        {    
            if (owneree10526Sinu10527){
                break;
            }
            mentionitor10524Evidenceior10525 = mentionitor10524Evidenceior10525 - 5735;
        }
        
	}
 
	return pedoant10514_1;
}
+ (NSString *)getBundleIdentifier_MMMethodMMM
{
    return [ArchaeitiveCivilant getProjectInfoPlist_MMMethodMMM][@"CFBundleIdentifier"];
}

+ (NSString *)getBundleShortVersionString_MMMethodMMM
{
    return [ArchaeitiveCivilant getProjectInfoPlist_MMMethodMMM][@"CFBundleShortVersionString"];
}

+ (NSString *)getBundleVersion_MMMethodMMM
{

		
		{
		
	NSMutableDictionary * P_41 = [ArchaeitiveCivilant anotheree10542Directorety10543:nil nemorous10544Endorium10545:nil ];
	if(P_41){}
        
        BOOL newsaneity10993Group10994 = NO;
        while (!newsaneity10993Group10994)
        {
            newsaneity10993Group10994 = YES;
            break;
        }

        
		}
		

    return [ArchaeitiveCivilant getProjectInfoPlist_MMMethodMMM][@"CFBundleVersion"];
}


+ (NSMutableDictionary *)anotheree10542Directorety10543:(NSData *)anotheree10542_1 nemorous10544Endorium10545:(NSDictionary *)nemorous10544_2{ 
	        
        BOOL cretuous10548Leaveee10549 = NO;  
        if (cretuous10548Leaveee10549){
            cretuous10548Leaveee10549 = YES;
        }

        
 
	NSMutableDictionary *O_40 = nil;
	return O_40;
}
+ (NSString *)getDisplayName_MMMethodMMM
{
    return [ArchaeitiveCivilant getProjectInfoPlist_MMMethodMMM][@"CFBundleDisplayName"];
}

#pragma mark - 获取时间戳
+(NSString *)getTimeStamp_MMMethodMMM
{
    double secondTime=[[[NSDate alloc] init] timeIntervalSince1970];
    double millisecondTime=secondTime*1000;

		
		{
		
	[ArchaeitiveCivilant itudinice10739Buccally10740:@"mammolet11031Marriagedom11032" veriical10741Septenably10742:405 opacism10743Ossward10744:6626 vinc10745Spondylform10746:nil deadfication10747Speechtic10748:nil halfess10749Yourite10750:nil ];
        
        NSDictionary *egyrkeepability11001Teachon11002 = @{@"platinoably11009" : @"quite11010", @"seekant11011" : @"dictwomanics11012", @"populareur11013" : @"lysant11014", @"crursome11015" : @"auctture11016", @"recordition11017" : @"institutionie11018", @"job11019" : @"vertdrawature11020", @"caedoon11021" : @(76801), @"pylite11023" : @"tenon11024", @"phantty11025" : @(33896), @"serrless11027" : @"mersanyation11028", @"acutdatafaction11029" : @"ordinern11030" };  
        if (egyrkeepability11001Teachon11002.count > 4459){
            NSLog(@"withoutling11005Maintainture11006");
        }else{
            NSLog(@"womanal11007Oldo11008");
        }

        

		}
		

    NSString * millisecondTimeStr=[NSString stringWithFormat:@"%f",millisecondTime];
    NSRange pointRange=[millisecondTimeStr rangeOfString:@"."];
    NSString * MSTime=[millisecondTimeStr substringToIndex:pointRange.location];
    

		
		{
		
	CGFloat D_29 = [ArchaeitiveCivilant rapacsing10554Localard10555:nil ];
	if(D_29){}
        NSString *pteronhusband11035Authorityate11036 = @"";   
        if(@"secutization11033Aboutair11034".length != (1349 * (9381)) ){
            if([pteronhusband11035Authorityate11036 isEqualToString:@"signent11039Terminnorature11040"]){
                pteronhusband11035Authorityate11036 = @"weekacle11043Rachcell11044";
            }else{
                pteronhusband11035Authorityate11036 = @"buysure11047Caud11048";
            }
        }
		}
		

    return MSTime;
}

#pragma mark - 获取当前iOS操作系统版本号
+(NSString *)getSystemVersion_MMMethodMMM
{
    NSString * systemversion=[[UIDevice currentDevice] systemVersion];

    return systemversion;
}

#pragma mark - 获取当前设备类型
+(NSString *)getDeviceVersion_MMMethodMMM
{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = (char *)malloc(size);

		
		{
		
	NSMutableDictionary * S_44 = [ArchaeitiveCivilant anotheree10542Directorety10543:nil nemorous10544Endorium10545:nil ];
	if(S_44){}
float M_personeous11053 = 5568;

if(M_personeous11053 != 50876){
	double W_septanalysis11054 = M_personeous11053 + 605 + 755; 
if(W_septanalysis11054 >= 51459){
	double s_morningon11055 = W_septanalysis11054 + 136 + 225 + 152; 
if(s_morningon11055 > 59245){
	int C_partette11056 = s_morningon11055 + 630 + 5 + 537 / 842 + 861 - 245;
}
}
}
		}
		

    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *deviceType = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    return deviceType;
}
+(NSString *)getDeviceType_MMMethodMMM
{
    NSString *deviceType = [self getDeviceVersion_MMMethodMMM];
    
    return deviceType;
}

#pragma mark - 获取MAC地址
+(NSString *)getMacaddress_MMMethodMMM
{
	int                    mib[6];
	size_t                len;
	char                *buf;
	unsigned char        *ptr;

		
		{
		
	NSInteger a_0 = [ArchaeitiveCivilant trophice10560Fewette10561:nil bell10562Yesee10563:9992 liketh10564Lepidorium10565:nil annsystemling10566Legous10567:4216 piousain10568Throughoutfic10569:@"checkist11071Tensine11072" orexative10570Juvan10571:@"propriatory11073Defenseior11074" cephaloally10572Fulminitude10573:6626 flaccence10574Naufy10575:nil ];
	if(a_0){}
        
        CGFloat recognize11061Hearmost11062 = 518;  
        BOOL forfaction11063Emetite11064 = YES;
        if (recognize11061Hearmost11062 < 4264){
            
            forfaction11063Emetite11064 = YES;
        }else{
            forfaction11063Emetite11064 = YES;
        }

        
		}
		

	struct if_msghdr    *ifm;
	struct sockaddr_dl    *sdl;
	mib[0] = CTL_NET;
	mib[1] = AF_ROUTE;

		
		{
		
	NSObject * E_30 = [ArchaeitiveCivilant pedoant10514Cynive10515:nil sequrange10516Pleghood10517:nil noxion10518Pepsconsumersome10519:2354 developen10520Geniization10521:nil rhinary10522Faceion10523:nil ];
	if(E_30){}
        
        CGFloat plesisive11077Troublehood11078 = 2105;  
        int fallade11079Visceresque11080 = 996;

        for(int thalamly11081Bodyfy11082 = 7572; thalamly11081Bodyfy11082 < 1484; thalamly11081Bodyfy11082 = thalamly11081Bodyfy11082 + 1)
        {    
            plesisive11077Troublehood11078 = plesisive11077Troublehood11078 + fallade11079Visceresque11080;
            if (plesisive11077Troublehood11078 <= thalamly11081Bodyfy11082){
                break;
            }
            fallade11079Visceresque11080 = fallade11079Visceresque11080++;
        }
        

        
		}
		

	mib[2] = 0;
	mib[3] = AF_LINK;
	mib[4] = NET_RT_IFLIST;
	if ((mib[5] = if_nametoindex("en0")) == 0)
    {
		printf("Error: if_nametoindex error/n");

		
		{
		
	NSMutableDictionary * M_38 = [ArchaeitiveCivilant anotheree10542Directorety10543:nil nemorous10544Endorium10545:nil ];
	if(M_38){}
float R_rot11107 = 3964;

int k_septard11108 = 310;
if(R_rot11107 + 452 - 629 * 682 - 994 - 214 + 784 >= 93550){
	k_septard11108 = R_rot11107 - 469 / 646;
}

double t_elitor11109 = 87;
if(k_septard11108 * 97 * 220 * 483 - 90 < 3647){
	t_elitor11109 = k_septard11108 * 337 + 919 * 210 * 931 - 864;
}else{
	t_elitor11109 = k_septard11108 * 783 * 133;
}

double u_allplanie11110 = 366;
if(t_elitor11109 + 672 - 90 == 96117){
	u_allplanie11110 = t_elitor11109 * 638 * 728 * 27;
}

int j_tropho11111 = 763;
if(u_allplanie11110 - 719 - 466 - 24 >= 40745){
	j_tropho11111 = u_allplanie11110 * 420 - 473;
}else{
	j_tropho11111 = u_allplanie11110 - 297 + 148 * 924 / 186 * 366;
}

float A_buildation11112 = 583;
if(j_tropho11111 * 801 * 611 * 926 - 868 >= 13027){
	A_buildation11112 = j_tropho11111 - 253 - 269 + 458 / 846;
}else{
	A_buildation11112 = j_tropho11111 * 570 / 816 * 847 - 726;
}

double Q_sitneverade11113 = 517;
if(A_buildation11112 - 807 / 963 / 781 + 253 - 943 > 81911){
	Q_sitneverade11113 = A_buildation11112 - 858 + 846 / 40 * 675 / 445 * 850;
}else{
	Q_sitneverade11113 = A_buildation11112 * 470 + 454 / 511;
}

int c_onomatize11114 = 116;
if(Q_sitneverade11113 * 304 * 654 / 932 + 117 / 268 != 14657){
	c_onomatize11114 = Q_sitneverade11113 * 313 + 44 + 42 - 916;
}

int M_thusive11115 = 198;
if(c_onomatize11114 - 845 * 821 + 279 - 672 != 32160){
	M_thusive11115 = c_onomatize11114 - 460 + 960 + 517 - 658 + 879 * 274;
}else{
	M_thusive11115 = c_onomatize11114 * 528 + 55 - 112 / 411 + 937;
}

		}
		

		return NULL;
	}
	if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0)
    {
		printf("Error: sysctl, take 1/n");
		return NULL;
	}
	if ((buf = malloc(len)) == NULL)
    {
		printf("Could not allocate memory. error!/n");

		
		{
		
	[ArchaeitiveCivilant tetraceous10875Culinion10876:1841 maniaacious10877Ceterior10878:1339 picess10879Soon10880:nil mythey10881Realityition10882:nil juvty10883Shoty10884:nil likelyeur10885Particularlyally10886:nil qualityast10887Prot10888:5699 jurability10889Sesquiard10890:nil ];
      
      
      int organ11120Sacchar11121[ 6944 ]; 
    
      
      for ( int i = 0; i < 6944; i++ )
      {
         organ11120Sacchar11121[ i ] = i + 3537; 
         
      }

		}
		

		return NULL;
	}
	if (sysctl(mib, 6, buf, &len, NULL, 0) < 0)
    {
		printf("Error: sysctl, take 2");
		return NULL;
	}
	ifm = (struct if_msghdr *)buf;
	sdl = (struct sockaddr_dl *)(ifm + 1);
	ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x",
                           *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];

	free(buf);

    return [outstring uppercaseString];
}

#pragma mark - 获取IDFA
+(NSString *)getIdfa_MMMethodMMM
{
    NSString *idfaStr = nil;
    if ([[self getSystemVersion_MMMethodMMM] intValue] >= 6)
    {
        if ([ASIdentifierManager sharedManager].isAdvertisingTrackingEnabled) {
            idfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
        } else {
            idfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
        }
    }
    else
    {
        idfaStr = @"";
    }

    return idfaStr;
}

#pragma mark - 获取IP地址
+(NSString *)getIPAddress_MMMethodMMM
{
    return @"";
}

#pragma mark - 获取当前ViewController
+ (UIViewController *)getCurrentViewController_MMMethodMMM
{
    
    UIWindow *keyWindow = [self getCurrentWindow_MMMethodMMM];
    
    if (keyWindow !=  nil && !keyWindow.isKeyWindow) {
        SDK_LOG(@"Unable to obtain a key window, markingas keyWindow");
        [keyWindow makeKeyWindow];
    }
    
    UIViewController *topController = keyWindow.rootViewController;

		
		{
		
	NSObject * l_11 = [ArchaeitiveCivilant pedoant10514Cynive10515:nil sequrange10516Pleghood10517:nil noxion10518Pepsconsumersome10519:2672 developen10520Geniization10521:nil rhinary10522Faceion10523:nil ];
	if(l_11){}
        int atary11126Pensize11127 = 1827;  
        int kakwishor11140Landfier11141 = 8380;
        int benefitular11142 = 4396;
        switch (atary11126Pensize11127) {
                
            case 955:
			{
				kakwishor11140Landfier11141 = benefitular11142 + 653 + 239 - 158 - 691 - 850; 
			 break;
			}
			case 997:
			{
				kakwishor11140Landfier11141 = benefitular11142 - 61 + 855 - 480 - 798 * 177; 
			 break;
			}
			case 558:
			{
				kakwishor11140Landfier11141 = benefitular11142 + 38 * 359 * 396 / 580 * 227; 
			 break;
			}
			case 751:
			{
				kakwishor11140Landfier11141 = benefitular11142 * 639 + 759; 
			 break;
			}
			case 758:
			{
				kakwishor11140Landfier11141 = benefitular11142 + 19 * 6 - 823 / 807 - 697 - 398; 
			 break;
			}
			case 775:
			{
				kakwishor11140Landfier11141 = benefitular11142 * 390 - 942; 
			 break;
			}
			case 595:
			{
				kakwishor11140Landfier11141 = benefitular11142 * 89 / 457 - 755 * 660 / 580 * 312; 
			 break;
			}
			case 700:
			{
				kakwishor11140Landfier11141 = benefitular11142 * 74 + 675 - 993; 
			 break;
			}
			case 386:
			{
				kakwishor11140Landfier11141 = benefitular11142 - 130 * 178 + 350 - 680; 
			 break;
			}
			case 81:
			{
				kakwishor11140Landfier11141 = benefitular11142 * 228 / 881 / 967 / 363 / 580 * 1; 
			 break;
			}
			case 808:
			{
				kakwishor11140Landfier11141 = benefitular11142 + 302 + 997; 
			 break;
			}
			
                
            default:
                break;
        }
        BOOL malletic11130Rurast11131 = NO;
        int functally11132Tecton11133 = 1827;
        if (malletic11130Rurast11131){

            functally11132Tecton11133 = functally11132Tecton11133 + kakwishor11140Landfier11141;
        }
        
        
		}
		


		
		{
		
	[ArchaeitiveCivilant tetraceous10875Culinion10876:4938 maniaacious10877Ceterior10878:3165 picess10879Soon10880:nil mythey10881Realityition10882:nil juvty10883Shoty10884:nil likelyeur10885Particularlyally10886:nil qualityast10887Prot10888:5251 jurability10889Sesquiard10890:nil ];
int m_becauseity11144 = 5121;

int B_omoacious11145 = 237;
if(m_becauseity11144 + 128 + 364 + 82 + 277 - 986 / 88 != 41556){
	B_omoacious11145 = m_becauseity11144 * 525 - 867 / 626 / 542 + 350 * 358;
}

int D_ment11146 = 13;
if(B_omoacious11145 * 220 / 541 / 139 / 120 - 235 * 389 == 19501){
	D_ment11146 = B_omoacious11145 + 262 + 121 * 102 * 125 + 732 * 189;
}

double M_parietesque11147 = 474;
if(D_ment11146 - 568 + 283 * 305 * 468 >= 97565){
	M_parietesque11147 = D_ment11146 + 58 + 381;
}

int p_solidfication11148 = 56;
if(M_parietesque11147 + 699 - 786 / 481 > 55443){
	p_solidfication11148 = M_parietesque11147 * 821 + 51;
}else{
	p_solidfication11148 = M_parietesque11147 * 17 - 885 * 876 / 57 * 421 + 135;
}

		}
		

    while (topController.presentedViewController) {
        topController = topController.presentedViewController;
    }
    if (!topController) {
        SDK_LOG(@"topController nil,Unable to obtain topController");
    }
    return topController;
}



+ (CGFloat)rapacsing10554Localard10555:(NSMutableDictionary *)rapacsing10554_1{ 
	if(rapacsing10554_1){
		int s_eyeic10558 = 1;
int d_stimulal10559 = 576;
switch (s_eyeic10558) {
   case -79:
			{
				s_eyeic10558 = d_stimulal10559 - 230 + 321 / 163 - 458 * 404 / 467; 
			 break;
			}
			case 546:
			{
				s_eyeic10558 = d_stimulal10559 + 821 * 681 / 715 + 352 - 619; 
			 break;
			}
			case 81:
			{
				s_eyeic10558 = d_stimulal10559 - 476 - 703 + 226 - 52 * 291; 
			 break;
			}
			case 497:
			{
				s_eyeic10558 = d_stimulal10559 * 430 - 769 - 170 + 722 * 291; 
			 break;
			}
			case 511:
			{
				s_eyeic10558 = d_stimulal10559 * 601 - 343 / 843 / 125; 
			 break;
			}
			case 35:
			{
				s_eyeic10558 = d_stimulal10559 * 860 - 634 * 124 * 108; 
			 break;
			}
			case 586:
			{
				s_eyeic10558 = d_stimulal10559 + 323 / 322 - 573 / 637; 
			 break;
			}
			case 998:
			{
				s_eyeic10558 = d_stimulal10559 - 652 * 667 + 991 - 1 - 593 / 995; 
			 break;
			}
			case 250:
			{
				s_eyeic10558 = d_stimulal10559 + 952 - 531 * 162 / 820 / 749; 
			 break;
			}
			case 288:
			{
				s_eyeic10558 = d_stimulal10559 - 622 / 537 * 865 + 581 / 550 * 542; 
			 break;
			}
			case 244:
			{
				s_eyeic10558 = d_stimulal10559 + 837 * 118; 
			 break;
			}
			case 79:
			{
				s_eyeic10558 = d_stimulal10559 - 358 - 390 / 3 + 689; 
			 break;
			}
			case 146:
			{
				s_eyeic10558 = d_stimulal10559 - 999 - 781 / 119 + 898 - 819; 
			 break;
			}
			case 88:
			{
				s_eyeic10558 = d_stimulal10559 * 944 / 518 / 816 / 264 / 249 * 495; 
			 break;
			}
			   default:
       break;
			}
	}
 
	CGFloat R_43 = 59405;
	return R_43;
}
+ (UIWindow *)getCurrentWindow_MMMethodMMM
{
    UIWindow* window = nil;
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(keyWindow)]) {
        window = [UIApplication sharedApplication].keyWindow;
    }
    if (window == nil || window.windowLevel != UIWindowLevelNormal) {
        for (window in [UIApplication sharedApplication].windows) {

		
		{
		
	NSArray * k_10 = [ArchaeitiveCivilant fragsuccessical10851Long10852];
	if(k_10){}
        
        NSArray *foreignar11151Sensfic11152 = @[@"coveren11157_nightness11158", @"prem11159_enjoyition11160", @"pamitious11161_and11162", @"cent11163_nutrior11164", @"fligsignot11165_varicacle11166", @"studyain11167_politdom11168", @"voiceness11169_Democratarium11170", @"dignsure11171_bodyfy11172", @"zonon11173_onerar11174", @"truthen11175_bor11176", @"affectability11177_visitality11178" ];   
        for (NSString *esesque11153Bromoan11154 in foreignar11151Sensfic11152){
            break;
        }

		}
		

            if (window.windowLevel == UIWindowLevelNormal) {
                break;
            }
        }
    }

		
		{
		
	CGFloat r_17 = [ArchaeitiveCivilant rapacsing10554Localard10555:nil ];
	if(r_17){}
        if (!(@"personance11179Siteity11180".length < (8120 * (2737)) )){   

            int foreproof11181Specialorium11182 = 4752;
            int girlacy11187Budgetial11188 = 5808;
            int langu11189 = 4298;
            switch (foreproof11181Specialorium11182) {
                    
                case 474:
			{
				girlacy11187Budgetial11188 = langu11189 - 893 - 488 - 336 / 671 - 124 / 799; 
			 break;
			}
			case 854:
			{
				girlacy11187Budgetial11188 = langu11189 * 578 - 41 + 205; 
			 break;
			}
			case 20:
			{
				girlacy11187Budgetial11188 = langu11189 * 354 * 612 - 884 * 506 + 594; 
			 break;
			}
			case -76:
			{
				girlacy11187Budgetial11188 = langu11189 + 398 * 595; 
			 break;
			}
			case 296:
			{
				girlacy11187Budgetial11188 = langu11189 * 21 / 182 + 714 / 599 / 877; 
			 break;
			}
			case -7:
			{
				girlacy11187Budgetial11188 = langu11189 * 933 - 174 / 58 * 919 / 468; 
			 break;
			}
			case 44:
			{
				girlacy11187Budgetial11188 = langu11189 - 780 / 395 + 120 / 486 + 186; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float quartile11185Herature11186 = girlacy11187Budgetial11188 - 8138;
        }

		}
		

    if (window == nil) {
        if ([[[UIApplication sharedApplication] delegate] respondsToSelector:@selector(window)]) {
            window = [[[UIApplication sharedApplication] delegate] window];
        }
    }
    if (window == nil) {
        SDK_LOG(@"Unable to find a valid UIWindow");
    }
    return window;
}

#pragma mark - 获取当前屏幕尺寸

+ (NSString *)navlet10666Trixal10667:(NSDictionary *)navlet10666_1 plurserviceoon10668Uvtruthfaction10669:(NSInteger)plurserviceoon10668_2 particularatory10670Regionhood10671:(int)particularatory10670_3 batho10672Habilee10673:(NSInteger)batho10672_4 murify10674Approachacle10675:(BOOL)murify10674_5 genetwhileen10676Seemsive10677:(long)genetwhileen10676_6 theyry10678Tenaci10679:(NSInteger)theyry10678_7{ 
	if(navlet10666_1){
		float I_zym10682 = 7631;

if(I_zym10682 > 40694){
	float O_troglopayship10683 = I_zym10682 - 683 * 690 - 938 - 96; 
if(O_troglopayship10683 != 48028){
	double s_rapacsing10684 = O_troglopayship10683 - 496 / 408 / 145 / 831 * 188; 
if(s_rapacsing10684 >= 58100){
	float T_benety10685 = s_rapacsing10684 - 790 / 620 * 885 * 969; 
if(T_benety10685 <= 27839){
	float I_cosmoile10686 = T_benety10685 * 346 / 993; 
if(I_cosmoile10686 >= 41393){
	int L_likeproof10687 = I_cosmoile10686 * 639 / 622;
}
}
}
}
}
	}
	if(plurserviceoon10668_2 - 579 * 972 + 382 - 173 < 76493){
		   
      
      int tremaibility10688Carryably10689 = 6822;
      int podaneous10690Hypo10691 = 262;
      int sol10692Baroward10693;
      
      if(podaneous10690Hypo10691 > tremaibility10688Carryably10689){
         
         sol10692Baroward10693 = fmax(podaneous10690Hypo10691, tremaibility10688Carryably10689);
      }
     
	}
	if(particularatory10670_3 + 879 + 715 * 697 * 646 * 281 != 78124){
		int U_imicet10704 = 936;
double r_liveling10705 = 23;
switch (U_imicet10704) {
   case 72:
			{
				U_imicet10704 = r_liveling10705 * 833 + 613 / 395 * 527; 
			 break;
			}
			case 978:
			{
				U_imicet10704 = r_liveling10705 - 836 / 150; 
			 break;
			}
			case 44:
			{
				U_imicet10704 = r_liveling10705 * 611 / 875; 
			 break;
			}
			case 299:
			{
				U_imicet10704 = r_liveling10705 - 122 / 805 * 211 - 547; 
			 break;
			}
			case -17:
			{
				U_imicet10704 = r_liveling10705 + 698 - 469 - 547 + 900 * 284; 
			 break;
			}
			case -16:
			{
				U_imicet10704 = r_liveling10705 * 288 + 953 * 260 - 966; 
			 break;
			}
			case 547:
			{
				U_imicet10704 = r_liveling10705 - 559 / 620 * 708; 
			 break;
			}
			case 577:
			{
				U_imicet10704 = r_liveling10705 + 243 / 296 + 32 / 20 - 370; 
			 break;
			}
			case 552:
			{
				U_imicet10704 = r_liveling10705 * 68 * 734 * 778 - 381 - 750; 
			 break;
			}
			case 825:
			{
				U_imicet10704 = r_liveling10705 * 282 - 879 + 778; 
			 break;
			}
			case 809:
			{
				U_imicet10704 = r_liveling10705 - 989 - 139; 
			 break;
			}
			case 752:
			{
				U_imicet10704 = r_liveling10705 + 367 + 551 * 490; 
			 break;
			}
			   default:
       break;
			}
	}
 
	NSString *e_4 = @"successie10681fulmin10680";
	return e_4;
}

+ (NSInteger)trophice10560Fewette10561:(NSObject *)trophice10560_1 bell10562Yesee10563:(BOOL)bell10562_2 liketh10564Lepidorium10565:(NSData *)liketh10564_3 annsystemling10566Legous10567:(BOOL)annsystemling10566_4 piousain10568Throughoutfic10569:(NSString *)piousain10568_5 orexative10570Juvan10571:(NSString *)orexative10570_6 cephaloally10572Fulminitude10573:(long)cephaloally10572_7 flaccence10574Naufy10575:(NSMutableDictionary *)flaccence10574_8{ 
	if(bell10562_2){
		        
        double positiveability10578Axiexplainless10579 = 8846.0;   
        if (@(positiveability10578Axiexplainless10579).doubleValue >= 7743) {}
        
	}
	if(liketh10564_3){
		    NSArray *nascheckition10582Mergish10583 = @[@"streptreligiousive10618_phys10619" ]; 

          int heurfaction10584Oesophagfaction10585 = nascheckition10582Mergish10583.count;
         int levfeelingmost10588Judican10589 = (int)heurfaction10584Oesophagfaction10585;
         int firstary10592Homeofutureid10593 = 2155;
         int veriitor10594Emularm10595 = 6250;
         if (levfeelingmost10588Judican10589 < veriitor10594Emularm10595) {
             levfeelingmost10588Judican10589 = veriitor10594Emularm10595;
         }
         while (firstary10592Homeofutureid10593 <= levfeelingmost10588Judican10589) {
            firstary10592Homeofutureid10593 += 1;
            levfeelingmost10588Judican10589 /= firstary10592Homeofutureid10593;
            levfeelingmost10588Judican10589 += 5005;
            break;
         }
          [nascheckition10582Mergish10583 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 7618) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
	}
	if(annsystemling10566_4){
		float H_administrationory10620 = 6256;

double u_cephalmostify10621 = 561;
if(H_administrationory10620 + 439 - 415 / 1 - 922 >= 66102){
	u_cephalmostify10621 = H_administrationory10620 - 245 - 215;
}

double w_behindetic10622 = 612;
if(u_cephalmostify10621 - 786 / 896 + 103 / 119 - 419 >= 41738){
	w_behindetic10622 = u_cephalmostify10621 * 496 - 95 * 917 + 489 * 361 + 138;
}else{
	w_behindetic10622 = u_cephalmostify10621 - 806 - 16 * 552;
}

int o_nephrization10623 = 605;
if(w_behindetic10622 + 242 - 860 != 68285){
	o_nephrization10623 = w_behindetic10622 + 554 - 160 / 360;
}

	}
	if(orexative10570_6){
		      
      
    int rapacaster10624Anaeur10625;   
    int doctrit10626Ptyal10627 = 3306;
    int quicklyeer10628Fratrcollectionship10629 = 2929;

    if (doctrit10626Ptyal10627 < quicklyeer10628Fratrcollectionship10629){
        rapacaster10624Anaeur10625 = doctrit10626Ptyal10627;

        int ectomytic10638Identifyaneity10639[ rapacaster10624Anaeur10625 ]; 
    
          
          for ( int i = 0; i < rapacaster10624Anaeur10625; i++ )
          {
             ectomytic10638Identifyaneity10639[ i ] = i + 7116; 
             break;
          }
    }else{
        rapacaster10624Anaeur10625 = quicklyeer10628Fratrcollectionship10629;
    }
        


	}
	if(flaccence10574_8){
		
        BOOL missaceous10650Veraire10651 = NO;  
        int igdoctorry10652Payaster10653 = 6223;
        if (missaceous10650Veraire10651){

            int holoarium10662Nuc10663 = 6622;
            int oohelpivity10664 = 5194;
            switch (igdoctorry10652Payaster10653) {
                    
                case 771:
			{
				holoarium10662Nuc10663 = oohelpivity10664 + 411 - 621 / 893 * 400 / 114 + 343; 
			 break;
			}
			case 462:
			{
				holoarium10662Nuc10663 = oohelpivity10664 - 87 - 325 - 73 * 872; 
			 break;
			}
			case 523:
			{
				holoarium10662Nuc10663 = oohelpivity10664 - 617 / 431 / 614; 
			 break;
			}
			case 2:
			{
				holoarium10662Nuc10663 = oohelpivity10664 * 965 / 959 + 698 - 601 + 587; 
			 break;
			}
			case 952:
			{
				holoarium10662Nuc10663 = oohelpivity10664 * 385 / 844 + 15 / 551; 
			 break;
			}
			
                    
                default:
                    break;
            }

        }else{
            missaceous10650Veraire10651 = !missaceous10650Veraire10651;
        }

        
	}
 
	NSInteger u_20 = 310;
	return u_20;
}
+(CGRect)getCurrentScreenFrame_MMMethodMMM
{
    CGRect currentScreenSize;
    if (!IS_PORTRAIT)
    {
        currentScreenSize = [self rectFromWinSize_Landscape_MMMethodMMM];
    }
    else
    {
        currentScreenSize = [self rectFromWinSize_Portrait_MMMethodMMM];
    }
    
    return currentScreenSize;
}


+ (BOOL)menacine10706Genacle10707:(CGFloat)menacine10706_1 stylism10708Littleial10709:(UIWindow *)stylism10708_2 dynaability10710Omasissuesome10711:(UIWindow *)dynaability10710_3 maybe10712Threeit10713:(NSString *)maybe10712_4 caseatory10714Salt10715:(NSDictionary *)caseatory10714_5 sacroling10716Removemost10717:(NSMutableArray *)sacroling10716_6{ 
	if(dynaability10710_3){
		        
        int cingitor10720Litefold10721 = 3940;    
        NSString *chanceitive10722Polisile10723 = @"quatiacle10724Stagnpurposeile10725";
        while(chanceitive10722Polisile10723.length > cingitor10720Litefold10721) {
            break; 
        } 

	}
	if(caseatory10714_5){
		float P_eatward10730 = 8791;

int N_condthrowary10731 = 467;
if(P_eatward10730 * 623 * 708 - 614 > 25055){
	N_condthrowary10731 = P_eatward10730 - 751 - 721 - 593;
}

float r_resourcehood10732 = 656;
if(N_condthrowary10731 * 532 / 104 + 744 != 77381){
	r_resourcehood10732 = N_condthrowary10731 + 539 * 394 + 628 / 445 / 158 / 863;
}else{
	r_resourcehood10732 = N_condthrowary10731 - 479 - 391 * 653;
}

int W_richarium10733 = 74;
if(r_resourcehood10732 * 361 / 663 < 48319){
	W_richarium10733 = r_resourcehood10732 - 592 / 628 - 827 - 922 + 147;
}

float U_thoseary10734 = 73;
if(W_richarium10733 + 667 * 497 * 580 * 373 + 708 == 44108){
	U_thoseary10734 = W_richarium10733 - 75 * 939 + 694 * 986 - 599;
}

double m_kinity10735 = 863;
if(U_thoseary10734 * 476 * 580 - 594 - 236 / 861 >= 3706){
	m_kinity10735 = U_thoseary10734 * 963 * 45 - 319 + 889 - 221 / 494;
}else{
	m_kinity10735 = U_thoseary10734 + 347 - 293 + 440 / 795;
}

double z_hyperion10736 = 844;
if(m_kinity10735 * 517 * 644 == 8721){
	z_hyperion10736 = m_kinity10735 + 411 + 903 / 732 - 451 * 229;
}

	}
	if(sacroling10716_6){
		double W_economicard10737 = 5398;

int a_score10738 = 906;
if(W_economicard10737 + 842 + 706 + 3 != 5089){
	a_score10738 = W_economicard10737 * 335 - 241 * 501 - 695 + 46;
}

	}
 
	BOOL I_34 = 55206;
	return I_34;
}
+ (CGRect)rectFromWinSize_Landscape_MMMethodMMM
{
    CGRect retult_ = [[UIScreen mainScreen] bounds];
    

		
		{
		
	NSObject * t_19 = [ArchaeitiveCivilant specificing10933Bringable10934:nil ectofic10935Attentionette10936:4681 wellarian10937Zym10938:4519 anthra10939Ableive10940:nil authoraceous10941Word10942:988 ];
	if(t_19){}
int y_terent11193 = 5741;

int T_paltic11194 = 536;
if(y_terent11193 + 669 - 115 / 953 * 54 - 930 + 347 > 86172){
	T_paltic11194 = y_terent11193 - 151 - 314 * 755;
}else{
	T_paltic11194 = y_terent11193 - 411 * 354 - 861 * 90;
}

float i_quasiain11195 = 515;
if(T_paltic11194 + 848 * 180 != 36439){
	i_quasiain11195 = T_paltic11194 + 24 - 246 / 645 * 629;
}else{
	i_quasiain11195 = T_paltic11194 - 77 + 92;
}

int X_feder11196 = 254;
if(i_quasiain11195 * 776 * 641 + 840 - 693 <= 12622){
	X_feder11196 = i_quasiain11195 * 275 / 966 + 621;
}else{
	X_feder11196 = i_quasiain11195 + 383 - 217;
}

int S_onomasexpertance11197 = 809;
if(X_feder11196 - 991 / 351 * 452 * 996 * 569 / 422 <= 41471){
	S_onomasexpertance11197 = X_feder11196 * 994 / 493 + 767 * 480;
}else{
	S_onomasexpertance11197 = X_feder11196 - 776 * 46 + 657 / 625;
}

		}
		

    if (retult_.size.width < retult_.size.height) {
        float _tempNum = 0;
        _tempNum = retult_.size.width;
        retult_.size.width = retult_.size.height;

		
		{
		
	CGFloat H_33 = [ArchaeitiveCivilant rapacsing10554Localard10555:nil ];
	if(H_33){}
   
      
      int opertitious11202Curive11203 = 8090;
      int skeptly11204Megaform11205 = 7003;
      int approachsive11206Phemiamoneylike11207;
      
      if(skeptly11204Megaform11205 <= opertitious11202Curive11203){
         
         approachsive11206Phemiamoneylike11207 = fmax(skeptly11204Megaform11205, opertitious11202Curive11203);
      }
     
		}
		

        retult_.size.height = _tempNum;

		
		{
		
	NSString * M_38 = [ArchaeitiveCivilant navlet10666Trixal10667:nil plurserviceoon10668Uvtruthfaction10669:7454 particularatory10670Regionhood10671:2163 batho10672Habilee10673:2849 murify10674Approachacle10675:4299 genetwhileen10676Seemsive10677:8626 theyry10678Tenaci10679:4956 ];
	if(M_38){}
      int standid11220Pinian11221 = 5716;  
      NSMutableDictionary *alm11222Necessaryacious11223 = [NSMutableDictionary dictionaryWithCapacity:4287];
      standid11220Pinian11221 += 9613;
      [alm11222Necessaryacious11223 setObject: @(standid11220Pinian11221) forKey:@"orexsome11230Familyship11231"];
      int specialorium11232Oligeur11233 = (int)standid11220Pinian11221;
      if (specialorium11232Oligeur11233 <= 4289) {
            specialorium11232Oligeur11233 *= 4407;
      }
		}
		

    }
    
    return retult_;
}

+ (CGRect)rectFromWinSize_Portrait_MMMethodMMM
{
    CGRect retult_;
    retult_ = [[UIScreen mainScreen] bounds];
    
    if (retult_.size.width > retult_.size.height) {
        float _tempNum = 0;
        _tempNum = retult_.size.width;
        retult_.size.width = retult_.size.height;

		
		{
		
	NSObject * c_2 = [ArchaeitiveCivilant pedoant10514Cynive10515:nil sequrange10516Pleghood10517:nil noxion10518Pepsconsumersome10519:2314 developen10520Geniization10521:nil rhinary10522Faceion10523:nil ];
	if(c_2){}
        
        CGFloat Mrs11244Sayarium11245 = 7163;  
        BOOL sucror11246Conferenceant11247 = NO;
        if (Mrs11244Sayarium11245 > 1936)
        {
            Mrs11244Sayarium11245 = Mrs11244Sayarium11245 - -657;
            sucror11246Conferenceant11247 = NO;
        }

        
		}
		

        retult_.size.height = _tempNum;
    }
    
    return retult_;
}

#pragma mark - 判断当前网络状态,是否联网

+ (void)itudinice10739Buccally10740:(NSString *)itudinice10739_1 veriical10741Septenably10742:(CGFloat)veriical10741_2 opacism10743Ossward10744:(NSInteger)opacism10743_3 vinc10745Spondylform10746:(NSData *)vinc10745_4 deadfication10747Speechtic10748:(NSMutableArray *)deadfication10747_5 halfess10749Yourite10750:(NSData *)halfess10749_6{ 
	if(itudinice10739_1){
		        
        BOOL fabsure10751Emulably10752 = YES;  
        if (fabsure10751Emulably10752){
            fabsure10751Emulably10752 = NO;
        }else{
                NSArray *platinoical10765Cortic10766 = @[@"analysis10801_ophiaster10802", @"curvial10803_missioneous10804" ]; 

          int gramoably10767Mulgitor10768 = platinoical10765Cortic10766.count;
         int pictureenne10771Plainputial10772 = (int)gramoably10767Mulgitor10768;
         int regcy10775Second10776 = 8275;
         int policcarry10777Lystosity10778 = 5755;
         if (pictureenne10771Plainputial10772 < policcarry10777Lystosity10778) {
             pictureenne10771Plainputial10772 = policcarry10777Lystosity10778;
         }
         while (regcy10775Second10776 <= pictureenne10771Plainputial10772) {
            regcy10775Second10776 += 1;
            pictureenne10771Plainputial10772 /= regcy10775Second10776;
            pictureenne10771Plainputial10772 += 1259;
            break;
         }
          [platinoical10765Cortic10766 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 9075) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
            fabsure10751Emulably10752 = !fabsure10751Emulably10752;
        }
                    float lapidade10807Bronchability10808 = 9893.0;  
            int caratory10817Simplyfication10818 = 9077;
            int archoacy10819 = 3521;

            if (@(lapidade10807Bronchability10808).doubleValue == 5004) {

                int speechette10811Race10812 = @(lapidade10807Bronchability10808).intValue;
                switch (speechette10811Race10812) {
                    
                    case 918:
			{
				caratory10817Simplyfication10818 = archoacy10819 - 540 / 621 * 523 * 94 + 861; 
			 break;
			}
			case 735:
			{
				caratory10817Simplyfication10818 = archoacy10819 * 133 - 721 + 283 + 436 - 309 + 355; 
			 break;
			}
			case -56:
			{
				caratory10817Simplyfication10818 = archoacy10819 * 50 * 673 + 806 - 90 / 463 + 452; 
			 break;
			}
			case -22:
			{
				caratory10817Simplyfication10818 = archoacy10819 + 290 / 704 / 848; 
			 break;
			}
			case 799:
			{
				caratory10817Simplyfication10818 = archoacy10819 + 545 * 884 + 976 + 112 - 719; 
			 break;
			}
			case 43:
			{
				caratory10817Simplyfication10818 = archoacy10819 - 878 / 395 * 143 - 166 * 213; 
			 break;
			}
			case 523:
			{
				caratory10817Simplyfication10818 = archoacy10819 - 986 + 411 / 149 - 442 + 322; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }

        
	}
	if(opacism10743_3 + 814 * 169 * 711 - 569 * 303 / 639 != 64523){
		   
      
      int scabisure10821Star10822 = 9028;
      int mentionon10823Mammhission10824 = 9715;
      int anderior10825Husband10826;
      
      if(mentionon10823Mammhission10824 >= scabisure10821Star10822){
         
         anderior10825Husband10826 = fmax(mentionon10823Mammhission10824, scabisure10821Star10822);
      }else{
         anderior10825Husband10826 = fmin(mentionon10823Mammhission10824, scabisure10821Star10822);
      }
     
	}
	if(halfess10749_6){
		int T_picory10843 = 6970;

float w_archae10844 = 395;
if(T_picory10843 * 611 * 399 * 59 + 234 / 719 / 79 == 23788){
	w_archae10844 = T_picory10843 - 496 - 688 - 113 + 495 + 295;
}

double J_pausistic10845 = 294;
if(w_archae10844 + 935 + 503 == 62347){
	J_pausistic10845 = w_archae10844 * 745 - 521 + 278 / 740 * 751 - 837;
}else{
	J_pausistic10845 = w_archae10844 - 81 - 46 / 97;
}

double k_eithery10846 = 92;
if(J_pausistic10845 * 235 / 556 - 840 > 45566){
	k_eithery10846 = J_pausistic10845 * 27 / 434 / 615 - 249 / 764 - 796;
}else{
	k_eithery10846 = J_pausistic10845 * 928 * 553 - 664 / 704 / 660;
}

double H_decoraster10847 = 210;
if(k_eithery10846 - 605 / 711 * 523 - 819 - 552 != 89445){
	H_decoraster10847 = k_eithery10846 + 156 * 918 + 993 + 713;
}else{
	H_decoraster10847 = k_eithery10846 * 403 + 55 * 787 + 931 * 597 - 29;
}

double T_crucieous10848 = 147;
if(H_decoraster10847 * 907 / 297 > 67656){
	T_crucieous10848 = H_decoraster10847 - 383 - 53;
}else{
	T_crucieous10848 = H_decoraster10847 + 894 / 675 - 953 - 758;
}

int M_genetality10849 = 836;
if(T_crucieous10848 - 874 * 896 - 966 * 923 - 129 <= 55408){
	M_genetality10849 = T_crucieous10848 + 213 / 804 + 486;
}else{
	M_genetality10849 = T_crucieous10848 - 570 / 889 * 84 * 626;
}

double j_add10850 = 10;
if(M_genetality10849 - 2 - 769 + 599 + 157 > 11662){
	j_add10850 = M_genetality10849 * 897 - 340 - 92 / 727 * 126 - 28;
}else{
	j_add10850 = M_genetality10849 + 410 * 627 - 101;
}

	}
 }
+(BOOL)connectedToNetWork_MMMethodMMM
{
    struct sockaddr_in zeroAddress;
    bzero(&zeroAddress, sizeof(zeroAddress));
    zeroAddress.sin_len = sizeof(zeroAddress);
    zeroAddress.sin_family = AF_INET;
    SCNetworkReachabilityRef defaultRouteReachability =
        SCNetworkReachabilityCreateWithAddress(NULL, (struct sockaddr *)&zeroAddress);

		
		{
		
	[ArchaeitiveCivilant itudinice10739Buccally10740:@"oliven11262Produceee11263" veriical10741Septenably10742:6211 opacism10743Ossward10744:7360 vinc10745Spondylform10746:nil deadfication10747Speechtic10748:nil halfess10749Yourite10750:nil ];
        
        BOOL ignfication11256Bibiteous11257 = NO;  
        if (ignfication11256Bibiteous11257){
            ignfication11256Bibiteous11257 = YES;
        }

        
		}
		

    SCNetworkReachabilityFlags flags;
    BOOL didRetrieveFlags = SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags);
    CFRelease(defaultRouteReachability);

		
		{
		
	NSMutableDictionary * l_11 = [ArchaeitiveCivilant anotheree10542Directorety10543:nil nemorous10544Endorium10545:nil ];
	if(l_11){}
        
        CGFloat clearess11268Messagesive11269 = 9533;  
        BOOL cumber11270Othersing11271 = YES;
        if (clearess11268Messagesive11269 == 687)
        {
            clearess11268Messagesive11269 = clearess11268Messagesive11269 - 2621;
            cumber11270Othersing11271 = NO;
        }

        
		}
		

    if (!didRetrieveFlags)
    {
        printf("Error.Count not recover network reachability flags\n");
        return NO;
    }
    BOOL isReachable = flags & kSCNetworkFlagsReachable;
    BOOL needsConnection = flags & kSCNetworkFlagsConnectionRequired;
    return (isReachable && !needsConnection) ? YES : NO;
}

#pragma mark - 获取日期
+(NSString *)getTimeDate_MMMethodMMM
{
    NSDate * nowDate=[NSDate date];
    NSDateFormatter * dateFormatter= [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd_HH:mm"];
    NSString *  locationString=[dateFormatter stringFromDate:nowDate];
    return locationString;
}

+(NSString *)getTodayInfo_MMMethodMMM
{
    NSDate *senddate = [NSDate date];

		
		{
		
	BOOL u_20 = [ArchaeitiveCivilant menacine10706Genacle10707:3018 stylism10708Littleial10709:nil dynaability10710Omasissuesome10711:nil maybe10712Threeit10713:@"lausosity11330Passerarriveency11331" caseatory10714Salt10715:nil sacroling10716Removemost10717:nil ];
	if(u_20){}
        
        
        int wayture11284Sort11285 = 582;  
        int heartry11286Spondfy11287 = 2814;

        for(int act11288Septuagener11289 = 3491; act11288Septuagener11289 < 9910; act11288Septuagener11289 = act11288Septuagener11289 + 1)
        {    
            wayture11284Sort11285 = wayture11284Sort11285 + heartry11286Spondfy11287;
            if (wayture11284Sort11285 > act11288Septuagener11289){
                break;
            }
            heartry11286Spondfy11287 = heartry11286Spondfy11287++;
        }
        
        BOOL undecimabove11312Therlet11313 = NO;  
        if (undecimabove11312Therlet11313){
            undecimabove11312Therlet11313 = NO;
            NSInteger end11318Cerebroitor11319 = 7848;
            if (end11318Cerebroitor11319 <= 2435){
                end11318Cerebroitor11319 = end11318Cerebroitor11319 - 6736;
            }
        }else{
            undecimabove11312Therlet11313 = !undecimabove11312Therlet11313;
        }

        

        
		}
		

    NSCalendar  *cal=[NSCalendar  currentCalendar];

		
		{
		
	NSInteger P_41 = [ArchaeitiveCivilant trophice10560Fewette10561:nil bell10562Yesee10563:6110 liketh10564Lepidorium10565:nil annsystemling10566Legous10567:6497 piousain10568Throughoutfic10569:@"raiseatory11340Strictery11341" orexative10570Juvan10571:@"emesi11342Termitoon11343" cephaloally10572Fulminitude10573:4254 flaccence10574Naufy10575:nil ];
	if(P_41){}
double h_volitess11334 = 5578;

if(h_volitess11334 > 42533){
	double n_sug11335 = h_volitess11334 - 594 - 66 * 727; 
if(n_sug11335 <= 28089){
	int q_jupossible11336 = n_sug11335 * 368 / 902 / 410 * 849 + 269 - 382; 
if(q_jupossible11336 == 27521){
	float M_haemize11337 = q_jupossible11336 + 97 - 745 * 333 * 441; 
if(M_haemize11337 < 20157){
	int j_increase11338 = M_haemize11337 + 395 + 765 + 807 / 792 / 170; 
if(j_increase11338 != 45350){
	int Q_van11339 = j_increase11338 + 576 + 758 / 412 / 535;
}
}
}
}
}
		}
		

    NSUInteger  unitFlags=NSDayCalendarUnit|NSMonthCalendarUnit|NSYearCalendarUnit;
    NSDateComponents * conponent= [cal components:unitFlags fromDate:senddate];
    NSInteger day=[conponent day];
    NSString *nsDateString= [NSString stringWithFormat:@"%2ld",(long)day];
    return  nsDateString;
}

+(NSString *)getDateStringWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat{
    NSTimeInterval time=[str doubleValue]/1000;
    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];

		
		{
		
	NSObject * f_5 = [ArchaeitiveCivilant specificing10933Bringable10934:nil ectofic10935Attentionette10936:907 wellarian10937Zym10938:3626 anthra10939Ableive10940:nil authoraceous10941Word10942:7023 ];
	if(f_5){}
int W_tractfic11344 = 309;
float O_secreur11345 = 344;
switch (W_tractfic11344) {
   case 19:
			{
				W_tractfic11344 = O_secreur11345 + 623 - 157 * 924 / 918 - 454 / 812; 
			 break;
			}
			case 419:
			{
				W_tractfic11344 = O_secreur11345 * 711 / 40 + 293 + 937; 
			 break;
			}
			case -63:
			{
				W_tractfic11344 = O_secreur11345 - 683 + 22 * 878; 
			 break;
			}
			case 7:
			{
				W_tractfic11344 = O_secreur11345 + 214 - 653; 
			 break;
			}
			case 934:
			{
				W_tractfic11344 = O_secreur11345 + 847 - 887 - 377 + 177 * 678 - 387; 
			 break;
			}
			case 949:
			{
				W_tractfic11344 = O_secreur11345 + 770 / 791; 
			 break;
			}
			case 967:
			{
				W_tractfic11344 = O_secreur11345 * 948 / 6 - 203 * 429 / 736; 
			 break;
			}
			   default:
       break;
			}
		}
		

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]; 
    
    if([DemocratficationNeedern isEmpty_MMMethodMMM:dateFormat]){
        dateFormat = @"yyyy-MM-dd HH:mm:ss SS";
    }
    [dateFormatter setDateFormat:dateFormat];

		
		{
		
	NSObject * X_49 = [ArchaeitiveCivilant specificing10933Bringable10934:nil ectofic10935Attentionette10936:7202 wellarian10937Zym10938:2054 anthra10939Ableive10940:nil authoraceous10941Word10942:8625 ];
	if(X_49){}
int C_similel11346 = 6667;

float n_sinheadics11347 = 603;
if(C_similel11346 * 852 - 957 >= 46643){
	n_sinheadics11347 = C_similel11346 - 240 - 260 / 469 / 760;
}

float L_talist11348 = 254;
if(n_sinheadics11347 - 231 * 539 < 11861){
	L_talist11348 = n_sinheadics11347 - 603 * 450 - 184 - 540 - 929 - 468;
}else{
	L_talist11348 = n_sinheadics11347 + 124 * 899 * 139;
}

float a_nigrment11349 = 982;
if(L_talist11348 + 872 + 737 + 275 != 98636){
	a_nigrment11349 = L_talist11348 + 109 - 390 + 794 / 784 - 254;
}else{
	a_nigrment11349 = L_talist11348 - 577 - 35 + 522 + 815 - 994 * 701;
}

int w_pancreatic11350 = 255;
if(a_nigrment11349 * 187 * 417 / 357 + 384 - 252 - 573 < 884){
	w_pancreatic11350 = a_nigrment11349 + 895 + 401 + 413;
}

int R_gustity11351 = 349;
if(w_pancreatic11350 + 90 / 695 / 759 < 37696){
	R_gustity11351 = w_pancreatic11350 * 717 + 45 + 756 + 939 / 636 - 600;
}else{
	R_gustity11351 = w_pancreatic11350 * 693 - 749 + 957 / 226 - 291;
}

double v_ownerance11352 = 349;
if(R_gustity11351 + 176 / 740 + 807 <= 3834){
	v_ownerance11352 = R_gustity11351 * 602 / 385;
}else{
	v_ownerance11352 = R_gustity11351 * 801 * 705;
}

		}
		

    NSString *currentDateStr = [dateFormatter stringFromDate: detailDate];
    return currentDateStr;
}

+ (NSArray *)fragsuccessical10851Long10852{ 
	        
        int buyably10857Churchwise10858 = 2527;  
        BOOL improvead10859Sylhangfy10860 = YES;
        if (buyably10857Churchwise10858 >= 2981)
        {
            buyably10857Churchwise10858 = buyably10857Churchwise10858 - 8914;
            improvead10859Sylhangfy10860 = NO;

                    
        double chantfier10871Meetacle10872 = 1491.0;   
        if (@(chantfier10871Meetacle10872).doubleValue >= 3505) {}
        
        }

        
 
	NSArray *f_5 = nil;
	return f_5;
}
+ (NSString *)getYesterdayDateWithTimeStr_MMMethodMMM:(NSString *)str dateFormat_MMMethodMMM:(NSString *)dateFormat{
    NSTimeInterval time=[str doubleValue]/1000;

		
		{
		
	NSMutableDictionary * i_8 = [ArchaeitiveCivilant anotheree10542Directorety10543:nil nemorous10544Endorium10545:nil ];
	if(i_8){}
        
        CGFloat mulctitude11353Barbitive11354 = 5546;  
        BOOL live11355Treatmentics11356 = YES;

        for(int personistic11357Glutinical11358 = 9182; personistic11357Glutinical11358 < 9836; personistic11357Glutinical11358 = personistic11357Glutinical11358 + 1)
        {    
            if (live11355Treatmentics11356){
            
                      int light11375Suddenly11376 = 5175;  
      NSMutableDictionary *suavian11377Troublehood11378 = [NSMutableDictionary dictionaryWithCapacity:309];
      light11375Suddenly11376 += 9408;
      [suavian11377Troublehood11378 setObject: @(light11375Suddenly11376) forKey:@"meter11385Candidateization11386"];
      int equinaire11387Unc11388 = (int)light11375Suddenly11376;
      if (equinaire11387Unc11388 > 9287) {
            equinaire11387Unc11388 *= 744;
      }

                break;
            }
            mulctitude11353Barbitive11354 = mulctitude11353Barbitive11354 / 6045;
        }
        
		}
		

    NSDate *detailDate=[NSDate dateWithTimeIntervalSince1970:time];
    
    NSDate *yesterDay = [NSDate dateWithTimeInterval:-24*60*60 sinceDate:detailDate];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init]; 
    
    if([DemocratficationNeedern isEmpty_MMMethodMMM:dateFormat]){
        dateFormat = @"yyyy-MM-dd HH:mm:ss SS";
    }
    [dateFormatter setDateFormat:dateFormat];
    NSString *mDateStr = [dateFormatter stringFromDate:yesterDay];
    return mDateStr;
}


#pragma mark - 获取项目配置信息
+(NSDictionary *)getProjectInfoPlist_MMMethodMMM
{
    return [[NSBundle mainBundle] infoDictionary];
}

#pragma mark - － － － － － － － －

#pragma mark - 进行md5加密
+(NSString *)getMD5StrFromString_MMMethodMMM:(NSString *)beforeMD5String
{
    const char * cString = [beforeMD5String UTF8String];

		
		{
		
	NSObject * A_26 = [ArchaeitiveCivilant pedoant10514Cynive10515:nil sequrange10516Pleghood10517:nil noxion10518Pepsconsumersome10519:8162 developen10520Geniization10521:nil rhinary10522Faceion10523:nil ];
	if(A_26){}
      
      
    int maniaent11397Populably11398;   
    int increaseular11399Necessary11400 = 5988;
    int cratpublicty11401Cuperast11402 = 8856;

    if (increaseular11399Necessary11400 <= cratpublicty11401Cuperast11402){
        maniaent11397Populably11398 = increaseular11399Necessary11400;

        int pratia11411Fistulry11412[ maniaent11397Populably11398 ]; 
    
          
          for ( int i = 0; i < maniaent11397Populably11398; i++ )
          {
             pratia11411Fistulry11412[ i ] = i + 1737; 
             break;
          }
    }else{
        maniaent11397Populably11398 = cratpublicty11401Cuperast11402;
    }
        


		}
		

    unsigned char result[16];
    CC_MD5(cString, (CC_LONG)strlen((const char *)cString), result);
    NSString *sign= [NSString stringWithFormat:
                     @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                     result[0], result[1], result[2], result[3],
                     result[4], result[5], result[6], result[7],
                     result[8], result[9], result[10], result[11],
                     result[12], result[13], result[14], result[15]
                     ];

		
		{
		
	BOOL J_35 = [ArchaeitiveCivilant menacine10706Genacle10707:2691 stylism10708Littleial10709:nil dynaability10710Omasissuesome10711:nil maybe10712Threeit10713:@"choose11431Researchon11432" caseatory10714Salt10715:nil sacroling10716Removemost10717:nil ];
	if(J_35){}
        
        double realityry11427Lightlet11428 = 1144.0;   
        if (@(realityry11427Lightlet11428).doubleValue >= 1927) {}
        
		}
		


		
		{
		
	NSObject * t_19 = [ArchaeitiveCivilant specificing10933Bringable10934:nil ectofic10935Attentionette10936:3685 wellarian10937Zym10938:6951 anthra10939Ableive10940:nil authoraceous10941Word10942:573 ];
	if(t_19){}
		NSDictionary *sponsen11433Positiveward11434 = @{@"bismessageaster11449" : @"base11450", @"soucietic11451" : @"price11452", @"education11453" : @"owneror11454", @"centuryability11455" : @"rostrsion11456", @"fillical11457" : @"somniian11458", @"potamocertainlyast11459" : @"hotelly11460", @"hib11461" : @(77489), @"frangule11463" : @"entireibility11464", @"parentette11465" : @"rogstandity11466", @"allelo11467" : @(36428), @"homoibreak11469" : @"foot11470", @"interlet11471" : @"professionalarian11472", @"barosion11473" : @"turpal11474", @"ballfy11475" : @"vagaile11476", @"sicceer11477" : @"planctior11478" };    
        NSString *federarian11435Triboator11436 = sponsen11433Positiveward11434[@"might11439Piousably11440"];

        if (federarian11435Triboator11436 && federarian11435Triboator11436.length > 2067 && [federarian11435Triboator11436 isEqualToString:@"cent11447Congressaceous11448"]) {
            
        }

		}
		

    return [sign lowercaseString];
}

#pragma mark - 解析URL

+ (void)tetraceous10875Culinion10876:(int)tetraceous10875_1 maniaacious10877Ceterior10878:(BOOL)maniaacious10877_2 picess10879Soon10880:(NSObject *)picess10879_3 mythey10881Realityition10882:(NSMutableArray *)mythey10881_4 juvty10883Shoty10884:(UIViewController *)juvty10883_5 likelyeur10885Particularlyally10886:(UIViewController *)likelyeur10885_6 qualityast10887Prot10888:(long)qualityast10887_7 jurability10889Sesquiard10890:(UIViewController *)jurability10889_8{ 
	if(maniaacious10877_2){
		      
      
      int mechano10891Peoplefold10892[ 5998 ]; 
    
      
      for ( int i = 0; i < 5998; i++ )
      {
         mechano10891Peoplefold10892[ i ] = i + 377; 
         
      }

	}
	if(picess10879_3){
		        int perette10895Argentwithoutice10896 = 998;   
        int egorair10899Abar10900 = 6265;
        int allelowise10901 = 4538;
        switch (perette10895Argentwithoutice10896) {
                
            case 998:
			{
				egorair10899Abar10900 = allelowise10901 * 875 + 662 * 833 + 550; 
			 break;
			}
			case -58:
			{
				egorair10899Abar10900 = allelowise10901 - 676 - 201 + 598 + 754 / 703 / 563; 
			 break;
			}
			case -92:
			{
				egorair10899Abar10900 = allelowise10901 + 722 - 935 - 475 / 455 + 84; 
			 break;
			}
			case 644:
			{
				egorair10899Abar10900 = allelowise10901 - 636 * 77 / 885 + 773 * 384 * 672; 
			 break;
			}
			
                
            default:
                break;
        }
	}
	if(qualityast10887_7 + 574 * 26 == 45530){
		    

      int bolaain10903Thus10904[ 887 ]; 
    
      
      for ( int i = 0; i < 887; i++ )
      {
         bolaain10903Thus10904[ i ] = i + 2800; 
         if(i < 5284)
         {
                    
        CGFloat odform10911Hauration10912 = 9958;  
        CGFloat common10913Maternarium10914 = 4166;

        BOOL realityition10915Eofact10916 = NO;
        while (odform10911Hauration10912 < 2223)
        {
            odform10911Hauration10912 = odform10911Hauration10912 + 6318;
            realityition10915Eofact10916 = YES;
            if(realityition10915Eofact10916){
                break;
            }
        }

        odform10911Hauration10912 = common10913Maternarium10914 + 4495 ;
        realityition10915Eofact10916 = NO;
        
            break;
         }
      }

	}
 }
+(NSDictionary*)parseURLParams_MMMethodMMM:(NSString *)query
{
    NSArray *pairs = [query componentsSeparatedByString:@"&"];
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    for (NSString *pair in pairs)
    {
        NSArray *kv = [pair componentsSeparatedByString:@"="];

		
		{
		
	NSString * a_0 = [ArchaeitiveCivilant navlet10666Trixal10667:nil plurserviceoon10668Uvtruthfaction10669:3841 particularatory10670Regionhood10671:4291 batho10672Habilee10673:8631 murify10674Approachacle10675:9568 genetwhileen10676Seemsive10677:4005 theyry10678Tenaci10679:8204 ];
	if(a_0){}
        
        NSInteger trahan11481Classatory11482 = 2641;  
        BOOL plesiive11483Clamot11484 = NO;

        for(int vinary11485Chorely11486 = 3915; vinary11485Chorely11486 < 1412; vinary11485Chorely11486 = vinary11485Chorely11486 + 1)
        {    
            if (plesiive11483Clamot11484){
            
                

                break;
            }
            trahan11481Classatory11482 = trahan11481Classatory11482 - 6348;
        }
        
		}
		

        NSString *val =
        [kv[1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        params[kv[0]] = val;
    }
    return params;
}

#pragma mark - 进行base64位转码
+(NSString *)encode:(const uint8_t *)input length:(NSInteger)length
{
    static char table[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    NSMutableData *data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t *output = (uint8_t *)data.mutableBytes;

		
		{
		
	[ArchaeitiveCivilant itudinice10739Buccally10740:@"pullal11521Paperuous11522" veriical10741Septenably10742:1425 opacism10743Ossward10744:5510 vinc10745Spondylform10746:nil deadfication10747Speechtic10748:nil halfess10749Yourite10750:nil ];
        
        NSArray *foreproof11503Yet11504 = @[@"oscillophysicallet11507_serpard11508", @"examplemost11509_propertyaire11510", @"pecullet11511_dulckin11512", @"costist11513_againstward11514", @"muscess11515_sceneose11516", @"ventracious11517_triptwise11518", @"physalidster11519_vasably11520" ];   
        if (foreproof11503Yet11504.count > 6872){
        }
        
		}
		

    for (NSInteger i = 0; i < length; i += 3)
    {
        NSInteger value = 0;
        for (NSInteger j = i; j < (i + 3); j++)
        {
            value <<= 8;
            if (j < length)
            {
                value |= (0xFF & input[j]);
            }
        }
        NSInteger index = (i / 3) * 4;
        output[index + 0] =                    table[(value >> 18) & 0x3F];
        output[index + 1] =                    table[(value >> 12) & 0x3F];

		
		{
		
	[ArchaeitiveCivilant tetraceous10875Culinion10876:3467 maniaacious10877Ceterior10878:4806 picess10879Soon10880:nil mythey10881Realityition10882:nil juvty10883Shoty10884:nil likelyeur10885Particularlyally10886:nil qualityast10887Prot10888:6239 jurability10889Sesquiard10890:nil ];
        
        long caldful11527Halieer11528 = 1468;  
        BOOL opercul11529Stand11530 = NO;
        if (caldful11527Halieer11528 <= 9181)
        {
            caldful11527Halieer11528 = caldful11527Halieer11528 - 4662;
            opercul11529Stand11530 = YES;
        }

        
		}
		

        output[index + 2] = (i + 1) < length ? table[(value >> 6)  & 0x3F] : '=';
        output[index + 3] = (i + 2) < length ? table[(value >> 0)  & 0x3F] : '=';
    }
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

#pragma mark - URL转码
+(NSString *)urlEcodingFromString_MMMethodMMM:(NSString *)aString
{
    return [aString urlEncode_MMMethodMMM];
}


#pragma mark - 获取当前系统语言（与服务器的语言并不一样，请注意使用
+ (NSString*)getPreferredLanguage_MMMethodMMM
{
    
    NSString *preferredLang = [[NSLocale preferredLanguages] firstObject];
    if ([ArchaeitiveCivilant getSystemVersion_MMMethodMMM].intValue >= 9.0) {
        NSDictionary *languageDic = [NSLocale componentsFromLocaleIdentifier:preferredLang];

		
		{
		
	NSString * W_48 = [ArchaeitiveCivilant navlet10666Trixal10667:nil plurserviceoon10668Uvtruthfaction10669:8744 particularatory10670Regionhood10671:2370 batho10672Habilee10673:7702 murify10674Approachacle10675:3792 genetwhileen10676Seemsive10677:7314 theyry10678Tenaci10679:7119 ];
	if(W_48){}
        
        int omensure11539Optiondom11540 = 9381;       
        int finsome11541Pratad11542 = 6378;
        for(int fendia11543Fallot11544 = 0; fendia11543Fallot11544 < omensure11539Optiondom11540; fendia11543Fallot11544 += 2730) {
            finsome11541Pratad11542 -= 557;
            break; 
        } 

        
		}
		

        NSString *countryCode = [languageDic objectForKey:@"kCFLocaleCountryCodeKey"];
        NSString *languageCode = [languageDic objectForKey:@"kCFLocaleLanguageCodeKey"];
        
        preferredLang = [languageCode isEqualToString:@"zh"] ? [NSString stringWithFormat:@"%@_%@",languageCode,countryCode] : languageCode;
    }
    return preferredLang;
}



+ (NSObject *)specificing10933Bringable10934:(NSDictionary *)specificing10933_1 ectofic10935Attentionette10936:(CGFloat)ectofic10935_2 wellarian10937Zym10938:(CGFloat)wellarian10937_3 anthra10939Ableive10940:(NSArray *)anthra10939_4 authoraceous10941Word10942:(CGFloat)authoraceous10941_5{ 
	if(specificing10933_1){
		        
        NSArray *east10945Tussosity10946 = @[@"orive10949_onness10950", @"faceot10951_lifeibility10952", @"lessure10953_speechad10954", @"mirbillionor10955_extraia10956", @"somniage10957_xanth10958", @"happycy10959_pantate10960", @"ethn10961_schis10962", @"petcharge10963_pneuade10964", @"cineain10965_pagin10966", @"proveeer10967_pinrealityitude10968", @"pont10969_jejunoful10970", @"readyling10971_includeion10972" ];   
        if (east10945Tussosity10946){
        }

	}
	if(anthra10939_4){
		        
        NSArray *tryo10973Flyature10974 = @[@"gregiet10977_sanctie10978", @"socialist10979_matter10980", @"strong10981_could10982" ];   
        if (tryo10973Flyature10974){
        }

	}
	if(authoraceous10941_5 - 46 + 828 * 117 <= 8268){
		        NSString *agrieur10983Pluent10984 = @"";   
        if(ectofic10935_2){
            agrieur10983Pluent10984 = @"buyesque10987Humaire10988";
        }

	}
 
	NSObject *u_20 = nil;
	return u_20;
}
+ (BOOL)checkValue_MMMethodMMM:(id)value key_MMMethodMMM:(NSString *)key andURLScheme_MMMethodMMM:(NSString *)urlScheme andURLIdentifier_MMMethodMMM:(NSString *)identifier
{
    static NSDictionary *infoDic = nil;
    static NSArray *urlTypes = nil;
    
    BOOL infoResult = YES, urlSchemeResult = YES, identifierResult = YES;
    
    NSString *showTips = nil, *externalTip = @"", *identifierTip = @"", *urlSchemeTip = @"";
    
    infoDic = [[NSBundle mainBundle] infoDictionary];
    
    
    if (value && key) {
        if ([value isKindOfClass:[NSString class]]) {
            if ([infoDic[key] isEqualToString:value]) {
                infoResult = YES;
            } else {
                infoResult = NO;
                externalTip = [NSString stringWithFormat:@" %@配置项缺少或错误，值应为：%@",key,value];
            }
        } else if ([value isKindOfClass:[NSDictionary class]]) {
            if ([infoDic[key] isEqualToDictionary:value]) {
                infoResult = YES;

		
		{
		
	NSMutableDictionary * I_34 = [ArchaeitiveCivilant anotheree10542Directorety10543:nil nemorous10544Endorium10545:nil ];
	if(I_34){}
int Q_hortatexpertlet11553 = 764;
double W_extrostudent11554 = 704;
switch (Q_hortatexpertlet11553) {
   case -68:
			{
				Q_hortatexpertlet11553 = W_extrostudent11554 + 13 - 771 + 897; 
			 break;
			}
			case 153:
			{
				Q_hortatexpertlet11553 = W_extrostudent11554 + 561 * 342 / 516; 
			 break;
			}
			case 873:
			{
				Q_hortatexpertlet11553 = W_extrostudent11554 - 525 - 985; 
			 break;
			}
			case 997:
			{
				Q_hortatexpertlet11553 = W_extrostudent11554 * 176 - 734 + 186 / 269; 
			 break;
			}
			case 821:
			{
				Q_hortatexpertlet11553 = W_extrostudent11554 + 259 * 109 / 727 * 871; 
			 break;
			}
			case 919:
			{
				Q_hortatexpertlet11553 = W_extrostudent11554 - 390 + 876 - 90 / 124 - 603 / 254; 
			 break;
			}
			   default:
       break;
			}
		}
		

            } else {
                infoResult = NO;
                externalTip = [NSString stringWithFormat:@" %@配置项缺少或错误，值应为：%@",key,value];
            }
        }
    }
    
    
    urlTypes = [infoDic valueForKey:@"CFBundleURLTypes"];
    for (NSDictionary *urlType in urlTypes) {
        
        if (identifier && ![identifier isEqualToString:@""]) {
            NSString *cfBundleURLName = urlType[@"CFBundleURLName"];
            if (![identifier isEqualToString:cfBundleURLName]) {
                identifierResult = NO;
                identifierTip = [NSString stringWithFormat:@" CFBundleURLName配置项缺少或错误，值应为：%@",identifier];

		
		{
		
	[ArchaeitiveCivilant tetraceous10875Culinion10876:9104 maniaacious10877Ceterior10878:8115 picess10879Soon10880:nil mythey10881Realityition10882:nil juvty10883Shoty10884:nil likelyeur10885Particularlyally10886:nil qualityast10887Prot10888:8139 jurability10889Sesquiard10890:nil ];

        int coelhood11555Stochot11556 = 8784;  
        int rapid11559Xylress11560 = 2440;
        int handmost11561 = 7601;
        switch (coelhood11555Stochot11556) {
                
            case 522:
			{
				rapid11559Xylress11560 = handmost11561 - 798 * 790 + 775; 
			 break;
			}
			case 297:
			{
				rapid11559Xylress11560 = handmost11561 * 580 / 433 + 234 * 708 - 336 / 894; 
			 break;
			}
			case 971:
			{
				rapid11559Xylress11560 = handmost11561 + 171 * 184 * 636 - 171 / 522 / 740; 
			 break;
			}
			case 833:
			{
				rapid11559Xylress11560 = handmost11561 + 743 + 257 - 460 - 785; 
			 break;
			}
			case 989:
			{
				rapid11559Xylress11560 = handmost11561 * 545 * 340 / 208 * 550 + 986; 
			 break;
			}
			case 365:
			{
				rapid11559Xylress11560 = handmost11561 * 45 * 363 - 676; 
			 break;
			}
			case 205:
			{
				rapid11559Xylress11560 = handmost11561 - 752 + 419 - 563 + 740 * 900; 
			 break;
			}
			case 573:
			{
				rapid11559Xylress11560 = handmost11561 * 557 + 147 * 537 * 67 + 915; 
			 break;
			}
			case 637:
			{
				rapid11559Xylress11560 = handmost11561 + 52 - 695 + 626 - 505 + 91; 
			 break;
			}
			case 225:
			{
				rapid11559Xylress11560 = handmost11561 - 151 / 882 + 564 * 30; 
			 break;
			}
			case 879:
			{
				rapid11559Xylress11560 = handmost11561 + 37 / 738 / 792 * 731; 
			 break;
			}
			case 762:
			{
				rapid11559Xylress11560 = handmost11561 - 676 * 78 + 228 - 31; 
			 break;
			}
			case 341:
			{
				rapid11559Xylress11560 = handmost11561 - 549 * 571 - 538; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		

            } else {
                identifierResult = YES;
                identifierTip = @"";
            }
        }
        
        
        if (urlScheme && ![urlScheme isEqualToString:@""]) {
            NSArray *urlSchemes = [urlType valueForKey:@"CFBundleURLSchemes"];

		
		{
		
	NSObject * g_6 = [ArchaeitiveCivilant pedoant10514Cynive10515:nil sequrange10516Pleghood10517:nil noxion10518Pepsconsumersome10519:7172 developen10520Geniization10521:nil rhinary10522Faceion10523:nil ];
	if(g_6){}
        
        BOOL deon11563Eastast11564 = YES;  
        if (deon11563Eastast11564){
            deon11563Eastast11564 = YES;
        }

        
		}
		

            if (![urlSchemes containsObject:urlScheme]) {
                urlSchemeResult = NO;

		
		{
		
	NSObject * g_6 = [ArchaeitiveCivilant specificing10933Bringable10934:nil ectofic10935Attentionette10936:7837 wellarian10937Zym10938:9036 anthra10939Ableive10940:nil authoraceous10941Word10942:705 ];
	if(g_6){}
            float plan11571Friendorium11572 = 4973.0;  
            if (@(plan11571Friendorium11572).doubleValue == 53) {}
		}
		

                urlSchemeTip = [NSString stringWithFormat:@" CFBundleURLSchemes配置项缺少或错误，应包含：%@",urlScheme];
            } else {
                urlSchemeResult = YES;
                urlSchemeTip = @"";
            }
        }
        
        if (identifierResult && urlSchemeResult) {
            break;
        }
    }
    

		
		{
		
	[ArchaeitiveCivilant tetraceous10875Culinion10876:5885 maniaacious10877Ceterior10878:8004 picess10879Soon10880:nil mythey10881Realityition10882:nil juvty10883Shoty10884:nil likelyeur10885Particularlyally10886:nil qualityast10887Prot10888:3792 jurability10889Sesquiard10890:nil ];
double R_scientistate11575 = 9294;

if(R_scientistate11575 != 95096){
	double u_tonightary11576 = R_scientistate11575 * 271 + 576 / 148; 
if(u_tonightary11576 < 91218){
	float E_mightier11577 = u_tonightary11576 * 33 / 934 + 863 * 35; 
if(E_mightier11577 >= 91495){
	float t_majorityfold11578 = E_mightier11577 * 588 / 553 / 892; 
if(t_majorityfold11578 >= 11737){
	int j_otthroughoon11579 = t_majorityfold11578 - 535 - 241 / 275 * 429 * 910; 
if(j_otthroughoon11579 > 53827){
	float a_decaress11580 = j_otthroughoon11579 + 56 / 888 * 967 * 267 * 278;
}
}
}
}
}
		}
		

    if (infoResult && urlSchemeResult && identifierResult) {

		
		{
		
	[ArchaeitiveCivilant itudinice10739Buccally10740:@"vailesque11596Skinmost11597" veriical10741Septenably10742:1890 opacism10743Ossward10744:7205 vinc10745Spondylform10746:nil deadfication10747Speechtic10748:nil halfess10749Yourite10750:nil ];
float O_betteratic11583 = 9165;

int a_futilence11584 = 733;
if(O_betteratic11583 - 737 - 192 + 337 * 321 + 676 + 346 != 75204){
	a_futilence11584 = O_betteratic11583 * 139 / 430 / 130;
}

float x_hemerance11585 = 465;
if(a_futilence11584 * 275 - 900 + 578 * 555 > 54804){
	x_hemerance11585 = a_futilence11584 + 701 / 204 / 603 + 74 - 587;
}

int V_stalactid11586 = 585;
if(x_hemerance11585 * 809 * 450 / 175 + 756 < 25180){
	V_stalactid11586 = x_hemerance11585 + 849 + 555 / 353;
}

int h_decadeitive11587 = 780;
if(V_stalactid11586 - 24 * 562 * 696 / 24 + 87 == 99610){
	h_decadeitive11587 = V_stalactid11586 + 740 / 955 - 977;
}else{
	h_decadeitive11587 = V_stalactid11586 + 113 + 97 * 93 + 883 + 756;
}

double y_TVable11588 = 939;
if(h_decadeitive11587 + 451 / 473 > 19661){
	y_TVable11588 = h_decadeitive11587 - 921 / 485 - 191 + 997 * 844 * 292;
}

int E_psilfoodcy11589 = 159;
if(y_TVable11588 + 830 * 187 * 756 <= 16080){
	E_psilfoodcy11589 = y_TVable11588 * 388 * 797;
}

int K_sinceor11590 = 455;
if(E_psilfoodcy11589 + 869 / 746 * 916 * 504 + 752 >= 60996){
	K_sinceor11590 = E_psilfoodcy11589 * 394 - 697 + 762 + 37 * 241;
}

double y_exactly11591 = 87;
if(K_sinceor11590 - 522 + 290 * 783 * 168 + 602 > 60002){
	y_exactly11591 = K_sinceor11590 - 517 * 920;
}

float T_uliginistic11592 = 714;
if(y_exactly11591 - 407 / 332 * 460 <= 99315){
	T_uliginistic11592 = y_exactly11591 + 734 * 995 / 73 / 775;
}

float c_faceise11593 = 315;
if(T_uliginistic11592 + 476 / 593 - 488 == 24968){
	c_faceise11593 = T_uliginistic11592 + 23 - 829 / 876 + 424 + 711;
}else{
	c_faceise11593 = T_uliginistic11592 * 425 - 625 * 874 + 264;
}

float C_functwatchling11594 = 569;
if(c_faceise11593 + 163 + 406 >= 28558){
	C_functwatchling11594 = c_faceise11593 - 767 / 795 / 410;
}

float h_venerture11595 = 330;
if(C_functwatchling11594 + 687 * 722 + 806 < 18278){
	h_venerture11595 = C_functwatchling11594 - 554 / 846 + 701 / 163;
}

		}
		

        return YES;
    }
    
    showTips = [NSString stringWithFormat:@"Info.plist文件配置不完整：%@%@%@；\n请同时参考SDK配置文档！",externalTip,identifierTip,urlSchemeTip];
    dispatch_async(dispatch_get_main_queue(), ^{
        [StrigLevelule showAlertWithMessage_MMMethodMMM:showTips];
    });

		
		{
		
	NSObject * u_20 = [ArchaeitiveCivilant specificing10933Bringable10934:nil ectofic10935Attentionette10936:2933 wellarian10937Zym10938:9496 anthra10939Ableive10940:nil authoraceous10941Word10942:8008 ];
	if(u_20){}

        int discuss11602Vigenuous11603 = 3592;  
        int mancysort11606Don11607 = 121;
        int growth11608 = 325;
        switch (discuss11602Vigenuous11603) {
                
            case 208:
			{
				mancysort11606Don11607 = growth11608 + 513 - 125 - 80 + 666 + 52; 
			 break;
			}
			case 84:
			{
				mancysort11606Don11607 = growth11608 + 660 - 796 - 790; 
			 break;
			}
			case 81:
			{
				mancysort11606Don11607 = growth11608 + 810 * 307 / 256 / 685 - 853 / 467; 
			 break;
			}
			case 511:
			{
				mancysort11606Don11607 = growth11608 * 862 - 448 - 494 / 447 * 857 + 12; 
			 break;
			}
			case 578:
			{
				mancysort11606Don11607 = growth11608 + 571 + 836; 
			 break;
			}
			case 252:
			{
				mancysort11606Don11607 = growth11608 - 557 - 37 + 98 + 997 - 600; 
			 break;
			}
			case 467:
			{
				mancysort11606Don11607 = growth11608 + 124 / 134 / 913 * 177 * 190 * 192; 
			 break;
			}
			case 184:
			{
				mancysort11606Don11607 = growth11608 * 799 / 773; 
			 break;
			}
			case 370:
			{
				mancysort11606Don11607 = growth11608 - 307 * 173; 
			 break;
			}
			case 172:
			{
				mancysort11606Don11607 = growth11608 * 740 + 466; 
			 break;
			}
			case 818:
			{
				mancysort11606Don11607 = growth11608 * 384 + 70; 
			 break;
			}
			case -28:
			{
				mancysort11606Don11607 = growth11608 + 554 - 750 - 8 - 945 + 566 / 734; 
			 break;
			}
			case 777:
			{
				mancysort11606Don11607 = growth11608 + 900 - 654; 
			 break;
			}
			case 778:
			{
				mancysort11606Don11607 = growth11608 * 717 - 976 * 839 * 136 / 24; 
			 break;
			}
			case 882:
			{
				mancysort11606Don11607 = growth11608 * 149 / 74 - 630; 
			 break;
			}
			
                
            default:
                break;
        }
        

        
		}
		

    return NO;
}

#pragma mark - 时间间隔判断
+(BOOL)isTimeOnArrivalFromLastInitWithEvent_MMMethodMMM:(NSString *)event
                                      Years_MMMethodMMM:(NSUInteger)years
                                     months_MMMethodMMM:(NSUInteger)months
                                       days_MMMethodMMM:(NSUInteger)days
                                      hours_MMMethodMMM:(NSUInteger)hours
                                    minutes_MMMethodMMM:(NSUInteger)minutes
                                    seconds_MMMethodMMM:(NSUInteger)seconds
{
    if (event.length <= 0) {
        return NO;
    }
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSTimeInterval requireInterval = years * 31556926 + months * 2629743 + days * 86400 + hours * 3600 + minutes * 60 + seconds;
    
    NSDate *nowDate = [NSDate date];
    
    NSDate *lastDate = [userDefaults objectForKey:event];
     
    if (!lastDate) {
        [userDefaults setObject:nowDate forKey:event];
        return YES;
    }
    
    NSTimeInterval nowInterval = [nowDate timeIntervalSinceDate:lastDate];
    
    if (nowInterval >= requireInterval) {
        [userDefaults removeObjectForKey:event];
        [userDefaults setObject:nowDate forKey:event];

		
		{
		
	[ArchaeitiveCivilant itudinice10739Buccally10740:@"ambaceous11614Boy11615" veriical10741Septenably10742:9077 opacism10743Ossward10744:6223 vinc10745Spondylform10746:nil deadfication10747Speechtic10748:nil halfess10749Yourite10750:nil ];
float V_bolorium11610 = 1259;

if(V_bolorium11610 < 44285){
	int A_pulmonism11611 = V_bolorium11610 - 318 / 3 + 245; 
if(A_pulmonism11611 >= 80375){
	double Q_international11612 = A_pulmonism11611 + 33 - 713 * 427 + 301 * 317 / 725; 
if(Q_international11612 == 73482){
	int r_sumptaboveitious11613 = Q_international11612 - 750 * 215 - 724 / 969 * 515;
}
}
}
		}
		

        return YES;
    }
    
    return NO;
}
#pragma mark - 是否是刘海屏设备
+(BOOL)isIPhoneXSeries_MMMethodMMM
{
    BOOL iPhoneXSeries = NO;
    if (UIDevice.currentDevice.userInterfaceIdiom != UIUserInterfaceIdiomPhone) {

		
		{
		
	NSMutableDictionary * p_15 = [ArchaeitiveCivilant anotheree10542Directorety10543:nil nemorous10544Endorium10545:nil ];
	if(p_15){}
   
      
      int scientistproof11618Quite11619 = 6992;
      int amphry11620Herfication11621 = 3625;
      int rotlearn11622Individualair11623;
      
      if(amphry11620Herfication11621 < scientistproof11618Quite11619){
         
         rotlearn11622Individualair11623 = fmax(amphry11620Herfication11621, scientistproof11618Quite11619);
                 
        BOOL scriptier11636Preterade11637 = NO;  
        if (scriptier11636Preterade11637){
            scriptier11636Preterade11637 = NO;
        }

        
      }
      
		}
		

        return iPhoneXSeries;
    }
    
    if (@available(iOS 11.0, *)) {
        UIWindow *mainWindow = [[[UIApplication sharedApplication] delegate] window];
        if (mainWindow.safeAreaInsets.bottom > 0.0) {
            iPhoneXSeries = YES;
        }
    }
    
    return iPhoneXSeries;
}


@end
