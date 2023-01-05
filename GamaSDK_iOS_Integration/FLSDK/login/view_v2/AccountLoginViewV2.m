
#import "AccountLoginViewV2.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "AccountListViewCell.h"
#import "HttpServiceEngineLogin.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "LoginHelper.h"
#import "LoginTypeButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "SAppleLogin.h"
#import "TermsView.h"
#import "AccountListView.h"
#import "UIView+BlockGesture.h"
#import "LoginButtonData.h"
#import "TermsViewV2.h"
#import "BasePopupView.h"

@interface AccountLoginViewV2()



@property(nonatomic, assign)double  elegateSpace;
@property(nonatomic, assign)double  cell_space;
@property(nonatomic, copy)NSString *  actionFunctionBoard_string;
@property(nonatomic, assign)double  generic_offset;


@end

@implementation AccountLoginViewV2
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    
    NSMutableArray<AccountModel *>  *accountDataList;
    
    UIButton *checkBoxTermsBtn;
    
    SAppleLogin *gamaAppleLogin;
    
    BOOL isAgree;
    
    AccountModel *currentAccountModel;
    
    AccountListView *accountListView;
    BasePopupView *accountMaskView;
    
    UIView *deleteAccountConfireView;
    UIView *deleteBtnView;
}

-(UIView *)showTouchesDaysView{
     UIView * pay_2Background = [[UIView alloc] initWithFrame:CGRectMake(28, 297, 0, 0)];
     NSString * bool_wManager = @"paleolithic";
     NSString * infoTimer = @"deliberation";
     NSString * writeValues = @"colossal";
    UIView * savorSurfaceCostly = [[UIView alloc] init];
    savorSurfaceCostly.frame = CGRectMake(193, 253, 0, 0);
    savorSurfaceCostly.alpha = 0.4;
    savorSurfaceCostly.backgroundColor = [UIColor colorWithRed:133 / 255.0 green:31 / 255.0 blue:162 / 255.0 alpha:0.5];
    pay_2Background.frame = CGRectMake(312, 179, 0, 0);
    pay_2Background.alpha = 0.1;
    pay_2Background.backgroundColor = [UIColor colorWithRed:194 / 255.0 green:241 / 255.0 blue:107 / 255.0 alpha:1.0];
    
    CGRect pay_2BackgroundFrame = pay_2Background.frame;
    pay_2BackgroundFrame.size = CGSizeMake(240, 160);
    pay_2Background.frame = pay_2BackgroundFrame;
    if (pay_2Background.isHidden) {
         pay_2Background.hidden = false;
    }
    if (pay_2Background.alpha > 0.0) {
         pay_2Background.alpha = 0.0;
    }
    if (!pay_2Background.isUserInteractionEnabled) {
         pay_2Background.userInteractionEnabled = true;
    }

    [savorSurfaceCostly addSubview:pay_2Background];

    
    CGRect savorSurfaceCostlyFrame = savorSurfaceCostly.frame;
    savorSurfaceCostlyFrame.size = CGSizeMake(136, 281);
    savorSurfaceCostly.frame = savorSurfaceCostlyFrame;
    if (savorSurfaceCostly.alpha > 0.0) {
         savorSurfaceCostly.alpha = 0.0;
    }
    if (savorSurfaceCostly.isHidden) {
         savorSurfaceCostly.hidden = false;
    }
    if (!savorSurfaceCostly.isUserInteractionEnabled) {
         savorSurfaceCostly.userInteractionEnabled = true;
    }

    return savorSurfaceCostly;

}







-(BOOL)checkAgreeTerm_MMMethodMMM
{

         {
UIView * allay = [self showTouchesDaysView];

      int allay_tag = allay.tag;
     int _c_2 = (int)allay_tag;
     switch (_c_2) {
          case 71: {
          int k_2 = 1;
     int x_100 = 1;
     if (_c_2 > x_100) {
         _c_2 = x_100;
     }
     while (k_2 <= _c_2) {
         k_2 += 1;
          _c_2 -= k_2;
     int r_22 = k_2;
              break;
     }
             break;

     }
          case 59: {
          _c_2 /= 59;
          int m_87 = 1;
     int a_86 = 0;
     if (_c_2 > a_86) {
         _c_2 = a_86;
     }
     while (m_87 <= _c_2) {
         m_87 += 1;
          _c_2 /= m_87;
     int y_60 = m_87;
          if (y_60 > 992) {
          y_60 -= 89;
          }
         break;
     }
             break;

     }
          case 3: {
          _c_2 -= 40;
          int r_19 = 1;
     int i_95 = 0;
     if (_c_2 > i_95) {
         _c_2 = i_95;
     }
     while (r_19 < _c_2) {
         r_19 += 1;
     int q_20 = r_19;
              break;
     }
             break;

     }
          case 86: {
          _c_2 += 74;
             break;

     }
          case 26: {
          _c_2 /= 75;
          _c_2 *= 83;
             break;

     }
          case 88: {
          if (_c_2 > 607) {
          _c_2 += 87;
          }
             break;

     }
     default:
         break;

     }
      [self addSubview: allay];


}

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    [self showTermsViewForAccountLoginView_MMMethodMMM];
            NSString * removeX = @"elementary";
             while (removeX.length > 63) { break; }
    return NO;
}

-(int)permittedSheetScrollNetworkDictionaryRuntime:(NSString *)reset {
     double remove = 2232.0;
    int detectiveMicrobe = 0;
    remove = 7885;
    detectiveMicrobe -= remove;
         int temp_d_29 = (int)remove;
     temp_d_29 /= 28;

    return detectiveMicrobe;

}






- (void)showTermsViewForAccountLoginView_MMMethodMMM {

         {
int cult = [self permittedSheetScrollNetworkDictionaryRuntime:@"duct"];

     int temp_r_31 = (int)cult;
     int k_60 = 0;
     for (int b_13 = temp_r_31; b_13 >= temp_r_31 - 1; b_13--) {
         k_60 += b_13;
          temp_r_31 += b_13;
         break;

     }
      for(int i = 0; i < cult; i++) {
          if (i == 1) {
              break;
          }
      }


}

    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    TermsViewV2 *aTermsViewV2 = [[TermsViewV2 alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;
            Boolean generic0 = NO;
             while (!generic0) { __asm__("NOP"); break; }
    }];
    
    UIView *superView = appTopViewController.view;
            double deviceq = 6837.0;
             while (@(deviceq).floatValue < 44) { break; }
    [superView addSubview:aTermsViewV2];
    
    [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(superView);
            NSString * ervicef = @"stuff";
             while (ervicef.length > 159) { break; }
        make.leading.mas_equalTo(superView);
            NSArray * xinit_zP = @[@(2190.0)];
             if ([xinit_zP containsObject:@"e"]) {}
        make.trailing.mas_equalTo(superView);
            NSDictionary * boarda = @{@"inscribe":@(530)};
             if (boarda[@"u"]) {}
    }];
    
    
    aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, superView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, -superView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
            NSString * auto_4L = @"artillery";
}

-(UIView *)zeroRequiredNetView:(long)logined {
     double phone = 3593.0;
     NSDictionary * progress = [NSDictionary dictionaryWithObjectsAndKeys:@"exhale",@(321), @"blink",@(188), nil];
     UIImageView * saveInterface = [UIImageView new];
    UIView * iceboundOutcast = [[UIView alloc] init];
    iceboundOutcast.frame = CGRectMake(102, 18, 0, 0);
    iceboundOutcast.alpha = 0.1;
    iceboundOutcast.backgroundColor = [UIColor colorWithRed:73 / 255.0 green:124 / 255.0 blue:113 / 255.0 alpha:0.3];
    saveInterface.backgroundColor = [UIColor colorWithRed:101 / 255.0 green:203 / 255.0 blue:195 / 255.0 alpha:0.6];
    saveInterface.alpha = 0.7;
    saveInterface.frame = CGRectMake(28, 184, 0, 0);
    saveInterface.animationRepeatCount = 0;
    saveInterface.image = [UIImage imageNamed:@"encoding"];
    saveInterface.contentMode = UIViewContentModeScaleAspectFit;
    
    CGRect saveInterfaceFrame = saveInterface.frame;
    saveInterfaceFrame.size = CGSizeMake(156, 83);
    saveInterface.frame = saveInterfaceFrame;
    if (saveInterface.alpha > 0.0) {
         saveInterface.alpha = 0.0;
    }
    if (saveInterface.isHidden) {
         saveInterface.hidden = false;
    }
    if (!saveInterface.isUserInteractionEnabled) {
         saveInterface.userInteractionEnabled = true;
    }

    [iceboundOutcast addSubview:saveInterface];

    
    CGRect iceboundOutcastFrame = iceboundOutcast.frame;
    iceboundOutcastFrame.size = CGSizeMake(248, 194);
    iceboundOutcast.frame = iceboundOutcastFrame;
    if (iceboundOutcast.alpha > 0.0) {
         iceboundOutcast.alpha = 0.0;
    }
    if (iceboundOutcast.isHidden) {
         iceboundOutcast.hidden = false;
    }
    if (!iceboundOutcast.isUserInteractionEnabled) {
         iceboundOutcast.userInteractionEnabled = true;
    }

    return iceboundOutcast;

}






-(void)goGame_MMMethodMMM
{

   self.elegateSpace = 6981.0;

   self.cell_space = 1848.0;

   self.actionFunctionBoard_string = @"disfranchise";

   self.generic_offset = 1134.0;

   self.codesIndex = 5811;

   self.welcomeTag = 8819;

   self.payment_t = 936;

         {
UIView * debaseWick = [self zeroRequiredNetView:7866];

      int debaseWick_tag = debaseWick.tag;
     int temp_g_67 = (int)debaseWick_tag;
     if (temp_g_67 <= 152) {
          temp_g_67 /= 38;
          temp_g_67 /= 42;
     }
      [self addSubview: debaseWick];


}

    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
            NSArray * stamph = [NSArray arrayWithObjects:@(2543), nil];
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [self requestAccountLogin_MMMethodMMM];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}

-(UIView *)logoStatueActionView:(NSDictionary *)alert controllerAccount:(NSString *)controllerAccount password:(NSString *)password {
     int helperGama = 7271;
     NSDictionary * social = @{@"below":@(1915.0)};
    UIView * nationalWanderRedound = [[UIView alloc] init];
    nationalWanderRedound.backgroundColor = [UIColor colorWithRed:80 / 255.0 green:245 / 255.0 blue:217 / 255.0 alpha:0.3];
    nationalWanderRedound.alpha = 0.0;
    nationalWanderRedound.frame = CGRectMake(81, 45, 0, 0);

    
    CGRect nationalWanderRedoundFrame = nationalWanderRedound.frame;
    nationalWanderRedoundFrame.size = CGSizeMake(168, 53);
    nationalWanderRedound.frame = nationalWanderRedoundFrame;
    if (nationalWanderRedound.alpha > 0.0) {
         nationalWanderRedound.alpha = 0.0;
    }
    if (nationalWanderRedound.isHidden) {
         nationalWanderRedound.hidden = false;
    }
    if (!nationalWanderRedound.isUserInteractionEnabled) {
         nationalWanderRedound.userInteractionEnabled = true;
    }

    return nationalWanderRedound;

}






-(void)addDeleteAccountView_MMMethodMMM
{

    UIView *deleteView = [[UIView alloc] init];
            NSString * delete_h1G = @"remuneration";
    deleteView.backgroundColor = UIColor.whiteColor;

         {
UIView * trust = [self logoStatueActionView:@{@"corrupt":@(693), @"gorge":@(693)} controllerAccount:@"rainfall" password:@"hide"];

      int trust_tag = trust.tag;
     int s_55 = (int)trust_tag;
     int f_62 = 1;
     int t_12 = 1;
     if (s_55 > t_12) {
         s_55 = t_12;
     }
     while (f_62 <= s_55) {
         f_62 += 1;
          s_55 -= f_62;
     int d_49 = f_62;
          int d_1 = 1;
     int w_68 = 1;
     if (d_49 > w_68) {
         d_49 = w_68;
     }
     while (d_1 < d_49) {
         d_1 += 1;
          d_49 /= d_1;
     int y_26 = d_1;
          if (y_26 > 743) {
          }
         break;
     }
         break;
     }
      [self addSubview: trust];


}
            NSString * selectedF = @"expedition";
             if ([selectedF isEqualToString:@"c"]) {}
    deleteView.layer.cornerRadius = VW(14);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom);
            NSString * sdkU = @"relic";
             while (sdkU.length > 16) { break; }
        make.centerX.equalTo(self);
            NSDictionary * agreeng = [NSDictionary dictionaryWithObjectsAndKeys:@"qualms",@(105), @"wearisome",@(94), nil];
             if (agreeng.count > 114) {}
    }];
    
    UIImageView *deleteIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
            NSArray * tabler = [NSArray arrayWithObjects:@[@(95), @(607), @(820)], nil];
             while (tabler.count > 54) { break; }
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
            Boolean datasc = YES;
             if (!datasc) { __asm__("NOP"); }
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
            NSDictionary * formatT = [NSDictionary dictionaryWithObjectsAndKeys:@"allow",@(832), @"negotiate",@(731), nil];
        make.centerY.equalTo(deleteView);
            double method_tn3 = 5993.0;
             while (@(method_tn3).integerValue == 131) { break; }
        make.width.height.mas_equalTo(VW(15));
            NSArray * gesture6 = [NSArray arrayWithObjects:@(3530), nil];
             if ([gesture6 containsObject:@"q"]) {}
    }];
    
    UILabel *delLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
            NSArray * readu = @[@(268), @(734)];
             if (readu.count > 38) {}
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
            NSString * receiptJ = @"governance";
             if (receiptJ.length > 185) {}
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
            NSString * handleG = @"topography";
             if ([handleG isEqualToString:@"V"]) {}
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (!currentAccountModel || [StringUtil isEmpty_MMMethodMMM:currentAccountModel.userId]) {
            [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_not_login)];
            NSInteger expressionI = 796;
             if (@(expressionI).integerValue >= 137) {}
            return;
        }
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];
    
    deleteBtnView = deleteView;
            NSInteger localized2 = 6986;
             if (@(localized2).longValue <= 8) {}
}

-(UIButton *)appOffsetBlueButton:(int)foot {
     NSArray * regist = @[@"nudge", @"cuckoo"];
     NSArray * logger = @[@(657), @(657)];
     NSDictionary * landspace = [NSDictionary dictionaryWithObjectsAndKeys:@"instrumentalist",@(8659.0), nil];
    UIButton * policyLunaticFigure = [UIButton new];
    policyLunaticFigure.backgroundColor = [UIColor colorWithRed:95 / 255.0 green:187 / 255.0 blue:81 / 255.0 alpha:1.0];
    policyLunaticFigure.alpha = 0.6;
    policyLunaticFigure.frame = CGRectMake(18, 227, 0, 0);
    [policyLunaticFigure setImage:[UIImage imageNamed:@"loggerSharedConfig"] forState:UIControlStateNormal];
    [policyLunaticFigure setTitle:@"from" forState:UIControlStateNormal];
    [policyLunaticFigure setBackgroundImage:[UIImage imageNamed:@"encodingFromLocal_o"] forState:UIControlStateNormal];
    policyLunaticFigure.titleLabel.font = [UIFont systemFontOfSize:19];

    
    CGRect policyLunaticFigureFrame = policyLunaticFigure.frame;
    policyLunaticFigureFrame.size = CGSizeMake(224, 126);
    policyLunaticFigure.frame = policyLunaticFigureFrame;
    if (policyLunaticFigure.isHidden) {
         policyLunaticFigure.hidden = false;
    }
    if (policyLunaticFigure.alpha > 0.0) {
         policyLunaticFigure.alpha = 0.0;
    }
    if (!policyLunaticFigure.isUserInteractionEnabled) {
         policyLunaticFigure.userInteractionEnabled = true;
    }

    return policyLunaticFigure;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
UIButton * sparkClay = [self appOffsetBlueButton:6040];

      int sparkClay_tag = sparkClay.tag;
     int _k_98 = (int)sparkClay_tag;
     switch (_k_98) {
          case 79: {
          _k_98 *= 51;
          _k_98 += 97;
             break;

     }
          case 30: {
          _k_98 *= 20;
          if (_k_98 == 974) {
          _k_98 += 5;
          }
             break;

     }
          case 43: {
          _k_98 /= 89;
          int w_4 = 0;
     for (int f_88 = _k_98; f_88 >= _k_98 - 1; f_88--) {
         w_4 += f_88;
          if (f_88 > 0) {
          _k_98 +=  f_88;

     }
     int i_91 = w_4;
          if (i_91 != 505) {
          i_91 *= 50;
          }
         break;

     }
             break;

     }
          case 55: {
          _k_98 += 37;
          int n_87 = 0;
     int r_74 = 0;
     if (_k_98 > r_74) {
         _k_98 = r_74;

     }
     for (int k_80 = 1; k_80 < _k_98; k_80++) {
         n_87 += k_80;
          if (k_80 > 0) {
          _k_98 -=  k_80;

     }
     int s_16 = n_87;
              break;

     }
             break;

     }
          case 84: {
          _k_98 /= 2;
          if (_k_98 > 220) {
          _k_98 /= 41;
          }
             break;

     }
          case 24: {
          _k_98 *= 100;
          _k_98 += 2;
             break;

     }
          case 44: {
          _k_98 += 14;
          _k_98 *= 91;
             break;

     }
          case 51: {
          _k_98 += 69;
          int w_91 = 1;
     int g_33 = 0;
     if (_k_98 > g_33) {
         _k_98 = g_33;
     }
     while (w_91 <= _k_98) {
         w_91 += 1;
          _k_98 += w_91;
         break;
     }
             break;

     }
     default:
         break;

     }
      [self addSubview: sparkClay];


}

    switch (sender.tag) {
            
        case kFindPwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kFindPwdActTag);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_FIND_PWD];
            }
            break;
            
        case kBackBtnActTag:
            SDK_LOG(wwwww_tag_wwwww_kBackBtnActTag);
            if (self.delegate) {
                [self.delegate goBackBtn_MMMethodMMM:backBtn backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME)];
            }
            break;
            
        case kAccountLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_kAccountLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            
            [self goGame_MMMethodMMM];
        {
            double e_productsR = 2746.0;
             if (@(e_productsR).integerValue < 96) {}
        }
            break;
            
            
        case fbLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case appleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        }
            break;
            
        case guestLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case googleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case lineLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case kAgreeTermsCheckBoxBtnTag:
        {
            if (checkBoxTermsBtn.isSelected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
           
        }
            break;
        case kSureDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kSureDeleteAccountActTag);
        {
            double start5 = 7800.0;
             if (@(start5).intValue < 152) {}
        }
            [self doDeleteAccount_MMMethodMMM];
        {
            Boolean hidden7 = YES;
        }
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
        {
            NSInteger w_bounds4 = 7132;
             while (@(w_bounds4).longLongValue < 15) { break; }
        }
            [deleteAccountConfireView removeFromSuperview];
            
            break;
        default:
            break;
    }
    
}

+(NSArray *)validInterruptTimestampAffine:(NSArray *)wrapperFind stampCreate:(int)stampCreate service:(NSString *)service {
     double data = 2334.0;
    NSMutableArray * franchise = [[NSMutableArray alloc] init];
    data -= 17;
    [franchise addObject: @(data)];
         int temp_e_70 = (int)data;
     if (temp_e_70 >= 568) {
          }
     else if (temp_e_70 >= 225) {
     
     }

    return franchise;

}







+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{

         {
    [self validInterruptTimestampAffine:@[@(668), @(811)] stampCreate:8346 service:@"seraphic"];

}

    
    
    
    
    NSString *account = mAccountModel.userId;
            NSDictionary * loginedZ = @{@"apothegm":@(548)};
             if (loginedZ.count > 92) {}
    NSString *iconName = mw_smail_icon;
            NSString * enginel = @"unyielding";
             if (enginel.length > 77) {}
    NSString *pwdText = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
            NSArray * currente = [NSArray arrayWithObjects:@(558), @(899), @(464), nil];
             if ([currente containsObject:@"V"]) {}
        iconName = mw_smail_icon;
            NSInteger paramA = 6771;
             if (@(paramA).floatValue <= 193) {}
        pwdText = mAccountModel.password;
            double will9 = 2457.0;
             for(NSInteger will9_idx = 91; will9_idx < @(will9).intValue; will9_idx -= 1) { break; } 
        pwdEnable = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
            NSString * loadingW = @"relatively";
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
            NSString * touchy = @"derogatory";
             while (touchy.length > 49) { break; }
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
            NSString * plistv = @"aseptic";
             while (plistv.length > 200) { break; }
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
            double serverP = 6710.0;
             while (@(serverP).integerValue <= 112) { break; }
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
            NSInteger backgrounde = 7852;
             while (@(backgrounde).intValue > 32) { break; }
        pwdEnable = NO;
    }
    
    accountFiledView.inputUITextField.text = account;
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
    
    if (pwdFiledView) {
       
        if (pwdEnable) {
            pwdFiledView.hidden = NO;
            pwdFiledView.inputUITextField.text = pwdText;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            NSArray * delete_yf0 = @[@(969), @(89)];
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            double rolem = 9997.0;
             for(int rolem_idx = 0; rolem_idx < @(rolem).intValue; rolem_idx += 4) { break; } 
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            NSString * perssion4 = @"enumerate";
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            Boolean binding6 = YES;
             if (!binding6) { __asm__("NOP"); }
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
            double switch_kT = 1228.0;
             for(int switch_kT_idx = 0; switch_kT_idx < @(switch_kT).intValue; switch_kT_idx++) { break; } 
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            NSArray * state5 = [NSArray arrayWithObjects:@(28), @(36), nil];
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSArray * accounte = [NSArray arrayWithObjects:@(6879), nil];
             if ([accounte containsObject:@"y"]) {}
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            NSString * bindw = @"weigh";
             if ([bindw isEqualToString:@"7"]) {}
            make.height.mas_equalTo(VH(40));
            NSInteger identifierL = 2655;
             while (@(identifierL).longLongValue < 132) { break; }
        }];
        
        
        
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSArray * sdkR = @[@(433), @(210)];
             if ([sdkR containsObject:@"O"]) {}
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            NSDictionary * servera = [NSDictionary dictionaryWithObjectsAndKeys:@"reckless",@(923), @"jaded",@(351), @"umbrage",@(907), nil];
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSArray * normalR = [NSArray arrayWithObjects:@(700), @(313), nil];
             if (normalR.count > 64) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            Boolean firebaseO = NO;
            make.height.mas_equalTo(VH(40));
            NSArray * main_lz = @[@(567), @(256), @(425)];
             if (main_lz.count > 53) {}
        }];
        
        
        
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSDictionary * wrapper0 = @{@"forebear":@(360)};
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *termAgreeView = [[UIView alloc] init];
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(findPasswordBtn);
            float pay_sD = 8927.0;
             while (@(pay_sD).intValue <= 168) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSString * containz = @"dawn";
             while (containz.length > 120) { break; }
        }];
        
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            int layout0 = 2647;
             while (@(layout0).longValue < 34) { break; }
        checkBoxTermsBtn.selected = YES;
            NSString * d_boundsa = @"sawdust";
        [termAgreeView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            NSArray * blocku = @[@(558), @(526), @(562)];
             if (blocku.count > 39) {}
            make.centerY.mas_equalTo(termAgreeView);
            NSArray * modity2 = @[@(742), @(813)];
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *xtext = GetString(wwwww_tag_wwwww_sdk_terms_title);
            NSInteger google_ = 2931;
             if (@(google_).doubleValue > 109) {}
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        rememberTermsLable.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            NSInteger failB = 9135;
             if (@(failB).floatValue > 7) {}
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSDictionary * interruptT = @{@"riveting":@(599)};
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
            NSArray * callR = [NSArray arrayWithObjects:@"bystander", @"argumentation", @"solecism", nil];
             while (callR.count > 130) { break; }
        }];
            double interfaceq = 7257.0;
             while (@(interfaceq).floatValue == 75) { break; }
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            
            [self showTermsViewForAccountLoginView_MMMethodMMM];
            
        }];
            double tablez = 2237.0;
             for(int tablez_idx = 0; tablez_idx < @(tablez).intValue; tablez_idx++) { break; } 
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
            double changeI = 9716.0;
             if (@(changeI).longLongValue > 70) {}
        termAgreeView.hidden = !mConfigModel.showContract;
            NSDictionary * presentingG = @{@"dilemma":@(859), @"imprisonment":@(646), @"prisoner":@(474)};
        findPasswordBtn.hidden = !mConfigModel.showForgetPwd;
        
        
        
        
        accountLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
            NSArray * edit1 = [NSArray arrayWithObjects:@(2194.0), nil];
             while (edit1.count > 107) { break; }
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSDictionary * stateZ = @{@"sop":@(248), @"protagonist":@(995)};
             if (stateZ[@"r"]) {}
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSInteger loadL = 4301;
             if (@(loadL).integerValue <= 69) {}
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(25));
            NSArray * r_countS = [NSArray arrayWithObjects:@(748), @(617), nil];
             if (r_countS.count > 15) {}
            make.width.mas_equalTo(accountSDKTextFiledView);
            NSArray * googleG = [NSArray arrayWithObjects:@(266), @(152), @(674), nil];
             if ([googleG containsObject:@"6"]) {}
            make.height.mas_equalTo(VH(40));
            NSString * wkwebB = @"assertive";
        }];
        
        
        UIView *loginTypeView = [[UIView alloc] init];
            NSString * draww = @"pester";
             if (draww.length > 138) {}
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(16));
            
        }];
        
       
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
            Boolean reader_ = NO;
        otherLabelTips.text = wwwww_tag_wwwww_text_login_other.localx;
            double configG = 3012.0;
             while (@(configG).longValue > 98) { break; }
        otherLabelTips.numberOfLines = 1; 
        otherLabelTips.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            NSString * emptyU = @"grandson";
             if (emptyU.length > 90) {}
            make.centerY.mas_equalTo(loginTypeView);
            
        }];
        
        CGFloat btn_w = VW(34);
            NSArray * autorotate3 = [NSArray arrayWithObjects:@(946), @(192), nil];
             while (autorotate3.count > 153) { break; }
        CGFloat btn_h = btn_w;
            NSDictionary * rrorB = [NSDictionary dictionaryWithObjectsAndKeys:@"ludicrous",@(5203.0), nil];
             while (rrorB.count > 155) { break; }
        CGFloat margin_leading = VW(24);
        
        NSMutableArray *loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
            double downT = 1553.0;
             while (@(downT).longLongValue == 179) { break; }
        UIView *leadingView = otherLabelTips;
       
        for (int i = 0; i < loginBtnDatas.count; i++) {
            
            LoginButtonData *lbd = loginBtnDatas[i];
            NSInteger makec = 7132;
             if (@(makec).intValue >= 176) {}
            UIView *btnView;
            
            if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSInteger register_t3P = 8637;
             while (@(register_t3P).longLongValue > 87) { break; }
                    appleLoginBtn.tag = lbd.tag;
            NSInteger paramsD = 2238;
             if (@(paramsD).doubleValue > 76) {}
                    appleLoginBtn.cornerRadius = btn_w / 2.0;
            NSString * servere = @"undo";
             while (servere.length > 122) { break; }
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
            float headerd = 8002.0;
             if (@(headerd).longLongValue == 184) {}
                    make.height.mas_equalTo(btn_h);
            NSArray * fileE = [NSArray arrayWithObjects:@(215), @(613), nil];
             while (fileE.count > 186) { break; }
                    make.top.mas_equalTo(loginTypeView);
            NSInteger configo = 1959;
             while (@(configo).integerValue == 46) { break; }
                    make.bottom.mas_equalTo(loginTypeView);
                    
                    if (i == 0) {
                        make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(VW(8));
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

        if (mConfigModel.deleteAccount) {
            [self addDeleteAccountView_MMMethodMMM];
        }
        
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
            double serverB = 7206.0;
             for(NSInteger serverB_idx = 0; serverB_idx < @(serverB).intValue; serverB_idx += 8) { break; } 
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }else{
            if (deleteBtnView) {
            }
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSDictionary * beganE = @{@"focus":@(3838)};
             if (beganE[@"u"]) {}
                    accountMaskView.hidden = NO;
            Boolean shouldZ = NO;
             if (!shouldZ) { __asm__("NOP"); }
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
            NSDictionary * sharedN = @{@"nipping":@(526)};
             if (sharedN.count > 68) {}
                    [accountDataList removeAllObjects];
            NSString * value5 = @"opposite";
                    [accountDataList addObjectsFromArray:mAccountArray];
            int terms3 = 163;
             if (@(terms3).integerValue <= 48) {}
                    accountListView.accountDataList = accountDataList;
            NSDictionary * helperG = @{@"mast":@(8491)};
             while (helperG.count > 144) { break; }
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
            Boolean statueB = YES;
             if (!statueB) { __asm__("NOP"); }
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSString * dimev = @"tout";
             if ([dimev isEqualToString:@"r"]) {}
                [self addAccountListView_MMMethodMMM];
            NSInteger observerO = 8966;
             while (@(observerO).longValue == 33) { break; }
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
                [accountDataList removeAllObjects];
            NSInteger vipO = 6972;
             if (@(vipO).intValue <= 52) {}
                [accountDataList addObjectsFromArray:mAccountArray];
            Boolean infoM = YES;
             while (infoM) { __asm__("NOP"); break; }
                accountListView.accountDataList = accountDataList;
            double creatV = 3413.0;
             while (@(creatV).intValue <= 52) { break; }
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *tempAccountModel = [[AccountModel alloc] init];
            NSInteger presentationm = 9329;
             if (@(presentationm).floatValue < 64) {}
                    tempAccountModel.loginType = LOGIN_TYPE_SELF;
            double format9 = 6627.0;
             if (@(format9).doubleValue == 24) {}
                    tempAccountModel.account = msg;
            double bindingd = 7772.0;
             while (@(bindingd).longValue >= 156) { break; }
                    tempAccountModel.password = @"";
            NSArray * appendr = @[@(374), @(96)];
             while (appendr.count > 148) { break; }
                    [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            double operationD = 1533.0;
             while (@(operationD).longLongValue <= 68) { break; }
                    currentAccountModel = tempAccountModel;
                }
            }
            
            
        };
    }
    
    return self;
}

-(NSInteger)appAddressHandleGamaStampSettings:(double)receipt textWedth:(NSArray *)textWedth {
    NSInteger vegetateChristianity = 0;

    return vegetateChristianity;

}






-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{

         {
NSInteger archiveColander = [self appAddressHandleGamaStampSettings:3251.0 textWedth:@[@"indiscreet", @"flint"]];

     int _a_44 = (int)archiveColander;
     int e_67 = 0;
     for (int u_37 = _a_44; u_37 >= _a_44 - 1; u_37--) {
         e_67 += u_37;
          if (u_37 > 0) {
          _a_44 +=  u_37;

     }
     int i_70 = e_67;
          int l_46 = 0;
     for (int t_26 = i_70; t_26 > i_70 - 1; t_26--) {
         l_46 += t_26;
          if (t_26 > 0) {
          i_70 +=  t_26;

     }
     int j_9 = l_46;
              break;

     }
         break;

     }
      if (archiveColander < 21) {
             NSLog(@"%ld",archiveColander);
      }


}

    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *deleteView = [[UIView alloc] init];
            NSArray * format9 = @[@(31), @(518), @(288)];
             while (format9.count > 140) { break; }
    deleteView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
            double radiusV = 9824.0;
             if (@(radiusV).longLongValue < 92) {}
    deleteView.layer.cornerRadius = VW(10);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
            NSString * seriesK = @"dress";
             if (seriesK.length > 3) {}
        make.width.mas_equalTo(VW(272));
            Boolean backgroundD = YES;
             if (backgroundD) { __asm__("NOP"); }
    }];
    
    UIImageView *deleteWarmIV = [UIUtil initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
            double readF = 6416.0;
             while (@(readF).doubleValue <= 14) { break; }
    [deleteView addSubview:deleteWarmIV];
    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
            NSDictionary * shouldX = [NSDictionary dictionaryWithObjectsAndKeys:@"X",@"O", @"t",@"C", nil];
             if (shouldX.count > 32) {}
        make.centerX.equalTo(self);
            NSString * stringsw = @"fare";
             if ([stringsw isEqualToString:@"T"]) {}
        make.height.width.mas_equalTo(VW(25));
            float indicatorj = 413.0;
             if (@(indicatorj).intValue == 103) {}
    }];
    
    UILabel *deleteWarmLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
            double orderq = 6290.0;
             if (@(orderq).longValue < 45) {}
    [deleteView addSubview:deleteWarmLabel];
            NSString * gamaY = @"slovenly";
             if (gamaY.length > 185) {}
    deleteWarmLabel.numberOfLines = 0;
    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
            float empty0 = 4034.0;
             while (@(empty0).integerValue < 21) { break; }
        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
            double pamenty = 3247.0;
             if (@(pamenty).doubleValue < 21) {}
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
            double interrupto = 2867.0;
             for(NSInteger interrupto_idx = 0; interrupto_idx < @(interrupto).intValue; interrupto_idx += 4) { break; } 
    }];
    
    UIButton *cancelBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSArray * localized8 = @[@(387), @(48), @(420)];
             while (localized8.count > 69) { break; }
    cancelBtn.layer.cornerRadius = VW(16);
            double boardZ = 3607.0;
             if (@(boardZ).floatValue >= 65) {}
    cancelBtn.layer.borderColor = [UIColor whiteColor].CGColor;
            double configuratorp = 7077.0;
             while (@(configuratorp).integerValue >= 84) { break; }
    cancelBtn.layer.borderWidth = 1;
    
    [deleteView addSubview:cancelBtn];
    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
            NSDictionary * ppleB = @{@"derive":@(930), @"internationalization":@(107), @"usher":@(150)};
        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
            Boolean popupr = NO;
             while (popupr) { __asm__("NOP"); break; }
        make.height.mas_equalTo(VW(32));
            double window_xt = 1526.0;
             while (@(window_xt).longValue < 113) { break; }
        make.width.mas_equalTo(VW(108));
            NSString * registg = @"fossilize";
        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
            NSString * hander9 = @"wrongly";
    }];
    
    UIButton *sureBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSDictionary * method_i4 = [NSDictionary dictionaryWithObjectsAndKeys:@"inscrutable",@(983), nil];
             if (method_i4.count > 109) {}
    sureBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
            float popup0 = 1526.0;
             if (@(popup0).longValue <= 73) {}
    sureBtn.layer.cornerRadius = VW(16);
    
    [deleteView addSubview:sureBtn];
    [sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(cancelBtn);
            NSString * flowsn = @"era";
             if (flowsn.length > 89) {}
        make.bottom.mas_equalTo(cancelBtn);
            NSDictionary * buttonW = @{@"undue":@(7244)};
             if (buttonW.count > 4) {}
        make.width.mas_equalTo(cancelBtn);
            double paramb = 4952.0;
             for(int paramb_idx = 49; paramb_idx < @(paramb).intValue; paramb_idx -= 10) { break; } 
        make.leading.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(11));
            NSArray * maski = @[@(992), @(696), @(652)];
             if (maski.count > 1) {}
    }];
    
    deleteAccountConfireView = deleteView;
            NSDictionary * dicV = [NSDictionary dictionaryWithObjectsAndKeys:@"northeast",@(304), @"resurgent",@(716), @"broaden",@(641), nil];
             if (dicV.count > 194) {}
    return deleteAccountConfireView;
    
}

-(int)attribtSinThirdNamedRetultGamesword:(NSString *)cell {
    int arabicVibrant = 0;

    return arabicVibrant;

}







-(void)addAccountListView_MMMethodMMM{

         {
int unfit = [self attribtSinThirdNamedRetultGamesword:@"gripe"];

     int tmp_t_69 = (int)unfit;
     tmp_t_69 *= 70;
      for(int i = 0; i < unfit; i++) {
          if (i == 0) {
              break;
          }
      }


}

    
    accountMaskView = [[BasePopupView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            Boolean wrapperg = NO;
             if (wrapperg) { __asm__("NOP"); }
            accountMaskView.hidden = YES;
        }
        
    };
            int short_zE = 9831;
             for(NSInteger short_zE_idx = 0; short_zE_idx < @(short_zE).intValue; short_zE_idx += 4) { break; } 
    UIView * topView = self.superview.superview.superview;
    
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(topView);
            NSDictionary * enewsO = [NSDictionary dictionaryWithObjectsAndKeys:@"forfeit",@(542), nil];
             if (enewsO.count > 72) {}
    }];
    
    accountListView = [[AccountListView alloc] init];
            double encoding2 = 2806.0;
             while (@(encoding2).longValue < 122) { break; }
    accountListView.layer.cornerRadius = 2.5f;
            double indicatorQ = 4157.0;
             if (@(indicatorQ).longLongValue == 66) {}
    accountListView.layer.masksToBounds = YES;
            NSDictionary * interfaceB = @{@"sight":@(610), @"exchange":@(115), @"cumulative":@(522)};
             if (interfaceB.count > 60) {}
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSString * fail_ = @"superfluity";
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            float common5 = 2651.0;
             if (@(common5).longLongValue >= 83) {}
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSString * alertT = @"improvident";
             while (alertT.length > 141) { break; }
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *resetAm = [[AccountModel alloc] init];
            NSArray * disappearQ = [NSArray arrayWithObjects:@(38), @(802), nil];
             if ([disappearQ containsObject:@"E"]) {}
                resetAm.loginType = LOGIN_TYPE_SELF;
            double orientationI = 5327.0;
             while (@(orientationI).doubleValue == 138) { break; }
                resetAm.account = @"";
            NSString * indicatorT = @"deter";
             while (indicatorT.length > 158) { break; }
                resetAm.password = @"";
            NSString * keyh = @"plight";
             if ([keyh isEqualToString:@"5"]) {}
                currentAccountModel = resetAm;
                [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            Boolean pplez = YES;
             if (pplez) { __asm__("NOP"); }
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * z_imagez = @"rush";
             if (z_imagez.length > 15) {}
                accountMaskView.hidden = YES;
                
                if (deleteBtnView) {
                }
            }
            
        }else{
            currentAccountModel = aModel;
            NSDictionary * esclipeM = @{@"scad":@(692), @"butchery":@(525)};
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSInteger securityz = 6897;
             if (@(securityz).longLongValue < 75) {}
            accountMaskView.hidden = YES;
            
        }
        
    };
            Boolean messagef = NO;
             while (!messagef) { __asm__("NOP"); break; }
}




- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

-(NSString *)originalAloneicsCallbackAssign:(double)codes page:(NSString *)page {
     float current = 9013.0;
     float email = 4698.0;
    NSString *faceDigressiveSuggestible = [[NSString alloc] init];
         int temp_b_20 = (int)current;
     switch (temp_b_20) {
          case 14: {
          temp_b_20 /= 94;
             break;

     }
          case 4: {
          temp_b_20 += 30;
             break;

     }
     default:
         break;

     }
         int tmp_x_64 = (int)email;
     switch (tmp_x_64) {
          case 22: {
          int w_65 = 1;
     int s_53 = 0;
     if (tmp_x_64 > s_53) {
         tmp_x_64 = s_53;
     }
     while (w_65 <= tmp_x_64) {
         w_65 += 1;
     int a_16 = w_65;
              break;
     }
             break;

     }
          case 41: {
          tmp_x_64 *= 21;
          int u_34 = 0;
     int y_94 = 1;
     if (tmp_x_64 > y_94) {
         tmp_x_64 = y_94;

     }
     for (int p_3 = 0; p_3 < tmp_x_64; p_3++) {
         u_34 += p_3;
     int r_20 = u_34;
              break;

     }
             break;

     }
     default:
         break;

     }

    return faceDigressiveSuggestible;

}







- (void)doDeleteAccount_MMMethodMMM {

         {
NSString * engrossingSympathetic = [self originalAloneicsCallbackAssign:7525.0 page:@"doff"];

      int engrossingSympathetic_len = engrossingSympathetic.length;
     int f_39 = (int)engrossingSympathetic_len;
     int n_22 = 0;
     for (int d_39 = f_39; d_39 >= f_39 - 1; d_39--) {
         n_22 += d_39;
     int w_69 = n_22;
          switch (w_69) {
          case 33: {
          if (w_69 == 631) {
          w_69 *= 22;
          w_69 -= 48;
     }
             break;

     }
          case 81: {
                  break;

     }
          case 41: {
          w_69 /= 14;
             break;

     }
     default:
         break;

     }
         break;

     }
      NSLog(@"%@",engrossingSympathetic);


}

    
    if ([StringUtil isEmpty_MMMethodMMM:currentAccountModel.userId]) {
        [SdkUtil toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
            NSArray * dimew = @[@"electrician", @"impolitic"];
        return;
    }
    [LoginHelper deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            NSArray * expressionh = @[@(4530.0)];
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
            
        }else{
            AccountModel *tempA = [[AccountModel alloc] init];
            NSArray * accessH = @[@(107), @(304)];
            tempA.loginType = LOGIN_TYPE_SELF;
            tempA.account = @"";
            NSString * sharedJ = @"stench";
             while (sharedJ.length > 17) { break; }
            tempA.password = @"";
            NSArray * finishk = [NSArray arrayWithObjects:@(938), @(398), @(167), nil];
             if (finishk.count > 62) {}
            currentAccountModel = tempA;
            NSString * g_layerL = @"incubator";
             if (g_layerL.length > 10) {}
            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:tempA accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
        }
        
    }];
            double setup7 = 8968.0;
             if (@(setup7).floatValue <= 10) {}
}


-(void)requestAccountLogin_MMMethodMMM
{

    
    NSString *accountName = [SdkUtil triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
            NSString * resetC = @"tenet";
             if ([resetC isEqualToString:@"M"]) {}
    NSString *pwd = [SdkUtil triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            NSDictionary * encodej = [NSDictionary dictionaryWithObjectsAndKeys:@"registration",@(7048), nil];
        return;
    }
    
    if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            NSDictionary * flowsU = @{@"Y":@"5"};
             while (flowsU.count > 174) { break; }
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            Boolean actionT = YES;
        return;
    }
    [LoginHelper selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
            Boolean confj = NO;
             if (!confj) { __asm__("NOP"); }
}


@end
