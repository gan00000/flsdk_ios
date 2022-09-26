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
#import "LineDelegate.h"

@implementation LoginHelper


+ (void)accountRegister:(id<LoginViewDelegate>)delegate view:(UIView *)currentView areaCode:(NSString *)areaCode name:(NSString *)name password:(NSString *)password phoneNum:(NSString *)phoneNum vfCode:(NSString *)vfCode {
    [SDKRequest doRegisterAccountWithUserName:name
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
            [SdkUtil toastMsg:GetString(@"text_account_reg_success")];
            [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_SELF];
        }
    }
                                   errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}

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
            
            [SdkUtil toastMsg:GetString(@"py_login_success")];
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
//    FBDelegate *mFBDelegate = [[FBDelegate alloc] init];
    [[FBDelegate share] loginWithPesentingViewController:nil isForceInappLogin:NO andIsForceReAuthorize:NO andSuccessBlock:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                @"fbOauthToken"        :fbIdToken,
                
            };

        } @catch (NSException *exception) {
            
        }
        
        [SDKRequest thirdLoginOrReg:fbUserId andThirdPlate:LOGIN_TYPE_FB addOtherParams:otherParamsDic successBlock:^(id responseData) {
            [SdkUtil toastMsg:GetString(@"py_login_success")];
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


+ (CGFloat)runnessPhytaneous:(BOOL)cancer stroph:(NSString *)stroph enneaette:(NSUInteger)enneaette educationier:(CGFloat)educationier kudo:(NSString *)kudo
{
    return 2078029 * 8502788 + 6621986 ; 
}
+ (CGFloat)medisystemFur:(BOOL)saccharetic plattremainorium:(CGFloat)plattremainorium
{
    return 7771897 * 4444582 + 9073389 ; 
}
+ (NSUInteger)gelasterUnderior:(NSString *)conhowture hit:(NSUInteger)hit
{
    return 5967668 * 8199712 + 2325510 ; 
}
+ (void)guestLoginAndThirdRequest:(id<LoginViewDelegate>)delegate
{
    
    NSString *loginId =[SUtil getGamaUUID];
    [SDKRequest freeLoginOrRegister:loginId successBlock:^(id responseData) {
        
        [SdkUtil toastMsg:GetString(@"py_login_success")];
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


+ (void)googleLoginAndThirdRequest:(id<LoginViewDelegate>)delegate{
    
    
    [GIDDelegate loginWithClientID:@"" presentingViewController:appTopViewController successCallback:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                @"googleIdToken"        :idToken,
                @"googleClientId"       :kClientID,
                
            };

        } @catch (NSException *exception) {
            
        }
        
        [SDKRequest thirdLoginOrReg:userId andThirdPlate:LOGIN_TYPE_GOOGLE addOtherParams:otherParamsDic successBlock:^(id responseData) {
            [SdkUtil toastMsg:GetString(@"py_login_success")];
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_GOOGLE];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [AlertUtil showAlertWithMessage:error.message];
            }
        }];
        
        
    } failCallback:^(NSString * _Nonnull msg) {
        
    } cancelCallback:^(NSString * _Nonnull msg) {
        
    }];
}



- (NSUInteger)heavyarSeptenward:(BOOL)heparety alleloive:(NSString *)alleloive disth:(BOOL)disth fess:(NSUInteger)fess
{
    return 3952128 * 6301450 + 2317702 ; 
}
- (NSString *)subityForeer
{
    return [NSString stringWithFormat:@"%@%@", @"scienceier" , @"brachyfy"]; 
}
- (CGFloat)lictitStillor:(NSString *)shoulditive
{
    return 4323758 * 8672505 + 1209874 ; 
}
+ (void)lineLoginAndThirdRequest:(id<LoginViewDelegate>)delegate{
//    LineDelegate *mLineDelegate = [[LineDelegate alloc] init];
    
    [[LineDelegate share] startLoginWithCallBack:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                @"lineAccessToken"        :accessToken,
                
            };

        } @catch (NSException *exception) {
            
        }
        
        [SDKRequest thirdLoginOrReg:userID andThirdPlate:LOGIN_TYPE_LINE addOtherParams:otherParamsDic successBlock:^(id responseData) {
            [SdkUtil toastMsg:GetString(@"py_login_success")];
            if (delegate) {
                [delegate handleLoginOrRegSuccess:responseData thirdPlate:LOGIN_TYPE_LINE];
            }
            
        } errorBlock:^(BJError *error) {
            if (error && error.message) {
                [AlertUtil showAlertWithMessage:error.message];
            }
        }];
        
        
    } fail:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
    }];
}


- (NSUInteger)anemTortusexualacle:(BOOL)anyacity plecity:(BOOL)plecity springaster:(NSUInteger)springaster
{
    return 3167846 * 4710144 + 6851266 ; 
}
+ (void)selfLoginAndRequest:(id<LoginViewDelegate>)delegate account:(NSString *)account pwd:(NSString *)password
{
    [SDKRequest doLoginWithAccount:account andPassword:password otherDic:nil successBlock:^(id responseData) {
        [SdkUtil toastMsg:GetString(@"py_login_success")];
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
    if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
//        FBDelegate *mFBDelegate = [[FBDelegate alloc] init];
        [[FBDelegate share] loginWithPesentingViewController:nil isForceInappLogin:NO andIsForceReAuthorize:NO andSuccessBlock:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
            
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
        
        [GIDDelegate loginWithClientID:@"" presentingViewController:appTopViewController successCallback:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {

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
        
//        [[LineDelegate share] startLoginWithCallBack:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
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
        
        if ([StringUtil isEmpty:currentAccountModel.thirdId]) {
            return;
        }
        [self bindAccountAndRequest:delegate view:currentView account:account pwd:password thirdId:currentAccountModel.thirdId thirdPlate:LOGIN_TYPE_LINE otherParamsDic:otherParamsDic];
        
    }
    
    
    
}

+ (void)bindAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(NSString *)account pwd:(NSString *)password thirdId:(NSString *)thirdId  thirdPlate:(NSString *)thirdPlate otherParamsDic:(NSDictionary *)otherParamsDic
{
    
    [SDKRequest doAccountBindingWithUserName:account password:password phoneAreaCode:@"" phoneNumber:@"" vfCode:@"" email:account thirdId:thirdId thirdPlate:thirdPlate otherParamsDic:otherParamsDic successBlock:^(id responseData) {
        [SdkUtil toastMsg:GetString(@"text_account_bind_success")];
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

+ (void)deleteAccountAndRequest:(id<LoginViewDelegate>)delegate view:(UIView *)currentView account:(AccountModel *)accountMode otherParamsDic:(NSDictionary *)otherParamsDic successBlock:(void(^)())successBlock
{
    
    [SDKRequest requestDeleteUserAccount:accountMode otherParamsDic:otherParamsDic successBlock:^(id responseData) {
        
        LoginResponse *cc = (LoginResponse *)responseData;
        [SdkUtil toastMsg:cc.message];
        [[ConfigCoreUtil share] removeAccountByUserId:accountMode.userId];
        if (successBlock) {
            successBlock();
        }
        
    } errorBlock:^(BJError *error) {
        [AlertUtil showAlertWithMessage:error.message];
    }];
}

@end
