

#define BJ_DEBUG NO

#import "NoxisticPlaslowarium.h"

@implementation NoxisticPlaslowarium

+ (instancetype)sharedInstance {
    static NoxisticPlaslowarium *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[NoxisticPlaslowarium alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
