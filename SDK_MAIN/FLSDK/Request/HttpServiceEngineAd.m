//
//  HttpServiceEngineAd.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/22.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "HttpServiceEngineAd.h"
#import "BJServiceConfigurator.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "BJBaseResponceModel.h"
#import "SdkHeader.h"
#import "SdkUtil.h"

@interface HttpServiceEngineAd ()

@property (nonatomic, strong) BJBaseHTTPEngine *httpEngine_MMMPRO;

@end

@implementation HttpServiceEngineAd

+ (instancetype)sharedInstance {
    
    static HttpServiceEngineAd *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HttpServiceEngineAd alloc] init];
        NSString *servicePath = @"";//[[BJServiceConfigurator sharedInstance] serverBaseUrl];
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
+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
    SDK_LOG(wwwww_tag_wwwww_iratesque_ambi, path, params);
    //[GamaUtils gamaStarLoadingAtView:nil];
    [[HttpServiceEngineAd sharedInstance].httpEngine_MMMPRO postJsonRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(wwwww_tag_wwwww_phorcontainuous_glabrety, task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          //[GamaUtils gamaStopLoadingAtView:nil];
            NSDictionary *responseDict = responseData;
            
    //        BJBaseResponceModel *mBJBaseResponceModel = [BJBaseResponceModel yy_modelWithDictionary:responseDict];
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess_MMMethodMMM]) {
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
