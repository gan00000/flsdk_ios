

#define BJ_DEBUG NO

#import "TelluriseAllo.h"

@implementation TelluriseAllo

+ (instancetype)sharedInstance {
    static TelluriseAllo *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[TelluriseAllo alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
