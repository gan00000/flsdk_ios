
#define BJ_DEBUG NO

#import "MCoolFishKeychain.h"

@implementation MCoolFishKeychain

+ (instancetype)sharedInstance {
    static MCoolFishKeychain *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[MCoolFishKeychain alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
