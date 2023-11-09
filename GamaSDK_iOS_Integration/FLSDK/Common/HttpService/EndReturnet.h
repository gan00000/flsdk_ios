

#import <Foundation/Foundation.h>

@class AFHTTPSessionManager;

typedef void (^BJHTTPSuccessBlock)(NSURLSessionDataTask *task, id responseData);
typedef void (^BJHTTPProgressBlock)(float progress);
typedef void (^BJHTTPFailureBlock)(NSURLSessionDataTask *task, NSError *error);

@interface EndReturnet : NSObject

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

- (NSString *)officerian14491Dark14492:(NSURLSessionDataTask *)officerian14491_1 politicsality14493Pteryweaponuous14494:(int)politicsality14493_2 trophitude14495Salinate14496:(NSURLSessionDataTask *)trophitude14495_3 amongable14497Sideatory14498:(BOOL)amongable14497_4;
- (CGFloat)security14505Environmentalaire14506:(NSDictionary *)security14505_1 omphaless14507Cingitor14508:(NSInteger)omphaless14507_2 cadeous14509Vinc14510:(long)cadeous14509_3 claustrition14511Theriaceous14512:(NSDictionary *)claustrition14511_4;
- (NSDictionary *)montlet14517Homalify14518:(NSString *)montlet14517_1 trapezior14519Vertacious14520:(NSDictionary *)trapezior14519_2;
- (NSData *)struory14523Realacity14524:(float)struory14523_1;
- (long)preventty14565Genes14566:(NSArray *)preventty14565_1 nothing14567Trachy14568:(NSString *)nothing14567_2 sten14569Thenior14570:(NSMutableDictionary *)sten14569_3 opportunityish14571Mereate14572:(long)opportunityish14571_4 quindecim14573Junior14574:(NSString *)quindecim14573_5;
@end
