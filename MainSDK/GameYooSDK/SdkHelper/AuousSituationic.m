//
//  AuousSituationic.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/21.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "AuousSituationic.h"
#import "HeaterIndividualation.h"
#import "RangeionHer.h"
#import "SeaariumContinueatory.h"
#import "MensLeaderarium.h"

@implementation AuousSituationic


+ (void)accountRegister:(id<LoginViewDelegate>)delegate view:(UIView *)currentView areaCode:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode {
    [RangeionHer doRegisterAccountWithUserName:name
                                  andPassword:password
                                phoneAreaCode:areaCode
                                  phoneNumber:phoneNum
                                       vfCode:vfCode
                                   interfaces:@"1"
                               otherParamsDic:nil
                                 successBlock:^(id responseData) {
        
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = name;
            cc.data.password = password;
            [GenuosityFirst toastMsg:GetString(@"text_account_reg_success")];
            [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_SELF];
        }
    }
                                   errorBlock:^(LifeenceGenator *error) {
        [MeetHemisignate showAlertWithMessage:error.message];
    }];
}

+(void) appleLoginAndThirdRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView
{
    if (@available(iOS 13, *)) {
        
    }else{
        
        return;
    }
    
    [[HeaterIndividualation share] makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];
        
        [RangeionHer thirdLoginOrReg:appleID andThirdPlate:LOGIN_TYPE_APPLE addOtherParams:tempMutableDic successBlock:^(id responseData) {
            
            [GenuosityFirst toastMsg:GetString(@"py_login_success")];
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_APPLE];
            }
            
        } errorBlock:^(LifeenceGenator *error) {
            if (error && error.message) {
                [MeetHemisignate showAlertWithMessage:error.message];
            }
        }];
        
    } andErrorBlock:^(NSError * _Nullable error) {
        //           [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:GetString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [[HeaterIndividualation share] handleAuthrization:currentView];
}


+(void)fbLoginAndThirdRequest:(id<LoginViewDelegate>)delegate
{
//    SeaariumContinueatory *mFBDelegate = [[SeaariumContinueatory alloc] init];
    [[SeaariumContinueatory share] loginWithPesentingViewController:nil isForceInappLogin:NO andIsForceReAuthorize:NO andSuccessBlock:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                @"fbOauthToken"        :fbIdToken,
                
            };

        } @catch (NSException *exception) {
            
        }
        
        [RangeionHer thirdLoginOrReg:fbUserId andThirdPlate:LOGIN_TYPE_FB addOtherParams:otherParamsDic successBlock:^(id responseData) {
            [GenuosityFirst toastMsg:GetString(@"py_login_success")];
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_FB];
            }
            
        } errorBlock:^(LifeenceGenator *error) {
            if (error && error.message) {
                [MeetHemisignate showAlertWithMessage:error.message];
            }
        }];
        
    } andFailBlock:^(NSError * _Nonnull error) {
        
    } andCancelBlock:^(NSError * _Nonnull error) {
        
    }];
}

+ (void)guestLoginAndThirdRequest:(id<LoginViewDelegate>)delegate
{
    
    NSString *loginId =[TyponessHugehood getGamaUUID];
    [RangeionHer freeLoginOrRegister:loginId successBlock:^(id responseData) {
        
        [GenuosityFirst toastMsg:GetString(@"py_login_success")];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.thirdId = loginId;
            [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_GUEST];
        }
        
    } errorBlock:^(LifeenceGenator *error) {
        if (error && error.message) {
            [MeetHemisignate showAlertWithMessage:error.message];
        }
        
    }];
    
}


+ (void)googleLoginAndThirdRequest:(id<LoginViewDelegate>)delegate{
    
    
    [HerlawyeratorVot loginWithClientID:@"" presentingViewController:appTopViewController successCallback:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                @"googleIdToken"        :idToken,
                @"googleClientId"       :kClientID,
                
            };

        } @catch (NSException *exception) {
            
        }
        
        [RangeionHer thirdLoginOrReg:userId andThirdPlate:LOGIN_TYPE_GOOGLE addOtherParams:otherParamsDic successBlock:^(id responseData) {
            [GenuosityFirst toastMsg:GetString(@"py_login_success")];
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_GOOGLE];
            }
            
        } errorBlock:^(LifeenceGenator *error) {
            if (error && error.message) {
                [MeetHemisignate showAlertWithMessage:error.message];
            }
        }];
        
        
    } failCallback:^(NSString * _Nonnull msg) {
        
    } cancelCallback:^(NSString * _Nonnull msg) {
        
    }];
}


+ (void)lineLoginAndThirdRequest:(id<LoginViewDelegate>)delegate{
//    MensLeaderarium *mLineDelegate = [[MensLeaderarium alloc] init];
    
    [[MensLeaderarium share] startLoginWithCallBack:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                @"lineAccessToken"        :accessToken,
                
            };

        } @catch (NSException *exception) {
            
        }
        
        [RangeionHer thirdLoginOrReg:userID andThirdPlate:LOGIN_TYPE_LINE addOtherParams:otherParamsDic successBlock:^(id responseData) {
            [GenuosityFirst toastMsg:GetString(@"py_login_success")];
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_LINE];
            }
            
        } errorBlock:^(LifeenceGenator *error) {
            if (error && error.message) {
                [MeetHemisignate showAlertWithMessage:error.message];
            }
        }];
        
        
    } fail:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
    }];
}

+ (void)selfLoginAndRequest:(id<LoginViewDelegate>)delegate account:(NSString *)account pwd:(NSString *)password
{
    [RangeionHer doLoginWithAccount:account andPassword:password otherDic:nil successBlock:^(id responseData) {
        [GenuosityFirst toastMsg:GetString(@"py_login_success")];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }
        
    } errorBlock:^(LifeenceGenator *error) {
        [MeetHemisignate showAlertWithMessage:error.message];
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
    if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
//        SeaariumContinueatory *mFBDelegate = [[SeaariumContinueatory alloc] init];
        [[SeaariumContinueatory share] loginWithPesentingViewController:nil isForceInappLogin:NO andIsForceReAuthorize:NO andSuccessBlock:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
            
            NSMutableDictionary *fbParamsDic = nil;
            @try {
                fbParamsDic = [NSMutableDictionary dictionaryWithDictionary:@{@"fbOauthToken":fbIdToken}];
                [fbParamsDic addEntriesFromDictionary:otherParamsDic];
            } @catch (NSException *exception) { }

            [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:fbUserId thirdPlate:LOGIN_TYPE_FB otherParamsDic:fbParamsDic];
            
        } andFailBlock:^(NSError * _Nonnull error) {
            
        } andCancelBlock:^(NSError * _Nonnull error) {
            
        }];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [[HeaterIndividualation share] makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
            NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
            NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
            [tempMutableDic removeObjectForKey:@"appleThirdID"];
            
            [tempMutableDic addEntriesFromDictionary:otherParamsDic];
            [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:appleID thirdPlate:LOGIN_TYPE_APPLE otherParamsDic:tempMutableDic];
            
        } andErrorBlock:^(NSError * _Nullable error) {
            
        }];
        [[HeaterIndividualation share] handleAuthrization:currentView];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        NSString *loginId =[TyponessHugehood getGamaUUID];
        [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:loginId thirdPlate:LOGIN_TYPE_GUEST otherParamsDic:otherParamsDic];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [HerlawyeratorVot loginWithClientID:@"" presentingViewController:appTopViewController successCallback:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {

            NSMutableDictionary *ggParamsDic = nil;
            @try {
                ggParamsDic = [NSMutableDictionary dictionaryWithDictionary:@{
                    @"googleIdToken"        :idToken,
                    @"googleClientId"       :kClientID,
                }];
                [ggParamsDic addEntriesFromDictionary:otherParamsDic];
            } @catch (NSException *exception) { }
            
            [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:userId thirdPlate:LOGIN_TYPE_GOOGLE otherParamsDic:ggParamsDic];
            
            
        } failCallback:^(NSString * _Nonnull msg) {
            
        } cancelCallback:^(NSString * _Nonnull msg) {
            
        }];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        
//        [[MensLeaderarium share] startLoginWithCallBack:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
//
//            NSDictionary *otherParamsDic = nil;
//            @try {
//                otherParamsDic = @{
//                    @"lineAccessToken"        :accessToken,
//
//                };
//
//            } @catch (NSException *exception) {
//
//            }
//
//            [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:userID thirdPlate:LOGIN_TYPE_LINE otherParamsDic:otherParamsDic];
//
//
//        } fail:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
//
//        }];
        
        if ([CuspPhloearian isEmpty:currentAccountModel.thirdId]) {
            return;
        }
        [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:currentAccountModel.thirdId thirdPlate:LOGIN_TYPE_LINE otherParamsDic:otherParamsDic];
        
    }
    
    
    
}

+ (void)bindAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(NSString *)account pwd:(NSString *)password thirdId:(NSString *)thirdId  thirdPlate:(NSString *)thirdPlate otherParamsDic:(NSDictionary *)otherParamsDic
{
    
    [RangeionHer doAccountBindingWithUserName:account password:password phoneAreaCode:@"" phoneNumber:@"" vfCode:@"" email:account thirdId:thirdId thirdPlate:thirdPlate otherParamsDic:otherParamsDic successBlock:^(id responseData) {
        [GenuosityFirst toastMsg:GetString(@"text_account_bind_success")];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [delegate handleLoginOrRegSuccess:cc thirdPlate:LOGIN_TYPE_SELF];
        }
        
    } errorBlock:^(LifeenceGenator *error) {
        [MeetHemisignate showAlertWithMessage:error.message];
    }];
}

+ (void)deleteAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(AccountModel *)accountMode otherParamsDic:(NSDictionary *)otherParamsDic successBlock:(void(^)())successBlock
{
    
    [RangeionHer deleteAccount:accountMode otherParamsDic:otherParamsDic successBlock:^(id responseData) {
        
        LoginResponse *cc = (LoginResponse *)responseData;
        [GenuosityFirst toastMsg:cc.message];
        [[UsBag share] removeAccountByUserId:accountMode.userId];
        if (successBlock) {
            successBlock();
        }
        
    } errorBlock:^(LifeenceGenator *error) {
        [MeetHemisignate showAlertWithMessage:error.message];
    }];
}

@end
