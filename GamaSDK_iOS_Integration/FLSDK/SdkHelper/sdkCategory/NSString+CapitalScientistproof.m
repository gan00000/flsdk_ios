
#import "NSString+CapitalScientistproof.h"
#import "ResHeader.h"

@implementation NSString (CapitalScientistproof)

@dynamic localx;


-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
