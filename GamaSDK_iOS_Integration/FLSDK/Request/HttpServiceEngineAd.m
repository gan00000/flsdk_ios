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

@property (nonatomic, strong) BJBaseHTTPEngine *httpEngine;

@end

@implementation HttpServiceEngineAd

+ (instancetype)sharedInstance {
    
    static HttpServiceEngineAd *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[HttpServiceEngineAd alloc] init];
        NSString *servicePath = @"";//[[BJServiceConfigurator sharedInstance] serverBaseUrl];
        instance.httpEngine = [[BJBaseHTTPEngine alloc] initWithBasePath_MMMethodMMM:servicePath];
        [instance.httpEngine updateSessionWithBlock_MMMethodMMM:^(AFHTTPSessionManager *session) {
            session.requestSerializer.timeoutInterval = 30;
//            [session.requestSerializer setValue:wwwww_tag_wwwww_89bc52ca5b forHTTPHeaderField:@"X-User-AppId"];
//            [session.requestSerializer setValue:wwwww_tag_wwwww_1 forHTTPHeaderField:@"X-User-Platform"];
//            [session.requestSerializer setValue:[NSString stringWithFormat:@"%@|%@|%@", [BJUtility modelName], [BJUtility systemVersion], [BJUtility idfa]] forHTTPHeaderField:@"X-User-Device"]; //机器名称 | 系统版本 | idfa
//            [session.requestSerializer setValue:[BJUtility appVersion] forHTTPHeaderField:@"X-App-Version"];
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
    //[GamaUtils gamaStarLoadingAtView:nil];
    [[HttpServiceEngineAd sharedInstance].httpEngine postJsonRequestWithFunctionPath_MMMethodMMM:path params_MMMethodMMM:allParams successBlock_MMMethodMMM:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
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
        
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            BJError *errorObject = [[BJError alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(wwwww_tag_wwwww_py_error_occur); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}


@end
