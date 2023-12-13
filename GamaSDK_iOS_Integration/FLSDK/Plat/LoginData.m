

#import "LoginData.h"
#import "ResHeader.h"

@implementation LoginData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gameCode = GAME_CODE;
    }
    return self;
}

@end
