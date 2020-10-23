//
//  BJBaseHTTPEngine.m
//  BenjiaPro
//
//  Created by Marco on 2017/5/23.
//  Copyright © 2017年 Benjia. All rights reserved.
//

#import "BJBaseHTTPEngine.h"
#import "AFNetworking.h"
#import "BJBaseResponceModel.h"

@interface BJBaseHTTPEngine ()

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@end

@implementation BJBaseHTTPEngine

- (instancetype)initWithBasePath:(NSString *)basePath {
    self = [super init];
    if (self) {
        self.sessionManager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:basePath]];
        self.sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/html",@"application/json", @"text/json" ,@"text/javascript", nil];
    }
    return self;
}

- (void)updateSessionWithBlock:(void(^)(AFHTTPSessionManager *sesson))updateBlock {
    updateBlock(self.sessionManager);
}

- (void)getRequestWithFunctionPath:(NSString *)path
                            params:(NSDictionary *)params
                      successBlock:(BJHTTPSuccessBlock)successBlock
                        errorBlock:(BJHTTPFailureBlock)errorBlock {
    @try {
        
        [self.sessionManager GET:path parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            if (successBlock) {
                successBlock(task, responseObject);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (errorBlock) {
                errorBlock(task, error);
            }
        }];
    } @catch (NSException *exception) {
        
    };
}

- (void)postRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(BJHTTPSuccessBlock)successBlock
                         errorBlock:(BJHTTPFailureBlock)errorBlock {
    @try {
        
        
        [self.sessionManager POST:path parameters:params headers:@{@"Content-Type" : @"application/x-www-form-urlencoded"} constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
            
        } progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            if (successBlock) {
                successBlock(task, responseObject);
            }
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (errorBlock) {
                errorBlock(task, error);
            }
        }];
    } @catch (NSException *exception) {
        
    };
}

- (void)postJsonRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(BJHTTPSuccessBlock)successBlock
                         errorBlock:(BJHTTPFailureBlock)errorBlock {
    @try {
        
       // self.sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];//@{@"Content-Type" : @"application/json", @"charset":@"UTF-8"}
        [self.sessionManager POST:path parameters:params headers:@{@"Content-Type" : @"application/json"} constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
            
        } progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
          
//            BJBaseResponceModel *mBJBaseResponceModel = [BJBaseResponceModel yy_modelWithDictionary:responseObject];
//            if (mBJBaseResponceModel && mBJBaseResponceModel.code != 1000) {
//
//                if (errorBlock) {
//                    errorBlock(task, error);
//                }
//            }else{
//
//
//            }
            
            if (successBlock) {
                successBlock(task, responseObject);
            }
           
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (errorBlock) {
                errorBlock(task, error);
            }
        }];
    } @catch (NSException *exception) {
        
    };
}

- (void)fileUploadWithFunctionPath:(NSString *)functionPath
                            params:(NSDictionary *)params
                          fileData:(NSData *)fileData
                          fileName:(NSString *)fileName
                          mimeType:(NSString *)mimeType
                     progressBlock:(BJHTTPProgressBlock)progressBlock
                      successBlock:(BJHTTPSuccessBlock)successBlock
                        errorBlock:(BJHTTPFailureBlock)errorBlock {
    
    NSString *path = [self.sessionManager.baseURL.absoluteString stringByAppendingPathComponent:functionPath];
    NSMutableURLRequest *request = [self.sessionManager.requestSerializer multipartFormRequestWithMethod:@"POST" URLString:path parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        
        [formData appendPartWithFileData:fileData name:fileName fileName:fileName mimeType:mimeType];
        
    } error:nil];
    
    __block NSURLSessionUploadTask *uploadTask =
    [self.sessionManager uploadTaskWithStreamedRequest:request progress:^(NSProgress * _Nonnull uploadProgress) {
        
        if (progressBlock) {
            progressBlock(uploadProgress.fractionCompleted);
        }
        
    } completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (!error) {
            
            if (successBlock) {
                successBlock(uploadTask, responseObject);
            }
        } else {
            
            if (errorBlock) {
                errorBlock(uploadTask, error);
            }
        }
    }];
    
    [uploadTask resume];
    
}

- (void)imageUploadWithFunctionPath:(NSString *)functionPath
                             params:(NSDictionary *)params
                          imageData:(NSData *)imageData
                          imageName:(NSString *)imageName
                      progressBlock:(BJHTTPProgressBlock)progressBlock
                       successBlock:(BJHTTPSuccessBlock)successBlock
                         errorBlock:(BJHTTPFailureBlock)errorBlock {
    
    [self fileUploadWithFunctionPath:functionPath params:params fileData:imageData fileName:imageName mimeType:@"image/jpeg" progressBlock:progressBlock successBlock:successBlock errorBlock:errorBlock];
    
}

@end
