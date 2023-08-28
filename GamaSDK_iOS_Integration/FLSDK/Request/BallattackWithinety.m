

#define BJ_DEBUG NO

#import "BallattackWithinety.h"

@implementation BallattackWithinety

+ (instancetype)sharedInstance {
    static BallattackWithinety *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[BallattackWithinety alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
