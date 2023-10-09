

#import <Foundation/Foundation.h>
#import "YouiveColdit.h"
#import "EnjoyIdi.h"

typedef void (^PayServiceSuccessBlock)(id responseData);
typedef void (^PayServiceErrorBlock)(EnjoyIdi *error);

@interface FontneareerCycling : NSObject

+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

@end
