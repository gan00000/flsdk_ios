

#import "ClinincludeiorPlanarian.h"
#import "NoxisticPlaslowarium.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "CerebrabilityCameraion.h"
#import "CreateOrderResp.h"
#import "SdkHeader.h"
#import "QuartaciousForwardization.h"

@interface ClinincludeiorPlanarian()

@property (nonatomic, strong) EndReturnet *httpEngine;

@end

@implementation ClinincludeiorPlanarian

+ (instancetype)sharedInstance {
    
    static ClinincludeiorPlanarian *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ClinincludeiorPlanarian alloc] init];
        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];

		
		{
		            float lexar35552Iterprettyor35553 = 5156.0;  
            if (@(lexar35552Iterprettyor35553).intValue >= 4469) {
                lexar35552Iterprettyor35553 = lexar35552Iterprettyor35553 - 1588;
            }
		}
		

        instance.httpEngine = [[EndReturnet alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
        }];

		
		{
		        
        NSArray *pecuexperienceair35564Macrtic35565 = @[@"similarling35568_sperglet35569", @"pastaster35570_foli35571", @"shotet35572_biblably35573", @"eph35574_describeal35575", @"drop35576_matterous35577", @"omasaster35578_anth35579", @"plect35580_serieskin35581", @"testaneous35582_axiyouise35583" ];   
        if (pecuexperienceair35564Macrtic35565.count > 956){
        }
        
		}
		

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
    [[ClinincludeiorPlanarian sharedInstance].httpEngine getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        NSDictionary *responseDict = responseData;
        
        CerebrabilityCameraion *responceModel = [CerebrabilityCameraion yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[wwwww_tag_wwwww_data]) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            RoborfactionOnomatbooksure *errorObject = [RoborfactionOnomatbooksure yy_modelWithDictionary:responseDict];

		
		{
		        
        int reason35586Idi35587 = 2864;    
        int nautsufferation35588Pantoivity35589 = 8269;
        int realizetion35590Eosing35591 = 1623;
        int fur35592Hibernize35593 = 1977;
        int gnar35594Hedrose35595 = 9280;
        int panting35596Homoward35597 = 1716;

        if (reason35586Idi35587 == 2325){

            nautsufferation35588Pantoivity35589 -= 1;
            realizetion35590Eosing35591 += nautsufferation35588Pantoivity35589;
            gnar35594Hedrose35595 -= reason35586Idi35587;
            fur35592Hibernize35593 += 1;
            panting35596Homoward35597 += 10;
        }

		}
		


		
		{
		int Y_porcling35618 = 109;
int F_verg35619 = 974;
switch (Y_porcling35618) {
   case 553:
			{
				Y_porcling35618 = F_verg35619 + 716 + 778; 
			 break;
			}
			case 909:
			{
				Y_porcling35618 = F_verg35619 + 681 / 573 + 678 * 508 + 677 - 717; 
			 break;
			}
			   default:
       break;
			}
		}
		

            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"get: path = %@, error = %@", path, error);

		
		{
		float N_door35620 = 9680;

if(N_door35620 == 89724){
	double c_federalaneous35621 = N_door35620 * 115 - 94 * 976 + 584 * 927;
}
		}
		

        if (errorBlock) {
            RoborfactionOnomatbooksure *errorObject = [[RoborfactionOnomatbooksure alloc] init];
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

		
		{
		    

      int catchit35622Saurship35623[ 1514 ]; 
    
      
      for ( int i = 0; i < 1514; i++ )
      {
         catchit35622Saurship35623[ i ] = i + 5364; 
         if(i < 8706)
         {
            break;
         }
      }

		}
		

        for (NSString *key in params) {
            NSString *value = params[key];
            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }
    [[ClinincludeiorPlanarian sharedInstance].httpEngine postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
        NSDictionary *responseDict = responseData;
        
        CerebrabilityCameraion *responceModel = [CerebrabilityCameraion yy_modelWithDictionary:responseDict];


		
		{
		    

      int sterntheoryness35630Fragchallenge35631[ 2980 ]; 
    
      
      for ( int i = 0; i < 2980; i++ )
      {
         sterntheoryness35630Fragchallenge35631[ i ] = i + 8852; 
         if(i < 7091)
         {
            break;
         }
      }

		}
		

        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            RoborfactionOnomatbooksure *errorObject = [RoborfactionOnomatbooksure yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);

		
		{
		int r_psammrateeur35634 = 9146;

float t_pantough35635 = 272;
if(r_psammrateeur35634 * 261 / 85 <= 63149){
	t_pantough35635 = r_psammrateeur35634 + 130 * 9 - 876 - 591;
}else{
	t_pantough35635 = r_psammrateeur35634 + 962 / 81 - 709 / 496 + 825;
}

		}
		

            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            RoborfactionOnomatbooksure *errorObject = [[RoborfactionOnomatbooksure alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

@end
