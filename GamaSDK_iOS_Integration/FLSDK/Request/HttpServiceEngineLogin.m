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

@property (nonatomic, strong) BJBaseHTTPEngine *httpEngine;

@end

@implementation HttpServiceEngineLogin

+ (instancetype)sharedInstance {
    
    static HttpServiceEngineLogin *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HttpServiceEngineLogin alloc] init];
        NSString *servicePath = [SDKRES getLoginUrl];//[[BJServiceConfigurator sharedInstance] serverBaseUrl];
        instance.httpEngine = [[BJBaseHTTPEngine alloc] initWithBasePath:servicePath];
        [instance.httpEngine updateSessionWithBlock:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
//            [session.requestSerializer setValue:@"89bc52ca5b" forHTTPHeaderField:@"X-User-AppId"];
//            [session.requestSerializer setValue:@"1" forHTTPHeaderField:@"X-User-Platform"];
//            [session.requestSerializer setValue:[NSString stringWithFormat:@"%@|%@|%@", [BJUtility modelName], [BJUtility systemVersion], [BJUtility idfa]] forHTTPHeaderField:@"X-User-Device"]; //机器名称 | 系统版本 | idfa
//            [session.requestSerializer setValue:[BJUtility appVersion] forHTTPHeaderField:@"X-App-Version"];
        }];
    });
    return instance;
}

#pragma mark -
+ (void)getRequestWithFunctionPath:(NSString *)path
                            params:(NSDictionary *)params
                      successBlock:(BJServiceSuccessBlock)successBlock
                        errorBlock:(BJServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
    [SdkUtil showLoadingAtView:nil];
    [[HttpServiceEngineLogin sharedInstance].httpEngine getRequestWithFunctionPath:path params:allParams successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
        [SdkUtil stopLoadingAtView:nil];
        NSDictionary *responseDict = responseData;
        
//        BJBaseResponceModel *mBJBaseResponceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
        LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
        if ([mCCSDKResponse isRequestSuccess]) {
            mCCSDKResponse.data.thirdId = params[@"thirdPlatId"];
            mCCSDKResponse.data.loginType = params[@"registPlatform"];
            if (successBlock) {
                successBlock(mCCSDKResponse);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        [SdkUtil stopLoadingAtView:nil];
        SDK_LOG(@"get: path = %@, error = %@", path, error);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(@"py_error_occur"); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}

+ (void)postRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock {
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
    [SdkUtil showLoadingAtView:nil];
    [[HttpServiceEngineLogin sharedInstance].httpEngine postRequestWithFunctionPath:path params:allParams successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          [SdkUtil stopLoadingAtView:nil];
            NSDictionary *responseDict = responseData;
            
    //        BJBaseResponceModel *mBJBaseResponceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess]) {
                mCCSDKResponse.data.thirdId = params[@"thirdPlatId"] ? : @"";
                mCCSDKResponse.data.loginType = params[@"registPlatform"] ? : @"";
                if (successBlock) {
                    successBlock(mCCSDKResponse);
                }
            } else {
                BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
                if (errorBlock) {
                    errorBlock(errorObject);
                }
            }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        [SdkUtil stopLoadingAtView:nil];
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(@"py_error_occur"); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}

+ (void)fileUploadWithFunctionPath:(NSString *)functionPath
                            params:(NSDictionary *)params
                          fileData:(NSData *)fileData
                          fileName:(NSString *)fileName
                          mimeType:(NSString *)mimeType
                     progressBlock:(BJHTTPProgressBlock)progressBlock
                      successBlock:(BJServiceSuccessBlock)successBlock
                        errorBlock:(BJServiceErrorBlock)errorBlock {
    
    [[HttpServiceEngineLogin sharedInstance].httpEngine fileUploadWithFunctionPath:functionPath params:params fileData:fileData fileName:fileName mimeType:mimeType progressBlock:^(float progress) {
        
        if (progressBlock) {
            progressBlock(progress);
        }
        
    } successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        
        NSString *code = responseDict[@"status"];
        if (!code || (code.length > 0 && [code isEqualToString:@"ok"])) {
            if (successBlock) {
                successBlock(responseData);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        
        SDK_LOG(@"file upload: path = %@, error = %@", functionPath, error);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(@"py_error_occur"); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
        
    }];
    
}

+ (void)imageUploadWithFunctionPath:(NSString *)functionPath
                             params:(NSDictionary *)params
                          imageData:(NSData *)imageData
                          imageName:(NSString *)imageName
                      progressBlock:(BJHTTPProgressBlock)progressBlock
                       successBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock {
    
    [[HttpServiceEngineLogin sharedInstance].httpEngine imageUploadWithFunctionPath:functionPath params:params imageData:imageData imageName:imageName progressBlock:^(float progress) {
        
        if (progressBlock) {
            progressBlock(progress);
        }

    } successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
        NSDictionary *responseDict = responseData;
        
        NSString *code = responseDict[@"status"];
        if (!code || (code.length > 0 && [code isEqualToString:@"ok"])) {
            if (successBlock) {
                successBlock(responseData);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(@"py_error_occur"); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}


@end
