//


#import "GameUserModel.h"
#import "StringUtil.h"
#import "CComHeader.h"

@implementation GameUserModel

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
    
    if ([StringUtil isEmpty:self.roleID]) {
        return NO;
    }
    if ([StringUtil isEmpty:self.serverCode]) {
        return NO;
    }
    return YES;
}
@end
