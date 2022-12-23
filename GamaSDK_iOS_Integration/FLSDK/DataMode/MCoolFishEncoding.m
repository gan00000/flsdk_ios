

#import "MCoolFishEncoding.h"
#import "MCoolFishSecurityHome.h"
#import "CComHeader.h"

@implementation MCoolFishEncoding


-(BOOL)checkParams_MMMethodMMM{
    
    if ([MCoolFishSecurityHome isEmpty_MMMethodMMM:self.roleID]) {
        return NO;
    }
    if ([MCoolFishSecurityHome isEmpty_MMMethodMMM:self.serverCode]) {
        return NO;
    }
    return YES;
}


- (instancetype)init
{
   self.modity_min = 2111.0;

   self.third_count = 5027;

   self.canTable = NO;

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
@end
