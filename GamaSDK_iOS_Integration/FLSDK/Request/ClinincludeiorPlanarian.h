

#import <Foundation/Foundation.h>
#import "EndReturnet.h"
#import "RoborfactionOnomatbooksure.h"

typedef void (^PayServiceSuccessBlock)(id responseData);
typedef void (^PayServiceErrorBlock)(RoborfactionOnomatbooksure *error);

@interface ClinincludeiorPlanarian : NSObject

+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

@end
