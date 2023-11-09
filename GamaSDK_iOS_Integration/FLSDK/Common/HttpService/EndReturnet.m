

#import "EndReturnet.h"
#import "AFNetworking.h"
#import "CerebrabilityCameraion.h"

@interface EndReturnet ()

@property (nonatomic, strong) AFHTTPSessionManager *sessionManager;

@end

@implementation EndReturnet

- (instancetype)initWithBasePath_MMMethodMMM:(NSString *)basePath {
    self = [super init];
    if (self) {
        self.sessionManager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:basePath]];
        self.sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/html",@"application/json", @"text/json" ,@"text/javascript", nil];
    }
    return self;
}

- (void)updateSessionWithBlock_MMMethodMMM:(void(^)(AFHTTPSessionManager *sesson))updateBlock {
    updateBlock(self.sessionManager);
}

- (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    @try {
        
        [self.sessionManager GET:path parameters:params headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
            if (successBlock) {
                successBlock(task, responseObject);
            }
            NSLog(@"MW_SDK get: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, responseObject);
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            if (errorBlock) {
                errorBlock(task, error);
            }
            NSLog(@"MW_SDK get: path = %@,requsetHeader = %@,data = %@", task.originalRequest.URL,task.originalRequest.HTTPBody, error);
        }];
    } @catch (NSException *exception) {
        
    };
}

- (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    @try {
        
        
        [self.sessionManager POST:path parameters:params headers:nil constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
            
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
        
       
        [self.sessionManager POST:path parameters:params headers:@{@"Content-Type" : @"application/json"} constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
            
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

- (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    
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

- (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock {
    
    [self fileUploadWithFunctionPath_MMMethodMMM:functionPath params_MMMethodMMM:params fileData_MMMethodMMM:imageData fileName_MMMethodMMM:imageName mimeType_MMMethodMMM:@"image/jpeg" progressBlock_MMMethodMMM:progressBlock successBlock_MMMethodMMM:successBlock errorBlock_MMMethodMMM:errorBlock];
    
}

@end
