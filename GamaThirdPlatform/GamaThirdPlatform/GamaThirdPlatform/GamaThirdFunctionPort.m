//
//

#import "GamaThirdFunctionPort.h"
#import "GamaThirdFunction.h"
#import "GamaFunction.h"
#import "GamaCentreInfo.h"
#import "SdkUserInfoModel.h"


@implementation GamaThirdFunctionPort

+(void)thirdLoginWithThirdId:(NSString *)thirdId
               andThirdPlate:(NSString *)thirdPlate
                     andApps:(NSString *)apps
            andBusinessToken:(NSString *)businessToken
      andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
               andDomainName:(NSString *)domainName
               andOtherBlock:(void(^)())block
{
    [GamaThirdFunction doThirdLoginWithThirdId:thirdId
                                 andThirdPlate:thirdPlate
                                       andApps:apps
                              andBusinessToken:businessToken
                        andThirdAdditionParams:thirdAdditionDic
                                 andDomainName:domainName
                                 andOtherBlock:block];
}

+(void)thirdLoginWithThirdId:(NSString *)thirdId
               andThirdPlate:(NSString *)thirdPlate
                     andApps:(NSString *)apps
               andDomainName:(NSString *)domainName
               andOtherBlock:(void(^)())block
{
    [self thirdLoginWithThirdId:thirdId
                  andThirdPlate:thirdPlate
                        andApps:apps
               andBusinessToken:nil
         andThirdAdditionParams:nil
                  andDomainName:domainName
                  andOtherBlock:block];
}

+ (void)doAccountBindingWithUserName:(NSString *)userName
                            password:(NSString *)password
                               email:(NSString *)email
                             thirdId:(NSString *)thirdId
                          thirdPlate:(NSString *)thirdPlate
                           addParams:(NSDictionary *)addParams
                          domainName:(NSString *)domainName
                               block:(void(^)(void))block
{
    [GamaThirdFunction doAccountBindingWithUserName:userName
                                         password:password
                                            email:email
                                          thirdId:thirdId
                                       thirdPlate:thirdPlate
                                        addParams:addParams
                                       domainName:domainName
                                            block:block];
}

+ (void)bindPhoneLogingWithThirdId:(NSString *)thirdId
                     andThirdPlate:(NSString *)thirdPlate
                           andApps:(NSString *)apps
                  andBusinessToken:(NSString *)businessToken
            andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
                     andDomainName:(NSString *)domainName
                     andOtherBlock:(void(^)(void))block{
    [GamaThirdFunction bindPhoneLogingWithThirdId:thirdId
                                    andThirdPlate:thirdPlate
                                          andApps:apps
                                 andBusinessToken:businessToken
                           andThirdAdditionParams:thirdAdditionDic
                                    andDomainName:domainName
                                    andOtherBlock:block];
}


@end
