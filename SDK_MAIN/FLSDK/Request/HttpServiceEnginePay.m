//
//  BJHTTPServiceEngine.m
//  BenjiaPro
//
//  Created by Marco on 2017/6/6.
//  Copyright © 2017年 Benjia. All rights reserved.
//

#import "HttpServiceEnginePay.h"
#import "BJServiceConfigurator.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "BJBaseResponceModel.h"
#import "CreateOrderResp.h"
#import "SdkHeader.h"
#import "SdkUtil.h"

@interface HttpServiceEnginePay()

@property (nonatomic, strong) BJBaseHTTPEngine *httpEngine_MMMPRO;

@end

@implementation HttpServiceEnginePay

+ (instancetype)sharedInstance {
    
    static HttpServiceEnginePay *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HttpServiceEnginePay alloc] init];
        NSString *servicePath = [SDKRES getPayUrl_MMMethodMMM];//[[BJServiceConfigurator sharedInstance] serverBaseUrl];
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
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
//    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [[HttpServiceEnginePay sharedInstance].httpEngine_MMMPRO getRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_almot_locoture, task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
//        [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
        NSDictionary *responseDict = responseData;
        
        BJBaseResponceModel *responceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] && responseData[wwwww_tag_wwwww_data]) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
//        [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
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
//    SDK_LOG(wwwww_tag_wwwww_iratesque_ambi, path, params);
//    [SdkUtil showLoadingAtView_MMMethodMMM:nil];
    [[HttpServiceEnginePay sharedInstance].httpEngine_MMMPRO postRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_phorcontainuous_glabrety, task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
//        [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
        NSDictionary *responseDict = responseData;
        
        BJBaseResponceModel *responceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess_MMMethodMMM] || 2008 == responceModel.code) {//2008表示已经法币成功
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[wwwww_tag_wwwww_data]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            BJError *errorObject = [BJError yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock_MMMethodMMM:^(NSURLSessionDataTask *task, NSError *error) {
//        [SdkUtil stopLoadingAtView_MMMethodMMM:nil];
        SDK_LOG(wwwww_tag_wwwww_findfy_brevability, path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}

@end
