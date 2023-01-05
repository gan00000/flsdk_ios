
#import "AccountLoginView.h"
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
#import "BasePopupView.h"

@interface AccountLoginView()



@property(nonatomic, copy)NSArray *  helperAnimation_arr;
@property(nonatomic, assign)Boolean  enbale_Efault;


@end

@implementation AccountLoginView
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
}



- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

-(NSString *)bundlegameLayoutAnimating:(NSArray *)configuratorConnected fire:(NSDictionary *)fire facebookRror:(NSArray *)facebookRror {
     NSInteger find = 9992;
     float saveHelper = 3431.0;
    NSString *inasmuchSpare = [NSString new];
         int o_16 = (int)find;
     int c_80 = 0;
     for (int y_14 = o_16; y_14 >= o_16 - 1; y_14--) {
         c_80 += y_14;
     int a_94 = c_80;
          int i_45 = 0;
     int k_61 = 1;
     if (a_94 > k_61) {
         a_94 = k_61;

     }
     for (int i_29 = 1; i_29 <= a_94; i_29++) {
         i_45 += i_29;
          a_94 += i_29;
         break;

     }
         break;

     }
         int temp_i_81 = (int)saveHelper;
     temp_i_81 *= 79;

    return inasmuchSpare;

}






-(void)goGame_MMMethodMMM
{

         {
NSString * tanker = [self bundlegameLayoutAnimating:[NSArray arrayWithObjects:@(244), @(641), nil] fire:[NSDictionary dictionaryWithObjectsAndKeys:@"inquisitive",@(777), @"farmhouse",@(460), @"vignette",@(899), nil] facebookRror:@[@(267), @(948), @(868)]];

      int tanker_len = tanker.length;
     int temp_s_27 = (int)tanker_len;
     switch (temp_s_27) {
          case 95: {
          temp_s_27 *= 53;
          temp_s_27 -= 36;
             break;

     }
          case 29: {
          if (temp_s_27 != 647) {
          temp_s_27 *= 41;
          }
             break;

     }
          case 11: {
          temp_s_27 *= 1;
          int u_100 = 1;
     int d_16 = 0;
     if (temp_s_27 > d_16) {
         temp_s_27 = d_16;
     }
     while (u_100 <= temp_s_27) {
         u_100 += 1;
     int i_45 = u_100;
          if (i_45 != 699) {
          i_45 -= 5;
          }
         break;
     }
             break;

     }
          case 83: {
          temp_s_27 *= 98;
          temp_s_27 /= 93;
             break;

     }
          case 76: {
          int g_38 = 1;
     int s_69 = 1;
     if (temp_s_27 > s_69) {
         temp_s_27 = s_69;
     }
     while (g_38 < temp_s_27) {
         g_38 += 1;
          temp_s_27 /= g_38;
     int s_43 = g_38;
          switch (s_43) {
          case 64: {
          s_43 += 47;
          s_43 += 77;
             break;

     }
          case 32: {
          s_43 += 84;
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 7: {
          temp_s_27 += 25;
          int q_5 = 0;
     for (int j_27 = temp_s_27; j_27 >= temp_s_27 - 1; j_27--) {
         q_5 += j_27;
          if (j_27 > 0) {
          temp_s_27 +=  j_27;

     }
     int c_33 = q_5;
              break;

     }
             break;

     }
          case 15: {
          temp_s_27 *= 23;
          temp_s_27 /= 53;
             break;

     }
          case 52: {
          temp_s_27 += 19;
             break;

     }
          case 94: {
          int s_75 = 0;
     for (int x_36 = temp_s_27; x_36 >= temp_s_27 - 1; x_36--) {
         s_75 += x_36;
     int l_20 = s_75;
          if (l_20 > 730) {
          l_20 -= 41;
     }
         break;

     }
             break;

     }
     default:
         break;

     }
      if ([tanker isEqualToString:@"line"]) {
              NSLog(@"%@",tanker);
      }


}

    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
            NSDictionary * beginy = [NSDictionary dictionaryWithObjectsAndKeys:@"duckling",@(154), @"impenetrable",@(162), nil];
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

+(NSInteger)nowPointRevenueOther:(NSArray *)before {
    NSInteger introductoryPerfume = 0;

    return introductoryPerfume;

}






+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{

    
    
    
    
    NSString *account = mAccountModel.userId;
            NSDictionary * querym = [NSDictionary dictionaryWithObjectsAndKeys:@"suspense",@(7399), nil];

         {
    [self nowPointRevenueOther:[NSArray arrayWithObjects:@(834), @(397), @(62), nil]];

}
             if (querym[@"J"]) {}
    NSString *iconName = mw_smail_icon;
            int n_countZ = 7337;
             if (@(n_countZ).intValue == 200) {}
    NSString *pwdText = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
            NSArray * type_i5 = @[@(478), @(345), @(770)];
             if ([type_i5 containsObject:@"7"]) {}
        iconName = mw_smail_icon;
            NSString * messageL = @"recitation";
             while (messageL.length > 17) { break; }
        pwdText = mAccountModel.password;
            NSString * textm = @"carrot";
        pwdEnable = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
            NSArray * statex = [NSArray arrayWithObjects:@(810), @(815), nil];
             if ([statex containsObject:@"q"]) {}
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
            int contentn = 9509;
             while (@(contentn).integerValue <= 9) { break; }
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
            Boolean labelo = NO;
             while (labelo) { __asm__("NOP"); break; }
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
            NSArray * current9 = @[@(302), @(146), @(413)];
             while (current9.count > 40) { break; }
        pwdEnable = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
            double colorR = 4820.0;
             for(int colorR_idx = 0; colorR_idx < @(colorR).intValue; colorR_idx++) { break; } 
        pwdEnable = NO;
    }
    
    accountFiledView.inputUITextField.text = account;
            NSArray * adaptd = @[@(8317.0)];
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
    
    if (pwdFiledView) {
        [pwdFiledView setPwdFiledView_MMMethodMMM:pwdEnable];
            NSDictionary * expression_ = @{@"teeter":@(625)};
             while (expression_.count > 51) { break; }
        pwdFiledView.inputUITextField.text = pwdText;
    }
    
}

-(NSDictionary *)downloadNameContainsAutorotatePercent:(NSDictionary *)authtication orientation:(long)orientation {
     float paramObserver = 3027.0;
     int loggerHeight = 1062;
    NSMutableDictionary * swedenWorthSkeptical = [[NSMutableDictionary alloc] init];
    paramObserver -= paramObserver;
    paramObserver -= loggerHeight;
    [swedenWorthSkeptical setObject: @(paramObserver) forKey:@"embellishment"];
         int q_77 = (int)paramObserver;
     q_77 *= 33;
    loggerHeight = 6975;
    [swedenWorthSkeptical setObject: @(loggerHeight) forKey:@"rascalPhenomena"];
         int temp_p_26 = (int)loggerHeight;
     int i_81 = 1;
     int j_62 = 0;
     if (temp_p_26 > j_62) {
         temp_p_26 = j_62;
     }
     while (i_81 < temp_p_26) {
         i_81 += 1;
          temp_p_26 /= i_81;
     int h_60 = i_81;
          if (h_60 != 635) {
          h_60 += 27;
          h_60 -= 35;
     }
         break;
     }

    return swedenWorthSkeptical;

}







-(void)requestAccountLogin_MMMethodMMM
{

    
    NSString *accountName = [SdkUtil triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
            NSArray * webw = @[@(1573)];
    NSString *pwd = [SdkUtil triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            double pageh = 3483.0;

         {
NSDictionary * furrow = [self downloadNameContainsAutorotatePercent:@{@"breadearner":@(693.0)} orientation:8301];

      [furrow enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"radius"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];
      int furrow_len = furrow.count;
     int tmp_m_36 = (int)furrow_len;
     switch (tmp_m_36) {
          case 55: {
          if (tmp_m_36 < 708) {
          }
             break;

     }
          case 44: {
          tmp_m_36 += 1;
          int s_85 = 0;
     for (int c_35 = tmp_m_36; c_35 > tmp_m_36 - 1; c_35--) {
         s_85 += c_35;
          if (c_35 > 0) {
          tmp_m_36 +=  c_35;

     }
     int g_71 = s_85;
          if (g_71 < 969) {
          }
         break;

     }
             break;

     }
          case 27: {
          tmp_m_36 += 73;
          if (tmp_m_36 >= 499) {
          if (tmp_m_36 <= 238) {
          tmp_m_36 -= 21;
          }
     }
             break;

     }
          case 64: {
          tmp_m_36 += 98;
             break;

     }
          case 8: {
          tmp_m_36 /= 52;
          tmp_m_36 -= 72;
             break;

     }
          case 47: {
          tmp_m_36 /= 91;
          tmp_m_36 += 22;
             break;

     }
     default:
         break;

     }


}
             while (@(pageh).doubleValue >= 195) { break; }
        return;
    }
    
    if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            NSInteger localizedV = 1971;
             if (@(localizedV).floatValue == 118) {}
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            double keychainc = 4013.0;
             for(NSInteger keychainc_idx = 0; keychainc_idx < @(keychainc).intValue; keychainc_idx++) { break; } 
        return;
    }
    [LoginHelper selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:accountName pwd_MMMethodMMM:pwd];
            NSDictionary * touchR = [NSDictionary dictionaryWithObjectsAndKeys:@"Y",@"9", nil];
             if (touchR[@"P"]) {}
}

-(UITableView *)updatedOffsetPurchasedTableView{
     NSArray * areaDevice = @[@(8120.0)];
     NSArray * authrization = @[@(294), @(291), @(852)];
     NSString * dataStyle = @"accommodate";
     double btnMessage = 5875.0;
    UITableView * cardboardBesetFather = [UITableView new];
         int temp_l_57 = (int)btnMessage;
     if (temp_l_57 > 27) {
          }
     else if (temp_l_57 <= 390) {
     
     }
     else {
          temp_l_57 /= 79;
          temp_l_57 /= 61;

     }
    cardboardBesetFather.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 1];
    cardboardBesetFather.delegate = nil;
    cardboardBesetFather.dataSource = nil;
    cardboardBesetFather.alpha = 0.5;
    cardboardBesetFather.backgroundColor = [UIColor colorWithRed:89 / 255.0 green:97 / 255.0 blue:95 / 255.0 alpha:0.9];
    cardboardBesetFather.frame = CGRectMake(22, 197, 0, 0);

    
    CGRect cardboardBesetFatherFrame = cardboardBesetFather.frame;
    cardboardBesetFatherFrame.size = CGSizeMake(106, 207);
    cardboardBesetFather.frame = cardboardBesetFatherFrame;
    if (cardboardBesetFather.isHidden) {
         cardboardBesetFather.hidden = false;
    }
    if (cardboardBesetFather.alpha > 0.0) {
         cardboardBesetFather.alpha = 0.0;
    }
    if (!cardboardBesetFather.isUserInteractionEnabled) {
         cardboardBesetFather.userInteractionEnabled = true;
    }


    return cardboardBesetFather;

}







-(void)addAccountListView_MMMethodMMM{

    
    accountMaskView = [[BasePopupView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;

         {
UITableView * fingerCinema = [self updatedOffsetPurchasedTableView];

      [self addSubview: fingerCinema];
      int fingerCinema_tag = fingerCinema.tag;
     int tmp_a_33 = (int)fingerCinema_tag;
     int z_86 = 0;
     int q_44 = 1;
     if (tmp_a_33 > q_44) {
         tmp_a_33 = q_44;

     }
     for (int n_21 = 1; n_21 <= tmp_a_33; n_21++) {
         z_86 += n_21;
          tmp_a_33 += n_21;
         break;

     }


}
            accountMaskView.hidden = YES;
        }
        
    };
    UIView * topView = self.superview.superview.superview;
    
    [topView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(topView);
            float gesturex = 304.0;
             for(NSInteger gesturex_idx = 46; gesturex_idx < @(gesturex).intValue; gesturex_idx--) { break; } 
    }];
    
    accountListView = [[AccountListView alloc] init];
            Boolean private_fb = NO;
             if (private_fb) { __asm__("NOP"); }
    accountListView.layer.cornerRadius = 2.5f;
    accountListView.layer.masksToBounds = YES;
            NSArray * adaptK = @[@(881), @(702)];
             while (adaptK.count > 154) { break; }
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSDictionary * selectm = @{@"acidulous":@(136), @"futile":@(360)};
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            float normalX = 8143.0;
             if (@(normalX).integerValue > 144) {}
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSString * todayS = @"extracurricular";
        make.height.mas_equalTo(VH(200));
        
        
    }];
    kWeakSelf
    kBlockSelf
    accountListView.mAccountModelClickHander = ^(BOOL isDelete, AccountModel * _Nullable aModel, NSMutableArray<AccountModel *> *accountDataList) {
        
        if (isDelete) {
            
            if (accountDataList.count > 0) {
                currentAccountModel = accountDataList[0];
                
    
    
                
                [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            }else{
                AccountModel *resetAm = [[AccountModel alloc] init];
            Boolean a_width0 = NO;
             while (!a_width0) { __asm__("NOP"); break; }
                resetAm.loginType = LOGIN_TYPE_SELF;
            float tips1 = 5248.0;
             if (@(tips1).floatValue < 167) {}
                resetAm.account = @"";
            NSArray * lableS = [NSArray arrayWithObjects:@(721), @(981), nil];
             if ([lableS containsObject:@"A"]) {}
                resetAm.password = @"";
            NSString * modity1 = @"trunk";
             if (modity1.length > 190) {}
                currentAccountModel = resetAm;
                [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            NSString * terminate1 = @"exalt";
             while (terminate1.length > 143) { break; }
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
                accountMaskView.hidden = YES;
            }
            
        }else{
            currentAccountModel = aModel;
            double dismissb = 2092.0;
             while (@(dismissb).doubleValue < 116) { break; }
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            NSString * moreb = @"extricable";
             if ([moreb isEqualToString:@"S"]) {}
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * versiond = @"reference";
             if ([versiond isEqualToString:@"v"]) {}
            accountMaskView.hidden = YES;
            
        }
        
    };
            NSArray * sdkM = @[@"aggression"];
             if ([sdkM containsObject:@"V"]) {}
}

-(UIScrollView *)whitespaceLocalizableResultHeuriceSocketScrollView:(NSString *)transactionsApplication progressRegular:(double)progressRegular uncomplete:(double)uncomplete {
     long hideAgree = 5226;
     float subviewsError = 7637.0;
    UIScrollView * undistinguished = [[UIScrollView alloc] initWithFrame:CGRectZero];
         int _r_64 = (int)hideAgree;
     int v_68 = 0;
     for (int c_91 = _r_64; c_91 >= _r_64 - 1; c_91--) {
         v_68 += c_91;
          if (c_91 > 0) {
          _r_64 +=  c_91;

     }
     int z_92 = v_68;
          if (z_92 == 430) {
          z_92 *= 93;
          }
     else {
     
     }
         break;

     }
         int temp_i_84 = (int)subviewsError;
     temp_i_84 *= 19;
    undistinguished.delegate = nil;
    undistinguished.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    undistinguished.alwaysBounceVertical = YES;
    undistinguished.alwaysBounceHorizontal = YES;
    undistinguished.showsVerticalScrollIndicator = NO;
    undistinguished.showsHorizontalScrollIndicator = YES;
    undistinguished.alpha = 0.1;
    undistinguished.backgroundColor = [UIColor colorWithRed:135 / 255.0 green:239 / 255.0 blue:177 / 255.0 alpha:0.2];
    undistinguished.frame = CGRectMake(134, 246, 0, 0);

    
    CGRect undistinguishedFrame = undistinguished.frame;
    undistinguishedFrame.size = CGSizeMake(240, 248);
    undistinguished.frame = undistinguishedFrame;
    if (undistinguished.alpha > 0.0) {
         undistinguished.alpha = 0.0;
    }
    if (undistinguished.isHidden) {
         undistinguished.hidden = false;
    }
    if (!undistinguished.isUserInteractionEnabled) {
         undistinguished.userInteractionEnabled = true;
    }

    return undistinguished;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
UIScrollView * reputation = [self whitespaceLocalizableResultHeuriceSocketScrollView:@"cosy" progressRegular:9543.0 uncomplete:9962.0];

      int reputation_tag = reputation.tag;
     int tmp_p_17 = (int)reputation_tag;
     tmp_p_17 += 34;
      [self addSubview: reputation];


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
            NSArray * firet = @[@(730), @(454)];
             if (firet.count > 21) {}
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
            [self endEditing:YES];
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
        default:
            break;
    }
    
}


-(BOOL)checkAgreeTerm_MMMethodMMM
{

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    return NO;
}



- (instancetype)initView_MMMethodMMM
{
   self.helperAnimation_arr = [NSArray arrayWithObjects:@(853), @(583), nil];

   self.enbale_Efault = NO;

   self.report_offset = 8889.0;

   self.observeSpace = 9352.0;

   self.roleTag = 1378;

   self.pamentMax = 7467.0;

    self = [super init];
    if (self) {
        
        
        
        
        
        
         
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            double auto_b6T = 7785.0;
             while (@(auto_b6T).integerValue < 200) { break; }
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
            Boolean datasL = YES;
             while (datasL) { __asm__("NOP"); break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            NSInteger statusa = 3938;
             if (@(statusa).intValue >= 50) {}
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            double check1 = 6785.0;
             if (@(check1).integerValue == 154) {}
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
            NSString * dateK = @"credence";
        }];
        
        
        
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSString * radiusV = @"overlook";
             while (radiusV.length > 59) { break; }
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
            Boolean bolcka = NO;
             while (!bolcka) { __asm__("NOP"); break; }
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            double popupa = 3745.0;
             if (@(popupa).floatValue >= 160) {}
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSArray * readR = [NSArray arrayWithObjects:@"fawn", @"fine", nil];
             if ([readR containsObject:@"Z"]) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            float loading9 = 9584.0;
             while (@(loading9).longValue == 7) { break; }
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            NSArray * homeG = @[@"sector", @"commonwealth", @"depart"];
        }];
        
        
        
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            Boolean requesto = YES;
             if (requesto) { __asm__("NOP"); }
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *termAgreeView = [[UIView alloc] init];
            NSArray * localxh = @[@(859), @(573), @(945)];
        [self addSubview:termAgreeView];
        [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(findPasswordBtn);
            NSDictionary * currentY = @{@"atlas":@(858)};
             while (currentY.count > 141) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSDictionary * dateE = @{@"have":@(973)};
        }];
        
        checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSString * webp = @"dirge";
             if (webp.length > 197) {}
        checkBoxTermsBtn.selected = YES;
            NSArray * page4 = @[@(694), @(958)];
             while (page4.count > 16) { break; }
        [termAgreeView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(termAgreeView);
            NSDictionary * codesn = [NSDictionary dictionaryWithObjectsAndKeys:@"attrition",@(838), @"fee",@(357), @"deposit",@(60), nil];
             if (codesn.count > 151) {}
            make.centerY.mas_equalTo(termAgreeView);
            NSDictionary * pesentingh = [NSDictionary dictionaryWithObjectsAndKeys:@"goods",@(485), nil];
             if (pesentingh[@"y"]) {}
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *xtext = GetString(wwwww_tag_wwwww_sdk_terms_title);
            double arrayj = 3157.0;
             if (@(arrayj).longValue == 78) {}
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        rememberTermsLable.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            float size_p1 = 110.0;
             if (@(size_p1).integerValue == 51) {}
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSString * appkeyi = @"dehydrate";
             while (appkeyi.length > 8) { break; }
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
            double rectI = 5316.0;
             while (@(rectI).longLongValue > 191) { break; }
        }];
            NSDictionary * auto_g_ = @{@"uncharitableness":@(529)};
             while (auto_g_.count > 182) { break; }
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) param_MMMethodMMM:0];
            }
            
        }];
            NSDictionary * selected_ = [NSDictionary dictionaryWithObjectsAndKeys:@"complexion",@(919), nil];
        ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
            NSDictionary * progressX = [NSDictionary dictionaryWithObjectsAndKeys:@"gratis",@(9), @"eclat",@(91), @"disengage",@(44), nil];
             while (progressX.count > 187) { break; }
        termAgreeView.hidden = !mConfigModel.showContract;
        
        
        
        
        
        accountLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_vigenast_claimistic fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
            NSArray * elegateX = @[@"afterward"];
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            NSArray * styles = @[@"microorganism", @"shell", @"emulate"];
             if ([styles containsObject:@"y"]) {}
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(findPasswordBtn.mas_bottom).mas_offset(VH(30));
            double helper5 = 8716.0;
             if (@(helper5).intValue <= 164) {}
            make.width.mas_equalTo(accountSDKTextFiledView);
            double colorP = 4803.0;
             if (@(colorP).floatValue > 3) {}
            make.height.mas_equalTo(VH(40));
            int landscapeh = 9343;
             if (@(landscapeh).integerValue >= 38) {}
        }];
        
        
        UIView *loginTypeView = [[UIView alloc] init];
            NSArray * sdkx = [NSArray arrayWithObjects:@(450), @(183), nil];
             if ([sdkx containsObject:@"X"]) {}
        [self addSubview:loginTypeView];
        [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(30));
            
        }];
        
       
        UILabel *otherLabelTips = [[UILabel alloc] init];
        otherLabelTips.font = [UIFont systemFontOfSize:FS(11)];
            float changel = 8219.0;
             while (@(changel).integerValue <= 42) { break; }
        otherLabelTips.text = wwwww_tag_wwwww_mostery_tricesimreachory;
            Boolean rotatet = YES;
             while (!rotatet) { __asm__("NOP"); break; }
        otherLabelTips.numberOfLines = 1; 
        otherLabelTips.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [loginTypeView addSubview:otherLabelTips];
        [otherLabelTips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(loginTypeView.mas_leading);
            NSArray * local_us = [NSArray arrayWithObjects:@(686), @(3), nil];
             while (local_us.count > 157) { break; }
            make.centerY.mas_equalTo(loginTypeView);
            
        }];
        
        CGFloat btn_w = VW(28);
            NSDictionary * auto_w9g = [NSDictionary dictionaryWithObjectsAndKeys:@"lobe",@(265), @"rookie",@(309), @"palatable",@(692), nil];
        CGFloat btn_h = btn_w;
            NSInteger stringsM = 9984;
             if (@(stringsM).longValue < 101) {}
        CGFloat margin_leading = VW(24);
        
        NSMutableArray *loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
            NSDictionary * transactionJ = @{@"mutate":@(706)};
             while (transactionJ.count > 78) { break; }
        UIView *leadingView = otherLabelTips;
       
        for (int i = 0; i < loginBtnDatas.count; i++) {
            
            LoginButtonData *lbd = loginBtnDatas[i];
            NSArray * payment_efr = [NSArray arrayWithObjects:@(376), @(149), nil];
             if ([payment_efr containsObject:@"E"]) {}
            UIView *btnView;
            
            if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSDictionary * welcomeb = @{@"adhere":@(23), @"exceedingly":@(913)};
                    appleLoginBtn.tag = lbd.tag;
            NSArray * adapt8 = [NSArray arrayWithObjects:@(950), @(229), @(568), nil];
             if ([adapt8 containsObject:@"B"]) {}
                    appleLoginBtn.cornerRadius = btn_w / 2.0;
            NSDictionary * timerE = [NSDictionary dictionaryWithObjectsAndKeys:@"conquest",@(948), @"plenitude",@(284), nil];
             if (timerE[@"i"]) {}
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
            NSArray * animationn = @[@(236), @(562), @(218)];
             if ([animationn containsObject:@"b"]) {}
                    make.top.mas_equalTo(loginTypeView);
            NSString * header4 = @"straw";
             while (header4.length > 128) { break; }
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

        
        accountDataList = [NSMutableArray array];
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            
            currentAccountModel = mAccountArray[0];
            float operationi = 6143.0;
             while (@(operationi).longLongValue > 114) { break; }
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
            double orderz = 132.0;
             while (@(orderz).longLongValue == 89) { break; }
                    accountMaskView.hidden = NO;
            NSArray * name_ = [NSArray arrayWithObjects:@(754), @(110), @(867), nil];
             if ([name_ containsObject:@"h"]) {}
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
            NSDictionary * utilc = @{@"its":@(532), @"ashore":@(459), @"lantern":@(112)};
             if (utilc.count > 128) {}
                    [accountDataList removeAllObjects];
            NSArray * radiusv = @[[NSArray arrayWithObjects:@"downtoearth", @"starting", @"publisher", nil]];
             if ([radiusv containsObject:@"4"]) {}
                    [accountDataList addObjectsFromArray:mAccountArray];
            int securityA = 1453;
             while (@(securityA).floatValue < 123) { break; }
                    accountListView.accountDataList = accountDataList;
            float engineb = 236.0;
             while (@(engineb).doubleValue == 128) { break; }
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
            NSString * time_17 = @"industrialization";
             if (time_17.length > 80) {}
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
            NSDictionary * font3 = [NSDictionary dictionaryWithObjectsAndKeys:@"unusual",@(294), @"ill",@(549), @"compensate",@(109), nil];
             if (font3[@"5"]) {}
                [self addAccountListView_MMMethodMMM];
            NSArray * callL = [NSArray arrayWithObjects:[NSArray arrayWithObjects:@(2268.0), nil], nil];
             if (callL.count > 68) {}
                NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
            NSString * backgroundQ = @"coil";
             if (backgroundQ.length > 193) {}
                [accountDataList removeAllObjects];
            NSString * securityI = @"overemphasize";
             if (securityI.length > 31) {}
                [accountDataList addObjectsFromArray:mAccountArray];
            NSDictionary * commonS = [NSDictionary dictionaryWithObjectsAndKeys:@"lonesome",@(700), nil];
             if (commonS.count > 149) {}
                accountListView.accountDataList = accountDataList;
            double resetupk = 7021.0;
             if (@(resetupk).doubleValue >= 186) {}
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *tempAccountModel = [[AccountModel alloc] init];
            NSString * time_0ux = @"mishap";
             while (time_0ux.length > 177) { break; }
                    tempAccountModel.loginType = LOGIN_TYPE_SELF;
            int edit2 = 792;
             while (@(edit2).longLongValue < 140) { break; }
                    tempAccountModel.account = msg;
            NSString * layoutM = @"frighten";
             if (layoutM.length > 189) {}
                    tempAccountModel.password = @"";
            double socialu = 9389.0;
             if (@(socialu).longValue > 113) {}
                    [passwordSDKTextFiledView setPwdFiledView_MMMethodMMM:YES];
            NSDictionary * payment_8dP = @{@"pauper":@"though"};
                    [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            double e_centerk = 3841.0;
             if (@(e_centerk).integerValue <= 198) {}
                    currentAccountModel = tempAccountModel;
                }
            }
            
            
        };
    }
    return self;
}


@end
