//
//

#import "GamaFbLogin+fbBinding.h"
#import "GamaFacebookPort.h"
#import "GamaFacebookImp_V4.h"

@implementation GamaFbLogin (fbBinding)

+(void)doFacebookBindingWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                            otherDic:(NSDictionary *)otherDic
{
    [GamaFacebookCenter facebookLoginWithForceInApp:NO
                              andIsForceReAuthorize:NO
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       if (!loginError)
                                       {
                                           //使用FB新接口登录
//                                           [GamaFacebookCenter requestAppsIdWithCompletionHaldler:^(NSString *apps, NSString *businessToken) {
                                           NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Info" ofType:@"plist"];
                                           NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithContentsOfFile:bundlePath];
                                           NSString *facebookAppID = [dict objectForKey:@"FacebookAppID"];
                                           NSString *appsStr = [NSString stringWithFormat:@"%@_%@",facebookID,facebookAppID];
                                           
                                           NSMutableDictionary *lastDic = [NSMutableDictionary dictionary];
                                           [lastDic setDictionary:otherDic];
                                           NSDictionary *additionParams = @{@"apps":appsStr, GAMA_LOGIN_PARAMS_FB_OAUTHTOKEN:facebookTokenStr};
                                           [lastDic addEntriesFromDictionary:additionParams];
                                               // 开始进行FB绑定
                                               [self _facebookBindingWithFacebookID:facebookID
                                                                        andUserName:userName
                                                                             andPwd:password
                                                                           andEmail:nil
                                                                          addParams:lastDic];
                                       }
                                       else
                                       {
                                           //发送登陆失败的广播
                                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_FACEBOOK_BINDING_FAIL
                                                                                              object:nil];
                                       }
                                   }];
}
//指定第三方的SPUserID绑定FB
+(void)doFacebookBindingwithUserID:(NSString *)UserID
{
    [GamaFacebookCenter facebookLoginWithForceInApp:NO
                              andIsForceReAuthorize:NO
                                   andCallbackBlock:^(NSError *loginError, NSString *facebookID, NSString *facebookTokenStr) {
                                       if (!loginError)
                                       {
                                           [self _facebookFreeBindingWithFacebookID:facebookID UserId:UserID];
                                       }
                                       else
                                       {
                                           //发送登陆失败的广播
                                           [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_FACEBOOK_BINDING_FAIL
                                                                                              object:nil];
                                       }
                                   }];
}
#pragma mark - 再次询问是否使用此FB账号进行绑定（added）
+(void)_facebookBindingWithFacebookID:(NSString *)facebookID
                          andUserName:(NSString *)userName
                               andPwd:(NSString *)password
                             andEmail:(NSString *)email
                            addParams:(NSDictionary *)addParams
{
   
    if (([GamaFacebookCenter getFacebookName] &&
        ![[GamaFacebookCenter getFacebookName] isEqualToString:@""]) || [GamaFacebookCenter getFacebookId])
    {
//        NSString *tmpMessage = [NSString stringWithFormat:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_INFO),
//                      [GamaFacebookCenter getFacebookName]];
        
//        [GamaAlertView showAlertWithMessage:tmpMessage completion:^(NSInteger clickedBtnIndex) {
            //确定使用当前选定FB账号进行绑定
//            if (clickedBtnIndex == 0) {
                [GamaThirdFunctionPort doAccountBindingWithUserName:userName
                                                         password:password
                                                            email:email
                                                          thirdId:facebookID
                                                       thirdPlate:@"fb"
                                                        addParams:addParams
                                                       domainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)
//                                                       domainName:@"http://0.0.0.0:8081/login/"
                                                            block:^{
                                                                //
                                                            }];
//            } else if (clickedBtnIndex == 1) {
//                //切换账号
//                [GamaFacebookCenter facebookLogout];
//                [GamaAlertView showAlertWithMessage:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_INFO_LOGOUT)];
//                //取消绑定，需停止等待指示器
//                [[NSNotificationCenter defaultCenter]postNotificationName:GAMA_FACEBOOK_BINDING_FAIL
//                                                                   object:nil];
//            }
//        } andButtonTitles:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_CONFIRM),GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_CANCEL), nil];
    }
}

#pragma mark - 再次询问是否使用此FB账号进行绑定（added）
+(void)_facebookFreeBindingWithFacebookID:(NSString *)facebookID UserId:(NSString *)userID
{
    // 韩国地区，登录后才提供绑定功能，直接绑定
    BOOL isKoreaRegion = [GAMA_GET_INFO(@"current_Select_Region") hasPrefix:@"server_KR"] ? YES : NO ;
    if (isKoreaRegion) {
        // 开始进行FB绑定
        [GamaThirdFunctionPort thirdBindingWithThirdId:facebookID
                                         andThirdPlate:@"fb"
                                             andUserId:userID
                                         andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)
                                         andOtherBlock:nil];
        
        return;
    }
    
    // 其他地区 会弹出一个提示框，提醒用户要绑定的fb用户名
    
    if ([GamaFacebookCenter getFacebookName] &&
        ![[GamaFacebookCenter getFacebookName] isEqualToString:@""])
    {
        NSString *tmpMessage = [NSString stringWithFormat:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_INFO),
                                [GamaFacebookCenter getFacebookName]];
        
        [GamaAlertView showAlertWithMessage:tmpMessage completion:^(NSInteger clickedBtnIndex) {
            //确定使用当前选定FB账号进行绑定
            if (clickedBtnIndex == 0) {
                // 开始进行FB绑定
                [GamaThirdFunctionPort thirdBindingWithThirdId:facebookID
                                                 andThirdPlate:@"fb"
                                                     andUserId:userID
                                                 andDomainName:GAMA_GET_INFO(GAMA_LOGIN_DOMAIN_NAME)
                                                 andOtherBlock:nil];
            } else if (clickedBtnIndex == 1) {
                //切换账号
                [GamaFacebookCenter facebookLogout];
                [GamaAlertView showAlertWithMessage:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_INFO_LOGOUT)];
                //取消绑定，需停止等待指示器
                [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_FACEBOOK_BINDING_FAIL
                                                                   object:nil];
            }
        } andButtonTitles:GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_CONFIRM),GAMA_GET_LOCALIZED(GAMA_FACEBOOK_BIND_CANCEL), nil];
    }
    
}

@end
