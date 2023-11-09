


#import "BringcyDodecite.h"
#import "DemocratficationNeedern.h"
#import "CComHeader.h"

@implementation BringcyDodecite

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
    
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:self.roleID]) {
        return NO;
    }
    if ([DemocratficationNeedern isEmpty_MMMethodMMM:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
