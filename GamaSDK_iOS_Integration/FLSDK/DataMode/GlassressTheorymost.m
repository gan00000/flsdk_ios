


#import "GlassressTheorymost.h"
#import "PharmacatoryExperience.h"
#import "CComHeader.h"

@implementation GlassressTheorymost

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
    
    if ([PharmacatoryExperience isEmpty_MMMethodMMM:self.roleID]) {
        return NO;
    }
    if ([PharmacatoryExperience isEmpty_MMMethodMMM:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
