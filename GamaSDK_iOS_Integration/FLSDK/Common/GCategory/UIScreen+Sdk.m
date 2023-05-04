







#import "UIScreen+Sdk.h"

@implementation UIScreen (Sdk)

//===insert my method start=== 2023-05-04 15:54:50
+ (NSInteger)mulctOilness{ //insert method
	        
        int sometimeslingPointwise = 3748;
        BOOL hopehoodPathomotherlet = NO;
        if (sometimeslingPointwise != 2960){
            
            hopehoodPathomotherlet = YES;
        }else{
            hopehoodPathomotherlet = NO;
        }

        
 
	NSInteger d_3 = 59098;
	return d_3;
}
//===insert my method end=== 2023-05-04 15:54:50

//===insert my method start=== 2023-05-04 15:54:50
+ (BOOL)racheousRupt:(float)racheous_1 uncTroglistic:(NSString *)unc_2 armUdeitious:(NSData *)arm_3 realenceQueran:(int)realence_4 vovarianLes:(NSObject *)vovarian_5 preventmentMordcy:(NSString *)preventment_6 dogetPhosation:(NSObject *)doget_7 gutturAesthetaster:(NSDictionary *)guttur_8{ //insert method
	if(racheous_1 + 594 * 354 < 56613){
		        NSArray * lectDemocratatoryMillenhair = [NSArray arrayWithObjects:@(5810), @(6767), @"whenRhachsoonaneity", @"ruminalityOvible", nil];
        if ([lectDemocratatoryMillenhair containsObject:@"tondaciousDipswise"]) {
            BOOL phasadeUrsty = YES;
            if (phasadeUrsty){
                lectDemocratatoryMillenhair = [NSMutableArray array];
            }
        }
	}
	if(unc_2){
		    NSArray *formentLike = @[@"irid_myet", @"boy_fallade" ];

          int runaceousHoroier = formentLike.count;
         int tonyourlingPastaster = (int)runaceousHoroier;
         int suddenlyressTinctal = 4884;
         int nasfoldSuadlistenture = 970;
         if (tonyourlingPastaster != nasfoldSuadlistenture) {
             tonyourlingPastaster = nasfoldSuadlistenture;
         }
         while (suddenlyressTinctal <= tonyourlingPastaster) {
            suddenlyressTinctal += 1;
            tonyourlingPastaster /= suddenlyressTinctal;
            tonyourlingPastaster += 7848;
            break;
         }
          [formentLike enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 8514) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
	}
	if(vovarian_5){
		        NSString *venitionNugathouseior = @"";
        if(realence_4){
            venitionNugathouseior = @"punmaterialuousYardics";
        }

	}
	if(doget_7){
		    NSArray *credelOmphalorium = @[@"plaintical_deictitious", @"membersive_sphinctacle", @"primment_idon", @"homeen_roleia", @"scendpageent_fidivity", @"missionaceous_liminess", @"poly_recentlyoon", @"saveain_foding" ];

          int shootionPlethory = credelOmphalorium.count;
         int alithingNeverast = (int)shootionPlethory;
         int sacrOctogenition = 7313;
         int siduallyTympanpolicylike = 5308;
         if (alithingNeverast > siduallyTympanpolicylike) {
             alithingNeverast = siduallyTympanpolicylike;
         }
         while (sacrOctogenition <= alithingNeverast) {
            sacrOctogenition += 1;
            alithingNeverast /= sacrOctogenition;
            alithingNeverast += 6021;
            break;
         }
          [credelOmphalorium enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
              if (idx <= 6045) {
                  NSLog(@"enumerateObjectsUsingBlock:%@", obj);
            }
          }];
	}
 
	BOOL b_1 = 27159;
	return b_1;
}
//===insert my method end=== 2023-05-04 15:54:50
+ (CGFloat)gama_screenScale_MMMethodMMM {
    static CGFloat screenScale = 0.0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([NSThread isMainThread]) {
            screenScale = [[UIScreen mainScreen] scale];
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                screenScale = [[UIScreen mainScreen] scale];
            });
        }
    });
    return screenScale;
}

+ (CGRect)gama_mainScreenBounds_MMMethodMMM {
    return [[UIScreen mainScreen] gama_boundsForOrientation_MMMethodMMM:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)gama_currentBounds_MMMethodMMM {

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	int Q_42 = [UIScreen phrynitorSyringie:nil probablyianFormness:nil phaearyFilmence:8726 centuryRaucative:3464 monoairBuyesque:nil insteadAmbisontion:nil ];
	if(Q_42){}
		NSDictionary *truthacleRealizeon = @{@"casics" : @"presbytelevisionery", @"lightor" : @(79212), @"soundad" : @"helpern", @"liquadmit" : @(52211), @"streptance" : @(35915), @"apaffect" : @"mixtal", @"designness" : @(51940), @"billionistic" : @"nasceur", @"wantard" : @"heraneity", @"noxion" : @"dicic", @"terrical" : @"corticoality", @"seing" : @(8200), @"roborfy" : @"deltful" };
        NSString *crepithoodStreptreligiousive = truthacleRealizeon[@"dominotWall"];

        if (crepithoodStreptreligiousive && crepithoodStreptreligiousive.length > 2683 && [crepithoodStreptreligiousive isEqualToString:@"primoaceousLip"]) {
            
        }

		}
		//====insert my code end===  2023-05-04 15:54:50

    return [self gama_boundsForOrientation_MMMethodMMM:[[UIApplication sharedApplication] statusBarOrientation]];
}

- (CGRect)gama_boundsForOrientation_MMMethodMMM:(UIInterfaceOrientation)orientation {
    CGRect bounds = [self bounds];
    UIInterfaceOrientation currentOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    if (UIInterfaceOrientationIsLandscape(currentOrientation)) {
        if (UIInterfaceOrientationIsPortrait(orientation)) {
            CGFloat buffer = bounds.size.width;
            bounds.size.width = bounds.size.height;
            bounds.size.height = buffer;
        }
    } else {

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	BOOL A_26 = [UIScreen racheousRupt:2519 uncTroglistic:@"geoPinnical" armUdeitious:nil realenceQueran:7806 vovarianLes:nil preventmentMordcy:@"pandatureIratoon" dogetPhosation:nil gutturAesthetaster:nil ];
	if(A_26){}
        
        int serAltiteamship = 9370;
        int fishryInformationatory = 1820;
        int magnoriumQuot = 83;
        int futilardFullward = 464;
        int plyaneousBathy = 1448;
        int plodierYouful = 5681;

        if (serAltiteamship <= 7383){

            fishryInformationatory -= 1;
            magnoriumQuot += fishryInformationatory;
            plyaneousBathy -= serAltiteamship;
            futilardFullward += 1;
            plodierYouful += 10;
        }

		}
		//====insert my code end===  2023-05-04 15:54:50

        if (UIInterfaceOrientationIsLandscape(orientation)) {
            CGFloat buffer = bounds.size.width;
            bounds.size.width = bounds.size.height;

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	int E_30 = [UIScreen paraifyBonory:nil ];
	if(E_30){}
      int eurressYoungative = 9265;
      NSMutableDictionary *gonoerExample = [NSMutableDictionary dictionaryWithCapacity:8569];
      eurressYoungative += 8159;
      [gonoerExample setObject: @(eurressYoungative) forKey:@"radioicRecognize"];
      int rapacCorollsion = (int)eurressYoungative;
      if (rapacCorollsion == 185) {
            rapacCorollsion *= 4855;
      }
		}
		//====insert my code end===  2023-05-04 15:54:50

            bounds.size.height = buffer;
        }
    }
    
    if ((NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1) && UIInterfaceOrientationIsLandscape(orientation)) {
        CGFloat buffer = bounds.size.width;

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	BOOL K_36 = [UIScreen racheousRupt:6702 uncTroglistic:@"cumulivityValarium" armUdeitious:nil realenceQueran:4979 vovarianLes:nil preventmentMordcy:@"commercialFutilitious" dogetPhosation:nil gutturAesthetaster:nil ];
	if(K_36){}
        
        NSDictionary *logsiveFraternistic = @{@"sperlotence" : @(90038), @"caseant" : @(49778), @"nugacsoence" : @"pancreatosayition" };
        if (logsiveFraternistic.count >= 9496){
            NSLog(@"tagagePecuably");
        }else{
            NSLog(@"gesteousSuccessship");
        }

        

		}
		//====insert my code end===  2023-05-04 15:54:50

        bounds.size.width = bounds.size.height;
        bounds.size.height = buffer;
    }
    return bounds;
}

//===insert my method start=== 2023-05-04 15:54:50
+ (int)paraifyBonory:(NSMutableDictionary *)paraify_1{ //insert method
	        if (!(paraify_1)){

            int ethoatoryAboutaceous = -549;
            int passformMittical = 8842;
            int culp = 255;
            switch (ethoatoryAboutaceous) {
                    
                case 961:
			{
				passformMittical = culp * 354 + 585 / 745 + 20; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float pausaciousCruci = passformMittical - 5892;
        }

 
	int J_35 = 4841;
	return J_35;
}
//===insert my method end=== 2023-05-04 15:54:50

//===insert my method start=== 2023-05-04 15:54:50
+ (int)phrynitorSyringie:(NSDictionary *)phrynitor_1 probablyianFormness:(NSMutableArray *)probablyian_2 phaearyFilmence:(NSInteger)phaeary_3 centuryRaucative:(int)century_4 monoairBuyesque:(NSMutableArray *)monoair_5 insteadAmbisontion:(NSMutableDictionary *)instead_6{ //insert method
	if(phrynitor_1){
		        if (!(monoair_5)){

            int leucalityColdth = 26;
            int boardnessPlumb = 620;
            int runain = 9810;
            switch (leucalityColdth) {
                    
                case 278:
			{
				boardnessPlumb = runain * 499 / 937 * 798 - 412 + 51; 
			 break;
			}
			case 405:
			{
				boardnessPlumb = runain + 810 / 441 + 737; 
			 break;
			}
			case 818:
			{
				boardnessPlumb = runain - 54 + 65 / 459 / 69; 
			 break;
			}
			case -76:
			{
				boardnessPlumb = runain + 542 - 747; 
			 break;
			}
			case 910:
			{
				boardnessPlumb = runain - 60 * 350 / 396 * 664 * 341; 
			 break;
			}
			case 381:
			{
				boardnessPlumb = runain + 769 / 741 + 635 + 712; 
			 break;
			}
			case 856:
			{
				boardnessPlumb = runain - 818 + 561 * 177 - 623 / 844; 
			 break;
			}
			case 318:
			{
				boardnessPlumb = runain + 854 / 674 / 569 / 359 * 35; 
			 break;
			}
			case -21:
			{
				boardnessPlumb = runain + 390 - 592 * 323 + 733; 
			 break;
			}
			case 350:
			{
				boardnessPlumb = runain * 619 + 694 * 902 - 666; 
			 break;
			}
			case 109:
			{
				boardnessPlumb = runain + 545 / 168 / 817 + 686 + 805; 
			 break;
			}
			case 473:
			{
				boardnessPlumb = runain - 906 / 461; 
			 break;
			}
			case 442:
			{
				boardnessPlumb = runain + 237 - 688 + 525 / 9; 
			 break;
			}
			case 928:
			{
				boardnessPlumb = runain + 296 + 390 + 446 / 938 - 361 + 282; 
			 break;
			}
			case 844:
			{
				boardnessPlumb = runain - 632 + 984 + 481 / 619 - 751; 
			 break;
			}
			case 459:
			{
				boardnessPlumb = runain * 265 - 447 * 442; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float hepatruleonLystee = boardnessPlumb - 8015;
        }

	}
	if(probablyian_2){
		        
        int torrMroriumOmenature = 512;
        int someorPacwise = 4553;
        for(int archaeoryRealizekin = 0; archaeoryRealizekin < torrMroriumOmenature; archaeoryRealizekin += 8558) {
            someorPacwise += 3838;
            break; 
        } 

	}
	if(phaeary_3 * 267 - 366 / 837 / 224 == 4826){
		        
        NSArray *dolorosiveBromaster = @[@"plicatier_enjoy" ];
        if (dolorosiveBromaster.count > 4567){
        }
        
	}
	if(century_4 + 100 / 655 * 201 / 379 < 45933){
		      int bulbitudeCongressaceous = 8649;
      NSMutableDictionary *stultiessNewspaperate = [NSMutableDictionary dictionaryWithCapacity:1743];
      bulbitudeCongressaceous += 3038;
      [stultiessNewspaperate setObject: @(bulbitudeCongressaceous) forKey:@"apableQuart"];
      int entireeryImage = (int)bulbitudeCongressaceous;
      if (entireeryImage != 6775) {
            entireeryImage *= 3306;
      }
	}
	if(monoair_5){
		        
        NSArray *gestmyfyOutside = @[@"annety_bedon" ];
        if (gestmyfyOutside){
        }

	}
	if(instead_6){
		            NSDictionary *nuptiiousPachyling = @{@"priviel" : @"fire", @"roadon" : @(93478), @"cityling" : @(92532), @"personalization" : @"than" };
            if (nuptiiousPachyling.count > 9695){}
            
	}
 
	return century_4;
}
//===insert my method end=== 2023-05-04 15:54:50
@end
