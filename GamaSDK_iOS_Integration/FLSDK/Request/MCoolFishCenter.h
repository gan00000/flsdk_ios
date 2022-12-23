
#import <Foundation/Foundation.h>
#import "MCoolFishAlertReader.h"
#import "MCoolFishAlert.h"

typedef void (^PayServiceSuccessBlock)(id responseData);
typedef void (^PayServiceErrorBlock)(MCoolFishAlert *error);

@interface MCoolFishCenter : NSObject


@property(nonatomic, copy)NSArray *  interruptEvent_list;
@property(nonatomic, assign)Boolean  enbaleGesture;


/// 函数定义
+ (void)getRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                            params_MMMethodMMM:(NSDictionary *)params
                      successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                        errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath_MMMethodMMM:(NSString *)path
                             params_MMMethodMMM:(NSDictionary *)params
                       successBlock_MMMethodMMM:(PayServiceSuccessBlock)successBlock
                         errorBlock_MMMethodMMM:(PayServiceErrorBlock)errorBlock;

@end
