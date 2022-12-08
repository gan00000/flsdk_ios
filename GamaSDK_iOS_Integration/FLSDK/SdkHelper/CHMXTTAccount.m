
#import "CHMXTTAccount.h"
#import "CHMXTTErvice.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTResp.h"
#import "CHMXTTScriptSelect.h"

@implementation CHMXTTAccount

+(NSArray *)dismissRegistrationSchemesOrigin:(NSArray *)einitialize register_yMoved:(int)register_yMoved {
     NSInteger implKeychain = 6130;
    NSMutableArray * supersedeRemainsBorn = [NSMutableArray arrayWithCapacity:724];
    implKeychain -= 45;
    [supersedeRemainsBorn addObject: @(implKeychain)];
         int a_60 = (int)implKeychain;
     int t_93 = 1;
     int c_85 = 0;
     if (a_60 > c_85) {
         a_60 = c_85;
     }
     while (t_93 < a_60) {
         t_93 += 1;
          a_60 *= t_93;
         break;
     }

    return supersedeRemainsBorn;

}







+ (void)selfLoginAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password
{

         {
    [self dismissRegistrationSchemesOrigin:[NSArray arrayWithObjects:@"row", nil] register_yMoved:397];

}

    [CHMXTTChangeTimer doLoginWithAccount_MMMethodMMM:account andPassword_MMMethodMMM:password otherDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
        if (delegate) {
            LoginResponse *facebook = (LoginResponse *)responseData;
            NSDictionary * base4 = [NSDictionary dictionaryWithObjectsAndKeys:@"O",@"y", @"o",@"I", @"P",@"3", nil];
             if (base4[@"Q"]) {}
            facebook.data.account = account;
            NSDictionary * frame_54 = [NSDictionary dictionaryWithObjectsAndKeys:@"secret",@(7849), nil];
             if (frame_54[@"G"]) {}
            facebook.data.password = password;
            NSArray * bindingL = @[@(831), @(384)];
             while (bindingL.count > 7) { break; }
            facebook.data.loginType = LOGIN_TYPE_SELF;
            double short_tZ = 5027.0;
             if (@(short_tZ).floatValue > 177) {}
            [delegate handleLoginOrRegSuccess_MMMethodMMM:facebook thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            double server9 = 6240.0;
             while (@(server9).longValue >= 131) { break; }
    }];
            NSString * touchC = @"disagree";
             if (touchC.length > 143) {}
}

+(double)errorComparisonLocale:(NSArray *)callback service:(NSArray *)service {
    double acrobaticsSaintlyStatuary = 0;

    return acrobaticsSaintlyStatuary;

}





+(void) appleLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView
{

         {
    [self errorComparisonLocale:@[@(403), @(859)] service:[NSArray arrayWithObjects:@(697), @(631), @(270), nil]];

}

    if (@available(iOS 13, *)) {
        
    }else{
        
        return;
    }
    
    [[CHMXTTErvice share] makeAppleCallbackSuccessBlock_MMMethodMMM:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[wwwww_tag_wwwww_appleThirdID] copy];
        [tempMutableDic removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
        
        [CHMXTTChangeTimer thirdLoginOrReg_MMMethodMMM:appleID andThirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE addOtherParams_MMMethodMMM:tempMutableDic successBlock_MMMethodMMM:^(id responseData) {
            
            [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE];
            }
            
        } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
            if (error && error.message) {
                [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    } andErrorBlock_MMMethodMMM:^(NSError * _Nullable error) {
        
        
    }];
    [[CHMXTTErvice share] handleAuthrization:currentView];
}

+(double)footNendComSavingSuffixReuse:(Boolean)start customString:(NSString *)customString {
     NSInteger board = 3974;
    double shaleArmContradictory = 0;
    board *= 63;
    shaleArmContradictory /= MAX(board, 1);
         int temp_f_35 = (int)board;
     if (temp_f_35 == 223) {
          int i_61 = 0;
     int y_69 = 1;
     if (temp_f_35 > y_69) {
         temp_f_35 = y_69;

     }
     for (int j_1 = 0; j_1 < temp_f_35; j_1++) {
         i_61 += j_1;
          if (j_1 > 0) {
          temp_f_35 -=  j_1;

     }
     int h_11 = i_61;
              break;

     }
     }

    return shaleArmContradictory;

}







+ (void)lineLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{

         {
    [self footNendComSavingSuffixReuse:YES customString:@"loud"];

}

    
    
    [[CHMXTTScriptSelect share] startLoginWithCallBack_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
        NSDictionary *stamp = nil;
        @try {
            stamp = @{
                wwwww_tag_wwwww_lineAccessToken        :accessToken,
                
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [CHMXTTChangeTimer thirdLoginOrReg_MMMethodMMM:userID andThirdPlate_MMMethodMMM:LOGIN_TYPE_LINE addOtherParams_MMMethodMMM:stamp successBlock_MMMethodMMM:^(id responseData) {
            [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_LINE];
            }
            
        } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
            if (error && error.message) {
                [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
        
    } fail_MMMethodMMM:^(NSString * _Nullable accessToken, NSString * _Nullable userID, NSString * _Nullable displayName) {
        
    }];
            int createD = 3205;
             if (@(createD).integerValue > 64) {}
}


+(void)fbLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate
{

    
    [[CHMXTTResp share] loginWithPesentingViewController_MMMethodMMM:nil isForceInappLogin_MMMethodMMM:NO andIsForceReAuthorize_MMMethodMMM:NO andSuccessBlock_MMMethodMMM:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
        
        NSDictionary *stamp3 = nil;
        @try {
            stamp3 = @{
                wwwww_tag_wwwww_fbOauthToken        :fbIdToken,
                
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [CHMXTTChangeTimer thirdLoginOrReg_MMMethodMMM:fbUserId andThirdPlate_MMMethodMMM:LOGIN_TYPE_FB addOtherParams_MMMethodMMM:stamp3 successBlock_MMMethodMMM:^(id responseData) {
            [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_FB];
            }
            
        } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
            if (error && error.message) {
                [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
    } andFailBlock_MMMethodMMM:^(NSError * _Nonnull error) {
        
    } andCancelBlock_MMMethodMMM:^(NSError * _Nonnull error) {
        
    }];
            NSArray * rrorq = @[@(441), @(147)];
}



+ (void)bindAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(AccountModel *)currentAccountModel account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password{

    
    NSDictionary *stampo = nil;
    @try {
        stampo = @{
            wwwww_tag_wwwww_userId        :currentAccountModel.userId,
            wwwww_tag_wwwww_loginAccessToken        :currentAccountModel.token,
            wwwww_tag_wwwww_loginTimestamp         :currentAccountModel.timestamp,
        };
        
    } @catch (NSException *exception) {
        
    }
    if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        
        [[CHMXTTResp share] loginWithPesentingViewController_MMMethodMMM:nil isForceInappLogin_MMMethodMMM:NO andIsForceReAuthorize_MMMethodMMM:NO andSuccessBlock_MMMethodMMM:^(NSString * _Nonnull fbUserId, NSString * _Nonnull fbUserName, NSString * _Nonnull fbIdToken) {
            
            NSMutableDictionary *frame_vc = nil;
            @try {
                frame_vc = [NSMutableDictionary dictionaryWithDictionary:@{wwwww_tag_wwwww_fbOauthToken:fbIdToken}];
            NSString * rotatet = @"livingroom";
             if ([rotatet isEqualToString:@"6"]) {}
                [frame_vc addEntriesFromDictionary:stampo];
            } @catch (NSException *exception) { }
            
            [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:fbUserId thirdPlate_MMMethodMMM:LOGIN_TYPE_FB otherParamsDic_MMMethodMMM:frame_vc];
            
        } andFailBlock_MMMethodMMM:^(NSError * _Nonnull error) {
            
        } andCancelBlock_MMMethodMMM:^(NSError * _Nonnull error) {
            
        }];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [[CHMXTTErvice share] makeAppleCallbackSuccessBlock_MMMethodMMM:^(NSDictionary * _Nullable result) {
            NSMutableDictionary *edit = [NSMutableDictionary dictionaryWithDictionary:result];
            Boolean moreJ = NO;
            NSString *successF = [edit[wwwww_tag_wwwww_appleThirdID] copy];
            NSDictionary * r_count9 = @{@"dally":@(YES)};
            [edit removeObjectForKey:wwwww_tag_wwwww_appleThirdID];
            
            [edit addEntriesFromDictionary:stampo];
            NSString * presentationL = @"alien";
             while (presentationL.length > 174) { break; }
            [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:successF thirdPlate_MMMethodMMM:LOGIN_TYPE_APPLE otherParamsDic_MMMethodMMM:edit];
            
        } andErrorBlock_MMMethodMMM:^(NSError * _Nullable error) {
            
        }];
            NSDictionary * a_titleg = @{@"untimely":@(4577.0)};
             if (a_titleg.count > 154) {}
        [[CHMXTTErvice share] handleAuthrization:currentView];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        NSString *foot =[CHMXTTBlock getGamaUUID_MMMethodMMM];
            NSDictionary * expressiond = @{@"fluorescent":@{@"bomber":@[@"chirp", @"packing"]}};
             if (expressiond.count > 37) {}
        [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:foot thirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST otherParamsDic_MMMethodMMM:stampo];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [CHMXTTFunctionData loginWithClientID_MMMethodMMM:@"" presentingViewController:appTopViewController successCallback_MMMethodMMM:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
            
            NSMutableDictionary *header = nil;
            @try {
                header = [NSMutableDictionary dictionaryWithDictionary:@{
                    wwwww_tag_wwwww_googleIdToken        :idToken,
                    wwwww_tag_wwwww_googleClientId       :kClientID,
                }];
            double responcet = 9344.0;
             for(NSInteger responcet_idx = 48; responcet_idx < @(responcet).intValue; responcet_idx -= 4) { break; } 
                [header addEntriesFromDictionary:stampo];
            } @catch (NSException *exception) { }
            
            [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:userId thirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE otherParamsDic_MMMethodMMM:header];
            
            
        } failCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
            
        } cancelCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
            
        }];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        if ([CHMXTTImplGama isEmpty_MMMethodMMM:currentAccountModel.thirdId]) {
            return;
        }
        [self bindAccountAndRequest_MMMethodMMM:delegate view_MMMethodMMM:currentView account_MMMethodMMM:account pwd_MMMethodMMM:password thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:LOGIN_TYPE_LINE otherParamsDic_MMMethodMMM:stampo];
        
    }
    
    
    
}

+(double)loadCompletedTerless{
     double popup = 6505.0;
    double collisionNoncontemporaneous = 0;
    popup = popup;
    collisionNoncontemporaneous -= popup;
         int temp_r_10 = (int)popup;
     switch (temp_r_10) {
          case 40: {
          temp_r_10 /= 93;
          int m_98 = 1;
     int e_23 = 1;
     if (temp_r_10 > e_23) {
         temp_r_10 = e_23;
     }
     while (m_98 < temp_r_10) {
         m_98 += 1;
     int e_10 = m_98;
          switch (e_10) {
          case 39: {
                  break;

     }
          case 89: {
          e_10 -= 13;
                  break;

     }
          case 38: {
          e_10 -= 24;
             break;

     }
          case 1: {
          e_10 /= 11;
             break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 89: {
          int s_41 = 1;
     int c_75 = 0;
     if (temp_r_10 > c_75) {
         temp_r_10 = c_75;
     }
     while (s_41 <= temp_r_10) {
         s_41 += 1;
          temp_r_10 /= s_41;
          temp_r_10 += 100;
         break;
     }
             break;

     }
          case 10: {
          temp_r_10 += 17;
          if (temp_r_10 > 334) {
          temp_r_10 /= 51;
          }
             break;

     }
     default:
         break;

     }

    return collisionNoncontemporaneous;

}







+ (void)guestLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate
{

    
    NSString *footm =[CHMXTTBlock getGamaUUID_MMMethodMMM];
    [CHMXTTChangeTimer freeLoginOrRegister_MMMethodMMM:footm successBlock_MMMethodMMM:^(id responseData) {
        
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
        if (delegate) {
            LoginResponse *facebookY = (LoginResponse *)responseData;

         {
    [self loadCompletedTerless];

}
            int withproductz = 218;
             if (@(withproductz).integerValue < 114) {}
            facebookY.data.thirdId = footm;
            NSDictionary * confire8 = [NSDictionary dictionaryWithObjectsAndKeys:@"kindred",@(1413.0), nil];
            [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_GUEST];
        }
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        if (error && error.message) {
            [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
        }
        
    }];
    
}

+(NSInteger)archivedLoginedAttribtMasTagGetter:(NSString *)authrization landscape:(double)landscape {
     float becomeInterface = 9470.0;
    NSInteger chronologicalFabulous = 0;
    becomeInterface = 8475;
    chronologicalFabulous *= becomeInterface;
         int tmp_t_25 = (int)becomeInterface;
     switch (tmp_t_25) {
          case 53: {
          tmp_t_25 += 84;
          int w_42 = 0;
     int g_82 = 0;
     if (tmp_t_25 > g_82) {
         tmp_t_25 = g_82;

     }
     for (int e_88 = 1; e_88 < tmp_t_25; e_88++) {
         w_42 += e_88;
          if (e_88 > 0) {
          tmp_t_25 -=  e_88;

     }
     int r_12 = w_42;
          switch (r_12) {
          case 26: {
          r_12 -= 30;
             break;

     }
          case 29: {
          r_12 -= 92;
          r_12 += 91;
             break;

     }
          case 19: {
          r_12 += 41;
          r_12 -= 41;
             break;

     }
          case 99: {
          r_12 *= 28;
                  break;

     }
          case 87: {
          r_12 /= 31;
                  break;

     }
          case 81: {
          r_12 /= 3;
                  break;

     }
          case 35: {
                  break;

     }
          case 17: {
          r_12 -= 74;
          r_12 += 97;
             break;

     }
          case 82: {
                  break;

     }
          case 85: {
          r_12 += 90;
             break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
          case 75: {
          if (tmp_t_25 > 662) {
          tmp_t_25 *= 6;
          }
             break;

     }
          case 93: {
          int t_78 = 0;
     for (int l_47 = tmp_t_25; l_47 >= tmp_t_25 - 1; l_47--) {
         t_78 += l_47;
          if (l_47 > 0) {
          tmp_t_25 +=  l_47;

     }
     int b_59 = t_78;
              break;

     }
             break;

     }
          case 87: {
          int z_56 = 1;
     int t_34 = 0;
     if (tmp_t_25 > t_34) {
         tmp_t_25 = t_34;
     }
     while (z_56 < tmp_t_25) {
         z_56 += 1;
          tmp_t_25 -= z_56;
     int e_17 = z_56;
              break;
     }
             break;

     }
          case 31: {
          tmp_t_25 -= 17;
          int r_61 = 0;
     for (int d_56 = tmp_t_25; d_56 >= tmp_t_25 - 1; d_56--) {
         r_61 += d_56;
     int y_39 = r_61;
          if (y_39 <= 323) {
          }
         break;

     }
             break;

     }
          case 58: {
          int t_66 = 0;
     for (int s_38 = tmp_t_25; s_38 > tmp_t_25 - 1; s_38--) {
         t_66 += s_38;
          if (s_38 > 0) {
          tmp_t_25 +=  s_38;

     }
     int o_4 = t_66;
          if (o_4 < 732) {
          }
         break;

     }
             break;

     }
     default:
         break;

     }

    return chronologicalFabulous;

}






+ (void)deleteAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(AccountModel *)accountMode otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic successBlock_MMMethodMMM:(void(^)())successBlock
{

         {
    [self archivedLoginedAttribtMasTagGetter:@"commotion" landscape:6218.0];

}

    
    [CHMXTTChangeTimer requestDeleteUserAccount_MMMethodMMM:accountMode otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        
        LoginResponse *facebooka = (LoginResponse *)responseData;
            int labelx = 9839;
             if (@(labelx).floatValue > 12) {}
        [CHMXTTRegister toastMsg_MMMethodMMM:facebooka.message];
            double guestm = 2529.0;
             while (@(guestm).longValue > 186) { break; }
        [[CHMXTTEfault share] removeAccountByUserId_MMMethodMMM:accountMode.userId];
        if (successBlock) {
            successBlock();
        }
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            double localxr = 8891.0;
             if (@(localxr).doubleValue < 45) {}
    }];
            NSString * createh = @"feeling";
}

+(int)perfomMarkingText:(NSString *)coreType_xp socialStart:(NSDictionary *)socialStart {
     long dictionary = 6131;
    int expiry = 0;
    dictionary = 5820;
    expiry *= dictionary;
         int _f_8 = (int)dictionary;
     _f_8 += 52;

    return expiry;

}






+ (void)bindAccountAndRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView account_MMMethodMMM:(NSString *)account pwd_MMMethodMMM:(NSString *)password thirdId_MMMethodMMM:(NSString *)thirdId  thirdPlate_MMMethodMMM:(NSString *)thirdPlate otherParamsDic_MMMethodMMM:(NSDictionary *)otherParamsDic
{

         {
    [self perfomMarkingText:@"sincerity" socialStart:[NSDictionary dictionaryWithObjectsAndKeys:@"T",@"k", nil]];

}

    
    [CHMXTTChangeTimer doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:thirdId thirdPlate_MMMethodMMM:thirdPlate otherParamsDic_MMMethodMMM:otherParamsDic successBlock_MMMethodMMM:^(id responseData) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success)];
        if (delegate) {
            LoginResponse *facebookh = (LoginResponse *)responseData;
            NSInteger window_0L = 4987;
             while (@(window_0L).doubleValue > 6) { break; }
            facebookh.data.account = account;
            NSString * agreeh = @"inspire";
            facebookh.data.password = password;
            float orientations8 = 7155.0;
             if (@(orientations8).integerValue >= 171) {}
            facebookh.data.loginType = LOGIN_TYPE_SELF;
            NSArray * webi = [NSArray arrayWithObjects:@(516), @(591), @(453), nil];
            [delegate handleLoginOrRegSuccess_MMMethodMMM:facebookh thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSInteger configuratorp = 295;
             for(int configuratorp_idx = 93; configuratorp_idx < @(configuratorp).intValue; configuratorp_idx--) { break; } 
    }];
            NSString * frame_i6F = @"heretical";
             while (frame_i6F.length > 193) { break; }
}


+ (void)googleLoginAndThirdRequest_MMMethodMMM:(id<LoginViewDelegate>)delegate{

    
    
    [CHMXTTFunctionData loginWithClientID_MMMethodMMM:@"" presentingViewController:appTopViewController successCallback_MMMethodMMM:^(NSString * _Nonnull userId, NSString * _Nonnull name, NSString * _Nonnull email, NSString * _Nonnull idToken, NSString * _Nonnull accessToken, NSString * _Nonnull kClientID) {
        
        NSDictionary *stampm = nil;
        @try {
            stampm = @{
                wwwww_tag_wwwww_googleIdToken        :idToken,
                wwwww_tag_wwwww_googleClientId       :kClientID,
                
            };
            
        } @catch (NSException *exception) {
            
        }
        
        [CHMXTTChangeTimer thirdLoginOrReg_MMMethodMMM:userId andThirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE addOtherParams_MMMethodMMM:stampm successBlock_MMMethodMMM:^(id responseData) {
            [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_login_success)];
            if (delegate) {
                [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_GOOGLE];
            }
            
        } errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
            if (error && error.message) {
                [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            }
        }];
        
        
    } failCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
        
    } cancelCallback_MMMethodMMM:^(NSString * _Nonnull msg) {
        
    }];
            NSArray * handero = [NSArray arrayWithObjects:@(816), @(51), nil];
}


+ (void)accountRegister_MMMethodMMM:(id<LoginViewDelegate>)delegate view_MMMethodMMM:(UIView *)currentView areaCode_MMMethodMMM:(NSString *)areaCode name:(NSString *)name password_MMMethodMMM:(NSString *)password phoneNum_MMMethodMMM:(NSString *)phoneNum vfCode_MMMethodMMM:(NSString *)vfCode {

    [CHMXTTChangeTimer doRegisterAccountWithUserName_MMMethodMMM:name
                                  andPassword_MMMethodMMM:password
                                phoneAreaCode_MMMethodMMM:areaCode
                                  phoneNumber_MMMethodMMM:phoneNum
                                       vfCode_MMMethodMMM:vfCode
                                   interfaces_MMMethodMMM:wwwww_tag_wwwww_1
                               otherParamsDic_MMMethodMMM:nil
                                 successBlock_MMMethodMMM:^(id responseData) {
        
        if (delegate) {
            LoginResponse *facebook9 = (LoginResponse *)responseData;
            float debugz = 6960.0;
             while (@(debugz).intValue > 93) { break; }
            facebook9.data.account = name;
            NSDictionary * ecodingj = @{@"exhume":@(849), @"embellishment":@(929)};
             while (ecodingj.count > 58) { break; }
            facebook9.data.password = password;
            [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_reg_success)];
            double modelY = 7393.0;
             while (@(modelY).intValue == 41) { break; }
            [delegate handleLoginOrRegSuccess_MMMethodMMM:responseData thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
    }
                                   errorBlock_MMMethodMMM:^(CHMXTTIcon *error) {
        [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:error.message];
            NSArray * boardc = @[@(1132.0)];
             if (boardc.count > 135) {}
    }];
            double keychainB = 9290.0;
             while (@(keychainB).doubleValue == 189) { break; }
}

@end
