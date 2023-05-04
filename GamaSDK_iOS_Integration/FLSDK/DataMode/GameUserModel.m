


#import "GameUserModel.h"
#import "StringUtil.h"
#import "CComHeader.h"

@implementation GameUserModel


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
    
    if ([StringUtil isEmpty_MMMethodMMM:self.roleID]) {
        return NO;
    }
    if ([StringUtil isEmpty_MMMethodMMM:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
