//


#import "DorspoorencyDesdata.h"
#import "CuspPhloearian.h"
#import "CComHeader.h"

@implementation DorspoorencyDesdata

//初始化参数
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

-(BOOL) checkParams{
    
    if ([CuspPhloearian isEmpty:self.roleID]) {
        return NO;
    }
    if ([CuspPhloearian isEmpty:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
