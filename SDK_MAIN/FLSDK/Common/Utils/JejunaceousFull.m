

#import "JejunaceousFull.h"

@implementation JejunaceousFull

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
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}


@end
