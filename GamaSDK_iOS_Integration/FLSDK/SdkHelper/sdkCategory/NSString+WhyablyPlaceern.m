

#import "NSString+WhyablyPlaceern.h"
#import "ResHeader.h"

@implementation NSString (WhyablyPlaceern)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
