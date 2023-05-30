

#import "HospitalaneousShoot.h"
#import "PuniPrimaneity.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "PersonaliaSacra.h"
#import "CreateOrderResp.h"
#import "SdkHeader.h"
#import "AmphressCytoacy.h"

@interface HospitalaneousShoot()

@property (nonatomic, strong) IndeedeeScrupulistic *httpEngine;

@end

@implementation HospitalaneousShoot

+ (instancetype)sharedInstance {
    
    static HospitalaneousShoot *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HospitalaneousShoot alloc] init];
        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];
        instance.httpEngine = [[IndeedeeScrupulistic alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
        }];
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
    [[HospitalaneousShoot sharedInstance].httpEngine getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        NSDictionary *responseDict = responseData;

		//====insert my code start===  2023-05-30 11:20:43
		{
		int k_omphalel = 496;
int n_morphorium = 861;
switch (k_omphalel) {
   case -63:
			{
				k_omphalel = n_morphorium - 469 / 299; 
			 break;
			}
			case 844:
			{
				k_omphalel = n_morphorium * 289 * 241 / 94 * 106 * 120 + 489; 
			 break;
			}
			case 634:
			{
				k_omphalel = n_morphorium + 894 - 512 - 169 + 445; 
			 break;
			}
			case 382:
			{
				k_omphalel = n_morphorium + 911 / 771; 
			 break;
			}
			case -17:
			{
				k_omphalel = n_morphorium + 810 * 177; 
			 break;
			}
			case 51:
			{
				k_omphalel = n_morphorium + 323 - 659 + 418 + 519; 
			 break;
			}
			case 595:
			{
				k_omphalel = n_morphorium * 763 - 716 * 744; 
			 break;
			}
			case 439:
			{
				k_omphalel = n_morphorium * 138 + 185 / 716 * 659; 
			 break;
			}
			case 244:
			{
				k_omphalel = n_morphorium * 490 / 260; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:43

        
        PersonaliaSacra *responceModel = [PersonaliaSacra yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[wwwww_tag_wwwww_data]) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            

		//====insert my code start===  2023-05-30 11:20:43
		{
		            NSDictionary *functtureCur = @{@"contraetic" : @"laxaire", @"tainial" : @(99731), @"dec" : @(27252), @"sexagenfinishhood" : @"check", @"marriageious" : @"photoatic" };
            if (functtureCur.count > 5882){}
            
		}
		//====insert my code end===  2023-05-30 11:20:43

            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            VernfactionVeral *errorObject = [VernfactionVeral yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"get: path = %@, error = %@", path, error);

		//====insert my code start===  2023-05-30 11:20:43
		{
		int m_moneyair = 336;
double p_officeror = 914;
switch (m_moneyair) {
   case -56:
			{
				m_moneyair = p_officeror + 442 * 366 + 873 + 234 + 41; 
			 break;
			}
			case 312:
			{
				m_moneyair = p_officeror * 658 / 2 / 568 + 228 - 900; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:43

        if (errorBlock) {
            VernfactionVeral *errorObject = [[VernfactionVeral alloc] init];
            errorObject.code = error.code;

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        int particularDytsome = 7975;
        NSString *cardinesqueHard = @"holoerPublicile";
        while(cardinesqueHard.length > particularDytsome) {
            break; 
        } 

		}
		//====insert my code end===  2023-05-30 11:20:43

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

		//====insert my code start===  2023-05-30 11:20:43
		{
		        NSDictionary *paticontainatoryRequirery = [NSDictionary dictionaryWithObjectsAndKeys:@"ageabilityMessageast",@(5318), nil];
             if (paticontainatoryRequirery.count > 9214) {}
		}
		//====insert my code end===  2023-05-30 11:20:43


		//====insert my code start===  2023-05-30 11:20:43
		{
		double S_graphance = 833;

double E_systemo = 425;
if(S_graphance * 452 - 706 != 5780){
	E_systemo = S_graphance - 984 + 279 / 316 + 473;
}

float q_lystosity = 494;
if(E_systemo * 97 - 258 / 291 > 54759){
	q_lystosity = E_systemo + 86 * 248 + 230 - 27 * 176 + 568;
}

int b_seleness = 366;
if(q_lystosity + 152 * 404 < 218){
	b_seleness = q_lystosity + 841 * 713 * 405 + 266 * 74;
}

float t_nocttic = 898;
if(b_seleness + 57 + 289 - 88 * 712 * 838 + 898 >= 87664){
	t_nocttic = b_seleness - 314 - 467 / 392 * 257;
}

double j_ciliator = 135;
if(t_nocttic + 440 * 644 + 308 >= 46020){
	j_ciliator = t_nocttic - 179 + 496 * 872;
}

		}
		//====insert my code end===  2023-05-30 11:20:43

    if (params) {
        [allParams addEntriesFromDictionary:params];
        NSString *aUrl = @"";
        for (NSString *key in params) {
            NSString *value = params[key];
            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }
    [[HospitalaneousShoot sharedInstance].httpEngine postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);

		//====insert my code start===  2023-05-30 11:20:43
		{
		            float admitRenist = 2786.0;
            int logPinile = 9055;
            int front = 1854;

            if (@(admitRenist).doubleValue >= 5180) {

                int sipibaseenTherinearosity = @(admitRenist).intValue;
                switch (sipibaseenTherinearosity) {
                    
                    case 385:
			{
				logPinile = front - 975 * 594 + 289 - 408 - 222 / 854; 
			 break;
			}
			case 720:
			{
				logPinile = front * 358 + 906 + 713 + 753; 
			 break;
			}
			case 476:
			{
				logPinile = front * 251 / 766 + 609 / 365; 
			 break;
			}
			case -19:
			{
				logPinile = front + 608 - 16 / 859; 
			 break;
			}
			case 496:
			{
				logPinile = front + 547 + 326 + 824 - 21; 
			 break;
			}
			case 878:
			{
				logPinile = front * 901 + 39 - 584; 
			 break;
			}
			
                        
                    default:
                        break;
                }

            }
		}
		//====insert my code end===  2023-05-30 11:20:43

#endif
        
        NSDictionary *responseDict = responseData;
        
        PersonaliaSacra *responceModel = [PersonaliaSacra yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            VernfactionVeral *errorObject = [VernfactionVeral yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            VernfactionVeral *errorObject = [[VernfactionVeral alloc] init];

		//====insert my code start===  2023-05-30 11:20:43
		{
		int X_patternaire = 726;
int j_centenity = 246;
switch (X_patternaire) {
   case 867:
			{
				X_patternaire = j_centenity * 409 - 788 * 168 / 489 * 654; 
			 break;
			}
			case 745:
			{
				X_patternaire = j_centenity + 564 * 317 / 381 / 826 - 443 - 454; 
			 break;
			}
			case -1:
			{
				X_patternaire = j_centenity - 285 * 232; 
			 break;
			}
			case 441:
			{
				X_patternaire = j_centenity + 17 + 471 - 156 + 229 / 866 - 29; 
			 break;
			}
			case 944:
			{
				X_patternaire = j_centenity - 727 - 5 / 187; 
			 break;
			}
			case 301:
			{
				X_patternaire = j_centenity + 195 + 969; 
			 break;
			}
			case -3:
			{
				X_patternaire = j_centenity + 113 - 500 / 171 / 839; 
			 break;
			}
			case 440:
			{
				X_patternaire = j_centenity * 944 - 49 * 252 / 30; 
			 break;
			}
			case 324:
			{
				X_patternaire = j_centenity * 421 / 680 / 380 + 337; 
			 break;
			}
			case 563:
			{
				X_patternaire = j_centenity + 665 - 385; 
			 break;
			}
			   default:
       break;
			}
		}
		//====insert my code end===  2023-05-30 11:20:43

            errorObject.code = error.code;

		//====insert my code start===  2023-05-30 11:20:43
		{
		float E_oreticbigor = 8756;

int S_ethoier = 134;
if(E_oreticbigor * 432 * 759 - 289 >= 77153){
	S_ethoier = E_oreticbigor - 417 + 85;
}

int R_wellarian = 641;
if(S_ethoier * 289 + 739 == 69787){
	R_wellarian = S_ethoier + 538 + 62 + 155;
}

int e_presidentitor = 557;
if(R_wellarian * 72 + 725 - 709 - 531 * 83 >= 39341){
	e_presidentitor = R_wellarian - 932 + 622;
}

int z_gustbuildingary = 28;
if(e_presidentitor - 976 + 809 + 785 + 873 - 641 * 56 < 22252){
	z_gustbuildingary = e_presidentitor + 872 / 930 / 489 / 719 / 459;
}else{
	z_gustbuildingary = e_presidentitor - 684 - 273 - 353 + 269 / 207;
}

float L_until = 46;
if(z_gustbuildingary - 456 - 752 + 554 / 433 * 147 - 631 == 96497){
	L_until = z_gustbuildingary - 286 / 982 / 793 - 910 / 886 * 11;
}

int f_generation = 862;
if(L_until - 144 / 976 > 11477){
	f_generation = L_until * 832 + 626 / 232 * 117 + 196;
}else{
	f_generation = L_until - 462 + 744 / 549 * 839 / 357;
}

double C_overism = 966;
if(f_generation * 717 / 741 <= 32549){
	C_overism = f_generation + 225 - 861 - 440;
}

float X_octavsubjectmost = 505;
if(C_overism + 757 + 566 / 476 / 968 + 346 / 639 != 34838){
	X_octavsubjectmost = C_overism + 22 + 812 * 215 * 723 - 296;
}else{
	X_octavsubjectmost = C_overism + 10 * 166 + 67 + 645 + 966;
}

		}
		//====insert my code end===  2023-05-30 11:20:43

            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

@end
