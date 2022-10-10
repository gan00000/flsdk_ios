//
//  BJHTTPServiceEngine.h
//  BenjiaPro
//
//  Created by Marco on 2017/6/6.
//  Copyright © 2017年 Benjia. All rights reserved.
//

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

@end
