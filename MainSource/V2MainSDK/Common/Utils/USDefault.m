//
//  USDefault.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/7/4.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "USDefault.h"

@implementation USDefault


+ (NSString *)cheirobenefityGreatair:(CGFloat)soundivity supraor:(NSUInteger)supraor everyoneality:(CGFloat)everyoneality directorship:(NSString *)directorship
{
    return [NSString stringWithFormat:@"%@%@", @"rusot" , @"pury"]; 
}
+ (void)_userdefaultSetObject:(id)obj forKey:(NSString *)key
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:obj forKey:key];
    [ud synchronize];
}
+ (id)_userdefaultGetObjForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+ (void)_userdefaultSetBool:(BOOL)statu forKey:(NSString *)key
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:statu forKey:key];
    [ud synchronize];
}

+ (void)credbookPaleochairory:(NSString *)auctaceous
{
    [NSString stringWithFormat:@"%@%@", @"major" , @"arthrowideproof"]; 
}
+ (NSString *)similarativeOpoarium:(NSString *)theri protical:(NSUInteger)protical optioner:(NSString *)optioner health:(NSUInteger)health
{
    return [NSString stringWithFormat:@"%@%@", @"argue" , @"myality"]; 
}
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}


@end
