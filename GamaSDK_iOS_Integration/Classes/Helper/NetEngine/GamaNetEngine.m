//
//  GamaKrNetEngine.m
//  GamaSDK_iOS_KR
//
//  Created by Sunny on 16/4/26.
//  Copyright © 2016年 Gama. All rights reserved.
//

#import "GamaNetEngine.h"
#import "GamaCommonHeader.h"
#import "ConfigHeader.h"

#import "HelloHeader.h"

@implementation GamaNetEngine

#pragma mark - Load

+ (void)load
{
    // 注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(successAndPostOutside:) name:GAMA_THIRD_LOGIN_SUCCESS object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(successAndPostOutside:) name:GAMA_LOGIN_SUCCESS_IN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(successAndPostOutside:) name:GAMA_REGISTER_SUCCESS_IN object:nil];
//    // fail
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(failAndPostOutside:) name:GAMA_THIRD_LOGIN_FAIL object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(failAndPostOutside:) name:GAMA_LOGIN_FAIL_IN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(failAndPostOutside:) name:GAMA_REGISTER_FAIL_IN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(failAndPostOutside:) name:GAMA_FREE_LOGIN_FALI_IN object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(failAndPostOutside:) name:GAMA_FACEBOOK_LOGIN_FAIL object:nil];
}

#pragma mark - new Platform
+ (void)registerAccountWithUSername:(NSString *)username password:(NSString *)password phone:(NSString *)phone verfication:(NSString *)verfication
{
    
}

#pragma mark - Class Method

+ (void)registerAccountWithUserName:(NSString *)username password:(NSString *)password email:(NSString *)email
{
//    [GamaLoginFuncionPort registerAccountWithUserName:username andPassword:password andEmail:email];
}

+ (void)registerAccountWithUserName:(NSString *)username password:(NSString *)password otherDic:(NSDictionary *)otherDic
{
//    [GamaLoginFuncionPort registerAccountWithUserName:username andPassword:password otherDic:otherDic];
}

+ (void)loginUsingUsername:(NSString *)userName password:(NSString *)password
{
//    [GamaLoginFuncionPort loginWithAccount:userName andPassword:password];
}

+ (void)loginUsingUsername:(NSString *)userName password:(NSString *)password otherDic:(NSDictionary *)dic
{
//    [GamaLoginFuncionPort loginWithAccount:userName andPassword:password otherDic:dic];
}

+ (void)findPasswordWithUserName:(NSString *)userName email:(NSString *)email
{
//    [GamaLoginFuncionPort regetPasswordWithUserName:userName andEmail:email];
}

+ (void)findPasswordWithUserName:(NSString *)userName otherDic:(NSDictionary *)otherDic
{
//    [GamaLoginFuncionPort regetPasswordWithUserName:userName otherDic:otherDic];
}

+ (void)resetPasswordWithUserName:(NSString *)userName oldPassword:(NSString *)oldPassword newPassword:(NSString *)newPassword
{
//    [GamaLoginFuncionPort resetPasswordWithUserName:userName andOldPassword:oldPassword andNewPassword:newPassword];
}

+ (void)guestLogin
{    
    //[GamaFreeLogin freeLogin];
}

+ (void)bindingGuestAccountWithUserName:(NSString *)username password:(NSString *)password otherDic:(NSDictionary *)otherDic
{
    //[GamaFreeLogin bindingFreeAccountWithUserName:username andPassword:password otherDic:otherDic];
}

#pragma mark - Notification Method

+ (void)successAndPostOutside:(NSNotification *)notification
{
    NSMutableDictionary *tempDict = [NSMutableDictionary dictionaryWithDictionary:notification.userInfo];
    // add logintype
    [tempDict setValue:[SdkUserInfoModel shareInfoModel].loginTypeStr forKey:@"loginTypeStr"];
    
    NSString *status = [NSString stringWithFormat:@"%@",notification.userInfo[@"status"]];  //是否要加非空判断
    if ([status isEqualToString:@"1"] || [status isEqualToString:@"0"]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:_GAMA_NOTIFICATION_SUCCESS object:nil userInfo:tempDict];
    }
}

+ (void)failAndPostOutside:(NSNotification *)notification
{
    //band kakao需要回调显示登陆按钮
    [[NSNotificationCenter defaultCenter] postNotificationName:_GAMA_NOTIFICATION_FAIL object:nil userInfo:nil];
}

@end

