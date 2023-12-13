

#import "NSString+Local.h"
#import "ResHeader.h"

@implementation NSString (Local)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
