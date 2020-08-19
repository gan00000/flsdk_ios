//
//

#import <Foundation/Foundation.h>
#import "GamaThirdFunctionPort.h"


@interface GamaThirdFunction : NSObject

+(void)doThirdLoginWithThirdId:(NSString *)thirdId
                 andThirdPlate:(NSString *)thirdPlate
                       andApps:(NSString *)apps
              andBusinessToken:(NSString *)businessToken
        andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
                 andDomainName:(NSString *)domainName
                 andOtherBlock:(void(^)(void))block;


+ (void)doAccountBindingWithUserName:(NSString *)userName
                            password:(NSString *)password
                               email:(NSString *)email
                             thirdId:(NSString *)thirdId
                          thirdPlate:(NSString *)thirdPlate
                           addParams:(NSDictionary *)addParams
                          domainName:(NSString *)domainName
                               block:(void(^)(void))block;


+ (void)bindPhoneLogingWithThirdId:(NSString *)thirdId
                     andThirdPlate:(NSString *)thirdPlate
                           andApps:(NSString *)apps
                  andBusinessToken:(NSString *)businessToken
            andThirdAdditionParams:(NSDictionary *)thirdAdditionDic
                     andDomainName:(NSString *)domainName
                     andOtherBlock:(void(^)(void))block;

@end




