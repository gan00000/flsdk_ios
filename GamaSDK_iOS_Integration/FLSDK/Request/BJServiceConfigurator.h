//
//  BJServiceConfigurator.h
//  BenjiaPro
//
//  Created by Marco on 2017/6/1.
//  Copyright © 2017年 Benjia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJServiceConfigurator : NSObject

+ (instancetype)sharedInstance;

- (void)connectToServer;
- (NSString *)serverBaseUrl;

- (NSInteger)currentServerType; //0正式环境 1测试环境 2开发环境

@end
