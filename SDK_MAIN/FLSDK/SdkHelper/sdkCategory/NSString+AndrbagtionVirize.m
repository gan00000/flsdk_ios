

#import "NSString+AndrbagtionVirize.h"
#import "ResHeader.h"

@implementation NSString (AndrbagtionVirize)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
