







#import <Foundation/Foundation.h>
#import "BJBaseHTTPEngine.h"
#import "BJError.h"

typedef void (^PayServiceSuccessBlock)(id responseData);
typedef void (^PayServiceErrorBlock)(BJError *error);

@interface HttpServiceEnginePay : NSObject

+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (NSDictionary *)protooonLight:(NSString *)protooon_1 alongaciousInterviewture:(NSDictionary *)alongacious_2 phenooAlthoughor:(long)phenoo_3 placpurposewardTreat:(NSString *)placpurposeward_4 financialionGraphgrowthid:(NSMutableDictionary *)financialion_5 horrsoisticSupsupporton:(long)horrsoistic_6 agreementlyMediic:(NSObject *)agreemently_7;//insert method def
@end
