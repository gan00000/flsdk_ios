//
//  MonstratousPolisment.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/22.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "MonstratousPolisment.h"
#import "NewseerSectionier.h"
#import "YYModel.h"
#import "AFHTTPSessionManager.h"
#import "OfficeressUvulokin.h"
#import "SdkHeader.h"
#import "GenuosityFirst.h"

@interface MonstratousPolisment ()

@property (nonatomic, strong) VectAwayose *httpEngine;

@end

@implementation MonstratousPolisment

+ (instancetype)sharedInstance {
    
    static MonstratousPolisment *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MonstratousPolisment alloc] init];
        NSString *servicePath = @"http://adv.flyfungame.com/";//[[NewseerSectionier sharedInstance] serverBaseUrl];
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
+ (void)postRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock {
    NSMutableDictionary *allParams = [NSMutableDictionary dictionary];
    if (params) {
        [allParams addEntriesFromDictionary:params];
    }
    SDK_LOG(@"post: path = %@,params = %@", path, params);
    //[GamaUtils gamaStarLoadingAtView:nil];
    [[MonstratousPolisment sharedInstance].httpEngine postJsonRequestWithFunctionPath:path params:allParams successBlock:^(NSURLSessionDataTask *task, id responseData) {
        
#if ENABLE_REQUEST_LOG
        SDK_LOG(@"post: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseData);
#endif
        
          //[GamaUtils gamaStopLoadingAtView:nil];
            NSDictionary *responseDict = responseData;
            
    //        OfficeressUvulokin *mBJBaseResponceModel = [OfficeressUvulokin yy_modelWithDictionary:responseDict];
            LoginResponse *mCCSDKResponse = [LoginResponse yy_modelWithDictionary:responseData];
            if ([mCCSDKResponse isRequestSuccess]) {
                if (successBlock) {
                    successBlock(mCCSDKResponse);
                }
            } else {
                LifeenceGenator *errorObject = [LifeenceGenator yy_modelWithDictionary:responseDict];
                if (errorBlock) {
                    errorBlock(errorObject);
                }
            }
        
    } errorBlock:^(NSURLSessionDataTask *task, NSError *error) {
        
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
