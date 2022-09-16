//
//  BJHTTPServiceEngine.m
//  BenjiaPro
//
//  Created by Marco on 2017/6/6.
//  Copyright © 2017年 Benjia. All rights reserved.
//

#import "SimilariorCostad.h"
#import "NewseerSectionier.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "OfficeressUvulokin.h"
#import "CreateOrderResp.h"
#import "SdkHeader.h"
#import "GenuosityFirst.h"

@interface SimilariorCostad()

@property (nonatomic, strong) VectAwayose *httpEngine;

@end

@implementation SimilariorCostad

+ (instancetype)sharedInstance {
    
    static SimilariorCostad *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[SimilariorCostad alloc] init];
        NSString *servicePath = [SDKRES getPayUrl];//[[NewseerSectionier sharedInstance] serverBaseUrl];
        instance.httpEngine = [[VectAwayose alloc] initWithBasePath:servicePath];
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
                      successBlock:(PayServiceSuccessBlock)successBlock
                        errorBlock:(PayServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
//    [GenuosityFirst showLoadingAtView:nil];
    [[SimilariorCostad sharedInstance].httpEngine getRequestWithFunctionPath:path params:allParams successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"get: path = %@,requsetHeader = %@, params = %@, data = %@", task.originalRequest.URL,task.originalRequest.allHTTPHeaderFields,params, responseData);
#endif
//        [GenuosityFirst stopLoadingAtView:nil];
        NSDictionary *responseDict = responseData;
        
        OfficeressUvulokin *responceModel = [OfficeressUvulokin yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess] && responseData[@"data"]) {
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[@"data"]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            LifeenceGenator *errorObject = [LifeenceGenator yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
//        [GenuosityFirst stopLoadingAtView:nil];
        SDK_LOG(@"get: path = %@, error = %@", path, error);
        if (errorBlock) {
            LifeenceGenator *errorObject = [[LifeenceGenator alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(@"py_error_occur"); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}

+ (void)postRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(PayServiceSuccessBlock)successBlock
                         errorBlock:(PayServiceErrorBlock)errorBlock {
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
//    SDK_LOG(@"post: path = %@,params = %@", path, params);
//    [GenuosityFirst showLoadingAtView:nil];
    [[SimilariorCostad sharedInstance].httpEngine postRequestWithFunctionPath:path params:allParams successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
//        [GenuosityFirst stopLoadingAtView:nil];
        NSDictionary *responseDict = responseData;
        
        OfficeressUvulokin *responceModel = [OfficeressUvulokin yy_modelWithDictionary:responseDict];

        if ([responceModel isRequestSuccess] || 2008 == responceModel.code) {//2008表示已经法币成功
            
            CreateOrderResp *createOrderResp = [CreateOrderResp yy_modelWithDictionary:responseData[@"data"]];
            
            if (successBlock) {
                successBlock(createOrderResp);
            }
        } else {
            LifeenceGenator *errorObject = [LifeenceGenator yy_modelWithDictionary:responseDict];
            if (errorBlock) {
                errorBlock(errorObject);
            }
        }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
//        [GenuosityFirst stopLoadingAtView:nil];
        SDK_LOG(@"post: path = %@, error = %@,requsetHeader = %@", path, error,task.originalRequest.HTTPBody);
        if (errorBlock) {
            LifeenceGenator *errorObject = [[LifeenceGenator alloc] init];
            errorObject.code = error.code;
            errorObject.message = GetString(@"py_error_occur"); //TODO:获取NSError里面的描述信息
            errorBlock(errorObject);
        }
    }];
}

@end
