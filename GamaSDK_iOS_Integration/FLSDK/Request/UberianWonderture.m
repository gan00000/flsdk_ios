

#import "UberianWonderture.h"
#import "NoxisticPlaslowarium.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "CerebrabilityCameraion.h"
#import "SdkHeader.h"
#import "QuartaciousForwardization.h"

@interface UberianWonderture ()

@property (nonatomic, strong) EndReturnet *httpEngine;

@end

@implementation UberianWonderture

+ (instancetype)sharedInstance {
    
    static UberianWonderture *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[UberianWonderture alloc] init];
        NSString *servicePath = @"";
        instance.httpEngine = [[EndReturnet alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
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
    SDK_LOG(@"post: path = %@,params = %@", path, params);
    
    [[UberianWonderture sharedInstance].httpEngine postJsonRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          
            NSDictionary *responseDict = responseData;
            
    
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
                if (successBlock) {
                    successBlock(mCCSDKResponse);
                }
            } else {
                RoborfactionOnomatbooksure *errorObject = [RoborfactionOnomatbooksure yy_modelWithDictionary:responseDict];
                if (errorBlock) {
                    errorBlock(errorObject);
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
