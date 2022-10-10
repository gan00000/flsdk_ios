
#import "NSString+Local.h"
#import "ResHeader.h"
@implementation NSString (Local)
@dynamic localx;

/**
  , worth delaying to catch up on housework, schoolwork, office work or the latest binge-wo 
**/
-(NSString *)localx{
    NSString *value = GetString(self);
    if (value) {
        return value;
    }
    return self;
}
@end

/**
  to help overcome your racing mind and allow you to fall asleep."

他说：“比如说你需要提早上 
**/
