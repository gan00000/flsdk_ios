
#import "MCoolFishWelcome.h"
#import "MCoolFishKeychain.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "MCoolFishChangeCenter.h"
#import "SdkHeader.h"
#import "MCoolFishEventFile.h"

@interface MCoolFishWelcome ()


@property(nonatomic, assign)int  termsIndex;
@property(nonatomic, copy)NSString *  rameworkEditAdaptString;


@property (nonatomic, strong) MCoolFishAlertReader *httpEngine;

@end

@implementation MCoolFishWelcome

+ (instancetype)sharedInstance {
    
    static MCoolFishWelcome *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MCoolFishWelcome alloc] init];
        NSString *servicePath = @"http://adv.flyfungame.com/";
        instance.httpEngine = [[MCoolFishAlertReader alloc] initWithBasePath_MMMethodMMM:servicePath];
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
    
    [[MCoolFishWelcome sharedInstance].httpEngine postJsonRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
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
                MCoolFishAlert *errorObject = [MCoolFishAlert yy_modelWithDictionary:responseDict];
                if (errorBlock) {
                    errorBlock(errorObject);
                }
            }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            MCoolFishAlert *errorObject = [[MCoolFishAlert alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}


@end
