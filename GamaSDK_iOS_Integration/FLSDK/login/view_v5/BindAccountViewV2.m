
#import "BindAccountViewV2.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "LoginHelper.h"
#import "SdkUtil.h"
#import "AccountLoginView.h"
#import "SDKRequest.h"
#import "ViewUtil.h"

@implementation BindAccountViewV2

{
    SDKTextFiledView *thirdAccountSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *pwdSDKTextFiledView;
    
    SDKTextFiledView *hasBind_accountSDKTextFiledView;
    
    
    
    LoginTitleView   *mLoginTitleView;
    
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        UIView *contentView = [[UIView alloc] init];
        
        UIColor *color = [UIColor whiteColor];
            NSArray * prefersz = [NSArray arrayWithObjects:@(813), @(174), nil];
             if (prefersz.count > 57) {}
        contentView.backgroundColor = color;
            float queryn = 5584.0;
             for(int queryn_idx = 0; queryn_idx < @(queryn).intValue; queryn_idx += 4) { break; } 
        contentView.layer.cornerRadius = 10; 
        contentView.layer.masksToBounds = YES;
        
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            double existingu = 5007.0;
             if (@(existingu).longLongValue == 159) {}
            make.width.mas_equalTo(VW(330));
            NSDictionary * responce1 = @{@"scrutiny":@(98), @"conversation":@(738), @"saturn":@(654)};
             if (responce1.count > 132) {}
            make.height.mas_equalTo(VH(265));
            NSDictionary * frame_yH = [NSDictionary dictionaryWithObjectsAndKeys:@"composed",@(527), @"parking",@(799), @"journey",@(103), nil];
             while (frame_yH.count > 48) { break; }
        }];
        
        
        UIView *titleView = [[UIView alloc] init];
            NSString * r_layerv = @"decomposition";
             if ([r_layerv isEqualToString:@"q"]) {}
        [contentView addSubview:titleView];
        [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(15));
            double celld = 7082.0;
             if (@(celld).intValue > 128) {}
            make.leading.mas_equalTo(contentView).mas_offset(VW(15));
            NSArray * buttonH = @[@(274), @(935)];
             if (buttonH.count > 5) {}
            make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
            
            
        }];
        
        UIView *tagView = [[UIView alloc] init];
            double fireb = 4098.0;
             while (@(fireb).intValue == 17) { break; }
        tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            float orientationY = 5035.0;
             while (@(orientationY).floatValue >= 132) { break; }
        [titleView addSubview:tagView];
        [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(titleView);
            make.leading.mas_equalTo(titleView);
            NSInteger confirec = 98;
             if (@(confirec).intValue == 111) {}
            make.width.mas_equalTo(VW(4));
            float resetv = 3830.0;
             for(int resetv_idx = 30; resetv_idx < @(resetv).intValue; resetv_idx -= 0) { break; } 
            make.height.mas_equalTo(VH(14));
            
            make.bottom.mas_equalTo(titleView);
            NSDictionary * private_33E = [NSDictionary dictionaryWithObjectsAndKeys:@"soon",@(474), @"preventive",@(228), nil];
             if (private_33E[@"n"]) {}
        }];
        
        
        UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_update_account.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
        titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
        
        [titleView addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.leading.mas_equalTo(titleView).mas_offset(6);
            NSArray * btnk = [NSArray arrayWithObjects:@(470), @(760), nil];
             if (btnk.count > 36) {}
            make.trailing.mas_equalTo(titleView);
            NSDictionary * callY = @{@"x":@"p"};
             while (callY.count > 112) { break; }
            make.top.mas_equalTo(titleView);
            NSString * datae = @"whiff";
             while (datae.length > 68) { break; }
            make.bottom.mas_equalTo(titleView);
            NSInteger devicea = 8925;
             for(int devicea_idx = 85; devicea_idx < @(devicea).intValue; devicea_idx--) { break; } 
        }];
        
        UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [titleView addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(titleView);
            double becomex = 7224.0;
             if (@(becomex).longLongValue <= 36) {}
            make.centerY.mas_equalTo(titleView);
            NSString * timingw = @"insightful";
            make.width.mas_equalTo(VH(22));
            int systemS = 5088;
             while (@(systemS).longValue >= 133) { break; }
            make.height.mas_equalTo(VH(22));
            NSArray * shareM = @[@"reverie", @"woods", @"yell"];
             if ([shareM containsObject:@"d"]) {}
        }];
    
        
        AccountModel *currentAccount = SDK_DATA.mLoginResponse.data;
        if (currentAccount.isBind) {
            
            thirdAccountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSDictionary * fieldw = [NSDictionary dictionaryWithObjectsAndKeys:@"e",@"n", @"u",@"r", nil];
             while (fieldw.count > 131) { break; }
            thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSDictionary * versionr = @{@"disingenuous":@(503)};
            thirdAccountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            thirdAccountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            Boolean queryG = NO;
             if (!queryG) { __asm__("NOP"); }
            thirdAccountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double time_59z = 4679.0;
             if (@(time_59z).integerValue <= 27) {}
            thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            NSDictionary * mobileN = @{@"apophasis":@(913), @"glory":@(740), @"undrinkable":@(908)};
             if (mobileN[@"9"]) {}
            [contentView addSubview:thirdAccountSDKTextFiledView];
            
            [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
                make.trailing.mas_equalTo(titleView);
            float sign6 = 8596.0;
             for(NSInteger sign6_idx = 0; sign6_idx < @(sign6).intValue; sign6_idx += 10) { break; } 
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            [self makeAccountFiledViewStatus_MMMethodMMM:currentAccount accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            
            hasBind_accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSDictionary * authticationZ = [NSDictionary dictionaryWithObjectsAndKeys:@"grandparent",@"vain", nil];
             while (authticationZ.count > 9) { break; }
            hasBind_accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            Boolean editingM = YES;
             while (!editingM) { __asm__("NOP"); break; }
            hasBind_accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            double indicator0 = 7595.0;
             for(NSInteger indicator0_idx = 67; indicator0_idx < @(indicator0).intValue; indicator0_idx -= 7) { break; } 
            hasBind_accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSDictionary * confU = @{@"B":@"M", @"h":@"Y"};
             if (confU[@"x"]) {}
            hasBind_accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            NSDictionary * fieldd = @{@"epistemology":@(3829)};
             if (fieldd[@"C"]) {}
            hasBind_accountSDKTextFiledView.inputUITextField.enabled = NO;
            
            [contentView addSubview:hasBind_accountSDKTextFiledView];
            
            [hasBind_accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
            float expressionW = 8280.0;
             if (@(expressionW).longLongValue < 96) {}
                make.trailing.mas_equalTo(titleView);
                make.height.mas_equalTo(thirdAccountSDKTextFiledView);

                make.top.mas_equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            hasBind_accountSDKTextFiledView.inputUITextField.text = currentAccount.loginId;
            
        }else{
            
            accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            double passwordL = 3858.0;
             if (@(passwordL).floatValue == 29) {}
            accountSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSDictionary * orderQ = [NSDictionary dictionaryWithObjectsAndKeys:@"recent",@(2362), nil];
             if (orderQ[@"S"]) {}
            accountSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            Boolean dismissG = YES;
             while (dismissG) { __asm__("NOP"); break; }
            accountSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_smail_icon2];
            NSString * vipE = @"continual";
             if ([vipE isEqualToString:@"V"]) {}
            [contentView addSubview:accountSDKTextFiledView];
            
            [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                
                make.leading.mas_equalTo(titleView);
            NSArray * ervice3 = [NSArray arrayWithObjects:@(882), @(871), @(647), nil];
             while (ervice3.count > 26) { break; }
                make.trailing.mas_equalTo(titleView);
                make.height.mas_equalTo(VH(40));

                make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VH(28));
                
            }];
            
            
            
            pwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSArray * fieldx = @[@(993), @(187), @(746)];
             while (fieldx.count > 32) { break; }
            pwdSDKTextFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon2];
            double sharedQ = 9076.0;
             if (@(sharedQ).intValue >= 125) {}
            pwdSDKTextFiledView.layer.borderColor = ColorHex(wwwww_tag_wwwww__CC_606060).CGColor;
            NSString * encodingm = @"monochrome";
            pwdSDKTextFiledView.inputUITextField.textColor = UIColor.blackColor;
            double endedc = 6388.0;
             while (@(endedc).doubleValue < 43) { break; }
            [contentView addSubview:pwdSDKTextFiledView];
            
            [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(titleView);
            NSArray * hiddenc = [NSArray arrayWithObjects:@(351), @(133), @(432), nil];
             while (hiddenc.count > 7) { break; }
                make.trailing.mas_equalTo(titleView);
            NSDictionary * appkeya = @{@"elated":@(949), @"softly":@(634), @"sententious":@(982)};
             while (appkeya.count > 34) { break; }
                make.height.mas_equalTo(accountSDKTextFiledView);

                make.top.mas_equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
                
            }];
            
            UILabel *bindTipLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSString * backgroundO = @"pacifist";
             while (backgroundO.length > 28) { break; }
            bindTipLabel.numberOfLines = 0;
            float existingZ = 3791.0;
             for(int existingZ_idx = 88; existingZ_idx < @(existingZ).intValue; existingZ_idx -= 8) { break; } 
            [contentView addSubview:bindTipLabel];
            
            [bindTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.mas_equalTo(pwdSDKTextFiledView);
            NSArray * toastT = [NSArray arrayWithObjects:@(926), @(479), nil];
             if ([toastT containsObject:@"S"]) {}
                make.trailing.mas_equalTo(pwdSDKTextFiledView);
            double closeJ = 1981.0;
             while (@(closeJ).longValue >= 115) { break; }
                make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
                
            }];
            
        }
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [okBtn.layer setCornerRadius:VH(20)];
            NSDictionary * gestureH = [NSDictionary dictionaryWithObjectsAndKeys:@"eligible",@(900), nil];
             while (gestureH.count > 54) { break; }
        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * znewsu = @"indoor";
             while (znewsu.length > 187) { break; }
        [contentView addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(contentView).mas_offset(VH(-25));
            NSDictionary * projectD = @{@"madness":@(6526)};
             if (projectD.count > 47) {}
            make.leading.trailing.mas_equalTo(titleView);
            NSInteger appkeyK = 8979;
             while (@(appkeyK).longLongValue < 83) { break; }
            make.height.mas_equalTo(VH(40));
            float installn = 5890.0;
             if (@(installn).doubleValue == 110) {}
        }];
        
      
        CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(20)];
            NSArray * totalY = @[@(843), @(682), @(369)];
             if ([totalY containsObject:@"1"]) {}
        [okBtn.layer addSublayer:gl];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            gl.frame = okBtn.bounds;
            int configurator7 = 3698;
             if (@(configurator7).intValue <= 122) {}
        }];

    }
    return self;
}

-(UILabel *)rolePortOauthLabel:(NSDictionary *)headerPesenting selectStatue:(int)selectStatue {
     float fetchButton = 3123.0;
     float type_boApple = 5006.0;
    UILabel * ballpointpenSaliferousConfiguration = [[UILabel alloc] init];
    ballpointpenSaliferousConfiguration.text = nil;
    ballpointpenSaliferousConfiguration.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    ballpointpenSaliferousConfiguration.font = [UIFont systemFontOfSize:12];
    ballpointpenSaliferousConfiguration.textAlignment = NSTextAlignmentCenter;
    ballpointpenSaliferousConfiguration.alpha = 0.2;
    ballpointpenSaliferousConfiguration.backgroundColor = [UIColor colorWithRed:38 / 255.0 green:110 / 255.0 blue:107 / 255.0 alpha:1.0];
    ballpointpenSaliferousConfiguration.frame = CGRectMake(85, 201, 0, 0);
         int _l_86 = (int)fetchButton;
     int l_15 = 0;
     int t_100 = 0;
     if (_l_86 > t_100) {
         _l_86 = t_100;

     }
     for (int r_33 = 0; r_33 < _l_86; r_33++) {
         l_15 += r_33;
          _l_86 += r_33;
         break;

     }
         int _u_64 = (int)type_boApple;
     switch (_u_64) {
          case 28: {
          _u_64 /= 46;
          _u_64 += 92;
             break;

     }
          case 50: {
          _u_64 += 22;
          int h_100 = 1;
     int a_14 = 1;
     if (_u_64 > a_14) {
         _u_64 = a_14;
     }
     while (h_100 < _u_64) {
         h_100 += 1;
          _u_64 -= h_100;
     int h_99 = h_100;
              break;
     }
             break;

     }
          case 19: {
          _u_64 /= 72;
          _u_64 += 35;
             break;

     }
          case 38: {
          int c_0 = 0;
     for (int e_75 = _u_64; e_75 >= _u_64 - 1; e_75--) {
         c_0 += e_75;
     int o_29 = c_0;
          switch (o_29) {
          case 95: {
                  break;

     }
          case 64: {
          o_29 -= 37;
                  break;

     }
          case 6: {
          o_29 *= 98;
             break;

     }
          case 100: {
          o_29 /= 21;
                  break;

     }
          case 83: {
                  break;

     }
          case 45: {
          o_29 -= 66;
          o_29 *= 13;
             break;

     }
          case 36: {
                  break;

     }
          case 72: {
          o_29 -= 77;
          o_29 += 76;
             break;

     }
          case 57: {
                  break;

     }
     default:
         break;

     }
         break;

     }
             break;

     }
          case 54: {
          _u_64 /= 32;
             break;

     }
          case 16: {
          _u_64 /= 26;
          int j_8 = 0;
     for (int q_29 = _u_64; q_29 > _u_64 - 1; q_29--) {
         j_8 += q_29;
     int x_31 = j_8;
          if (x_31 <= 510) {
          }
         break;

     }
             break;

     }
     default:
         break;

     }

    return ballpointpenSaliferousConfiguration;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case TAG_CLOSE:
            [self removeFromGameView];
        {
            NSArray * generic8 = @[@(331), @(855)];

         {
UILabel * sermonize = [self rolePortOauthLabel:[NSDictionary dictionaryWithObjectsAndKeys:@"m",@"H", @"o",@"w", nil] selectStatue:5603];

      [self addSubview: sermonize];
      int sermonize_tag = sermonize.tag;
     int o_21 = (int)sermonize_tag;
     if (o_21 != 611) {
          switch (o_21) {
          case 55: {
          o_21 += 74;
          o_21 -= 98;
             break;

     }
          case 0: {
          o_21 -= 4;
          if (o_21 >= 287) {
          o_21 -= 76;
          o_21 /= 93;
     }
             break;

     }
          case 23: {
          o_21 += 11;
          o_21 *= 49;
             break;

     }
          case 32: {
          o_21 *= 63;
          if (o_21 < 237) {
          }
             break;

     }
          case 99: {
          o_21 += 6;
                  break;

     }
          case 51: {
          o_21 -= 49;
             break;

     }
          case 34: {
          o_21 /= 55;
          if (o_21 > 126) {
          o_21 *= 32;
          }
             break;

     }
          case 92: {
          o_21 += 10;
                  break;

     }
          case 83: {
                  break;

     }
     default:
         break;

     }
     }


}
             while (generic8.count > 58) { break; }
        }
            break;
            
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            if (accountSDKTextFiledView) {
                [self bindAccount_MMMethodMMM];
            }else{
                [self removeFromGameView];
            }
            
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(UITableView *)requestedErraneousHasIndexRangeBtnTableView:(NSString *)subviewsKeychain transactionsDime:(double)transactionsDime encoding:(double)encoding {
     NSInteger webStrings = 8042;
     UILabel * local_enUpdate_d = [[UILabel alloc] init];
     NSDictionary * wrapperMode = @{@"unambiguous":@(485)};
    UITableView * private_z = [UITableView new];
    private_z.delegate = nil;
    private_z.dataSource = nil;
    private_z.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    private_z.alpha = 0.6;
    private_z.backgroundColor = [UIColor colorWithRed:5 / 255.0 green:11 / 255.0 blue:119 / 255.0 alpha:0.5];
    private_z.frame = CGRectMake(7, 173, 0, 0);
         int temp_v_57 = (int)webStrings;
     int d_72 = 1;
     int p_39 = 0;
     if (temp_v_57 > p_39) {
         temp_v_57 = p_39;
     }
     while (d_72 <= temp_v_57) {
         d_72 += 1;
          temp_v_57 -= d_72;
     int z_2 = d_72;
          int o_10 = 1;
     int r_1 = 1;
     if (z_2 > r_1) {
         z_2 = r_1;
     }
     while (o_10 <= z_2) {
         o_10 += 1;
          z_2 /= o_10;
     int r_100 = o_10;
              break;
     }
         break;
     }
    local_enUpdate_d.frame = CGRectMake(97, 291, 0, 0);
    local_enUpdate_d.alpha = 0.2;
    local_enUpdate_d.backgroundColor = [UIColor colorWithRed:143 / 255.0 green:155 / 255.0 blue:128 / 255.0 alpha:0.7];
    local_enUpdate_d.font = [UIFont systemFontOfSize:10];
    local_enUpdate_d.text = nil;
    local_enUpdate_d.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    local_enUpdate_d.textAlignment = NSTextAlignmentCenter;
    
    CGRect local_enUpdate_dFrame = local_enUpdate_d.frame;
    local_enUpdate_dFrame.size = CGSizeMake(277, 125);
    local_enUpdate_d.frame = local_enUpdate_dFrame;
    if (local_enUpdate_d.isHidden) {
         local_enUpdate_d.hidden = false;
    }
    if (local_enUpdate_d.alpha > 0.0) {
         local_enUpdate_d.alpha = 0.0;
    }
    if (!local_enUpdate_d.isUserInteractionEnabled) {
         local_enUpdate_d.userInteractionEnabled = true;
    }


    
    CGRect private_zFrame = private_z.frame;
    private_zFrame.size = CGSizeMake(212, 205);
    private_z.frame = private_zFrame;
    if (private_z.alpha > 0.0) {
         private_z.alpha = 0.0;
    }
    if (private_z.isHidden) {
         private_z.hidden = false;
    }
    if (!private_z.isUserInteractionEnabled) {
         private_z.userInteractionEnabled = true;
    }


    return private_z;

}







-(void)bindAccount_MMMethodMMM
{

         {
UITableView * successorMaraud = [self requestedErraneousHasIndexRangeBtnTableView:@"eyesight" transactionsDime:8767.0 encoding:6333.0];

      [self addSubview: successorMaraud];
      int successorMaraud_tag = successorMaraud.tag;
     int _i_37 = (int)successorMaraud_tag;
     int y_74 = 1;
     int x_90 = 1;
     if (_i_37 > x_90) {
         _i_37 = x_90;
     }
     while (y_74 <= _i_37) {
         y_74 += 1;
     int v_90 = y_74;
          switch (v_90) {
          case 59: {
          v_90 *= 45;
          v_90 /= 67;
             break;

     }
          case 82: {
          v_90 -= 58;
                  break;

     }
          case 2: {
          v_90 *= 61;
             break;

     }
          case 75: {
          v_90 *= 34;
                  break;

     }
          case 53: {
          v_90 -= 62;
             break;

     }
          case 98: {
          v_90 += 44;
                  break;

     }
          case 45: {
          v_90 *= 28;
             break;

     }
          case 40: {
                  break;

     }
     default:
         break;

     }
         break;
     }


}

    
    
    NSString *account = accountSDKTextFiledView.inputUITextField.text;
            NSString * passwordu = @"indigenous";
    NSString *password = pwdSDKTextFiledView.inputUITextField.text;
  
    
 
    if (![SdkUtil validUserName_MMMethodMMM:account]) {
        return;
    }
    
    
    if (![SdkUtil validPwd_MMMethodMMM:password]) {
        return;
    }
    
    AccountModel *currentAccountModel = SDK_DATA.mLoginResponse.data;
    if (!currentAccountModel) {
        SDK_LOG(@"用户登录信息不存在 currentAccountModel nil");
            double home3 = 4141.0;
             while (@(home3).integerValue <= 51) { break; }
        return;
    }
  
    
    [SDKRequest doAccountBindingWithUserName_MMMethodMMM:account password_MMMethodMMM:password phoneAreaCode_MMMethodMMM:@"" phoneNumber_MMMethodMMM:@"" vfCode_MMMethodMMM:@"" email_MMMethodMMM:account thirdId_MMMethodMMM:currentAccountModel.thirdId thirdPlate_MMMethodMMM:currentAccountModel.loginType otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_bind_success2)];
        
        LoginResponse *cc = (LoginResponse *)responseData;
            NSArray * thirdL = @[@(206), @(159)];
             if ([thirdL containsObject:@"m"]) {}
        cc.data.account = account;
        cc.data.password = password;
            NSDictionary * headerh = @{@"fascist":[NSArray arrayWithObjects:@(140), @(121), @(753), nil]};
        cc.data.loginType = currentAccountModel.loginType;
            double eventc = 5969.0;
             for(NSInteger eventc_idx = 0; eventc_idx < @(eventc).intValue; eventc_idx += 2) { break; } 
        SDK_DATA.mLoginResponse = cc;
        
        [[ConfigCoreUtil share] saveAccountModel_MMMethodMMM:cc.data];
        
        
        AccountModel *rData = cc.data;
            NSArray * touchesI = [NSArray arrayWithObjects:@(NO), nil];
             while (touchesI.count > 188) { break; }
        LoginData *loginData = [[LoginData alloc] init];
            float aracV = 4239.0;
             if (@(aracV).floatValue == 17) {}
        loginData.accessToken = rData.token;
            int finishI = 1344;
             while (@(finishI).longValue <= 30) { break; }
        loginData.userId = rData.userId;
            NSArray * customm = [NSArray arrayWithObjects:@(601), @(54), nil];
             while (customm.count > 10) { break; }
        loginData.timestamp = rData.timestamp;
        
        loginData.isBind = rData.isBind;
            NSArray * m_heightn = [NSArray arrayWithObjects:@(215), @(41), @(631), nil];
             if (m_heightn.count > 197) {}
        loginData.isBindPhone = rData.isBindPhone;
            NSString * adaptS = @"regiment";
        loginData.loginType = rData.loginType;
        
        loginData.sign = rData.sign;
            int languageo = 6495;
             for(int languageo_idx = 0; languageo_idx < @(languageo).intValue; languageo_idx += 10) { break; } 
        loginData.telephone = rData.telephone;
            double notice3 = 1750.0;
             while (@(notice3).longLongValue >= 27) { break; }
        loginData.loginId = rData.loginId;
        
        if (self.mMWBlock) {
            self.mMWBlock(YES, loginData);
        }
        
        [self removeFromGameView];
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
            NSString * codesA = @"peninsular";
             while (codesA.length > 145) { break; }
    }];
    
}

-(NSDictionary *)offMsghdrAloneics:(NSInteger)plist {
     double hour = 8297.0;
    NSMutableDictionary * society = [NSMutableDictionary dictionaryWithCapacity:848];
    hour = 8896;
    [society setObject: @(hour) forKey:@"voluminous"];
         int tmp_l_1 = (int)hour;
     if (tmp_l_1 > 584) {
          }
     else {
          tmp_l_1 -= 54;

     }

    return society;

}






-(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(SDKTextFiledView *)accountFiledView pwdView_MMMethodMMM:(SDKTextFiledView *)pwdFiledView{

   self.ppleSpace = 1073.0;

   self.reload_list = @[@"foolserrand", @"junior", @"latch"];

   self.aracMark = 8093;

   self.startEfaultActive_string = @"gallery";

    
    
    
    NSString *account = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
    NSString *account_tips = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
            float startV = 2555.0;

         {
NSDictionary * ursine = [self offMsghdrAloneics:6867];

      int ursine_len = ursine.count;
     int i_38 = (int)ursine_len;
     if (i_38 >= 147) {
          i_38 -= 31;
     }
      [ursine enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"append"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
             if (@(startV).doubleValue > 138) {}
    NSString *iconName = mw_smail_icon2;
            NSInteger response6 = 1164;
             if (@(response6).intValue >= 23) {}
    NSString *pwdText = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL pwdEnable = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
        iconName = mw_smail_icon2;
            NSString * creatF = @"decompose";
             if (creatF.length > 121) {}
        pwdText = mAccountModel.password;
            NSDictionary * c_imageE = [NSDictionary dictionaryWithObjectsAndKeys:@"condense",@(663), nil];
             if (c_imageE.count > 45) {}
        pwdEnable = YES;
            NSDictionary * message_ = [NSDictionary dictionaryWithObjectsAndKeys:@"inflame",@(253), @"unfortunately",@(195), @"hope",@(3), nil];
             if (message_[@"v"]) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_mw.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
            int gradientY = 4838;
             for(int gradientY_idx = 0; gradientY_idx < @(gradientY).intValue; gradientY_idx += 5) { break; } 
        pwdEnable = NO;
            float timesF = 6110.0;
             for(int timesF_idx = 0; timesF_idx < @(timesF).intValue; timesF_idx += 8) { break; } 
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_fb.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
            float sharerK = 6217.0;
             if (@(sharerK).longLongValue > 63) {}
        pwdEnable = NO;
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_google.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
            double statuew = 5530.0;
             for(int statuew_idx = 18; statuew_idx < @(statuew).intValue; statuew_idx -= 10) { break; } 
        pwdEnable = NO;
            NSArray * gesture9 = [NSArray arrayWithObjects:@(827), @(843), nil];
             if (gesture9.count > 75) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_guest.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
            NSArray * util5 = @[@"direct", @"kitten", @"unpremeditated"];
        pwdEnable = NO;
            NSString * pageF = @"lightly";
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_apple.localx;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
            float lablev = 1500.0;
             if (@(lablev).longLongValue <= 92) {}
        pwdEnable = NO;
            NSInteger dicU = 346;
             if (@(dicU).intValue <= 174) {}
        account_tips = wwwww_tag_wwwww_text_has_bind_tips_line.localx;
    }
    
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
            NSDictionary * a_count6 = @{@"buddhist":@(8634)};
    accountFiledView.inputUITextField.text = account_tips;
    
    if (pwdFiledView) {
       
        if (pwdEnable) {
            pwdFiledView.hidden = NO;
            NSArray * identifierj = @[@(331), @(670), @(982)];
            pwdFiledView.inputUITextField.text = pwdText;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            NSDictionary * handle1 = [NSDictionary dictionaryWithObjectsAndKeys:@"downgrade",@(115), @"obviously",@(278), nil];
             if (handle1.count > 94) {}
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSArray * phoneF = @[@(772), @(191)];
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            double level4 = 2.0;
             if (@(level4).longLongValue >= 123) {}
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}


- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
            NSDictionary * infon = [NSDictionary dictionaryWithObjectsAndKeys:@"rhetoric",@(373), @"alleviate",@(706), @"selfsatisfaction",@(135), nil];
    AccountModel *tempAccountModel = (AccountModel *)self.fromPageParam;
            NSInteger makel = 5099;
             while (@(makel).floatValue >= 11) { break; }
    [AccountLoginView makeAccountFiledViewStatus_MMMethodMMM:tempAccountModel accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            double regularR = 8259.0;
             if (@(regularR).intValue < 63) {}
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
}

@end
