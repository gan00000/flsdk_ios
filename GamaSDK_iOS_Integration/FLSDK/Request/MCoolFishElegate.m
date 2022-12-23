
#import "MCoolFishElegate.h"
#import "MCoolFishKeychain.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "MCoolFishChangeCenter.h"
#import "SdkHeader.h"
#import "MCoolFishEventFile.h"

@interface MCoolFishElegate ()


@property(nonatomic, assign)Boolean  enbale_Back;
@property(nonatomic, assign)float  dime_size;


@property (nonatomic, strong) MCoolFishAlertReader *httpEngine;

@end

@implementation MCoolFishElegate

+ (instancetype)sharedInstance {
    
    static MCoolFishElegate *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MCoolFishElegate alloc] init];
        NSString *servicePath = [SDKRES getLoginUrl_MMMethodMMM];
        instance.httpEngine = [[MCoolFishAlertReader alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
        }];
    });
    return instance;
}

#pragma mark -
+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
    [MCoolFishEventFile showLoadingAtView_MMMethodMMM:nil];
    [[MCoolFishElegate sharedInstance].httpEngine getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        [MCoolFishEventFile stopLoadingAtView_MMMethodMMM:nil];
        NSDictionary *responseDict = responseData;
        
        LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
        if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
            mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId];
            mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform];
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
        [MCoolFishEventFile stopLoadingAtView_MMMethodMMM:nil];
        SDK_LOG(@"get: path = %@, error = %@", path, error);
        if (errorBlock) {
            MCoolFishAlert *errorObject = [[MCoolFishAlert alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
        NSString *aUrl = @"";
        for (NSString *key in params) {
            NSString *value = params[key];
            aUrl = [NSString stringWithFormat:@"%@%@=%@&",aUrl,key,value];
        }
        SDK_LOG(@"%@?%@",path,aUrl);
    }
    SDK_LOG(@"post: path = %@,params = %@", path, params);
    [MCoolFishEventFile showLoadingAtView_MMMethodMMM:nil];
    [[MCoolFishElegate sharedInstance].httpEngine postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          [MCoolFishEventFile stopLoadingAtView_MMMethodMMM:nil];
            NSDictionary *responseDict = responseData;
            
    
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
                mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId] ? : @"";
                mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform] ? : @"";
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
        [MCoolFishEventFile stopLoadingAtView_MMMethodMMM:nil];
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            MCoolFishAlert *errorObject = [[MCoolFishAlert alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}

+ (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
    
    [[MCoolFishElegate sharedInstance].httpEngine fileUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params fileData_MMMethodMMM:fileData fileName_MMMethodMMM:fileName mimeType_MMMethodMMM:mimeType progressBlock_MMMethodMMM:^(float progress) {
        
        if (progressBlock) {
            progressBlock(progress);
        }
        
    } successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        
        NSString *code = responseDict[wwwww_tag_wwwww_status];
        if (!code || (code.length > 0 && [code isEqualToString:wwwww_tag_wwwww_ok])) {
            if (successBlock) {
                successBlock(responseData);
            }
        } else {
            MCoolFishAlert *errorObject = [MCoolFishAlert yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"file upload: path = %@, error = %@", functionPath, error);
        if (errorBlock) {
            MCoolFishAlert *errorObject = [[MCoolFishAlert alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
        
    }];
    
}

+ (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
    
    [[MCoolFishElegate sharedInstance].httpEngine imageUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params imageData_MMMethodMMM:imageData imageName_MMMethodMMM:imageName progressBlock_MMMethodMMM:^(float progress) {
        
        if (progressBlock) {
            progressBlock(progress);
        }

    } successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        
        NSString *code = responseDict[wwwww_tag_wwwww_status];
        if (!code || (code.length > 0 && [code isEqualToString:wwwww_tag_wwwww_ok])) {
            if (successBlock) {
                successBlock(responseData);
            }
        } else {
            MCoolFishAlert *errorObject = [MCoolFishAlert yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        if (errorBlock) {
            MCoolFishAlert *errorObject = [[MCoolFishAlert alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}


@end
