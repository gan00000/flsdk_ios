//
//  StringUtil.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "StringUtil.h"

@implementation StringUtil


+(BOOL) isEmpty:(NSString *)s
{
    if (!s || s.length < 1 || [s isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

+(BOOL) isNotEmpty:(NSString *)s{
    return  ![self isEmpty:s];
}

@end
