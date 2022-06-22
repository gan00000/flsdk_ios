//
//  LoginHelper.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "LoginHelper.h"
#import "SAppleLogin.h"
#import "SDKRequest.h"
#import "FBDelegate.h"

@implementation LoginHelper

+(void) appleLoginAndThirdRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView
{
    if (@available(iOS 13, *)) {
        
    }else{
        
        return;
    }
    
    [[SAppleLogin share] makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];
        
        [SDKRequest thirdLoginOrReg:appleID andThirdPlate:LOGIN_TYPE_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
            
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_APPLE];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [AlertUtil showAlertWithMessage:error.message];
            }
        }];
        
    } andErrorBlock:^(NSError * _Nullable error) {
        //           [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:GetString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [[SAppleLogin share] handleAuthrization:currentView];
}


+(void)fbLoginAndThirdRequest:(id<LoginViewDelegate>)delegate
{
    FBDelegate *mFBDelegate = [[FBDelegate alloc] init];
    [mFBDelegate login:NO andIsForceReAuthorize:NO andSuccessBlock:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
        
        [SDKRequest thirdLoginOrReg:fbUserId andThirdPlate:LOGIN_TYPE_FB addOtherParams:nil successBlock:^(id responseData) {
            
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_FB];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [AlertUtil showAlertWithMessage:error.message];
            }
        }];
        
    } andFailBlock:^(NSError * _Nonnull error) {
        
    } andCancelBlock:^(NSError * _Nonnull error) {
        
    }];
}

+ (void)guestLoginAndThirdRequest:(id<LoginViewDelegate>)delegate
{
    
    NSString *loginId =[SUtil getGamaUUID];
    [SDKRequest freeLoginOrRegister:loginId successBlock:^(id responseData) {
        
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.thirdId = loginId;
            [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_GUEST];
        }
        
    } errorBlock:^(BJError *error) {
        if (error && error.message) {
            [AlertUtil showAlertWithMessage:error.message];
        }
        
    }];
    
}

+ (void)selfLoginAndRequest:(id<LoginViewDelegate>)delegate account:(NSString *)account pwd:(NSString *)password
{
    [SDKRequest doLoginWithAccount:account andPassword:password otherDic:nil successBlock:^(id responseData) {
        
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}

+ (void)bindAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(AccountModel *)currentAccountModel account:(NSString *)account pwd:(NSString *)password{
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            @"userId"        :currentAccountModel.userId,
            @"loginAccessToken"        :currentAccountModel.token,
            @"loginTimestamp"         :currentAccountModel.timestamp,
        };

    } @catch (NSException *exception) {
        
    }
    
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {

        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        FBDelegate *mFBDelegate = [[FBDelegate alloc] init];
        [mFBDelegate login:NO andIsForceReAuthorize:NO andSuccessBlock:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
            
            [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:fbUserId thirdPlate:LOGIN_TYPE_FB otherParamsDic:otherParamsDic];
            
        } andFailBlock:^(NSError * _Nonnull error) {
            
        } andCancelBlock:^(NSError * _Nonnull error) {
            
        }];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [[SAppleLogin share] makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
            NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
            NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
            [tempMutableDic removeObjectForKey:@"appleThirdID"];
            
            [tempMutableDic addEntriesFromDictionary:otherParamsDic];
            [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:appleID thirdPlate:LOGIN_TYPE_APPLE otherParamsDic:tempMutableDic];
            
        } andErrorBlock:^(NSError * _Nullable error) {
            
        }];
        [[SAppleLogin share] handleAuthrization:currentView];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        NSString *loginId =[SUtil getGamaUUID];
        [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:loginId thirdPlate:LOGIN_TYPE_GUEST otherParamsDic:otherParamsDic];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        
    }
    
    
    
}

+ (void)bindAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(NSString *)account pwd:(NSString *)password thirdId:(NSString *)thirdId  thirdPlate:(NSString *)thirdPlate otherParamsDic:(NSDictionary *)otherParamsDic
{
    
    [SDKRequest doAccountBindingWithUserName:account password:password phoneAreaCode:@"" phoneNumber:@"" vfCode:@"" email:account thirdId:thirdId thirdPlate:thirdPlate otherParamsDic:otherParamsDic successBlock:^(id responseData) {
        
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}
@end
