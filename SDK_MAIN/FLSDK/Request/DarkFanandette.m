

#import "DarkFanandette.h"
#import "CribresqueSatit.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "AlsoifyAgesure.h"
#import "SdkHeader.h"
#import "StinityAsterature.h"

@interface DarkFanandette ()

@property (nonatomic, strong) AcetoetyAud *httpEngine_MMMPRO;

@end

@implementation DarkFanandette

+ (instancetype)sharedInstance {
    
    static DarkFanandette *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DarkFanandette alloc] init];
        NSString *servicePath = @"";
        instance.httpEngine_MMMPRO = [[AcetoetyAud alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine_MMMPRO updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
        }];
    });
    return instance;
}

#pragma mark -
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
    SDK_LOG(wwwww_tag_wwwww_iratesque_ambi, path, params);
    
    [[DarkFanandette sharedInstance].httpEngine_MMMPRO postJsonRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_phorcontainuous_glabrety, task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          
            NSDictionary *responseDict = responseData;
            
    
            TrichinoonArchiability *mCCSDKResponse = [TrichinoonArchiability yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
                if (successBlock) {
                    successBlock(mCCSDKResponse);
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
