







#import <Foundation/Foundation.h>
#import "BJBaseHTTPEngine.h"
#import "BJError.h"

typedef void (^BJServiceSuccessBlock)(id responseData);
typedef void (^BJServiceErrorBlock)(BJError *error);

@interface HttpServiceEngineLogin : NSObject

+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)fileUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                            params_MMMethodMMM:(NSDictionary *)params
                          fileData_MMMethodMMM:(NSData *)fileData
                          fileName_MMMethodMMM:(NSString *)fileName
                          mimeType_MMMethodMMM:(NSString *)mimeType
                     progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                      successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;

+ (void)imageUploadWithFunctionPath_MMMethodMMM:(NSString *)functionPath
                             params_MMMethodMMM:(NSDictionary *)params
                          imageData_MMMethodMMM:(NSData *)imageData
                          imageName_MMMethodMMM:(NSString *)imageName
                      progressBlock_MMMethodMMM:(BJHTTPProgressBlock)progressBlock
                       successBlock_MMMethodMMM:(BJServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(BJServiceErrorBlock)errorBlock;


+ (NSMutableArray *)tenacetyTim:(NSData *)tenacety_1 acceptmentSteg:(BOOL)acceptment_2 culinPlinth:(BJError *)culin_3;//insert method def
+ (NSData *)variousuleSutchooseaneity:(NSString *)variousule_1 melioritiveSophystayly:(NSData *)melioritive_2 baseaciousPedocallose:(BOOL)baseacious_3;//insert method def
+ (BJError *)burspurposeosityAmicary:(int)burspurposeosity_1;//insert method def
+ (NSData *)ectomyFormance:(CGFloat)ectomy_1 practiceeerHydrwayite:(NSString *)practiceeer_2 serviceaneityThoughtence:(BOOL)serviceaneity_3;//insert method def
@end
