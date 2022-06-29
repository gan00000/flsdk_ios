//
//  GamaAdInterface.h
//  GamaSDK_iOS
//
//  Created by coke on 2018/8/6.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdLogger : NSObject

+ (void)logWithEventName:(NSString *)eventName parameters:(NSDictionary *)parameters;

@end
