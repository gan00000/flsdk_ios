//
//  LoginHelper.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewDelegate.h"
#import "GIDDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginHelper : NSObject

+ (void)accountRegister:(id<LoginViewDelegate>)delegate view:(UIView *)currentView areaCode:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode;

+(void) appleLoginAndThirdRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView;

+ (void)fbLoginAndThirdRequest:(id<LoginViewDelegate>)delegate;

+ (void)guestLoginAndThirdRequest:(id<LoginViewDelegate>)delegate;

+ (void)googleLoginAndThirdRequest:(id<LoginViewDelegate>)delegate;

+ (void)lineLoginAndThirdRequest:(id<LoginViewDelegate>)delegate;

+ (void)selfLoginAndRequest:(id<LoginViewDelegate>)delegate account:(NSString *)account pwd:(NSString *)password;


+ (void)bindAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(NSString *)account pwd:(NSString *)password thirdId:(NSString *)thirdId  thirdPlate:(NSString *)thirdPlate otherParamsDic:(NSDictionary *)otherParamsDic;

+ (void)bindAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(AccountModel *)currentAccountModel account:(NSString *)account pwd:(NSString *)password;


+ (void)deleteAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(AccountModel *)accountMode otherParamsDic:(NSDictionary *)otherParamsDic successBlock:(void(^)())successBlock;
@end

NS_ASSUME_NONNULL_END
