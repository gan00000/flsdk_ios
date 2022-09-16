//
//  CuspPhloearian.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "CuspPhloearian.h"

@implementation CuspPhloearian


+(BOOL) isEmpty:(NSString *)s
{
    if (!s || [s isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

+(BOOL) isNotEmpty:(NSString *)s{
    return  ![self isEmpty:s];
}

@end
