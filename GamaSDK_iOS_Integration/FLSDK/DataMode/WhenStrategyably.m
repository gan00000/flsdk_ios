


#import "WhenStrategyably.h"
#import "PietCircumthanklike.h"
#import "CComHeader.h"

@implementation WhenStrategyably

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.roleID = @"";
        self.roleName = @"";
        self.roleLevel = @"";
        self.roleVipLevel = @"";
        self.serverCode = @"";
        self.serverName = @"";
    }
    return self;
}

-(BOOL)checkParams_MMMethodMMM{
    
    if ([PietCircumthanklike isEmpty_MMMethodMMM:self.roleID]) {
        return NO;
    }
    if ([PietCircumthanklike isEmpty_MMMethodMMM:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
