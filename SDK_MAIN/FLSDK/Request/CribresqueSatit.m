

#define BJ_DEBUG NO

#import "CribresqueSatit.h"

@implementation CribresqueSatit

+ (instancetype)sharedInstance {
    static CribresqueSatit *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[CribresqueSatit alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
