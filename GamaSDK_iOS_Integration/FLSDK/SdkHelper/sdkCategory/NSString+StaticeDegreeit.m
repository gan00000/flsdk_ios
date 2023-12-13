

#import "NSString+StaticeDegreeit.h"
#import "ResHeader.h"

@implementation NSString (StaticeDegreeit)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
