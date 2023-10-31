

#import "NSString+HitfierBronchability.h"
#import "ResHeader.h"

@implementation NSString (HitfierBronchability)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
