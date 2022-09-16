//
//  NewseerSectionier.m
//  BenjiaPro
//
//  Created by Marco on 2017/6/1.
//  Copyright © 2017年 Benjia. All rights reserved.
//

#define BJ_DEBUG NO

#import "NewseerSectionier.h"

@implementation NewseerSectionier

+ (instancetype)sharedInstance {
    static NewseerSectionier *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[NewseerSectionier alloc] init];
        
        if (BJ_DEBUG) {
           // [[NSUserDefaults standardUserDefaults] registerDefaults:@{kServiceUrlTypeKey:@1}];
        } else {
           // [[NSUserDefaults standardUserDefaults] registerDefaults:@{kServiceUrlTypeKey:@0}];
        }
        
    });
    return instance;
}


@end
