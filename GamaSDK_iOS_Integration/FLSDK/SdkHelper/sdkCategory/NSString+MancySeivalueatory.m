

#import "NSString+MancySeivalueatory.h"
#import "ResHeader.h"

@implementation NSString (MancySeivalueatory)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
