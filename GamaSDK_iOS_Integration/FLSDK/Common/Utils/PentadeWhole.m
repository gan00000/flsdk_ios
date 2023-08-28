

#import "PentadeWhole.h"

@implementation PentadeWhole


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
