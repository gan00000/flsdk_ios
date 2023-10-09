

#import "AloneuleCipitdifferenting.h"
#import "FinalaneityTangice.h"
#import "TransifySideatory.h"
#import "EffortoonOrexiular.h"
#import "OrganizationOptim.h"
#import "MWSDK.h"

#ifdef SDK_KR
#import "AnthoaireMellacity.h"
#endif


@implementation AloneuleCipitdifferenting


+ (void)accountRegister_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView areaCode_MMMethodMMM:(NSString *)areaCode name:(NSString *)name password_MMMethodMMM:(NSString *)password phoneNum_MMMethodMMM:(NSString *)phoneNum vfCode_MMMethodMMM:(NSString *)vfCode {
    [TransifySideatory doRegisterAccountWithUserName_MMMethodMMM:name
                                  andPassword_MMMethodMMM:password
                                phoneAreaCode_MMMethodMMM:areaCode
                                  phoneNumber_MMMethodMMM:phoneNum
                                       vfCode_MMMethodMMM:vfCode
                                   interfaces_MMMethodMMM:wwwww_tag_wwwww_1
                               otherParamsDic_MMMethodMMM:nil
                                 successBlock_MMMethodMMM:^(id responseData) {
        
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = name;
            cc.data.password = password;
            [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_reg_success)];
            [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
    }
                                   errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

+(void) appleLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView
{
    if (@available(iOS 13, *)) {
        
    }else{
        
        return;
    }
    
    [[FinalaneityTangice share] makeAppleCallbackSuccessBlock_MMMethodMMM:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
        [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
        
        [TransifySideatory thirdLoginOrReg_MMMethodMMM:appleID andThirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE addOtherParams_MMMethodMMM:tempMutableDic successBlock_MMMethodMMM:^(id responseData) {
            
            [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE];
            }
            
        } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
            if (error && error.message) {
                [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    } andErrorBlock_MMMethodMMM:^(NSError * _Nullable error) {
        
        
    }];
    [[FinalaneityTangice share] handleAuthrization:currentView];
}


+(void)fbLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate
{
    
    [[EffortoonOrexiular share] loginWithPesentingViewController_MMMethodMMM:nil isForceInappLogin_MMMethodMMM:NO andIsForceReAuthorize_MMMethodMMM:NO andSuccessBlock_MMMethodMMM:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_fbOauthToken        :fbIdToken,
                wwwww_tag_wwwww_thirdAccessToken        :fbIdToken,
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [TransifySideatory thirdLoginOrReg_MMMethodMMM:fbUserId andThirdPlate_MMMethodMMM:LOGIN_TYPE_FB addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_FB];
            }
            
        } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
            if (error && error.message) {
                [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    } andFailBlock_MMMethodMMM:^(NSError * _Nonnull error) {
        
    } andCancelBlock_MMMethodMMM:^(NSError * _Nonnull error) {
        
    }];
}

+ (void)guestLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate
{
    
    NSString *loginId =[CauseenneSper getGamaUUID_MMMethodMMM];
    [TransifySideatory freeLoginOrRegister_MMMethodMMM:loginId successBlock_MMMethodMMM:^(id responseData) {
        
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.thirdId = loginId;
            [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST];
        }
        
    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        if (error && error.message) {
            [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
        }
        
    }];
    
}


+ (void)googleLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{
    
    
    [StructmoneyisePeraneity loginWithClientID_MMMethodMMM:@"" presentingViewController:appTopViewController successCallback_MMMethodMMM:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_googleIdToken        :idToken,
                wwwww_tag_wwwww_googleClientId       :kClientID,
                wwwww_tag_wwwww_thirdAccessToken        :idToken,
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [TransifySideatory thirdLoginOrReg_MMMethodMMM:userId andThirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE];
            }
            
        } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
            if (error && error.message) {
                [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
        
    } failCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
        
    } cancelCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
        
    }];
}


+ (void)lineLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{
    
    
    [[OrganizationOptim share] startLoginWithCallBack_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_lineAccessToken        :accessToken,
                wwwww_tag_wwwww_thirdAccessToken        :accessToken,
                
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [TransifySideatory thirdLoginOrReg_MMMethodMMM:userID andThirdPlate_MMMethodMMM:LOGIN_TYPE_LINE addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_LINE];
            }
            
        } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
            if (error && error.message) {
                [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
        
    } fail_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
    }];
}

+ (void)naverLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{
    
#ifdef SDK_KR
    [[AnthoaireMellacity share] startLoginWithKey_MMMethodMMM:GetConfigString(@"sdk_naver_consumer_key") consumerSecret_MMMethodMMM:GetConfigString(@"sdk_naver_consumer_secret") appName_MMMethodMMM:[CauseenneSper getDisplayName_MMMethodMMM] callback_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_thirdAccessToken        :accessToken,
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [TransifySideatory thirdLoginOrReg_MMMethodMMM:userID andThirdPlate_MMMethodMMM:LOGIN_TYPE_NAVER addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_NAVER];
            }
            
        } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
            if (error && error.message) {
                [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    }];
#endif
    
}

+ (void)selfLoginAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password
{
    [TransifySideatory doLoginWithAccount_MMMethodMMM:account andPassword_MMMethodMMM:password otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

+ (void)bindAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(AccountModel *)currentAccountModel account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password{
    
    NSDictionary *otherParamsDic = nil;
    @try {
        otherParamsDic = @{
            wwwww_tag_wwwww_userId        :currentAccountModel.userId,
            wwwww_tag_wwwww_loginAccessToken        :currentAccountModel.token,
            wwwww_tag_wwwww_loginTimestamp         :currentAccountModel.timestamp,
        };
        
    } @catch (NSException *exception) {
        
    }
    if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        
        [[EffortoonOrexiular share] loginWithPesentingViewController_MMMethodMMM:nil isForceInappLogin_MMMethodMMM:NO andIsForceReAuthorize_MMMethodMMM:NO andSuccessBlock_MMMethodMMM:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
            
            NSMutableDictionary *fbParamsDic = nil;
            @try {
                fbParamsDic = [NSMutableDictionary dictionaryWithDictionary:@{wwwww_tag_wwwww_fbOauthToken:fbIdToken}];
                [fbParamsDic addEntriesFromDictionary:otherParamsDic];
            } @catch (NSException *exception) { }
            
            [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:fbUserId thirdPlate_MMMethodMMM:LOGIN_TYPE_FB otherParamsDic_MMMethodMMM:fbParamsDic];
            
        } andFailBlock_MMMethodMMM:^(NSError * _Nonnull error) {
            
        } andCancelBlock_MMMethodMMM:^(NSError * _Nonnull error) {
            
        }];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [[FinalaneityTangice share] makeAppleCallbackSuccessBlock_MMMethodMMM:^(NSDictionary * _Nullable result) {
            NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
            NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
            [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
            
            [tempMutableDic addEntriesFromDictionary:otherParamsDic];
            [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:appleID thirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE otherParamsDic_MMMethodMMM:tempMutableDic];
            
        } andErrorBlock_MMMethodMMM:^(NSError * _Nullable error) {
            
        }];
        [[FinalaneityTangice share] handleAuthrization:currentView];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        NSString *loginId =[CauseenneSper getGamaUUID_MMMethodMMM];
        [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:loginId thirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST otherParamsDic_MMMethodMMM:otherParamsDic];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [StructmoneyisePeraneity loginWithClientID_MMMethodMMM:@"" presentingViewController:appTopViewController successCallback_MMMethodMMM:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
            
            NSMutableDictionary *ggParamsDic = nil;
            @try {
                ggParamsDic = [NSMutableDictionary dictionaryWithDictionary:@{
                    wwwww_tag_wwwww_googleIdToken        :idToken,
                    wwwww_tag_wwwww_googleClientId       :kClientID,
                }];
                [ggParamsDic addEntriesFromDictionary:otherParamsDic];
            } @catch (NSException *exception) { }
            
            [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:userId thirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE otherParamsDic_MMMethodMMM:ggParamsDic];
            
            
        } failCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
            
        } cancelCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
            
        }];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        if ([PietCircumthanklike isEmpty_MMMethodMMM:currentAccountModel.thirdId]) {
            return;
        }
        [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:LOGIN_TYPE_LINE otherParamsDic_MMMethodMMM:otherParamsDic];
        
    }
    
    
    
}

+ (void)bindAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password thirdId_MMMethodMMM:(NSString *)thirdId  thirdPlate_MMMethodMMM:(NSString *)thirdPlate otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
{
    
    [TransifySideatory doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:thirdId thirdPlate_MMMethodMMM:thirdPlate otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success)];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            
            
            [EmesitionClausforgetary logServerWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT];
            [EmesitionClausforgetary logWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT parameters_MMMethodMMM:nil];
            
            [delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

+ (void)deleteAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(AccountModel *)accountMode otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic successBlock_MMMethodMMM:(void(^)())successBlock
{
    
    [TransifySideatory requestDeleteUserAccount_MMMethodMMM:accountMode otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        LoginResponse *cc = (LoginResponse *)responseData;
        [DiseaseitudeGastroaire toastMsg_MMMethodMMM:cc.message];
        [[MarwiseAgreeety share] removeAccountByUserId_MMMethodMMM:accountMode.userId];
        if (successBlock) {
            successBlock();
        }
        
    } errorBlock_MMMethodMMM:^(EnjoyIdi *error) {
        [DreamismAlthougheous showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

@end
