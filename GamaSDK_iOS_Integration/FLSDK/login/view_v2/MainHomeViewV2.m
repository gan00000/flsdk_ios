
#import "MainHomeViewV2.h"
#import "UIUtil.H"
#import "LoginTypeButton.h"
#import "UIView+BlockGesture.h"
#import "SDKRequest.h"
#import "FBDelegate.h"
#import "SdkHeader.h"
#import "LoginHelper.h"
#import "SAppleLogin.h"
#import "TermsViewV2.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface MainHomeViewV2()


@property(nonatomic, assign)double  generic_offset;
@property(nonatomic, assign)Boolean  enbale_Total;
@property(nonatomic, assign)Boolean  is_Presenting;
@property(nonatomic, assign)NSInteger  social_mark;


@end

@implementation MainHomeViewV2
{
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
    UIView *deleteView;
}

-(int)validEngineCfuuid:(NSInteger)queryModity {
     double register_vArray = 7453.0;
    int helicopterApoplecticPost = 0;
    register_vArray = 1714;
    helicopterApoplecticPost /= MAX(register_vArray, 1);
         int _e_27 = (int)register_vArray;
     switch (_e_27) {
          case 0: {
          _e_27 -= 32;
          int x_92 = 1;
     int a_66 = 1;
     if (_e_27 > a_66) {
         _e_27 = a_66;
     }
     while (x_92 < _e_27) {
         x_92 += 1;
          _e_27 -= x_92;
         break;
     }
             break;

     }
          case 60: {
          int y_83 = 0;
     for (int t_10 = _e_27; t_10 > _e_27 - 1; t_10--) {
         y_83 += t_10;
          if (t_10 > 0) {
          _e_27 +=  t_10;

     }
              break;

     }
             break;

     }
     default:
         break;

     }

    return helicopterApoplecticPost;

}







- (void)showTermsView_MMMethodMMM {

    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    
    TermsViewV2 *aTermsViewV2 = [[TermsViewV2 alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;

         {
int transgressTantamount = [self validEngineCfuuid:6251];

     int temp_p_56 = (int)transgressTantamount;
     temp_p_56 += 50;
      for(int i = 0; i < transgressTantamount; i++) {
          if (i == 0) {
              break;
          }
      }


}
            double security7 = 857.0;
             for(int security7_idx = 0; security7_idx < @(security7).intValue; security7_idx++) { break; } 
    }];
    
    UIView *superView = appTopViewController.view;
            NSString * textQ = @"mercurial";
    [superView addSubview:aTermsViewV2];
    
    [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(superView);
            NSInteger ecodingX = 545;
             for(int ecodingX_idx = 0; ecodingX_idx < @(ecodingX).intValue; ecodingX_idx++) { break; } 
        make.leading.mas_equalTo(superView);
            Boolean changq = YES;
             while (changq) { __asm__("NOP"); break; }
        make.trailing.mas_equalTo(superView);
            NSArray * erviced = @[@(5118)];
             if ([erviced containsObject:@"D"]) {}
    }];
    
    aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, superView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, -superView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
            NSArray * rror7 = @[@(916), @(803), @(945)];
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
       
        case kAgreeTermsCheckBoxBtnTag:
            
            SDK_LOG(wwwww_tag_wwwww_kAgreeTermsCheckBoxBtnTag);
            if (checkBoxTermsBtn.selected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
            break;
            
        case appleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_appleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        {
            float parentd = 9096.0;
             if (@(parentd).intValue >= 23) {}
        }
            break;
            
        case guestLoginActTag:
            {
            SDK_LOG(wwwww_tag_wwwww_guestLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            }
            break;
            
        case fbLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_fbLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            break;
        case googleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_googleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        {
            NSString * gamat = @"spoor";
             if ([gamat isEqualToString:@"q"]) {}
        }
            break;
        case lineLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_lineLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
        {
            NSArray * y_countQ = [NSArray arrayWithObjects:@(747), @(765), @(52), nil];
             if (y_countQ.count > 33) {}
        }
            break;
        default:
            break;
    }
    
}


-(void)addDeleteAccountView_MMMethodMMM
{

    deleteView = [[UIView alloc] init];
            int dismisss = 7736;
             if (@(dismisss).longLongValue > 110) {}
    deleteView.backgroundColor = UIColor.whiteColor;
            double implo = 4964.0;
             if (@(implo).floatValue >= 47) {}
    deleteView.layer.cornerRadius = VW(14);
    
    UIImageView *deleteIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_delete_icon];
            Boolean sessionW = YES;
             while (sessionW) { __asm__("NOP"); break; }
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
            NSDictionary * thirdp = [NSDictionary dictionaryWithObjectsAndKeys:@"curly",@(350), nil];
             while (thirdp.count > 4) { break; }
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
            NSDictionary * makem = [NSDictionary dictionaryWithObjectsAndKeys:@"no",@(180), @"stouthearted",@(580), @"assist",@(171), nil];
             while (makem.count > 102) { break; }
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
            double register_m_I = 2595.0;
             if (@(register_m_I).longLongValue < 8) {}
        make.centerY.equalTo(deleteView);
            Boolean impv = YES;
             while (!impv) { __asm__("NOP"); break; }
        make.width.height.mas_equalTo(VW(15));
            Boolean facebookA = NO;
             while (!facebookA) { __asm__("NOP"); break; }
    }];
    
    UILabel *delLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
            NSString * self_9O = @"campus";
             if (self_9O.length > 33) {}
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
            NSString * prefersK = @"withstand";
             if ([prefersK isEqualToString:@"b"]) {}
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
            float urlsH = 2267.0;
             if (@(urlsH).integerValue >= 117) {}
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_not_login)];
        
    }];
    
}

-(Boolean)subDeviceCenterProductsIpadConfirm:(NSString *)accountRegular modelButton:(int)modelButton {
     float googleContent = 2931.0;
    BOOL cuddleInfernalTan = NO;
    googleContent *= 18;
    cuddleInfernalTan = googleContent > 9;
         int temp_t_28 = (int)googleContent;
     switch (temp_t_28) {
          case 83: {
          int u_7 = 1;
     int z_96 = 1;
     if (temp_t_28 > z_96) {
         temp_t_28 = z_96;
     }
     while (u_7 < temp_t_28) {
         u_7 += 1;
          temp_t_28 -= u_7;
              break;
     }
             break;

     }
          case 29: {
          int m_69 = 1;
     int i_67 = 1;
     if (temp_t_28 > i_67) {
         temp_t_28 = i_67;
     }
     while (m_69 <= temp_t_28) {
         m_69 += 1;
     int u_32 = m_69;
              break;
     }
             break;

     }
          case 3: {
          temp_t_28 *= 72;
          if (temp_t_28 >= 327) {
          }
             break;

     }
          case 97: {
          temp_t_28 /= 18;
             break;

     }
          case 14: {
          temp_t_28 -= 14;
             break;

     }
          case 43: {
          temp_t_28 *= 63;
          temp_t_28 /= 29;
             break;

     }
          case 5: {
          temp_t_28 /= 92;
             break;

     }
          case 11: {
          temp_t_28 -= 19;
             break;

     }
     default:
         break;

     }

    return cuddleInfernalTan;

}







-(void)addView_MMMethodMMM
{

         {
Boolean withClinch = [self subDeviceCenterProductsIpadConfirm:@"sadden" modelButton:4288];

      if (withClinch) {
      }


}

    
    
    
    UIView *contentView = [[UIView alloc] init];
            NSDictionary * commonJ = [NSDictionary dictionaryWithObjectsAndKeys:@"groom",@(196), @"hypotenuse",@(870), nil];
             if (commonJ[@"N"]) {}
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
            NSDictionary * from_b = [NSDictionary dictionaryWithObjectsAndKeys:@"visionary",@(6040), nil];
             if (from_b[@"e"]) {}
        make.centerY.mas_equalTo(self);
            NSArray * postG = [NSArray arrayWithObjects:@(533), @(44), nil];
             if ([postG containsObject:@"P"]) {}
    }];
    
    UIImageView *logoIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_logo];
            NSString * decode0 = @"oafishness";
    logoIV.hidden = YES;
    if (SDK_DATA.mConfigModel.showLogo) {
        logoIV.hidden = NO;
    }
    [contentView addSubview:logoIV];
    [logoIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top);
            NSString * info9 = @"thatch";
             while (info9.length > 149) { break; }
        make.width.mas_equalTo(VW(200));
        if (SDK_DATA.mConfigModel.showLogo) {
            make.height.mas_equalTo(VH(50));
        }else{
            make.height.mas_equalTo(VH(2));
        }
        make.centerX.mas_equalTo(contentView);
            NSString * arrayq = @"partiality";
             if ([arrayq isEqualToString:@"I"]) {}
    }];
    
    
    
    guestLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];
            NSString * noticea = @"therapy";
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [contentView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (logoIV.hidden) {
            make.top.mas_equalTo(logoIV.mas_bottom);
        }else{
            make.top.mas_equalTo(logoIV.mas_bottom).mas_offset(VH(18));
        }
        
        make.leading.mas_equalTo(contentView).mas_offset(VH(38));
            int responses = 3715;
             while (@(responses).longValue <= 26) { break; }
        make.trailing.mas_equalTo(contentView).mas_offset(VH(-38));;
            NSString * query8 = @"forgive";
             if ([query8 isEqualToString:@"T"]) {}
        make.height.mas_equalTo(VH(50));
            NSArray * debugu = @[@"combustion", @"whisker", @"keep"];
             while (debugu.count > 91) { break; }
    }];
    
    UIView *guestLoginBtnContent = [[UIView alloc] init];
            NSDictionary * codesa = @{@"chess":@(971), @"accident":@(338), @"backdate":@(713)};
             while (codesa.count > 163) { break; }
    [guestLoginBtn addSubview:guestLoginBtnContent];
    [guestLoginBtnContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);
            NSString * perssionO = @"acme";
             if (perssionO.length > 187) {}
    }];
    
    UIButton *guestIconBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:guse_login_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            double existingU = 2582.0;
             while (@(existingU).integerValue <= 98) { break; }
    [guestLoginBtnContent addSubview:guestIconBtn];
    [guestIconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(guestLoginBtnContent);
            NSDictionary * sectionsZ = @{@"depredation":@(261), @"footloose":@(327), @"intangibility":@(240)};
             if (sectionsZ[@"n"]) {}
        make.width.height.mas_equalTo(VW(30));
            NSDictionary * callbackU = [NSDictionary dictionaryWithObjectsAndKeys:@"p",@"W", @"s",@"z", @"J",@"K", nil];
    }];
    
    UIButton *guestTextBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_guest_login_btn.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSArray * homeq = [NSArray arrayWithObjects:@(674), @(89), @(167), nil];
             if (homeq.count > 32) {}
    [guestLoginBtnContent addSubview:guestTextBtn];
    [guestTextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(guestLoginBtnContent);
            int y_boundsP = 9944;
             while (@(y_boundsP).floatValue > 134) { break; }
        make.leading.mas_equalTo(guestIconBtn.mas_trailing).mas_offset(VW(12));
            Boolean coreH = YES;
             if (!coreH) { __asm__("NOP"); }
    }];
    if (!SDK_DATA.mConfigModel.visitorLogin) {
        guestLoginBtnContent.hidden = YES;
    }
    
    
    UIView *topView = guestLoginBtn;
    
    
    
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            double closeZ = 6824.0;
             if (@(closeZ).doubleValue < 52) {}
        appleLoginBtn.tag = appleLoginActTag;
            Boolean areaB = YES;
             if (!areaB) { __asm__("NOP"); }
        appleLoginBtn.cornerRadius = VH(25);
            Boolean btnd = YES;
        [contentView addSubview:appleLoginBtn];

        topView = appleLoginBtn;
        
        if (!SDK_DATA.mConfigModel.appleLogin || SDK_DATA.mConfigModel.appPassCheck) {
            appleLoginBtn.hidden = YES;
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.mas_equalTo(guestLoginBtn);
            NSString * back8 = @"unwitting";
             if (back8.length > 82) {}
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(2);
            NSString * commX = @"forger";
             if ([commX isEqualToString:@"h"]) {}
                make.height.mas_equalTo(2);
            NSDictionary * observeY = [NSDictionary dictionaryWithObjectsAndKeys:@"grip",@(984), @"disobey",@(103), nil];
             if (observeY.count > 178) {}
            }];
            
        }else{
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.height.mas_equalTo(guestLoginBtn);
            NSDictionary * becomeK = [NSDictionary dictionaryWithObjectsAndKeys:@"exist",@(749), @"hitherto",@(118), nil];
             if (becomeK.count > 129) {}
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
            NSInteger commont = 806;
             while (@(commont).doubleValue < 142) { break; }
            }];
        }
        
    }
    
    UIView *hasAccountContent = [[UIView alloc] init];
            NSDictionary * userdefaultT = [NSDictionary dictionaryWithObjectsAndKeys:@"staccato",@(308), @"oxidize",@(826), @"cession",@(435), nil];
    [contentView addSubview:hasAccountContent];
    [hasAccountContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
            NSArray * colorR = [NSArray arrayWithObjects:@(912), @(824), nil];
             if ([colorR containsObject:@"b"]) {}
        make.top.mas_equalTo(topView.mas_bottom).mas_offset(VH(27));
            Boolean editingO = YES;
    }];
    
    UILabel *hasAccountLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_tips_have_account.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor]];
            Boolean responceB = YES;
             while (!responceB) { __asm__("NOP"); break; }
    [hasAccountContent addSubview:hasAccountLabel];
    [hasAccountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hasAccountContent);
            NSString * createA = @"quaver";
             if ([createA isEqualToString:@"U"]) {}
    }];
    
    UILabel *loginLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor]];
            NSString * elegateN = @"oblige";
             if ([elegateN isEqualToString:@"I"]) {}
    [hasAccountContent addSubview:loginLabel];
    [loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hasAccountContent);
            NSArray * m_countE = @[@(967), @(901), @(957)];
             if (m_countE.count > 86) {}
        make.leading.mas_equalTo(hasAccountLabel.mas_trailing);
            NSArray * creaty = @[@"tuesday", @"business"];
             while (creaty.count > 77) { break; }
    }];
    
    
    UILabel *otherLoginLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login_other.localx fontSize_MMMethodMMM:FS(11) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSString * queryA = @"siege";
             if (queryA.length > 118) {}
    [contentView addSubview:otherLoginLabel];
    [otherLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(hasAccountLabel.mas_bottom).mas_offset(VH(22));
            NSArray * autorotate5 = @[@(611), @(421)];
             while (autorotate5.count > 50) { break; }
        make.centerX.mas_equalTo(contentView);
            double data0 = 384.0;
             while (@(data0).longLongValue <= 52) { break; }
    }];
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            int errorU = 6243;
             if (@(errorU).intValue < 129) {}
    [contentView addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.trailing.mas_equalTo(otherLoginLabel.mas_leading).mas_offset(VW(-22));
            NSDictionary * loginY = [NSDictionary dictionaryWithObjectsAndKeys:@"indubitable",@(1939), nil];
             if (loginY.count > 55) {}
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
            NSInteger size_t5 = 6554;
             for(int size_t5_idx = 82; size_t5_idx < @(size_t5).intValue; size_t5_idx--) { break; } 
        make.width.mas_equalTo(VW(26));
        
    }];
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [contentView addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.leading.mas_equalTo(otherLoginLabel.mas_trailing).mas_offset(VW(22));
            NSInteger statuss = 5810;
             if (@(statuss).doubleValue == 163) {}
        make.centerY.mas_equalTo(otherLoginLabel);
            float selectedK = 533.0;
             while (@(selectedK).integerValue < 133) { break; }
        make.height.mas_equalTo(1);
            NSDictionary * hander4 = [NSDictionary dictionaryWithObjectsAndKeys:@"bracing",@(469), @"promptly",@(880), nil];
             if (hander4[@"e"]) {}
        make.width.mas_equalTo(VW(26));
        
    }];
    
    
    
    
    UIView *loginTypeView = [[UIView alloc] init];
    [contentView addSubview:loginTypeView];
    [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
            NSDictionary * withproductl = [NSDictionary dictionaryWithObjectsAndKeys:@"raucous",@(752), @"five",@(449), @"unearthly",@(728), nil];
             if (withproductl.count > 139) {}
        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(24));
        
        make.bottom.mas_equalTo(contentView.mas_bottom);
            NSDictionary * endedu = @{@"merciful":@(207)};
             if (endedu[@"w"]) {}
    }];
    
    
    CGFloat btn_w = VW(34);
            NSString * valid5 = @"overwhelming";
             while (valid5.length > 180) { break; }
    CGFloat btn_h = btn_w;
            NSDictionary * dimey = [NSDictionary dictionaryWithObjectsAndKeys:@"precision",@(967), @"overwhelm",@(384), nil];
             if (dimey.count > 119) {}
    CGFloat margin_leading = VW(27);
    
    NSMutableArray *loginBtnDatas;
    if (SDK_DATA.mConfigModel.appPassCheck) {
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:NO];
    }else{
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:NO guestBtn_MMMethodMMM:NO];
    }
    UIView *leadingView = loginTypeView;
  
    for (int i = 0; i < loginBtnDatas.count; i++) {
        
        LoginButtonData *lbd = loginBtnDatas[i];
            NSArray * r_productso = @[@(266), @(946)];
             while (r_productso.count > 7) { break; }
        UIView *btnView;
        
        if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
            
            if (@available(iOS 13.0, *)) {
                
                ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                          authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSDictionary * sharer7 = @{@"deviate":@(873), @"climb":@(475)};
             while (sharer7.count > 4) { break; }
                appleLoginBtn.tag = lbd.tag;
            Boolean expressionM = YES;
             if (!expressionM) { __asm__("NOP"); }
                appleLoginBtn.cornerRadius = btn_w / 2.0;
            NSString * valuesG = @"unsuitable";
             if ([valuesG isEqualToString:@"i"]) {}
                btnView = appleLoginBtn;
            }
            
        }else{
            
            LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            
            btnView = mBtn;
        }
       
        
        if (btnView) {
            
            [loginTypeView addSubview:btnView];
            [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(btn_w);
                make.height.mas_equalTo(btn_h);
            NSDictionary * script4 = [NSDictionary dictionaryWithObjectsAndKeys:@"crop",@(634), nil];
             if (script4[@"6"]) {}
                make.top.mas_equalTo(loginTypeView);
            NSString * confH = @"produce";
                make.bottom.mas_equalTo(loginTypeView);
                
                if (i == 0) {
                    make.leading.mas_equalTo(leadingView);
                }else{
                    make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
                }
                if (i == loginBtnDatas.count - 1) {
                    make.trailing.mas_equalTo(loginTypeView);
                }
            }];
            
            leadingView = btnView;
            
        }

    }
    
    
    [hasAccountContent addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        if (self.delegate) {
            [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) from_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME param_MMMethodMMM:@1];
        }
    }];
    
  
    UIView *termAgreeView = [[UIView alloc] init];
            double autorotateL = 8638.0;
             while (@(autorotateL).intValue == 187) { break; }
    [self addSubview:termAgreeView];
    [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
            double baseJ = 8512.0;
             if (@(baseJ).longValue <= 142) {}
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
            NSDictionary * workw = @{@"zipper":@(919), @"parallel":@(766)};
             while (workw.count > 62) { break; }
    }];
    
    checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            int infog = 3573;
             while (@(infog).floatValue >= 51) { break; }
    checkBoxTermsBtn.selected = YES;
            NSArray * loading_ = [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"agent",@(388), @"sate",@(80), nil], nil];
             if (loading_.count > 68) {}
    [termAgreeView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(termAgreeView);
            float infoO = 3920.0;
             if (@(infoO).doubleValue > 81) {}
        make.centerY.mas_equalTo(termAgreeView);
            NSString * btnX = @"sportsmanship";
        make.width.height.mas_equalTo(VH(15));
       
    }];
    
        NSString *xtext = GetString(wwwww_tag_wwwww_text_ui_term_port_read2);
            float rameworkZ = 616.0;
             if (@(rameworkZ).floatValue <= 72) {}
    NSString *temptext = GetString(wwwww_tag_wwwww_sdk_terms_title);
    
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSDictionary * sharer7V = [NSDictionary dictionaryWithObjectsAndKeys:@"worse",@"ordeal", nil];
             while (sharer7V.count > 133) { break; }
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
            Boolean codeY = YES;
        rememberTermsLable.backgroundColor = [UIColor clearColor];
            NSDictionary * disappear4 = [NSDictionary dictionaryWithObjectsAndKeys:@"envisage",@(793), @"delta",@(222), @"poise",@(302), nil];
             while (disappear4.count > 95) { break; }
        rememberTermsLable.numberOfLines = 1;
        
    
         NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
            NSArray * appearG = @[@(620), @(293), @(413)];
             if (appearG.count > 117) {}
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length- temptext.length, temptext.length)];
         
        rememberTermsLable.attributedText = attribtStr;
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            float removey = 3050.0;
             while (@(removey).integerValue <= 146) { break; }
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSDictionary * configuratorM = [NSDictionary dictionaryWithObjectsAndKeys:@"failure",[NSArray arrayWithObjects:@(392), @(717), nil], nil];
             while (configuratorM.count > 112) { break; }
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
            NSArray * instancee = [NSArray arrayWithObjects:@(800), @(103), nil];
        }];
            NSDictionary * houru = @{@"o":@"g", @"r":@"x"};
             if (houru.count > 61) {}
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            [self showTermsView_MMMethodMMM];
            
        }];
            NSDictionary * touchP = [NSDictionary dictionaryWithObjectsAndKeys:@"windy",@(604), @"erection",@(211), nil];
             while (touchP.count > 34) { break; }
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
            NSArray * forgotj = @[@(128), @(785), @(800)];
             if ([forgotj containsObject:@"U"]) {}
    termAgreeView.hidden = !mConfigModel.showContract;
    
    
    if (mConfigModel.deleteAccount) {
        [self addDeleteAccountView_MMMethodMMM];
        if(deleteView){
            [self addSubview:deleteView];
         
            [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
                if(IS_PORTRAIT){
                    make.bottom.mas_equalTo(termAgreeView.mas_top).mas_offset(VH(-28));
            NSDictionary * token8 = @{@"x":@"q"};
                    make.centerX.mas_equalTo(self);
                }else{
                    make.bottom.mas_equalTo(termAgreeView.mas_top).mas_offset(VH(-12));
            NSDictionary * popupA = [NSDictionary dictionaryWithObjectsAndKeys:@"y",@"h", @"3",@"i", nil];
             if (popupA[@"T"]) {}
                    make.centerX.mas_equalTo(self);
                }
            }];
            
        }
    }
}



- (instancetype)initView_MMMethodMMM
{
   self.generic_offset = 3686.0;

   self.enbale_Total = NO;

   self.is_Presenting = YES;

   self.social_mark = 359;

   self.token_margin = 4482.0;

   self.hasHidden = YES;

    self = [super init];
    if (self) {
       
        [self addView_MMMethodMMM];
    }
    return self;
}

#pragma mark - 删除账号按钮

-(UIImageView *)provisionPropertyThusenceImageView:(Boolean)encryptFrame_aq return_x4:(double)return_x4 current:(NSArray *)current {
     NSDictionary * handleList = @{@"B":@"C", @"2":@"d", @"O":@"x"};
     NSInteger rateDismiss = 6022;
    UIImageView * commercialHit = [[UIImageView alloc] initWithFrame:CGRectZero];
         int _e_42 = (int)rateDismiss;
     int o_3 = 0;
     for (int i_0 = _e_42; i_0 >= _e_42 - 1; i_0--) {
         o_3 += i_0;
          _e_42 += i_0;
         break;

     }
    commercialHit.contentMode = UIViewContentModeScaleAspectFit;
    commercialHit.animationRepeatCount = 7;
    commercialHit.image = [UIImage imageNamed:@"sections"];
    commercialHit.alpha = 0.1;
    commercialHit.backgroundColor = [UIColor colorWithRed:216 / 255.0 green:46 / 255.0 blue:104 / 255.0 alpha:0.7];
    commercialHit.frame = CGRectMake(312, 49, 0, 0);

    
    CGRect commercialHitFrame = commercialHit.frame;
    commercialHitFrame.size = CGSizeMake(51, 196);
    commercialHit.frame = commercialHitFrame;
    if (commercialHit.alpha > 0.0) {
         commercialHit.alpha = 0.0;
    }
    if (commercialHit.isHidden) {
         commercialHit.hidden = false;
    }
    if (!commercialHit.isUserInteractionEnabled) {
         commercialHit.userInteractionEnabled = true;
    }

    return commercialHit;

}








-(BOOL)checkAgreeTerm_MMMethodMMM
{

         {
UIImageView * infinityTablecloth = [self provisionPropertyThusenceImageView:YES return_x4:1308.0 current:@[@(157), @(102)]];

      int infinityTablecloth_tag = infinityTablecloth.tag;
     int tmp_z_10 = (int)infinityTablecloth_tag;
     if (tmp_z_10 == 844) {
          tmp_z_10 -= 20;
     }
      [self addSubview: infinityTablecloth];


}

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
            NSInteger roleo = 5452;
             while (@(roleo).longLongValue == 143) { break; }
    [self showTermsView_MMMethodMMM];
            NSDictionary * k_productsy = @{@"ream":@(98), @"zero":@(955)};
             while (k_productsy.count > 76) { break; }
    return NO;
}

@end
