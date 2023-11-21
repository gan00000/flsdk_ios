//
//  StringUtil.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "StringUtil.h"

@implementation StringUtil


+(BOOL) isEmpty_MMMethodMMM:(NSString *)s
{
    if (!s || [s isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

+(BOOL) isNotEmpty_MMMethodMMM:(NSString *)s{
    return  ![self isEmpty_MMMethodMMM:s];
}

@end
