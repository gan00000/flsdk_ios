

#import "NSString+WorryeurPhloeist.h"
#import "ResHeader.h"

@implementation NSString (WorryeurPhloeist)

@dynamic localx;

-(NSString *)localx{

    NSString *value = GetString(self);

    if (value) {
        return value;
    }
    return self;
}

@end
