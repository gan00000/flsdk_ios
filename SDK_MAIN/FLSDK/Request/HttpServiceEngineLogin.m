//
//  BJHTTPServiceEngine.m
//  BenjiaPro
//
//  Created by Marco on 2017/6/6.
//  Copyright © 2017年 Benjia. All rights reserved.
//

#import "HttpServiceEngineLogin.h"
#import "BJServiceConfigurator.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "BJBaseResponceModel.h"
#import "SdkHeader.h"
#import "SdkUtil.h"

@interface HttpServiceEngineLogin ()

@property (nonatomic, strong) BJBaseHTTPEngine *httpEngine_MMMPRO;

@end

@implementation HttpServiceEngineLogin

+ (instancetype)sharedInstance {
    
    static HttpServiceEngineLogin *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HttpServiceEngineLogin alloc] init];
        NSString *servicePath = [SDKRES getLoginUrl_MMMethodMMM];//[[BJServiceConfigurator sharedInstance] serverBaseUrl];
        instance.httpEngine_MMMPRO = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine_MMMPRO updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
//            [session.requestSerializer setValue:wwwww_tag_wwwww_89bc52ca5b forHTTPHeaderField:wwwww_tag_wwwww_X_User_AppId];
//            [session.requestSerializer setValue:wwwww_tag_wwwww_1 forHTTPHeaderField:wwwww_tag_wwwww_X_User_Platform];
//            [session.requestSerializer setValue:[NSString stringWithFormat:wwwww_tag_wwwww_donible_vorac, [BJUtility modelName], [BJUtility systemVersion], [BJUtility idfa]] forHTTPHeaderField:wwwww_tag_wwwww_X_User_Device]; //机器名称 | 系统版本 | idfa
//            [session.requestSerializer setValue:[BJUtility appVersion] forHTTPHeaderField:wwwww_tag_wwwww_X_App_Version];
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
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [[HttpServiceEngineLogin sharedInstance].httpEngine_MMMPRO getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_almot_locoture, task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
        NSDictionary *responseDict = responseData;
        
//        BJBaseResponceModel *mBJBaseResponceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
        LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
        if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
            mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId];
            mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform];
            if (successBlock) {
                successBlock(mCCSDKResponse);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
        SDK_LOG(wwwww_tag_wwwww_exampleery_pubon, path, error);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); //TODO:获取NSError里面的描述信息
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
    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [[HttpServiceEngineLogin sharedInstance].httpEngine_MMMPRO postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_phorcontainuous_glabrety, task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
            NSDictionary *responseDict = responseData;
            
    //        BJBaseResponceModel *mBJBaseResponceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
                mCCSDKResponse.data.thirdId = params[wwwww_tag_wwwww_thirdPlatId] ? : @"";
                mCCSDKResponse.data.loginType = params[wwwww_tag_wwwww_registPlatform] ? : @"";
                if (successBlock) {
                    successBlock(mCCSDKResponse);
                }
            } else {
                BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
                if (errorBlock) {
                    errorBlock(errorObject);
                }
            }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
        SDK_LOG(wwwww_tag_wwwww_findfy_brevability, path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); //TODO:获取NSError里面的描述信息
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
    
    [[HttpServiceEngineLogin sharedInstance].httpEngine_MMMPRO fileUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params fileData_MMMethodMMM:fileData fileName_MMMethodMMM:fileName mimeType_MMMethodMMM:mimeType progressBlock_MMMethodMMM:^(float progress) {
        
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
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(wwwww_tag_wwwww_ballistic_of, functionPath, error);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); //TODO:获取NSError里面的描述信息
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
    
    [[HttpServiceEngineLogin sharedInstance].httpEngine_MMMPRO imageUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params imageData_MMMethodMMM:imageData imageName_MMMethodMMM:imageName progressBlock_MMMethodMMM:^(float progress) {
        
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
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
        
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}


@end
