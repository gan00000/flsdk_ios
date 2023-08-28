

#import <Foundation/Foundation.h>
#import "SatforPurpurair.h"
#import "BallfySibil.h"

typedef void (^PayServiceSuccessBlock)(id responseData);
typedef void (^PayServiceErrorBlock)(BallfySibil *error);

@interface GonyetSituationous : NSObject

+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

@end
