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
@property (nonatomic, assign) BOOL dinoityMandkinNtot;

+ (void)getRequestWithFunctionPath:(NSString *)path
                            params:(NSDictionary *)params
                      successBlock:(PayServiceSuccessBlock)successBlock
                        errorBlock:(PayServiceErrorBlock)errorBlock;

+ (void)postRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(PayServiceSuccessBlock)successBlock
                         errorBlock:(PayServiceErrorBlock)errorBlock;

@end
