
#import <Foundation/Foundation.h>
#import "BJBaseHTTPEngine.h"
#import "BJError.h"

typedef void (^BJServiceSuccessBlock)(id responseData);
typedef void (^BJServiceErrorBlock)(BJError *error);

@interface HttpServiceEngineLogin : NSObject


@property(nonatomic, assign)float  decode_offset;
@property(nonatomic, assign)int  date_count;
@property(nonatomic, assign)Boolean  enbaleStop;
@property(nonatomic, assign)double  query_padding;




+(double)ceilDicBackBdfbTransition:(NSDictionary *)success session:(long)session;

+(Boolean)logFailurePadding:(NSDictionary *)close;

+(Boolean)logoEncodeLprojGuestNendDangerous:(NSDictionary *)block write:(Boolean)write;


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


@end
