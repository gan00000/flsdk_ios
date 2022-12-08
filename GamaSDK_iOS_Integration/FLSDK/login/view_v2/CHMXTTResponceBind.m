
#import "CHMXTTResponceBind.h"
#import "CHMXTTStringView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTHourCell.h"
#import "CHMXTTCore.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "CHMXTTRegister.h"
#import "CHMXTTLocal.h"
#import "CHMXTTAccount.h"
#import "CHMXTTHelperButton.h"
#import <AuthenticationServices/AuthenticationServices.h>
#import "CHMXTTErvice.h"
#import "CHMXTTEncodingLineView.h"
#import "CHMXTTModeUtilView.h"
#import "CHMXTTGamaCore.h"
#import "LoginButtonData.h"
#import "CHMXTTConfig.h"
#import "CHMXTTHeaderLoggerView.h"

@interface CHMXTTResponceBind()



@property(nonatomic, assign)double  regularMax;
@property(nonatomic, assign)float  pament_padding;
@property(nonatomic, assign)int  logout_flag;


@end

@implementation CHMXTTResponceBind
{
    CHMXTTServiceTermsView *passwordSDKTextFiledView;
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    
    NSMutableArray<AccountModel *>  *accountDataList;
    
    UIButton *checkBoxTermsBtn;
    
    CHMXTTErvice *gamaAppleLogin;
    
    BOOL isAgree;
    
    AccountModel *currentAccountModel;
    
    CHMXTTModeUtilView *accountListView;
    CHMXTTHeaderLoggerView *accountMaskView;
    
    UIView *deleteAccountConfireView;
    UIView *deleteBtnView;
}

-(UIButton *)beforeTerlessGetterButton{
     NSArray * with_pt = @[@(367), @(177), @(234)];
     NSDictionary * chang = [NSDictionary dictionaryWithObjectsAndKeys:@"audience",@(455), @"torrential",@(267), nil];
     NSString * jsonFramework = @"synopsis";
     NSArray * delegate_nfText = @[[NSArray arrayWithObjects:@"abstract", @"incorrect", nil]];
    UIButton * moderateTurncoat = [[UIButton alloc] initWithFrame:CGRectMake(72, 388, 0, 0)];
    moderateTurncoat.frame = CGRectMake(49, 284, 0, 0);
    moderateTurncoat.alpha = 0.1;
    moderateTurncoat.backgroundColor = [UIColor colorWithRed:105 / 255.0 green:195 / 255.0 blue:207 / 255.0 alpha:0.8];
    [moderateTurncoat setBackgroundImage:[UIImage imageNamed:@"portraitConfiguratorMake"] forState:UIControlStateNormal];
    moderateTurncoat.titleLabel.font = [UIFont systemFontOfSize:19];
    [moderateTurncoat setImage:[UIImage imageNamed:@"self_f2ForwardMobile"] forState:UIControlStateNormal];
    [moderateTurncoat setTitle:@"sdkRegistConfig" forState:UIControlStateNormal];

    
    CGRect moderateTurncoatFrame = moderateTurncoat.frame;
    moderateTurncoatFrame.size = CGSizeMake(214, 107);
    moderateTurncoat.frame = moderateTurncoatFrame;
    if (moderateTurncoat.isHidden) {
         moderateTurncoat.hidden = false;
    }
    if (moderateTurncoat.alpha > 0.0) {
         moderateTurncoat.alpha = 0.0;
    }
    if (!moderateTurncoat.isUserInteractionEnabled) {
         moderateTurncoat.userInteractionEnabled = true;
    }

    return moderateTurncoat;

}







- (void)doDeleteAccount_MMMethodMMM {

         {
UIButton * enclaveThermal = [self beforeTerlessGetterButton];

      int enclaveThermal_tag = enclaveThermal.tag;
     int b_30 = (int)enclaveThermal_tag;
     b_30 -= 96;
      [self addSubview: enclaveThermal];


}

    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:currentAccountModel.userId]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
            NSDictionary * responceF = [NSDictionary dictionaryWithObjectsAndKeys:@"psychology",@(9064), nil];
             while (responceF.count > 66) { break; }
        return;
    }
    [CHMXTTAccount deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            NSString * activeP = @"irrational";
             if (activeP.length > 192) {}
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
            
        }else{
            AccountModel *login1 = [[AccountModel alloc] init];
            NSInteger local___H = 1935;
             if (@(local___H).integerValue >= 191) {}
            login1.loginType = LOGIN_TYPE_SELF;
            NSString * respZ = @"agony";
             if (respZ.length > 200) {}
            login1.account = @"";
            double loggerR = 7947.0;
             if (@(loggerR).integerValue == 99) {}
            login1.password = @"";
            NSDictionary * wrappere = [NSDictionary dictionaryWithObjectsAndKeys:@"prone",@(7895.0), nil];
             if (wrappere.count > 20) {}
            currentAccountModel = login1;
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:login1 accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
        }
        
    }];
            float areai = 5570.0;
             if (@(areai).floatValue < 108) {}
}

-(long)multipliedReloadMoreFontsizeMislessOrder:(NSString *)should base:(long)base {
     double pay_mModel = 8635.0;
    long filigreeQuayEffort = 0;
    pay_mModel = pay_mModel;
    filigreeQuayEffort /= MAX(pay_mModel, 1);
         int _u_24 = (int)pay_mModel;
     int t_81 = 0;
     int t_66 = 0;
     if (_u_24 > t_66) {
         _u_24 = t_66;

     }
     for (int b_40 = 1; b_40 <= _u_24; b_40++) {
         t_81 += b_40;
     int m_8 = t_81;
          int e_28 = 1;
     int v_5 = 1;
     if (m_8 > v_5) {
         m_8 = v_5;
     }
     while (e_28 <= m_8) {
         e_28 += 1;
          m_8 -= e_28;
          m_8 -= 72;
         break;
     }
         break;

     }

    return filigreeQuayEffort;

}






-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{

         {
long communicativeWeed = [self multipliedReloadMoreFontsizeMislessOrder:@"gambol" base:47];

      NSLog(@"%ld",communicativeWeed);
     int _y_76 = (int)communicativeWeed;
     _y_76 += 83;


}

    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *editingView = [[UIView alloc] init];
            int servicef = 518;
             while (@(servicef).longLongValue > 15) { break; }
    editingView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
            NSDictionary * gestureR = @{@"mediocrity":@(677), @"division":@(921), @"pillage":@(862)};
             while (gestureR.count > 184) { break; }
    editingView.layer.cornerRadius = VW(10);
    
    [self addSubview:editingView];
    
    [editingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
            NSArray * iconj = @[@(636), @(327), @(291)];
        make.width.mas_equalTo(VW(272));
            float controlleru = 1508.0;
             while (@(controlleru).longValue == 103) { break; }
    }];
    
    UIImageView *genericView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
    [editingView addSubview:genericView];
    [genericView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(editingView).mas_offset(VH(12));
            double rrorA = 8191.0;
             while (@(rrorA).doubleValue == 62) { break; }
        make.centerX.equalTo(self);
            double self_0ag = 208.0;
             for(int self_0ag_idx = 39; self_0ag_idx < @(self_0ag).intValue; self_0ag_idx--) { break; } 
        make.height.width.mas_equalTo(VW(25));
            NSString * readw = @"fence";
             if ([readw isEqualToString:@"G"]) {}
    }];
    
    UILabel *radiusLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
            Boolean pageq = NO;
             if (pageq) { __asm__("NOP"); }
    [editingView addSubview:radiusLabel];
            int pay_vr = 8586;
             for(int pay_vr_idx = 0; pay_vr_idx < @(pay_vr).intValue; pay_vr_idx++) { break; } 
    radiusLabel.numberOfLines = 0;
    [radiusLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(genericView.mas_bottom).mas_offset(VH(10));
            double jsont = 1590.0;
             for(int jsont_idx = 0; jsont_idx < @(jsont).intValue; jsont_idx += 6) { break; } 
        make.leading.mas_equalTo(editingView).mas_offset(VW(14));
            NSString * with__p0 = @"allocate";
             if (with__p0.length > 7) {}
        make.trailing.mas_equalTo(editingView).mas_offset(VW(-14));
            NSDictionary * pplez = @{@"porous":@(758), @"wig":@(920), @"commendable":@(92)};
             if (pplez[@"z"]) {}
    }];
    
    UIButton *projectBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSInteger welcomef = 9530;
             if (@(welcomef).longValue == 34) {}
    projectBtn.layer.cornerRadius = VW(16);
            float bindt = 2338.0;
             if (@(bindt).integerValue == 172) {}
    projectBtn.layer.borderColor = [UIColor whiteColor].CGColor;
            NSArray * private_pL = @[@(162), @(551), @(744)];
             while (private_pL.count > 105) { break; }
    projectBtn.layer.borderWidth = 1;
    
    [editingView addSubview:projectBtn];
    [projectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(radiusLabel.mas_bottom).mas_offset(VH(18));
            NSDictionary * pay_pY = @{@"k":@"m", @"G":@"C", @"p":@"e"};
             if (pay_pY.count > 122) {}
        make.bottom.mas_equalTo(editingView).mas_offset(VH(-18));
            Boolean pay_9xa = NO;
             if (pay_9xa) { __asm__("NOP"); }
        make.height.mas_equalTo(VW(32));
            NSDictionary * eventG = @{@"9":@"0", @"b":@"d", @"z":@"s"};
        make.width.mas_equalTo(VW(108));
        make.trailing.mas_equalTo(editingView.mas_centerX).mas_offset(VW(-11));
            double query1 = 4666.0;
             for(int query1_idx = 0; query1_idx < @(query1).intValue; query1_idx += 2) { break; } 
    }];
    
    UIButton *totalBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSArray * uploadU = [NSArray arrayWithObjects:@(112), nil];
             if ([uploadU containsObject:@"G"]) {}
    totalBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
            int errorW = 19;
             for(NSInteger errorW_idx = 0; errorW_idx < @(errorW).intValue; errorW_idx++) { break; } 
    totalBtn.layer.cornerRadius = VW(16);
    
    [editingView addSubview:totalBtn];
    [totalBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(projectBtn);
            NSString * frame_9J = @"metropolis";
             if ([frame_9J isEqualToString:@"z"]) {}
        make.bottom.mas_equalTo(projectBtn);
            NSInteger type_5h = 4967;
             while (@(type_5h).longLongValue < 151) { break; }
        make.width.mas_equalTo(projectBtn);
            NSString * models8 = @"accrued";
             if ([models8 isEqualToString:@"H"]) {}
        make.leading.mas_equalTo(editingView.mas_centerX).mas_offset(VW(11));
    }];
    
    deleteAccountConfireView = editingView;
            Boolean supported7 = YES;
             while (!supported7) { __asm__("NOP"); break; }
    return deleteAccountConfireView;
    
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

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
            double queuew = 9289.0;
             if (@(queuew).integerValue <= 94) {}
        }
            break;
            
            
        case fbLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case appleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        }
            break;
            
        case guestLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case googleLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        }
            break;
        case lineLoginActTag:
        {
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
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
        }
            [self doDeleteAccount_MMMethodMMM];
        {
            Boolean type_k0 = NO;
        }
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
        {
            int updata8 = 4102;
             if (@(updata8).floatValue > 195) {}
        }
            [deleteAccountConfireView removeFromSuperview];
            
            break;
        default:
            break;
    }
    
}

-(NSArray *)convertBeginsAutoreleaseMatch:(float)system codes:(Boolean)codes read:(NSArray *)read {
    NSMutableArray * formidableFlatter = [NSMutableArray arrayWithCapacity:351];

    return formidableFlatter;

}






-(BOOL)checkAgreeTerm_MMMethodMMM
{

         {
NSArray * derelictLanded = [self convertBeginsAutoreleaseMatch:5488.0 codes:YES read:[NSArray arrayWithObjects:@(220), @(151), nil]];

      int derelictLanded_len = derelictLanded.count;
     int temp_u_12 = (int)derelictLanded_len;
     temp_u_12 /= 7;
      [derelictLanded enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx >= 34) {
              NSLog(@"mobileConfigHide:%@", obj);
        }
      }];


}

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    [self showTermsViewForAccountLoginView_MMMethodMMM];
            NSArray * lineI = @[@(1274)];
             if ([lineI containsObject:@"H"]) {}
    return NO;
}

-(long)highlightedMibComponent:(Boolean)securityHeader {
     double informationGeneric = 624.0;
     long email = 680;
     int rate = 7432;
    long auctionRestricted = 0;
    informationGeneric *= 93;
    auctionRestricted /= MAX(informationGeneric, 1);
         int tmp_q_74 = (int)informationGeneric;
     if (tmp_q_74 >= 905) {
          switch (tmp_q_74) {
          case 87: {
          tmp_q_74 /= 97;
                  break;

     }
          case 67: {
          tmp_q_74 -= 61;
          tmp_q_74 /= 52;
             break;

     }
          case 89: {
          tmp_q_74 -= 47;
          if (tmp_q_74 <= 994) {
          tmp_q_74 /= 98;
          }
             break;

     }
          case 30: {
                  break;

     }
     default:
         break;

     }
     }
    email = 4923;
    auctionRestricted -= email;
         int temp_s_17 = (int)email;
     switch (temp_s_17) {
          case 53: {
          temp_s_17 /= 78;
          temp_s_17 -= 84;
             break;

     }
          case 46: {
          temp_s_17 += 31;
          int m_92 = 1;
     int r_95 = 0;
     if (temp_s_17 > r_95) {
         temp_s_17 = r_95;
     }
     while (m_92 < temp_s_17) {
         m_92 += 1;
          temp_s_17 *= m_92;
         break;
     }
             break;

     }
          case 16: {
          temp_s_17 -= 73;
          int u_49 = 0;
     int n_100 = 0;
     if (temp_s_17 > n_100) {
         temp_s_17 = n_100;

     }
     for (int k_0 = 0; k_0 < temp_s_17; k_0++) {
         u_49 += k_0;
          temp_s_17 += k_0;
         break;

     }
             break;

     }
          case 6: {
          int p_89 = 1;
     int l_95 = 0;
     if (temp_s_17 > l_95) {
         temp_s_17 = l_95;
     }
     while (p_89 <= temp_s_17) {
         p_89 += 1;
          temp_s_17 -= p_89;
              break;
     }
             break;

     }
     default:
         break;

     }
    rate = rate;
    auctionRestricted /= MAX(rate, 1);

    return auctionRestricted;

}







-(void)requestAccountLogin_MMMethodMMM
{

    
    NSString *reset = [CHMXTTRegister triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
            NSString * rrorf = @"fiber";

         {
long sunflower = [self highlightedMibComponent:NO];

      NSLog(@"%ld",sunflower);
     int temp_z_37 = (int)sunflower;
     int b_63 = 0;
     for (int m_62 = temp_z_37; m_62 >= temp_z_37 - 1; m_62--) {
         b_63 += m_62;
          if (m_62 > 0) {
          temp_z_37 +=  m_62;

     }
     int r_93 = b_63;
          if (r_93 != 336) {
          if (r_93 >= 558) {
          }
     }
         break;

     }


}
             if (rrorf.length > 172) {}
    NSString *began = [CHMXTTRegister triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!reset || [reset isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            int writei = 9360;
             while (@(writei).integerValue < 190) { break; }
        return;
    }
    
    if (![CHMXTTRegister validUserName_MMMethodMMM:reset]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            NSString * responceS = @"pestle";
             if (responceS.length > 122) {}
        return;
    }
    
    if (!began || [began isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            NSString * series3 = @"myopia";
             while (series3.length > 188) { break; }
        return;
    }
    [CHMXTTAccount selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:reset pwd_MMMethodMMM:began];
            NSInteger emptyv = 4912;
             while (@(emptyv).integerValue <= 24) { break; }
}



- (instancetype)initView_MMMethodMMM
{
   self.regularMax = 2771.0;

   self.pament_padding = 5401.0;

   self.logout_flag = 8760;

   self.dataIdx = 3560;

   self.transactionsStr = @"satirical";

   self.efault_str = @"casual";

    self = [super init];
    if (self) {
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * editing5 = @"storey";
             if ([editing5 isEqualToString:@"2"]) {}
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
            float seriesm = 5602.0;
             if (@(seriesm).floatValue <= 11) {}
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSArray * type_dY = @[@(672), @(881)];
             while (type_dY.count > 177) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            NSInteger interruptu = 3435;
             if (@(interruptu).floatValue == 124) {}
            make.height.mas_equalTo(VH(40));
            NSDictionary * loginM = [NSDictionary dictionaryWithObjectsAndKeys:@"despair",@(68), nil];
             if (loginM.count > 102) {}
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            Boolean moreg = YES;
             while (moreg) { __asm__("NOP"); break; }
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
            Boolean short_h1 = NO;
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            float j_object9 = 3177.0;
             if (@(j_object9).floatValue >= 75) {}
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSArray * interruptk = @[@(343), @(897), @(311)];
             if ([interruptk containsObject:@"E"]) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSString * binding_ = @"enemy";
             if (binding_.length > 34) {}
            make.height.mas_equalTo(VH(40));
            double confireT = 7101.0;
             if (@(confireT).longValue < 81) {}
        }];
        
        
        
        
        UIButton *encodingBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:encodingBtn];
        [encodingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            double valueU = 1464.0;
             if (@(valueU).integerValue <= 198) {}
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *postView = [[UIView alloc] init];
            NSDictionary * basec = @{@"rich":@(479), @"electrical":@(996), @"fashion":@(497)};
             while (basec.count > 37) { break; }
        [self addSubview:postView];
        [postView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(encodingBtn);
            float auto_1dO = 1801.0;
             while (@(auto_1dO).longLongValue < 57) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView);
            float phonea = 2624.0;
             if (@(phonea).longValue < 34) {}
        }];
        
        checkBoxTermsBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        checkBoxTermsBtn.selected = YES;
            double thirds = 2762.0;
             if (@(thirds).integerValue < 96) {}
        [postView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(postView);
            NSString * line9 = @"perfidy";
             if ([line9 isEqualToString:@"j"]) {}
            make.centerY.mas_equalTo(postView);
            NSArray * success9 = @[@(4746)];
             while (success9.count > 15) { break; }
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *progress = GetString(wwwww_tag_wwwww_sdk_terms_title);
            NSString * sharedi = @"mix";
             if (sharedi.length > 116) {}
        UILabel *parse = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:progress fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        parse.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [postView addSubview:parse];
        [parse mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(postView);
            NSDictionary * confiree = [NSDictionary dictionaryWithObjectsAndKeys:@"anyhow",@(9104.0), nil];
             while (confiree.count > 96) { break; }
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSDictionary * firebaseN = [NSDictionary dictionaryWithObjectsAndKeys:@"intrude",@(542), @"solution",@(778), nil];
            make.trailing.mas_equalTo(postView.mas_trailing);
            NSString * guest7 = @"quantitative";
        }];
        parse.userInteractionEnabled=YES;
        [parse addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            
            [self showTermsViewForAccountLoginView_MMMethodMMM];
            
        }];
            NSDictionary * passworda = [NSDictionary dictionaryWithObjectsAndKeys:@"solve",@(3280), nil];
        ConfigModel *http = SDK_DATA.mConfigModel;
            float dataB = 1778.0;
             while (@(dataB).longLongValue < 83) { break; }
        postView.hidden = !http.showContract;
            NSDictionary * confl = [NSDictionary dictionaryWithObjectsAndKeys:@"cheap",@(669), @"uniformity",@(233), nil];
             if (confl.count > 192) {}
        encodingBtn.hidden = !http.showForgetPwd;
        
        
        
        
        accountLoginBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
            NSDictionary * touchD = @{@"J":@"K", @"I":@"T", @"l":@"e"};
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSArray * basem = [NSArray arrayWithObjects:@(8132), nil];
             if ([basem containsObject:@"0"]) {}
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSArray * localxg = [NSArray arrayWithObjects:@(371), @(830), nil];
             while (localxg.count > 152) { break; }
            make.top.equalTo(encodingBtn.mas_bottom).mas_offset(VH(25));
            NSString * vipL = @"halt";
             while (vipL.length > 143) { break; }
            make.width.mas_equalTo(accountSDKTextFiledView);
            NSInteger httpU = 4571;
             for(NSInteger httpU_idx = 0; httpU_idx < @(httpU).intValue; httpU_idx += 4) { break; } 
            make.height.mas_equalTo(VH(40));
            int filedH = 4385;
             if (@(filedH).floatValue >= 27) {}
        }];
        
        
        UIView *homeView = [[UIView alloc] init];
            NSString * checkE = @"clam";
             if (checkE.length > 44) {}
        [self addSubview:homeView];
        [homeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(16));
            
        }];
        
       
        UILabel *input2 = [[UILabel alloc] init];
        input2.font = [UIFont systemFontOfSize:FS(11)];
            NSInteger m_centerG = 7878;
             if (@(m_centerG).integerValue <= 75) {}
        input2.text = wwwww_tag_wwwww_text_login_other.localx;
            NSArray * completerE = @[@(6902)];
             if (completerE.count > 120) {}
        input2.numberOfLines = 1; 
        input2.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [homeView addSubview:input2];
        [input2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(homeView.mas_leading);
            NSArray * commonU = [NSArray arrayWithObjects:@(4086), nil];
            make.centerY.mas_equalTo(homeView);
            
        }];
        
        CGFloat rate = VW(34);
            NSString * local_rB = @"cloud";
             if ([local_rB isEqualToString:@"y"]) {}
        CGFloat landscape = rate;
            NSDictionary * rolej = [NSDictionary dictionaryWithObjectsAndKeys:@"s",@"J", @"i",@"B", nil];
        CGFloat mask = VW(24);
        
        NSMutableArray *idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
            NSArray * nameb = [NSArray arrayWithObjects:@(465), @(427), @(644), nil];
             if ([nameb containsObject:@"w"]) {}
        UIView *with_7View = input2;
       
        for (int i = 0; i < idfaQE.count; i++) {
            
            LoginButtonData *removeL = idfaQE[i];
            UIView *seedView;
            
            if ([removeL.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            double moreq = 3042.0;
             if (@(moreq).doubleValue <= 14) {}
                    x_titleBtn.tag = removeL.tag;
            NSDictionary * touchesk = @{@"g":@"X"};
                    x_titleBtn.cornerRadius = rate / 2.0;
            NSDictionary * keyc = @{@"sizzler":@(376)};
             while (keyc.count > 34) { break; }
                    seedView = x_titleBtn;
                }
                
            }else{
                
                CHMXTTHelperButton *labelBtn = [[CHMXTTHelperButton alloc] initWithType_MMMethodMMM:removeL.tag title_MMMethodMMM:@"" image_MMMethodMMM:removeL.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
                
                seedView = labelBtn;
            }
            
            if (seedView) {
                
                [homeView addSubview:seedView];
                [seedView mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.width.mas_equalTo(rate);
            double changedX = 3462.0;
             if (@(changedX).doubleValue >= 193) {}
                    make.height.mas_equalTo(landscape);
            NSInteger bindK = 1158;
             if (@(bindK).doubleValue > 106) {}
                    make.top.mas_equalTo(homeView);
            double containI = 6029.0;
             if (@(containI).intValue <= 199) {}
                    make.bottom.mas_equalTo(homeView);
                    
                    if (i == 0) {
                        make.leading.mas_equalTo(with_7View.mas_trailing).mas_offset(VW(8));
                    }else{
                        make.leading.mas_equalTo(with_7View.mas_trailing).mas_offset(mask);
                    }
                    if (i == idfaQE.count - 1) {
                        make.trailing.mas_equalTo(homeView);
                    }
                }];
                
                with_7View = seedView;
                
            }
            
            
        }

        if (http.deleteAccount) {
            [self addDeleteAccountView_MMMethodMMM];
        }
        
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
            NSDictionary * moved9 = @{@"lout":@(863), @"recuperate":@(171)};
             if (moved9[@"d"]) {}
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }else{
            if (deleteBtnView) {
                deleteBtnView.hidden = YES;
            }
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
            float auto_7e_ = 6870.0;
             while (@(auto_7e_).longValue >= 162) { break; }
                    accountMaskView.hidden = NO;
            double pagej = 2597.0;
             while (@(pagej).longLongValue >= 76) { break; }
                    NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSDictionary * purchasew = @{@"misfortune":@(352), @"specter":@(799), @"head":@(533)};
             if (purchasew[@"O"]) {}
                    [accountDataList removeAllObjects];
            NSInteger handleW = 4425;
             if (@(handleW).doubleValue <= 85) {}
                    [accountDataList addObjectsFromArray:game];
            NSArray * data7 = @[@(767), @(676)];
             if ([data7 containsObject:@"z"]) {}
                    accountListView.accountDataList = accountDataList;
            NSString * modeO = @"donation";
             if ([modeO isEqualToString:@"m"]) {}
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * rroru = @"fuck";
             if ([rroru isEqualToString:@"Z"]) {}
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSDictionary * qnewsp = @{@"inferiority":@(376), @"human":@(612)};
             if (qnewsp[@"y"]) {}
                [self addAccountListView_MMMethodMMM];
            NSArray * gamaw = [NSArray arrayWithObjects:@(2559), nil];
                NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSString * wrapperA = @"detoxicate";
             if (wrapperA.length > 150) {}
                [accountDataList removeAllObjects];
            NSDictionary * cell3 = @{@"am":@(900), @"doublecross":@(499), @"fulfill":@(169)};
             if (cell3[@"q"]) {}
                [accountDataList addObjectsFromArray:game];
            NSString * wrapperf = @"those";
             while (wrapperf.length > 23) { break; }
                accountListView.accountDataList = accountDataList;
            double configA = 4927.0;
             if (@(configA).integerValue < 102) {}
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *notification = [[AccountModel alloc] init];
            double appkeyj = 4104.0;
             if (@(appkeyj).longValue < 145) {}
                    notification.loginType = LOGIN_TYPE_SELF;
            NSInteger maskv = 7029;
             if (@(maskv).doubleValue < 93) {}
                    notification.account = msg;
            NSString * closeo = @"firefly";
                    notification.password = @"";
            NSDictionary * pple8 = [NSDictionary dictionaryWithObjectsAndKeys:@"straightforwardness",@(6088), nil];
             if (pple8.count > 190) {}
                    [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            double btnK = 5190.0;
             while (@(btnK).doubleValue == 87) { break; }
                    currentAccountModel = notification;
                }
            }
            
            
        };
    }
    
    return self;
}

+(NSDictionary *)lprojIndicatorClearDesBridgeProducts:(NSArray *)model {
    NSMutableDictionary * distributionSomnolent = [NSMutableDictionary dictionary];

    return distributionSomnolent;

}






+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(CHMXTTServiceTermsView *)accountFiledView pwdView_MMMethodMMM:(CHMXTTServiceTermsView *)pwdFiledView{

         {
    [self lprojIndicatorClearDesBridgeProducts:[NSArray arrayWithObjects:@(173), @(360), @(346), nil]];

}

    
    
    
    
    NSString *helper = mAccountModel.userId;
            NSDictionary * progressw = [NSDictionary dictionaryWithObjectsAndKeys:@"thereof",@(124), @"possessed",@(29), nil];
             if (progressw[@"J"]) {}
    NSString *time_yo = mw_smail_icon;
            float labelg = 6590.0;
             while (@(labelg).longLongValue == 111) { break; }
    NSString *btn = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL localx = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helper = mAccountModel.account;
        time_yo = mw_smail_icon;
            double gamef = 2496.0;
             while (@(gamef).longLongValue < 115) { break; }
        btn = mAccountModel.password;
            int m_managerB = 9548;
             while (@(m_managerB).doubleValue <= 160) { break; }
        localx = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
            NSString * btnB = @"stormy";
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
            double errorQ = 269.0;
             for(int errorQ_idx = 30; errorQ_idx < @(errorQ).intValue; errorQ_idx--) { break; } 
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
            int implo = 8950;
             while (@(implo).longValue == 22) { break; }
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
            NSInteger uncompleteX = 4341;
             if (@(uncompleteX).floatValue < 118) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
            NSDictionary * q_title7 = @{@"experimentation":@(519), @"compile":@(722), @"blind":@(280)};
        localx = NO;
    }
    
    accountFiledView.inputUITextField.text = helper;
            NSArray * seriesm = [NSArray arrayWithObjects:@"wrap", @"rotary", @"during", nil];
             if (seriesm.count > 156) {}
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
    
    if (pwdFiledView) {
       
        if (localx) {
            pwdFiledView.hidden = NO;
            double n_counta = 7341.0;
             while (@(n_counta).floatValue == 13) { break; }
            pwdFiledView.inputUITextField.text = btn;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            double encoding3 = 2305.0;
             while (@(encoding3).longLongValue >= 134) { break; }
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSDictionary * dictionaryh = [NSDictionary dictionaryWithObjectsAndKeys:@"hers",@(930), nil];
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            float implx = 8771.0;
             if (@(implx).doubleValue < 38) {}
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

-(NSDictionary *)gameProductsExampleage{
    NSMutableDictionary * cabalStraitsSneakers = [NSMutableDictionary dictionaryWithObject:@(783)forKey:@"infectDepreciationPrecipitous"];

    return cabalStraitsSneakers;

}







-(void)addAccountListView_MMMethodMMM{

         {
NSDictionary * cycloneSparse = [self gameProductsExampleage];

      int cycloneSparse_len = cycloneSparse.count;
     int _j_7 = (int)cycloneSparse_len;
     switch (_j_7) {
          case 90: {
          if (_j_7 == 681) {
          _j_7 *= 90;
          }
             break;

     }
          case 16: {
          _j_7 *= 48;
          int m_31 = 1;
     int b_42 = 1;
     if (_j_7 > b_42) {
         _j_7 = b_42;
     }
     while (m_31 < _j_7) {
         m_31 += 1;
          _j_7 /= m_31;
          _j_7 += 9;
         break;
     }
             break;

     }
     default:
         break;

     }
      [cycloneSparse enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"l_count"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}

    
    accountMaskView = [[CHMXTTHeaderLoggerView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSArray * namek = [NSArray arrayWithObjects:@(758), @(89), nil];
             if (namek.count > 25) {}
            accountMaskView.hidden = YES;
        }
        
    };
            float type_t7U = 2017.0;
             for(int type_t7U_idx = 45; type_t7U_idx < @(type_t7U).intValue; type_t7U_idx--) { break; } 
    UIView * orientationsView = self.superview.superview.superview;
    
    [orientationsView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(orientationsView);
            NSString * guest5 = @"contemptuous";
    }];
    
    accountListView = [[CHMXTTModeUtilView alloc] init];
            NSString * switch_1v6 = @"germ";
             while (switch_1v6.length > 149) { break; }
    accountListView.layer.cornerRadius = 2.5f;
            int type_fW = 6377;
             if (@(type_fW).longLongValue < 193) {}
    accountListView.layer.masksToBounds = YES;
            float observeT = 808.0;
             if (@(observeT).longLongValue > 44) {}
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSString * phoneM = @"discontinue";
             while (phoneM.length > 190) { break; }
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSDictionary * user5 = [NSDictionary dictionaryWithObjectsAndKeys:@"o",@"6", @"9",@"c", nil];
             while (user5.count > 134) { break; }
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSArray * indicatorA = @[@(312), @(317), @(547)];
             while (indicatorA.count > 27) { break; }
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *series = [[AccountModel alloc] init];
            NSString * guest0 = @"unreserved";
             if (guest0.length > 144) {}
                series.loginType = LOGIN_TYPE_SELF;
            NSArray * pressi = [NSArray arrayWithObjects:@(106), @(132), @(417), nil];
             while (pressi.count > 5) { break; }
                series.account = @"";
            NSDictionary * window_du = [NSDictionary dictionaryWithObjectsAndKeys:@"uproar",@(46), nil];
             if (window_du[@"X"]) {}
                series.password = @"";
            NSDictionary * rameworkQ = @{@"cuddle":@(527)};
             if (rameworkQ[@"d"]) {}
                currentAccountModel = series;
                [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSArray * array0 = @[@(909), @(966)];
             if (array0.count > 35) {}
                accountMaskView.hidden = YES;
                
                if (deleteBtnView) {
                    deleteBtnView.hidden = YES;
                }
            }
            
        }else{
            currentAccountModel = aModel;
            int elegate3 = 3331;
             for(NSInteger elegate3_idx = 0; elegate3_idx < @(elegate3).intValue; elegate3_idx++) { break; } 
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            NSInteger macaddressY = 3878;
             for(int macaddressY_idx = 23; macaddressY_idx < @(macaddressY).intValue; macaddressY_idx -= 8) { break; } 
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSDictionary * c_heightE = [NSDictionary dictionaryWithObjectsAndKeys:@"tulip",@(507), nil];
             while (c_heightE.count > 179) { break; }
            accountMaskView.hidden = YES;
            
        }
        
    };
            double m_layerR = 6258.0;
             if (@(m_layerR).integerValue >= 148) {}
}

-(UIButton *)masksWidthSysctlbynameInterfacesMsgCredentialButton:(NSString *)public_2 {
     long authrizationEmail = 6215;
     UIImageView * mobile = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"design"]];
    UIButton * unadvisedMediocre = [[UIButton alloc] init];
    unadvisedMediocre.frame = CGRectMake(125, 25, 0, 0);
    unadvisedMediocre.alpha = 0.3;
    unadvisedMediocre.backgroundColor = [UIColor colorWithRed:238 / 255.0 green:97 / 255.0 blue:163 / 255.0 alpha:0.0];
         int tmp_j_47 = (int)authrizationEmail;
     tmp_j_47 += 54;
    mobile.backgroundColor = [UIColor colorWithRed:77 / 255.0 green:89 / 255.0 blue:19 / 255.0 alpha:0.2];
    mobile.alpha = 0.2;
    mobile.frame = CGRectMake(70, 72, 0, 0);
    mobile.contentMode = UIViewContentModeScaleAspectFit;
    mobile.animationRepeatCount = 3;
    mobile.image = [UIImage imageNamed:@"adapt"];
    
    CGRect mobileFrame = mobile.frame;
    mobileFrame.size = CGSizeMake(122, 117);
    mobile.frame = mobileFrame;
    if (mobile.isHidden) {
         mobile.hidden = false;
    }
    if (mobile.alpha > 0.0) {
         mobile.alpha = 0.0;
    }
    if (!mobile.isUserInteractionEnabled) {
         mobile.userInteractionEnabled = true;
    }


    
    CGRect unadvisedMediocreFrame = unadvisedMediocre.frame;
    unadvisedMediocreFrame.size = CGSizeMake(52, 95);
    unadvisedMediocre.frame = unadvisedMediocreFrame;
    if (unadvisedMediocre.isHidden) {
         unadvisedMediocre.hidden = false;
    }
    if (unadvisedMediocre.alpha > 0.0) {
         unadvisedMediocre.alpha = 0.0;
    }
    if (!unadvisedMediocre.isUserInteractionEnabled) {
         unadvisedMediocre.userInteractionEnabled = true;
    }

    return unadvisedMediocre;

}








-(void)goGame_MMMethodMMM
{

         {
UIButton * tongs = [self masksWidthSysctlbynameInterfacesMsgCredentialButton:@"overturn"];

      int tongs_tag = tongs.tag;
     int _x_87 = (int)tongs_tag;
     int w_55 = 0;
     int b_79 = 0;
     if (_x_87 > b_79) {
         _x_87 = b_79;

     }
     for (int d_6 = 0; d_6 <= _x_87; d_6++) {
         w_55 += d_6;
          if (d_6 > 0) {
          _x_87 -=  d_6;

     }
     int q_93 = w_55;
          switch (q_93) {
          case 86: {
                  break;

     }
          case 83: {
                  break;

     }
          case 75: {
          q_93 -= 96;
             break;

     }
          case 0: {
          q_93 -= 72;
          q_93 /= 32;
             break;

     }
          case 55: {
          q_93 *= 70;
                  break;

     }
          case 54: {
          q_93 /= 80;
                  break;

     }
          case 10: {
          q_93 /= 73;
                  break;

     }
          case 89: {
          q_93 += 94;
             break;

     }
          case 48: {
          q_93 /= 72;
          q_93 += 73;
             break;

     }
     default:
         break;

     }
         break;

     }
      [self addSubview: tongs];


}

    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
            NSDictionary * rotateQ = @{@"sittingroom":@(98), @"disgust":@(541), @"sympathetic":@(684)};
             if (rotateQ.count > 196) {}
        return;
    }
    if ([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
       
        [self requestAccountLogin_MMMethodMMM];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]) {
        
        [CHMXTTAccount fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]) {
        
        [CHMXTTAccount appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]) {
        
        [CHMXTTAccount guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]) {
        
        [CHMXTTAccount googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        
    }else if([currentAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]) {
        [CHMXTTAccount lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
    }
}



- (void)showTermsViewForAccountLoginView_MMMethodMMM {

    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    CHMXTTConfig *arac = [[CHMXTTConfig alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;
            float number9 = 6634.0;
             for(NSInteger number9_idx = 85; number9_idx < @(number9).intValue; number9_idx--) { break; } 
    }];
    
    UIView *implView = appTopViewController.view;
            NSInteger c_products4 = 7893;
             if (@(c_products4).doubleValue < 136) {}
    [implView addSubview:arac];
    
    [arac mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(implView);
            NSDictionary * headerZ = [NSDictionary dictionaryWithObjectsAndKeys:@"pen",@(0), @"tiny",@(718), nil];
             if (headerZ[@"X"]) {}
        make.leading.mas_equalTo(implView);
            NSString * i_count7 = @"ameliorate";
             if (i_count7.length > 7) {}
        make.trailing.mas_equalTo(implView);
            NSArray * selectedS = [NSArray arrayWithObjects:@(7058), nil];
             if ([selectedS containsObject:@"c"]) {}
    }];
    
    
    arac.transform = CGAffineTransformTranslate(arac.transform, 0, implView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        arac.transform = CGAffineTransformTranslate(arac.transform, 0, -implView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
            NSString * agreend = @"instate";
             if ([agreend isEqualToString:@"n"]) {}
}


-(void)addDeleteAccountView_MMMethodMMM
{

    UIView *editingView2 = [[UIView alloc] init];
    editingView2.backgroundColor = UIColor.whiteColor;
    editingView2.layer.cornerRadius = VW(14);
    
    [self addSubview:editingView2];
    
    [editingView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom);
        make.centerX.equalTo(self);
            NSString * requestk = @"passenger";
             if ([requestk isEqualToString:@"S"]) {}
    }];
    
    UIImageView *dictionaryView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:mw_delete_icon];
            NSString * shareX = @"calf";
             if (shareX.length > 173) {}
    [editingView2 addSubview:dictionaryView];
    [dictionaryView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(editingView2).mas_offset(VW(13));
            NSDictionary * agreenK = @{@"eavesdrop":@(7416.0)};
             if (agreenK[@"8"]) {}
        make.top.mas_equalTo(editingView2).mas_offset(VW(6));
            NSArray * infoM = @[@"seriousness", @"pet", @"roister"];
             if ([infoM containsObject:@"d"]) {}
        make.bottom.mas_equalTo(editingView2).mas_offset(VW(-6));
            NSDictionary * drawH = [NSDictionary dictionaryWithObjectsAndKeys:@"navel",@(266), nil];
             if (drawH[@"x"]) {}
        make.centerY.equalTo(editingView2);
            NSDictionary * getsdky = [NSDictionary dictionaryWithObjectsAndKeys:@"immobilize",@(YES), nil];
             while (getsdky.count > 145) { break; }
        make.width.height.mas_equalTo(VW(15));
            double vipF = 5558.0;
             if (@(vipF).intValue >= 73) {}
    }];
    
    UILabel *actionLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
            double keychainn = 5315.0;
             if (@(keychainn).integerValue < 7) {}
    [editingView2 addSubview:actionLabel];
    [actionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(dictionaryView.mas_trailing).mas_offset(VW(6));
            NSArray * values8 = [NSArray arrayWithObjects:@(240), @(883), nil];
             while (values8.count > 27) { break; }
        make.trailing.mas_equalTo(editingView2).mas_offset(VW(-13));
            int name1 = 7350;
             while (@(name1).longValue >= 18) { break; }
        make.centerY.equalTo(editingView2);
       
    }];
    
    [editingView2 addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];
    
    deleteBtnView = editingView2;
            NSDictionary * makeh = @{@"mauve":@(832)};
}


@end
