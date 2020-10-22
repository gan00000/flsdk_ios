//
//  HttpServiceEngineAd.h
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/22.
//  Copyright © 2020 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BJBaseHTTPEngine.h"
#import "BJError.h"
#import "HttpServiceEngineLogin.h"

NS_ASSUME_NONNULL_BEGIN

@interface HttpServiceEngineAd : NSObject

+ (void)postRequestWithFunctionPath:(NSString *)path
                             params:(NSDictionary *)params
                       successBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock;

@end

NS_ASSUME_NONNULL_END
