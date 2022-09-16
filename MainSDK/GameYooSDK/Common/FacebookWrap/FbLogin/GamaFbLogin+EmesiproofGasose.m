#import "BrachyialFlig+fbLogin.h"
#import "GamaFacebookPort.h"
#import "GamaFacebookCenter.h"

//#import "GamaThirdFunctionPort.h"

@implementation BrachyialFlig (EmesiproofGasose)

#pragma mark - 新接口FB登录入口（added）
+(void)doLoginWithFacebook
{
    //判断登陆中设置的facebook登陆方式，应用内弹出登陆，还是跳转应用外登陆
    BOOL isFbLoginInApp = YES;//GAMA_GET_BOOL(@"isFbLoginInApp");
    
    [GamaFacebookCenter facebookLoginWithForceInApp:isFbLoginInApp
                              andIsForceReAuthorize:!isFbLoginInApp
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       if (!loginError)
                                       {
                                           NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
                                           NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
                                           NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
                                           NSString *appsStr = [NSString stringWithFormat:@"%@_%@",[GamaFacebookCenter getFacebookId],facebookAppID];
                                           
                                       }
                                       else
                                       {
//                                           //发送登陆失败的广播
//                                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_FACEBOOK_LOGIN_FAIL
//                                                                                              object:nil];
                                       }
                                   }];
}

@end

