

#import "GamaLoginFuncionPort.h"
#import "GamaLoginInfo.h"
#import "GamaLoginFunction.h"


@implementation GamaLoginFuncionPort

#pragma mark - 帐号密码登陆
+(void)loginWithAccount:(NSString *)userName andPassword:(NSString *)password
{
    [GamaLoginFunction doLoginWithAccount:userName
                              andPassword:password
                            andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)];
}

+(void)loginWithAccount:(NSString *)userName andPassword:(NSString *)password otherDic:(NSDictionary *)dic
{
    [GamaLoginFunction doLoginWithAccount:userName
                              andPassword:password
                                 otherDic:dic
                            andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)];
}

#pragma mark - 注册帐号
+(void)registerAccountWithUserName:(NSString *)userName
                           andPassword:(NSString *)password
                              andEmail:(NSString *)email
{
    [GamaLoginFunction doRegisterAccountWithUserName:userName
                                         andPassword:password
                                            andEmail:email
                                       andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)];
}

+(void)registerAccountWithUserName:(NSString *)userName
                       andPassword:(NSString *)password
                          otherDic:(NSDictionary *)otherDic
{
    [GamaLoginFunction doRegisterAccountWithUserName:userName
                                         andPassword:password
                                            otherDic:otherDic
                                       andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)];
}


#pragma mark - 修改密码
+(void)resetPasswordWithUserName:(NSString *)userName
                  andOldPassword:(NSString *)oldPassword
                  andNewPassword:(NSString *)newPassword
{
     
    [GamaLoginFunction doResetPasswordWithUserName:userName
                                    andOldPassword:oldPassword
                                    andNewPassword:newPassword
                                     andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)];
}

#pragma mark - 获取密码
+(void)regetPasswordWithUserName:(NSString *)userName andEmail:(NSString *)email
{
     
    [GamaLoginFunction doRegetPasswordWithUserName:userName
                                          andEmail:email
                                     andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)];
}

+(void)regetPasswordWithUserName:(NSString *)userName otherDic:(NSDictionary *)otherDic
{
    [GamaLoginFunction _doRegetPasswordWithUserName:userName
                                           otherDic:otherDic
                                      andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)];
}

@end
