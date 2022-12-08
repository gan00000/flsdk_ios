
#import "CHMXTTWithResponse.h"
#import "ResHeader.h"

@implementation NSString (Local)

@dynamic localx;


-(NSString *)localx{

    NSString *preferred = GetString(self);

    if (preferred) {
        return preferred;
    }
    return self;
}

@end
