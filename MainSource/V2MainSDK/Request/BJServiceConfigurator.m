//
//  BJServiceConfigurator.m
//  BenjiaPro
//
//  Created by Marco on 2017/6/1.
//  Copyright © 2017年 Benjia. All rights reserved.
//

#define BJ_DEBUG NO

#import "BJServiceConfigurator.h"

@implementation BJServiceConfigurator

+ (instancetype)sharedInstance {
    static BJServiceConfigurator *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[BJServiceConfigurator alloc] init];
        
        if (BJ_DEBUG) {
           // [[NSUserDefaults standardUserDefaults] registerDefaults:@{kServiceUrlTypeKey:@1}];
        } else {
           // [[NSUserDefaults standardUserDefaults] registerDefaults:@{kServiceUrlTypeKey:@0}];
        }
        
    });
    return instance;
}


@end
