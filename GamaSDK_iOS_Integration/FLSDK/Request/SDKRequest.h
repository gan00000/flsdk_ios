//
//  SDKRequest.h
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/7/20.
//  Copyright © 2020 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpServiceEngineLogin.h"
#import "HttpServiceEngineAd.h"
#import "HttpServiceEnginePay.h"
#import "SdkHeader.h"
#import "LoginResponse.h"
#import "ConfigResponse.h"


NS_ASSUME_NONNULL_BEGIN

@interface SDKRequest : NSObject

#pragma mark - sdk配置接口
+(void)getSdkConfigWithSuccessBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock;

#pragma mark - 登入接口
+(void)freeLoginOrRegister:(NSString *)thirdId
                            successBlock:(BJServiceSuccessBlock)successBlock
                errorBlock:(BJServiceErrorBlock)errorBlock;

+(void) thirdLoginOrReg:(NSString *)thirdId
          andThirdPlate:(NSString *)thirdPlate
         addOtherParams:(NSDictionary *)otherParams
           successBlock:(BJServiceSuccessBlock)successBlock
             errorBlock:(BJServiceErrorBlock)errorBlock;

//用户登录
+(void)doLoginWithAccount:(NSString *)userName
              andPassword:(NSString *)password
                 otherDic:(NSDictionary *)otherParamsDic
             successBlock:(BJServiceSuccessBlock)successBlock
               errorBlock:(BJServiceErrorBlock)errorBlock;

+ (void)requestVfCode:(NSString *)phoneArea
                                 phoneNumber:(NSString *)phoneN
                                 email:(NSString *)email
                                  interfaces:(NSString *)interfaces
                                    otherDic:(NSDictionary *)otherParamsDic
                                successBlock:(BJServiceSuccessBlock)successBlock
                                  errorBlock:(BJServiceErrorBlock)errorBlock;

+(void)doRegisterAccountWithUserName:(NSString *)userName
                         andPassword:(NSString *)password
                       phoneAreaCode:(NSString *)phoneAreaCode
                         phoneNumber:(NSString *)phoneN
                              vfCode:(NSString *)vfCode
                          interfaces:(NSString *)interfaces
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock;

//修改密码
+(void)doChangePasswordWithUserName:(NSString *)userName
                    andOldPassword:(NSString *)oldPassword
                    andNewPassword:(NSString *)newPassword
                    otherParamsDic:(NSDictionary *)otherParamsDic
                      successBlock:(BJServiceSuccessBlock)successBlock
                        errorBlock:(BJServiceErrorBlock)errorBlock;

//找回密码
+(void)doForgotPasswordWithUserName:(NSString *)userName
                     phoneAreaCode:(NSString *)phoneAreaCode
                       phoneNumber:(NSString *)phoneN
                             email:(NSString *)email
                            vfCode:(NSString *)vfCode
                        interfaces:(NSString *)interfaces
                    otherParamsDic:(NSDictionary *)otherParamsDic
                      successBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock;



+ (void)doAccountBindingWithUserName:(NSString *)userName
  password:(NSString *)password
phoneAreaCode:(NSString *)phoneAreaCode
phoneNumber:(NSString *)phoneN
     vfCode:(NSString *)vfCode
     email:(NSString *)email
   thirdId:(NSString *)thirdId
thirdPlate:(NSString *)thirdPlate
 otherParamsDic:(NSDictionary *)otherParamsDic
 successBlock:(BJServiceSuccessBlock)successBlock
                          errorBlock:(BJServiceErrorBlock)errorBlock;



+ (void)deleteAccount:(AccountModel *)accountMode
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(BJServiceSuccessBlock)successBlock
           errorBlock:(BJServiceErrorBlock)errorBlock;

#pragma mark - 充值接口
+ (void)createOrderWithproductId:(NSString *)productId
            cpOrderId:(NSString *)cpOrderId
                extra:(NSString *)extra
             gameInfo:(GameUserModel*)gameUserModel
         accountModel:(AccountModel*) accountModel
                      otherParamsDic:(NSDictionary *)otherParamsDic
                        successBlock:(PayServiceSuccessBlock)successBlock
           errorBlock:(PayServiceErrorBlock)errorBlock;


+(NSString *) createSdkUrl:(NSString *)url;
@end

NS_ASSUME_NONNULL_END
