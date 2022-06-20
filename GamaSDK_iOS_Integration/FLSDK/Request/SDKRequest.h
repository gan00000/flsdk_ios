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
#import "SdkHeader.h"
#import "LoginResponse.h"
#import "ConfigResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDKRequest : NSObject

+(void)getSdkConfigWithSuccessBlock:(BJServiceSuccessBlock)successBlock
                         errorBlock:(BJServiceErrorBlock)errorBlock;

+(void)freeLoginOrRegisterWithSuccessBlock:(BJServiceSuccessBlock)successBlock
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


+ (void)reportRoleInfo:(NSDictionary *)otherParamsDic
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

@end

NS_ASSUME_NONNULL_END
