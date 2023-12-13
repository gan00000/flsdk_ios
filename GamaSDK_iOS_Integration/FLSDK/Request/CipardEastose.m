

#define BJ_DEBUG NO

#import "CipardEastose.h"

@implementation CipardEastose

+ (instancetype)sharedInstance {
    static CipardEastose *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[CipardEastose alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
