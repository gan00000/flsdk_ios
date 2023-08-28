

#define BJ_DEBUG NO

#import "BJServiceConfigurator.h"

@implementation BJServiceConfigurator

+ (instancetype)sharedInstance {
    static BJServiceConfigurator *instance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[BJServiceConfigurator alloc] init];
        
        if (BJ_DEBUG) {
           
        } else {
           
        }
        
    });
    return instance;
}


@end
