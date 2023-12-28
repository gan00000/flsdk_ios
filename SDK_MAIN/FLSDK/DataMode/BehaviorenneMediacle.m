


#import "BehaviorenneMediacle.h"
#import "VentlongonDifficult.h"
#import "CComHeader.h"

@implementation BehaviorenneMediacle

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
    
    if ([VentlongonDifficult isEmpty_MMMethodMMM:self.roleID]) {
        return NO;
    }
    if ([VentlongonDifficult isEmpty_MMMethodMMM:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
