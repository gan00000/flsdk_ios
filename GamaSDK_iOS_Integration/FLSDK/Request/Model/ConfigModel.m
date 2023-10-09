

#import "ConfigModel.h"

@implementation ConfigModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.visitorLogin = YES;
        self.fbLogin = YES;
        self.googleLogin = NO;
        self.lineLogin = NO;
        self.naverLogin = NO;
        self.appleLogin = YES;
        self.deleteAccount = NO;
        self.appPassCheck = NO;
        self.showContract = YES;
        self.showLogo = NO;
        self.showForgetPwd = YES;
        self.showNotice = NO;
        self.showRegPage = YES;
        self.showSdkCsCenter = YES;
        
    }
    return self;
}

@end
