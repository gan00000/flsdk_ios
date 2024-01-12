

#import "AutsionYet.h"
#import "GradtureUsuallytion.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "DolorTaskance.h"
#import "CupStringics.h"
#import "SdkHeader.h"
#import "BeyondaceousCommunityic.h"

@interface AutsionYet()

@property (nonatomic, strong) CirrelectionuleInvestmentivity *httpEngine_PRIROPERTY;

@end

@implementation AutsionYet

+ (instancetype)sharedInstance {
    
    static AutsionYet *instance;

		
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[AutsionYet alloc] init];
        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];
        instance.httpEngine_PRIROPERTY = [[CirrelectionuleInvestmentivity alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine_PRIROPERTY updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
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
    [[AutsionYet sharedInstance].httpEngine_PRIROPERTY getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        NSDictionary *responseDict = responseData;

		//===insert my code start===  2024-01-12 12:51:45
		{
		int k_decisionise32797 = 509;
float k_phylactoatory32798 = 152;
switch (k_decisionise32797) {
   case 105:
			{
				k_decisionise32797 = k_phylactoatory32798 * 861 - 705 + 424 + 9 - 221 + 97; 
			 break;
			}
			case 118:
			{
				k_decisionise32797 = k_phylactoatory32798 - 448 - 888 / 491 * 715; 
			 break;
			}
			case 341:
			{
				k_decisionise32797 = k_phylactoatory32798 * 417 / 407 * 974 - 925 - 667 + 334; 
			 break;
			}
			case 197:
			{
				k_decisionise32797 = k_phylactoatory32798 + 508 * 687 * 995 - 494 + 418 / 228; 
			 break;
			}
			case 217:
			{
				k_decisionise32797 = k_phylactoatory32798 * 133 - 842 * 470 * 424; 
			 break;
			}
			case 59:
			{
				k_decisionise32797 = k_phylactoatory32798 + 14 + 192 + 563 / 698 / 952 / 407; 
			 break;
			}
			case 691:
			{
				k_decisionise32797 = k_phylactoatory32798 * 537 - 34 / 896 * 669 + 216 + 829; 
			 break;
			}
			   default:
       break;
			}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

        
        DolorTaskance *responceModel = [DolorTaskance yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[wwwww_tag_wwwww_data]) {
            
            CupStringics *createOrderResp = [CupStringics yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            

		
            if (successBlock) {
                successBlock(createOrderResp);

		
            }
        } else {
            BecomelyBacstandardic *errorObject = [BecomelyBacstandardic yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);

		
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"get: path = %@, error = %@", path, error);

		//===insert my code start===  2024-01-12 12:51:45
		{
		        NSDictionary *rig32799Applyal32800 = [NSDictionary dictionaryWithObjectsAndKeys:@"maintaineer32801Clavry32802",@(6014), nil]; //temple29
             if (rig32799Applyal32800.count > 172) {}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

        if (errorBlock) {
            BecomelyBacstandardic *errorObject = [[BecomelyBacstandardic alloc] init];

		
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

		

		//===insert my code start===  2024-01-12 12:51:45
		{
		        
        long one32809Salism32810 = -309;  //commontemple11
        BOOL stannetic32811Thyreeer32812 = NO;

        for(int otherslet32813Levith32814 = 8898; otherslet32813Levith32814 < 3804; otherslet32813Levith32814 = otherslet32813Levith32814 + 1)
        {    
            if (stannetic32811Thyreeer32812){
                break;
            }
            one32809Salism32810 = one32809Salism32810 * 9329;
        }
        
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

        for (NSString *key in params) {
            NSString *value = params[key];

		//===insert my code start===  2024-01-12 12:51:45
		{
		int T_cancerine32829 = 385;
int T_trans32830 = 701;
switch (T_cancerine32829) {
   case 375:
			{
				T_cancerine32829 = T_trans32830 * 810 / 40 + 702 * 877 - 150 + 809; 
			 break;
			}
			case 568:
			{
				T_cancerine32829 = T_trans32830 * 864 / 533; 
			 break;
			}
			case 438:
			{
				T_cancerine32829 = T_trans32830 - 230 + 236 + 871 / 283 * 657; 
			 break;
			}
			case 226:
			{
				T_cancerine32829 = T_trans32830 - 514 / 146 + 147 * 705 / 168; 
			 break;
			}
			case 564:
			{
				T_cancerine32829 = T_trans32830 - 914 * 364 + 914; 
			 break;
			}
			case 224:
			{
				T_cancerine32829 = T_trans32830 - 297 / 495 / 705; 
			 break;
			}
			case 477:
			{
				T_cancerine32829 = T_trans32830 - 844 * 548; 
			 break;
			}
			case 853:
			{
				T_cancerine32829 = T_trans32830 * 920 * 387 * 182 / 533; 
			 break;
			}
			case 330:
			{
				T_cancerine32829 = T_trans32830 + 508 * 738 + 40 * 989 * 766; 
			 break;
			}
			   default:
       break;
			}
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }
    [[AutsionYet sharedInstance].httpEngine_PRIROPERTY postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
        NSDictionary *responseDict = responseData;
        
        DolorTaskance *responceModel = [DolorTaskance yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {
            
            CupStringics *createOrderResp = [CupStringics yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];

		
            

		
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BecomelyBacstandardic *errorObject = [BecomelyBacstandardic yy_modelWithDictionary:responseDict];

		//===insert my code start===  2024-01-12 12:51:45
		{
		        
        long alreadyile32833Vin32834 = 5939;  //commontemple7
        BOOL skillth32835Largeial32836 = YES;
        if (alreadyile32833Vin32834 <= 7684){
            
            skillth32835Largeial32836 = NO;
        }else{
            skillth32835Largeial32836 = YES;
        }

        
		}
		// 2024-01-12 12:51:45 ===insert my code end=== 

            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BecomelyBacstandardic *errorObject = [[BecomelyBacstandardic alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

@end
