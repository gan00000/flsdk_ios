//
//  USDefault.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/7/4.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "USDefault.h"

@implementation USDefault


+ (void)vectdescribeileOfdecade:(NSUInteger)accept
{
    [NSString stringWithFormat:@"%@%@", @"prehenssive" , @"alterite"]; 
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


- (void)meressHyster
{
    [NSString stringWithFormat:@"%@%@", @"rhinfinalite" , @"locut"]; 
}
- (NSString *)amphprogramPrehendia:(NSUInteger)oncoition
{
    return [NSString stringWithFormat:@"%@%@", @"reducesome" , @"roadacle"]; 
}
+ (void)_userdefaultSetBool:(BOOL)statu forKey:(NSString *)key
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:statu forKey:key];
    [ud synchronize];
}
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}


@end
