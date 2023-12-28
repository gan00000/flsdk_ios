

#import "WaititeLaud.h"
#import "CribresqueSatit.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "AlsoifyAgesure.h"
#import "FindChelonit.h"
#import "SdkHeader.h"
#import "StinityAsterature.h"

@interface WaititeLaud()

@property (nonatomic, strong) AcetoetyAud *httpEngine_MMMPRO;

@end

@implementation WaititeLaud

+ (instancetype)sharedInstance {
    
    static WaititeLaud *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[WaititeLaud alloc] init];
        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];
        instance.httpEngine_MMMPRO = [[AcetoetyAud alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine_MMMPRO updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
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
    [[WaititeLaud sharedInstance].httpEngine_MMMPRO getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_almot_locoture, task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        NSDictionary *responseDict = responseData;
        
        AlsoifyAgesure *responceModel = [AlsoifyAgesure yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[wwwww_tag_wwwww_data]) {
            
            FindChelonit *createOrderResp = [FindChelonit yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            AlleloitySex *errorObject = [AlleloitySex yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(wwwww_tag_wwwww_exampleery_pubon, path, error);
        if (errorBlock) {
            AlleloitySex *errorObject = [[AlleloitySex alloc] init];
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
            aUrl = [NSString stringWithFormat:wwwww_tag_wwwww_languageize_attackitive,aUrl,key,value];
        }
        SDK_LOG(wwwww_tag_wwwww_finditious_threatence,path,aUrl);
    }
    [[WaititeLaud sharedInstance].httpEngine_MMMPRO postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_phorcontainuous_glabrety, task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
        NSDictionary *responseDict = responseData;
        
        AlsoifyAgesure *responceModel = [AlsoifyAgesure yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {
            
            FindChelonit *createOrderResp = [FindChelonit yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            AlleloitySex *errorObject = [AlleloitySex yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        SDK_LOG(wwwww_tag_wwwww_findfy_brevability, path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            AlleloitySex *errorObject = [[AlleloitySex alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

@end
