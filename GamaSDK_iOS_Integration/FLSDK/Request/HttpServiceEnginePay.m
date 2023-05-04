







#import "HttpServiceEnginePay.h"
#import "BJServiceConfigurator.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "BJBaseResponceModel.h"
#import "CreateOrderResp.h"
#import "SdkHeader.h"
#import "SdkUtil.h"

@interface HttpServiceEnginePay()

@property (nonatomic, strong) BJBaseHTTPEngine *httpEngine;

@end

@implementation HttpServiceEnginePay

+ (instancetype)sharedInstance {
    
    static HttpServiceEnginePay *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HttpServiceEnginePay alloc] init];
        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * b_1 = [HttpServiceEnginePay protooonLight:@"rolesomePenitkindon" alongaciousInterviewture:nil phenooAlthoughor:8409 placpurposewardTreat:@"beatEnnivity" financialionGraphgrowthid:nil horrsoisticSupsupporton:7241 agreementlyMediic:nil ];
	if(b_1){}
        
        NSArray *siteryTorqusive = @[@"pietaire_sedaneity", @"herbster_sanctie", @"torpeform_environmentalative", @"judicosity_performance", @"our_riseious", @"songory_syaneity", @"pickform_theoryeer", @"pulspropertyial_identify", @"threeless_job", @"balloenne_agreementia", @"tern_cameraie", @"reason_areaage", @"democraticproof_thirdious", @"ocul_noteaneous", @"amounty_stud" ];
        if (siteryTorqusive.count > 6113){
        }
        
		}
		//====insert my code end===  2023-05-04 15:54:50

        instance.httpEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;




        }];

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * i_8 = [HttpServiceEnginePay protooonLight:@"phlegpastarySiphoan" alongaciousInterviewture:nil phenooAlthoughor:6591 placpurposewardTreat:@"personHomoiose" financialionGraphgrowthid:nil horrsoisticSupsupporton:5568 agreementlyMediic:nil ];
	if(i_8){}
        NSString *sinistrabilityOdform = @"";
        if(@"laminSoror".length > (7333 * (7936)) ){
            if([sinistrabilityOdform isEqualToString:@"quartileEnvironmentalitude"]){
                sinistrabilityOdform = @"whitefyCertainlyice";
            }else{
                sinistrabilityOdform = @"siderulePlayer";
            }
        }
		}
		//====insert my code end===  2023-05-04 15:54:50

    });
    return instance;
}

#pragma mark -
+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }

    [[HttpServiceEnginePay sharedInstance].httpEngine getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif

        NSDictionary *responseDict = responseData;
        
        BJBaseResponceModel *responceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * v_21 = [HttpServiceEnginePay protooonLight:@"rapacleJectally" alongaciousInterviewture:nil phenooAlthoughor:1358 placpurposewardTreat:@"semblfactionAgriess" financialionGraphgrowthid:nil horrsoisticSupsupporton:7086 agreementlyMediic:nil ];
	if(v_21){}
            NSDictionary *roteducationableSolienne = @{@"phemwise" : @"yearast", @"seek" : @(56675), @"poieant" : @(61695), @"churchen" : @"irateer", @"trogl" : @"hypoous", @"toting" : @"jejunsive", @"scrupain" : @(15891), @"optoeous" : @(43214), @"ignlike" : @(14632), @"yetacity" : @(28945), @"thantion" : @"fellly", @"recognize" : @"sancsingitude", @"thankity" : @"marriageion", @"cipitmost" : @"halopayess", @"especiallyful" : @"saurary" };
            if (roteducationableSolienne.count > 2002){}
            
		}
		//====insert my code end===  2023-05-04 15:54:50



		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * E_30 = [HttpServiceEnginePay protooonLight:@"rateTraheur" alongaciousInterviewture:nil phenooAlthoughor:2788 placpurposewardTreat:@"acetolikeGood" financialionGraphgrowthid:nil horrsoisticSupsupporton:1028 agreementlyMediic:nil ];
	if(E_30){}
        
        NSArray *millionEat = @[@"doxo_hexclose", @"opoast_hemnoticefaction", @"useess_hierowomanfication", @"usor_emes", @"foreignian_own", @"oreticmost_experteer", @"vas_fungern", @"citizeneer_callinetworkard", @"myxmouthture_pessimbudgeto", @"densward_carpetic", @"scrupulish_brachyast", @"tectonism_cernaceous", @"edtreeent_politicalier", @"pontard_get", @"parian_partyie" ];
        for (NSString *preoryPedful in millionEat){
            break;
        }

		}
		//====insert my code end===  2023-05-04 15:54:50

        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[wwwww_tag_wwwww_data]) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * o_14 = [HttpServiceEnginePay protooonLight:@"sinusacleIncludingular" alongaciousInterviewture:nil phenooAlthoughor:9432 placpurposewardTreat:@"audienceformFasc" financialionGraphgrowthid:nil horrsoisticSupsupporton:7215 agreementlyMediic:nil ];
	if(o_14){}
            float plantidClyst = 7.0;
            if (@(plantidClyst).intValue < 4018) {
                plantidClyst = plantidClyst - 2687;
            }
		}
		//====insert my code end===  2023-05-04 15:54:50

            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {

        SDK_LOG(@"get: path = %@, error = %@", path, error);

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * y_24 = [HttpServiceEnginePay protooonLight:@"whichYoung" alongaciousInterviewture:nil phenooAlthoughor:9785 placpurposewardTreat:@"seniorabilityInstead" financialionGraphgrowthid:nil horrsoisticSupsupporton:7021 agreementlyMediic:nil ];
	if(y_24){}
            float pogonalityBoxist = 2698.0;
            int veryileInterfier = 9509;
            int trial = 8518;

            if (@(pogonalityBoxist).doubleValue <= 3862) {

                int liveitiousOplaire = @(pogonalityBoxist).intValue;
                switch (liveitiousOplaire) {
                    
                    case 941:
			{
				veryileInterfier = trial - 421 + 114 * 794 / 4 - 525; 
			 break;
			}
			case 696:
			{
				veryileInterfier = trial - 833 - 390 - 593 * 54 + 6 - 973; 
			 break;
			}
			case 785:
			{
				veryileInterfier = trial + 525 + 529 / 506; 
			 break;
			}
			case 19:
			{
				veryileInterfier = trial - 787 - 990 * 670 / 196 + 655 + 582; 
			 break;
			}
			case 780:
			{
				veryileInterfier = trial + 245 / 662 / 620 + 368 / 994 - 35; 
			 break;
			}
			case 675:
			{
				veryileInterfier = trial - 280 + 697 + 730 - 10 + 842 - 226; 
			 break;
			}
			case 204:
			{
				veryileInterfier = trial - 645 / 539; 
			 break;
			}
			case 408:
			{
				veryileInterfier = trial - 141 * 305 / 871 - 628; 
			 break;
			}
			case 215:
			{
				veryileInterfier = trial * 733 / 507 - 948 * 281 - 400; 
			 break;
			}
			case -23:
			{
				veryileInterfier = trial * 935 + 65 * 506; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-04 15:54:50

        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
        NSString *aUrl = @"";
        for (NSString *key in params) {
            NSString *value = params[key];

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * i_8 = [HttpServiceEnginePay protooonLight:@"blackwardThrowify" alongaciousInterviewture:nil phenooAlthoughor:2816 placpurposewardTreat:@"levisixicsAlthough" financialionGraphgrowthid:nil horrsoisticSupsupporton:793 agreementlyMediic:nil ];
	if(i_8){}
            float femorPictoseatess = 6017.0;
            int judiciernAffecton = 4289;
            int cameraie = 5454;

            if (@(femorPictoseatess).doubleValue < 2303) {

                int textstillcyHalopayess = @(femorPictoseatess).intValue;
                switch (textstillcyHalopayess) {
                    
                    case 559:
			{
				judiciernAffecton = cameraie + 367 * 422 * 143; 
			 break;
			}
			case 231:
			{
				judiciernAffecton = cameraie + 739 + 83; 
			 break;
			}
			case 354:
			{
				judiciernAffecton = cameraie + 645 + 452 - 612 + 163; 
			 break;
			}
			case 940:
			{
				judiciernAffecton = cameraie - 637 / 413 / 619 - 663 + 392; 
			 break;
			}
			case 861:
			{
				judiciernAffecton = cameraie * 749 / 144 / 512 + 744 / 407 - 355; 
			 break;
			}
			case 548:
			{
				judiciernAffecton = cameraie + 632 + 343; 
			 break;
			}
			case -98:
			{
				judiciernAffecton = cameraie * 117 - 607 + 624 / 955; 
			 break;
			}
			case 727:
			{
				judiciernAffecton = cameraie - 241 / 616 * 636 - 613; 
			 break;
			}
			case 949:
			{
				judiciernAffecton = cameraie * 313 + 604; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-04 15:54:50

            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }


    [[HttpServiceEnginePay sharedInstance].httpEngine postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        

        NSDictionary *responseDict = responseData;
        
        BJBaseResponceModel *responceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {

        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * z_25 = [HttpServiceEnginePay protooonLight:@"lyzcareairThyr" alongaciousInterviewture:nil phenooAlthoughor:3435 placpurposewardTreat:@"volutasterHitity" financialionGraphgrowthid:nil horrsoisticSupsupporton:8232 agreementlyMediic:nil ];
	if(z_25){}
        if (errorBlock){

            int hierowomanficationMissionry = 2015;
            int souciheartAuthcy = 9318;
            int undecimship = 2705;
            switch (hierowomanficationMissionry) {
                    
                case 662:
			{
				souciheartAuthcy = undecimship + 667 - 382 - 168 - 943 / 412; 
			 break;
			}
			case 112:
			{
				souciheartAuthcy = undecimship + 143 + 656 * 36 - 25 / 998 - 681; 
			 break;
			}
			case 399:
			{
				souciheartAuthcy = undecimship * 681 / 348 * 788 + 258 - 178; 
			 break;
			}
			case 915:
			{
				souciheartAuthcy = undecimship - 372 - 692 * 132 / 378; 
			 break;
			}
			case 770:
			{
				souciheartAuthcy = undecimship * 46 / 526; 
			 break;
			}
			case 108:
			{
				souciheartAuthcy = undecimship - 913 / 464; 
			 break;
			}
			case 237:
			{
				souciheartAuthcy = undecimship * 367 + 215 * 292 - 567 / 632; 
			 break;
			}
			case 10:
			{
				souciheartAuthcy = undecimship * 148 + 762 / 617 / 784 - 367; 
			 break;
			}
			case 398:
			{
				souciheartAuthcy = undecimship * 973 / 50 - 826 / 900 + 391; 
			 break;
			}
			case 982:
			{
				souciheartAuthcy = undecimship + 942 - 649; 
			 break;
			}
			case 562:
			{
				souciheartAuthcy = undecimship + 638 / 266 / 254 + 178; 
			 break;
			}
			case 221:
			{
				souciheartAuthcy = undecimship + 540 * 499 + 35; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float labiousPassster = souciheartAuthcy - 1010;
        }

		}
		//====insert my code end===  2023-05-04 15:54:50

            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];

		//====insert my code start===  2023-05-04 15:54:50
		{
		
	NSDictionary * a_0 = [HttpServiceEnginePay protooonLight:@"ecoitorNearly" alongaciousInterviewture:nil phenooAlthoughor:3120 placpurposewardTreat:@"hemerfierPoliccity" financialionGraphgrowthid:nil horrsoisticSupsupporton:8894 agreementlyMediic:nil ];
	if(a_0){}
        if (!(params)){

            int fabivityActivity = 7032;
            int fearatorBon = 6505;
            int behaviorsive = 296;
            switch (fabivityActivity) {
                    
                case 320:
			{
				fearatorBon = behaviorsive + 203 * 686; 
			 break;
			}
			case 116:
			{
				fearatorBon = behaviorsive + 606 * 513 / 738 / 605 - 889; 
			 break;
			}
			case 230:
			{
				fearatorBon = behaviorsive - 8 * 947 - 287 - 639 - 881 / 592; 
			 break;
			}
			case 160:
			{
				fearatorBon = behaviorsive - 474 / 659 * 358 + 529 - 456 + 545; 
			 break;
			}
			case 530:
			{
				fearatorBon = behaviorsive + 860 - 257 / 458 - 362; 
			 break;
			}
			case 852:
			{
				fearatorBon = behaviorsive - 506 * 611 - 626; 
			 break;
			}
			case 540:
			{
				fearatorBon = behaviorsive + 328 + 21 + 145; 
			 break;
			}
			case 416:
			{
				fearatorBon = behaviorsive - 187 + 234; 
			 break;
			}
			
                    
                default:
                    break;
            }

            float stinernPhantarian = fearatorBon - 896;
        }

		}
		//====insert my code end===  2023-05-04 15:54:50

}


//===insert my method start=== 2023-05-04 15:54:50
+ (NSDictionary *)protooonLight:(NSString *)protooon_1 alongaciousInterviewture:(NSDictionary *)alongacious_2 phenooAlthoughor:(long)phenoo_3 placpurposewardTreat:(NSString *)placpurposeward_4 financialionGraphgrowthid:(NSMutableDictionary *)financialion_5 horrsoisticSupsupporton:(long)horrsoistic_6 agreementlyMediic:(NSObject *)agreemently_7{ //insert method
	if(alongacious_2){
		        
        double vernPeccee = 391.0;
        if (@(vernPeccee).doubleValue >= 8963) {}
        
	}
	if(horrsoistic_6 * 97 - 127 / 774 == 1599){
		        
        NSArray *severalRostrcertainlyery = @[@"okain_pubdevelopmentlet", @"westernent_actfic", @"temntowardivity_zygism", @"lectivity_creasaster", @"still_interviewit", @"nephrfic_tidimarriageie", @"primaorium_mesition", @"gam_alongry", @"onarium_kitchenarium" ];
        for (NSString *cupfyRecord in severalRostrcertainlyery){
            break;
        }

	}
 
	return alongacious_2;
}
//===insert my method end=== 2023-05-04 15:54:50
@end
