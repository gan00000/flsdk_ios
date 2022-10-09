//
//  NSString+Local.m
//  MWSDK
//
//  Created by Gan Yuanrong on 2022/8/1.
//

#import "NSString+Local.h"
#import "ResHeader.h"

@implementation NSString (Local)

@dynamic localx;

-(NSString *)localx_MMMethodMMM{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
