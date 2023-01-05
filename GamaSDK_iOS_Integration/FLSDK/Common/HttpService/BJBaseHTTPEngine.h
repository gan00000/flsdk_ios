
#import <Foundation/Foundation.h>

@class AFHTTPSessionManager;

typedef void (^BJHTTPSuccessBlock)(NSURLSessionDataTask *task, id responseData);
typedef void (^BJHTTPProgressBlock)(float progress);
typedef void (^BJHTTPFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@interface BJBaseHTTPEngine : NSObject


@property(nonatomic, assign)NSInteger  terms_sum;
@property(nonatomic, assign)float  appendSize;
@property(nonatomic, assign)NSInteger  with_1;




-(NSDictionary *)aracActiveBecomeApp;

-(NSDictionary *)changeTelLaunchingPragma:(Boolean)modelSelect select:(NSDictionary *)select create:(int)create;

-(NSString *)adjustsFontsizeCheckLenPairsMoved:(NSDictionary *)lable share:(NSDictionary *)share heightRotate:(double)heightRotate;

-(NSDictionary *)scanNibLprojBattbetterAffinePesenting:(double)client messageShow:(NSDictionary *)messageShow lnews:(double)lnews;


- (instancetype)initWithBasePath_MMMethodMMM:(NSString *)basePath;

- (void)updateSessionWithBlock_MMMethodMMM:(void(^)(AFHTTPSessionManager *session))updateBlock;

- (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)postJsonRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                          errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

- (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJHTTPSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJHTTPFailureBlock)errorBlock;

@end
