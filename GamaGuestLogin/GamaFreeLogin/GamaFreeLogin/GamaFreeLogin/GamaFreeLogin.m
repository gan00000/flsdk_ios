//
//  GamaFreeLogin.m
//

#import "GamaFreeLogin.h"
#import "GamaCentreInfo.h"
#import "GamaThirdFunctionPort.h"
#import "GamaFreeLoginInfo.h"


@implementation GamaFreeLogin

#pragma mark - 免注册登陆
+(void)freeLogin
{
    [self loginWithoutRegister];
}

#pragma mark - 免注册绑定
+(void)bindingFreeAccountWithUserName:(NSString *)userName
                          andPassword:(NSString *)password
                             otherDic:(NSDictionary *)otherDic
{
    //获取设备设定的唯一标示
    NSString *loginid = [GamaFunction getGamaUUID];
    [self bindingFreeAccountWithUserName:userName
                             andPassword:password
                                otherDic:otherDic
                              andLoginId:loginid
                           andThirdPlate:FREE_PLATFORM];
}

#pragma mark - 新接口免注册登陆（added）
+(void)loginWithoutRegister
{
    NSString *loginId = ([[GamaFunction getSystemVersion] intValue]) >= 7 ? [GamaFunction getGamaUUID] : [GamaFunction getMacaddress];
    [GamaThirdFunctionPort thirdLoginWithThirdId:loginId
                                   andThirdPlate:FREE_PLATFORM
                                         andApps:nil
                                   andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
                                   andOtherBlock:^{
        
        
    }];
}

#pragma mark - 新接口绑定SP账号（added）
+(void)bindingFreeAccountWithUserName:(NSString *)userName
                          andPassword:(NSString *)password
                             otherDic:(NSDictionary *)otherDic
                           andLoginId:(NSString *)loginId
                        andThirdPlate:(NSString *)thirdPlate
{
    [GamaThirdFunctionPort doAccountBindingWithUserName:userName
                                             password:password
                                                email:@""
                                              thirdId:loginId
                                           thirdPlate:thirdPlate
                                            addParams:otherDic
                                           domainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
                                                block:nil];
}

@end
