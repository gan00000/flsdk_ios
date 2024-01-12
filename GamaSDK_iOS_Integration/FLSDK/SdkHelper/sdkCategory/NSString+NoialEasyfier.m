

#import "NSString+NoialEasyfier.h"
#import "ResHeader.h"

@implementation NSString (NoialEasyfier)

@dynamic localx;


-(NSString *)localx{

    NSString *value = GetString(self);


		
    if (value) {
        return value;
    }
    return self;
}



@end
