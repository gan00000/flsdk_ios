//
//  GamaAdInterface.h
//  GamaSDK_iOS
//
//  Created by coke on 2018/8/6.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamaAdInterface : NSObject

+ (void)allEventReportWithEventName:(NSString *)eventName parameters:(NSDictionary *)parameters;

@end
