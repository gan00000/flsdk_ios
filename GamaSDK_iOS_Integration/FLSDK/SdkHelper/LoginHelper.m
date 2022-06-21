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

@end
