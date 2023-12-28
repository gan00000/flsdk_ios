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

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager_MMMPRO;

@end

@implementation BJBaseHTTPEngine

- (instancetype)initWithBasePath_MMMethodMMM:(NSString *)basePath {
    self = [super init];
    if (self) {
        self.sessionManager_MMMPRO = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:basePath]];
        self.sessionManager_MMMPRO.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:wwwww_tag_wwwww_text_plain,wwwww_tag_wwwww_text_html,wwwww_tag_wwwww_application_json, wwwww_tag_wwwww_text_json ,wwwww_tag_wwwww_text_javascript, nil];
    }
    return self;
}

- (void)updateSessionWithBlock_MMMethodMMM:(void(^)(AFHTTPSessionManager *sesson))updateBlock {
    updateBlock(self.sessionManager_MMMPRO);
}

- (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    @try {
        
        [self.sessionManager_MMMPRO GET:path parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            if (successBlock) {
                successBlock(task, responseObject);
            }
            NSLog(wwwww_tag_wwwww_startfy_seget, task.originalRequest.URL,task.originalRequest.HTTPBody, responseObject);
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (errorBlock) {
                errorBlock(task, error);
            }
            NSLog(wwwww_tag_wwwww_startfy_seget, task.originalRequest.URL,task.originalRequest.HTTPBody, error);
        }];
    } @catch (NSException *exception) {
        
    };
}

- (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    @try {
        
        
        [self.sessionManager_MMMPRO POST:path parameters:params headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
            
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

- (void)postJsonRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    @try {
        
       // self.sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];//@{wwwww_tag_wwwww_Content_Type : wwwww_tag_wwwww_application_json, wwwww_tag_wwwww_charset:@"UTF-8"}
        [self.sessionManager_MMMPRO POST:path parameters:params headers:@{wwwww_tag_wwwww_Content_Type : wwwww_tag_wwwww_application_json} constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
            
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

- (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    
    NSString *path = [self.sessionManager_MMMPRO.baseURL.absoluteString stringByAppendingPathComponent:functionPath];
    NSMutableURLRequest *request = [self.sessionManager_MMMPRO.requestSerializer multipartFormRequestWithMethod:@"POST" URLString:path parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        
        [formData appendPartWithFileData:fileData name:fileName fileName:fileName mimeType:mimeType];
        
    } error:nil];
    
    __block NSURLSessionUploadTask *uploadTask =
    [self.sessionManager_MMMPRO uploadTaskWithStreamedRequest:request progress:^(NSProgress * _Nonnull uploadProgress) {
        
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

- (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    
    [self fileUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params fileData_MMMethodMMM:imageData fileName_MMMethodMMM:imageName mimeType_MMMethodMMM:wwwww_tag_wwwww_image_jpeg progressBlock_MMMethodMMM:progressBlock successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

@end
