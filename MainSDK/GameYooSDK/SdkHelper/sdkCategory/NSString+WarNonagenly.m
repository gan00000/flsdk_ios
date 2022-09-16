//
//  NSString+WarNonagenly.m
//  MWSDK
//
//  Created by Gan Yuanrong on 2022/8/1.
//

#import "NSString+WarNonagenly.h"
#import "ResHeader.h"

@implementation NSString (WarNonagenly)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
