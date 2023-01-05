
#import <Foundation/Foundation.h>
#import "BJBaseHTTPEngine.h"
#import "BJError.h"

typedef void (^PayServiceSuccessBlock)(id responseData);
typedef void (^PayServiceErrorBlock)(BJError *error);

@interface HttpServiceEnginePay : NSObject


@property(nonatomic, assign)double  responce_margin;
@property(nonatomic, copy)NSString *  totalLandscapeStr;




+(NSDictionary *)separatorEsclipeUpdatedWrappingCustomPattern:(NSString *)findIcon;

+(float)openFiledSysctlbynameDirectionsSisterary:(double)handerLoading;

+(NSArray *)runAreWelcomeScreenIdentifier:(NSString *)completeFrame_6 changed:(NSDictionary *)changed;


+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

@end
