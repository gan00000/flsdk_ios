

#define BJ_DEBUG NO

#import "SoletatoryUngulibility.h"

@implementation SoletatoryUngulibility

+ (instancetype)sharedInstance {
    static SoletatoryUngulibility *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[SoletatoryUngulibility alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
