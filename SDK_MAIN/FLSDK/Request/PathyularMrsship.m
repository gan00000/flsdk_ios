

#import "PathyularMrsship.h"
#import "CribresqueSatit.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "AlsoifyAgesure.h"
#import "SdkHeader.h"
#import "StinityAsterature.h"

@interface PathyularMrsship ()

@property (nonatomic, strong) AcetoetyAud *httpEngine_MMMPRO;

@end

@implementation PathyularMrsship

+ (instancetype)sharedInstance {
    
    static PathyularMrsship *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[PathyularMrsship alloc] init];
        NSString *servicePath = [SDKRES getLoginUrl_MMMethodMMM];
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
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
    [StinityAsterature showLoadingAtView_MMMethodMMM:nil];
    [[PathyularMrsship sharedInstance].httpEngine_MMMPRO getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_almot_locoture, task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        [StinityAsterature stopLoadingAtView_MMMethodMMM:nil];
        NSDictionary *responseDict = responseData;
        
        TrichinoonArchiability *mCCSDKResponse = [TrichinoonArchiability yy_modelWithDictionary:responseData];
        if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
            mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId];
            mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform];
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
        [StinityAsterature stopLoadingAtView_MMMethodMMM:nil];
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
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
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
    SDK_LOG(wwwww_tag_wwwww_iratesque_ambi, path, params);
    [StinityAsterature showLoadingAtView_MMMethodMMM:nil];
    [[PathyularMrsship sharedInstance].httpEngine_MMMPRO postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_phorcontainuous_glabrety, task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          [StinityAsterature stopLoadingAtView_MMMethodMMM:nil];
            NSDictionary *responseDict = responseData;
            
    
            TrichinoonArchiability *mCCSDKResponse = [TrichinoonArchiability yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
                mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId] ? : @"";
                mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform] ? : @"";
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
        [StinityAsterature stopLoadingAtView_MMMethodMMM:nil];
        SDK_LOG(wwwww_tag_wwwww_findfy_brevability, path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            AlleloitySex *errorObject = [[AlleloitySex alloc] init];
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
    
    [[PathyularMrsship sharedInstance].httpEngine_MMMPRO fileUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params fileData_MMMethodMMM:fileData fileName_MMMethodMMM:fileName mimeType_MMMethodMMM:mimeType progressBlock_MMMethodMMM:^(float progress) {
        
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
            AlleloitySex *errorObject = [AlleloitySex yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(wwwww_tag_wwwww_ballistic_of, functionPath, error);
        if (errorBlock) {
            AlleloitySex *errorObject = [[AlleloitySex alloc] init];
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
    
    [[PathyularMrsship sharedInstance].httpEngine_MMMPRO imageUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params imageData_MMMethodMMM:imageData imageName_MMMethodMMM:imageName progressBlock_MMMethodMMM:^(float progress) {
        
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
            AlleloitySex *errorObject = [AlleloitySex yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        if (errorBlock) {
            AlleloitySex *errorObject = [[AlleloitySex alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); 
            errorBlock(errorObject);
        }
    }];
}


@end
