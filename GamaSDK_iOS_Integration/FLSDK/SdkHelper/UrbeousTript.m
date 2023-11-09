

#import "UrbeousTript.h"
#import "BagOftenair.h"
#import "ProtectialWeaponate.h"
#import "PlandomThoughar.h"
#import "GonoenceSayling.h"
#import "MWSDK.h"

#ifdef SDK_KR
#import "ClaustreastwiseThusade.h"
#endif


@implementation UrbeousTript


+ (void)accountRegister_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView areaCode_MMMethodMMM:(NSString *)areaCode name:(NSString *)name password_MMMethodMMM:(NSString *)password phoneNum_MMMethodMMM:(NSString *)phoneNum vfCode_MMMethodMMM:(NSString *)vfCode {
    [ProtectialWeaponate doRegisterAccountWithUserName_MMMethodMMM:name
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
            [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_reg_success)];
            [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
    }
                                   errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

+(void) appleLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView
{
    if (@available(iOS 13, *)) {
        
    }else{
        
        return;
    }
    
    [[BagOftenair share] makeAppleCallbackSuccessBlock_MMMethodMMM:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
        [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
        
        [ProtectialWeaponate thirdLoginOrReg_MMMethodMMM:appleID andThirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE addOtherParams_MMMethodMMM:tempMutableDic successBlock_MMMethodMMM:^(id responseData) {
            
            [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE];
            }
            
        } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
            if (error && error.message) {
                [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    } andErrorBlock_MMMethodMMM:^(NSError * _Nullable error) {
        
        
    }];
    [[BagOftenair share] handleAuthrization:currentView];
}


+(void)fbLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate
{
    
    [[PlandomThoughar share] loginWithPesentingViewController_MMMethodMMM:nil isForceInappLogin_MMMethodMMM:NO andIsForceReAuthorize_MMMethodMMM:NO andSuccessBlock_MMMethodMMM:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_fbOauthToken        :fbIdToken,
                wwwww_tag_wwwww_thirdAccessToken        :fbIdToken,
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [ProtectialWeaponate thirdLoginOrReg_MMMethodMMM:fbUserId andThirdPlate_MMMethodMMM:LOGIN_TYPE_FB addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_FB];
            }
            
        } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
            if (error && error.message) {
                [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    } andFailBlock_MMMethodMMM:^(NSError * _Nonnull error) {
        
    } andCancelBlock_MMMethodMMM:^(NSError * _Nonnull error) {
        
    }];
}

+ (void)guestLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate
{
    
    NSString *loginId =[ArchaeitiveCivilant getGamaUUID_MMMethodMMM];
    [ProtectialWeaponate freeLoginOrRegister_MMMethodMMM:loginId successBlock_MMMethodMMM:^(id responseData) {
        
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.thirdId = loginId;
            [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST];
        }
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        if (error && error.message) {
            [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
        }
        
    }];
    
}


+ (void)googleLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{
    
    
    [SendiseOptimpresentmost loginWithClientID_MMMethodMMM:@"" presentingViewController:appTopViewController successCallback_MMMethodMMM:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_googleIdToken        :idToken,
                wwwww_tag_wwwww_googleClientId       :kClientID,
                wwwww_tag_wwwww_thirdAccessToken        :idToken,
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [ProtectialWeaponate thirdLoginOrReg_MMMethodMMM:userId andThirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE];
            }
            
        } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
            if (error && error.message) {
                [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
        
    } failCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
        
    } cancelCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
        
    }];
}


+ (void)lineLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{
    
    
    [[GonoenceSayling share] startLoginWithCallBack_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_lineAccessToken        :accessToken,
                wwwww_tag_wwwww_thirdAccessToken        :accessToken,
                
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [ProtectialWeaponate thirdLoginOrReg_MMMethodMMM:userID andThirdPlate_MMMethodMMM:LOGIN_TYPE_LINE addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_LINE];
            }
            
        } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
            if (error && error.message) {
                [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
        
    } fail_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
    }];
}

+ (void)naverLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{
    
#ifdef SDK_KR
    [[ClaustreastwiseThusade share] startLoginWithKey_MMMethodMMM:GetConfigString(@"sdk_naver_consumer_key") consumerSecret_MMMethodMMM:GetConfigString(@"sdk_naver_consumer_secret") appName_MMMethodMMM:[ArchaeitiveCivilant getDisplayName_MMMethodMMM] callback_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
        
        NSDictionary *otherParamsDic = nil;
        @try {
            otherParamsDic = @{
                wwwww_tag_wwwww_thirdAccessToken        :accessToken,
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [ProtectialWeaponate thirdLoginOrReg_MMMethodMMM:userID andThirdPlate_MMMethodMMM:LOGIN_TYPE_NAVER addOtherParams_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
            [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_NAVER];
            }
            
        } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
            if (error && error.message) {
                [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    }];
#endif
    
}

+ (void)selfLoginAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password
{
    [ProtectialWeaponate doLoginWithAccount_MMMethodMMM:account andPassword_MMMethodMMM:password otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
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
        
        
        [[PlandomThoughar share] loginWithPesentingViewController_MMMethodMMM:nil isForceInappLogin_MMMethodMMM:NO andIsForceReAuthorize_MMMethodMMM:NO andSuccessBlock_MMMethodMMM:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
            
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
        
        [[BagOftenair share] makeAppleCallbackSuccessBlock_MMMethodMMM:^(NSDictionary * _Nullable result) {
            NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
            NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
            [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
            
            [tempMutableDic addEntriesFromDictionary:otherParamsDic];
            [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:appleID thirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE otherParamsDic_MMMethodMMM:tempMutableDic];
            
        } andErrorBlock_MMMethodMMM:^(NSError * _Nullable error) {
            
        }];
        [[BagOftenair share] handleAuthrization:currentView];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        NSString *loginId =[ArchaeitiveCivilant getGamaUUID_MMMethodMMM];
        [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:loginId thirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST otherParamsDic_MMMethodMMM:otherParamsDic];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [SendiseOptimpresentmost loginWithClientID_MMMethodMMM:@"" presentingViewController:appTopViewController successCallback_MMMethodMMM:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
            
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
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        if ([DemocratficationNeedern isEmpty_MMMethodMMM:currentAccountModel.thirdId]) {
            return;
        }
        [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:LOGIN_TYPE_LINE otherParamsDic_MMMethodMMM:otherParamsDic];
        
    }
    
    
    
}

+ (void)bindAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password thirdId_MMMethodMMM:(NSString *)thirdId  thirdPlate_MMMethodMMM:(NSString *)thirdPlate otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
{
    
    [ProtectialWeaponate doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:thirdId thirdPlate_MMMethodMMM:thirdPlate otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success)];
        if (delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = account;
            cc.data.password = password;
            cc.data.loginType = LOGIN_TYPE_SELF;
            
            
            [IndiianLeastial logServerWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT];
            [IndiianLeastial logWithEventName_MMMethodMMM:AD_EVENT_UPGRADE_ACCOUNT parameters_MMMethodMMM:nil];
            
            [delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

+ (void)deleteAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(AccountModel *)accountMode otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic successBlock_MMMethodMMM:(void(^)())successBlock
{
    
    [ProtectialWeaponate requestDeleteUserAccount_MMMethodMMM:accountMode otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        LoginResponse *cc = (LoginResponse *)responseData;
        [QuartaciousForwardization toastMsg_MMMethodMMM:cc.message];
        [[AatorTrusular share] removeAccountByUserId_MMMethodMMM:accountMode.userId];
        if (successBlock) {
            successBlock();
        }
        
    } errorBlock_MMMethodMMM:^(RoborfactionOnomatbooksure *error) {
        [StrigLevelule showAlertWithMessage_MMMethodMMM:error.message];
    }];
}

@end
