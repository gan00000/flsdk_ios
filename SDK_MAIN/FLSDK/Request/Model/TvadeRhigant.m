

#import "TvadeRhigant.h"

@implementation TvadeRhigant


- (void)initData_MMMethodMMM {
    self.account = @"";
    self.password = @"";
    self.lastLoginTime = @"";
    self.userId = @"";
    self.token = @"";
    self.timestamp = @"";
    
    self.thirdId = @"";
    self.thirdAccount = @"";
    self.isBind = NO;
    self.isBindPhone = NO;
    self.loginType = @"";
    
    self.sign = @"";
    self.telephone = @"";
    self.loginId = @"";
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(wwwww_tag_wwwww_AccountModel_init);
        [self initData_MMMethodMMM];
        
    }
    return self;
}


@end
