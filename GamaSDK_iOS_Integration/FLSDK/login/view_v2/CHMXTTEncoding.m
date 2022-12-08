
#import "CHMXTTEncoding.h"
#import "CHMXTTLoginChange.h"
#import "CHMXTTHelperButton.h"
#import "CHMXTTGamaCore.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTResp.h"
#import "SdkHeader.h"
#import "CHMXTTAccount.h"
#import "CHMXTTErvice.h"
#import "CHMXTTConfig.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface CHMXTTEncoding()


@property(nonatomic, assign)Boolean  enbaleHour;
@property(nonatomic, assign)float  makeMargin;
@property(nonatomic, assign)float  value_padding;
@property(nonatomic, assign)float  hourMargin;


@end

@implementation CHMXTTEncoding
{
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
    UIView *deleteView;
}

-(UIImageView *)pushGroupRequireExtEnabledImageView:(double)ramework {
     UILabel * lableScale = [UILabel new];
     UIView * preferredHelper = [UIView new];
    UIImageView * raze = [[UIImageView alloc] init];
    raze.contentMode = UIViewContentModeScaleAspectFit;
    raze.animationRepeatCount = 8;
    raze.image = [UIImage imageNamed:@"info"];
    raze.frame = CGRectMake(230, 188, 0, 0);
    raze.alpha = 1.0;
    raze.backgroundColor = [UIColor colorWithRed:97 / 255.0 green:127 / 255.0 blue:7 / 255.0 alpha:0.7];
    lableScale.backgroundColor = [UIColor colorWithRed:249 / 255.0 green:212 / 255.0 blue:215 / 255.0 alpha:0.2];
    lableScale.alpha = 0.8;
    lableScale.frame = CGRectMake(71, 94, 0, 0);
    lableScale.text = @"";
    lableScale.font = [UIFont systemFontOfSize:12];
    lableScale.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    lableScale.textAlignment = NSTextAlignmentRight;
    
    CGRect lableScaleFrame = lableScale.frame;
    lableScaleFrame.size = CGSizeMake(161, 73);
    lableScale.frame = lableScaleFrame;
    if (lableScale.alpha > 0.0) {
         lableScale.alpha = 0.0;
    }
    if (lableScale.isHidden) {
         lableScale.hidden = false;
    }
    if (!lableScale.isUserInteractionEnabled) {
         lableScale.userInteractionEnabled = true;
    }

    preferredHelper.alpha = 0.4;
    preferredHelper.backgroundColor = [UIColor colorWithRed:149 / 255.0 green:203 / 255.0 blue:240 / 255.0 alpha:0.2];
    preferredHelper.frame = CGRectMake(119, 219, 0, 0);
    
    CGRect preferredHelperFrame = preferredHelper.frame;
    preferredHelperFrame.size = CGSizeMake(281, 273);
    preferredHelper.frame = preferredHelperFrame;
    if (preferredHelper.alpha > 0.0) {
         preferredHelper.alpha = 0.0;
    }
    if (preferredHelper.isHidden) {
         preferredHelper.hidden = false;
    }
    if (!preferredHelper.isUserInteractionEnabled) {
         preferredHelper.userInteractionEnabled = true;
    }


    
    CGRect razeFrame = raze.frame;
    razeFrame.size = CGSizeMake(221, 67);
    raze.frame = razeFrame;
    if (raze.alpha > 0.0) {
         raze.alpha = 0.0;
    }
    if (raze.isHidden) {
         raze.hidden = false;
    }
    if (!raze.isUserInteractionEnabled) {
         raze.userInteractionEnabled = true;
    }

    return raze;

}







-(void)addDeleteAccountView_MMMethodMMM
{

         {
UIImageView * putative = [self pushGroupRequireExtEnabledImageView:7455.0];

      [self addSubview: putative];
      int putative_tag = putative.tag;
     int t_25 = (int)putative_tag;
     switch (t_25) {
          case 94: {
          t_25 /= 100;
          if (t_25 != 435) {
          t_25 /= 6;
     }
             break;

     }
          case 23: {
          t_25 += 72;
             break;

     }
          case 50: {
          if (t_25 < 952) {
          t_25 /= 100;
          t_25 += 32;
     }
             break;

     }
          case 57: {
          int n_11 = 1;
     int u_59 = 1;
     if (t_25 > u_59) {
         t_25 = u_59;
     }
     while (n_11 <= t_25) {
         n_11 += 1;
     int t_74 = n_11;
          if (t_74 <= 320) {
          t_74 /= 75;
          t_74 /= 36;
     }
         break;
     }
             break;

     }
     default:
         break;

     }


}

    deleteView = [[UIView alloc] init];
            NSInteger generic8 = 1277;
             while (@(generic8).floatValue <= 128) { break; }
    deleteView.backgroundColor = UIColor.whiteColor;
            double rateG = 2893.0;
             for(int rateG_idx = 64; rateG_idx < @(rateG).intValue; rateG_idx--) { break; } 
    deleteView.layer.cornerRadius = VW(14);
    
    UIImageView *dictionaryView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:mw_delete_icon];
            double adaptN = 1308.0;
             if (@(adaptN).longLongValue == 71) {}
    [deleteView addSubview:dictionaryView];
    [dictionaryView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
            Boolean w_count9 = YES;
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
            NSArray * socialI = [NSArray arrayWithObjects:@(YES), nil];
             while (socialI.count > 99) { break; }
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
            NSDictionary * selectedu = [NSDictionary dictionaryWithObjectsAndKeys:@"sly",@(370), nil];
             while (selectedu.count > 10) { break; }
        make.centerY.equalTo(deleteView);
            NSArray * handlerz = [NSArray arrayWithObjects:@(4749.0), nil];
             if (handlerz.count > 145) {}
        make.width.height.mas_equalTo(VW(15));
            double vipB = 8504.0;
             if (@(vipB).floatValue <= 2) {}
    }];
    
    UILabel *actionLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
            NSDictionary * logger5 = [NSDictionary dictionaryWithObjectsAndKeys:@"surname",@(654), @"drought",@(235), nil];
             while (logger5.count > 34) { break; }
    [deleteView addSubview:actionLabel];
    [actionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(dictionaryView.mas_trailing).mas_offset(VW(6));
            NSDictionary * currentH = [NSDictionary dictionaryWithObjectsAndKeys:@"smack",@(2617.0), nil];
             if (currentH[@"q"]) {}
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
            NSArray * esclipe7 = [NSArray arrayWithObjects:@(4494), nil];
             while (esclipe7.count > 12) { break; }
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_not_login)];
        
    }];
    
}

-(NSDictionary *)eyeQueryCryptAdaptReachability:(NSString *)fireNumber {
     int fail = 557;
    NSMutableDictionary * crabbedMalapropism = [[NSMutableDictionary alloc] init];
    fail *= fail;
    [crabbedMalapropism setObject: @(fail) forKey:@"rebusConferKiss"];
         int temp_d_66 = (int)fail;
     switch (temp_d_66) {
          case 90: {
          temp_d_66 += 61;
          int k_27 = 1;
     int h_82 = 0;
     if (temp_d_66 > h_82) {
         temp_d_66 = h_82;
     }
     while (k_27 < temp_d_66) {
         k_27 += 1;
     int x_70 = k_27;
              break;
     }
             break;

     }
          case 97: {
          temp_d_66 -= 54;
          int g_34 = 1;
     int v_9 = 0;
     if (temp_d_66 > v_9) {
         temp_d_66 = v_9;
     }
     while (g_34 < temp_d_66) {
         g_34 += 1;
     int r_12 = g_34;
          if (r_12 < 539) {
          r_12 *= 93;
          r_12 += 89;
     }
         break;
     }
             break;

     }
          case 22: {
          temp_d_66 += 59;
          temp_d_66 -= 47;
             break;

     }
          case 91: {
          int r_29 = 0;
     for (int j_5 = temp_d_66; j_5 >= temp_d_66 - 1; j_5--) {
         r_29 += j_5;
          if (j_5 > 0) {
          temp_d_66 +=  j_5;

     }
     int e_94 = r_29;
              break;

     }
             break;

     }
     default:
         break;

     }

    return crabbedMalapropism;

}






- (void)showTermsView_MMMethodMMM {

    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    
    CHMXTTConfig *arac = [[CHMXTTConfig alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;

         {
NSDictionary * odometerComparatively = [self eyeQueryCryptAdaptReachability:@"demanding"];

      int odometerComparatively_len = odometerComparatively.count;
     int temp_m_87 = (int)odometerComparatively_len;
     if (temp_m_87 < 423) {
          temp_m_87 *= 81;
          if (temp_m_87 != 977) {
          temp_m_87 /= 60;
          temp_m_87 -= 41;
     }
     }
      [odometerComparatively enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"device"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
            NSArray * editm = [NSArray arrayWithObjects:@(1522.0), nil];
             if (editm.count > 70) {}
    }];
    
    UIView *implView = appTopViewController.view;
            NSArray * languagef = [NSArray arrayWithObjects:@(628), @(735), @(974), nil];
             while (languagef.count > 9) { break; }
    [implView addSubview:arac];
    
    [arac mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(implView);
            NSDictionary * existingr = [NSDictionary dictionaryWithObjectsAndKeys:@"recondite",@(663), @"domicile",@(322), @"rinse",@(48), nil];
        make.leading.mas_equalTo(implView);
            float self_fo = 1559.0;
             while (@(self_fo).longValue < 156) { break; }
        make.trailing.mas_equalTo(implView);
            NSDictionary * btng = [NSDictionary dictionaryWithObjectsAndKeys:@"smart",@(848), nil];
             while (btng.count > 71) { break; }
    }];
    
    arac.transform = CGAffineTransformTranslate(arac.transform, 0, implView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        arac.transform = CGAffineTransformTranslate(arac.transform, 0, -implView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
            int systemL = 272;
             while (@(systemL).longValue <= 97) { break; }
}

-(NSString *)separatorEndedCeilWithproductFacebook:(double)purchaseReader {
     NSInteger date = 4742;
    NSMutableString *confederacyDuskConvoluted = [NSMutableString new];
         int q_64 = (int)date;
     q_64 -= 98;

    return confederacyDuskConvoluted;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.enbaleHour = YES;

   self.makeMargin = 9262.0;

   self.value_padding = 6491.0;

         {
NSString * remit = [self separatorEndedCeilWithproductFacebook:5465.0];

      int remit_len = remit.length;
     int tmp_t_27 = (int)remit_len;
     int i_71 = 0;
     int e_58 = 1;
     if (tmp_t_27 > e_58) {
         tmp_t_27 = e_58;

     }
     for (int k_60 = 0; k_60 < tmp_t_27; k_60++) {
         i_71 += k_60;
          if (k_60 > 0) {
          tmp_t_27 -=  k_60;

     }
     int b_3 = i_71;
          int q_12 = 1;
     int z_20 = 0;
     if (b_3 > z_20) {
         b_3 = z_20;
     }
     while (q_12 <= b_3) {
         q_12 += 1;
     int e_63 = q_12;
          switch (e_63) {
          case 39: {
          e_63 -= 43;
             break;

     }
          case 91: {
          e_63 *= 12;
             break;

     }
          case 65: {
                  break;

     }
          case 47: {
          e_63 *= 94;
             break;

     }
          case 35: {
          e_63 -= 8;
                  break;

     }
          case 19: {
                  break;

     }
     default:
         break;

     }
         break;
     }
         break;

     }
      if ([remit isEqualToString:@"more"]) {
              NSLog(@"%@",remit);
      }


}

   self.hourMargin = 7876.0;

   self.hidden_idx = 5512;

   self.coreList = [NSArray arrayWithObjects:@(333), nil];

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
            [CHMXTTAccount appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
        {
            float callbackS = 4611.0;
             if (@(callbackS).floatValue >= 24) {}
        }
            break;
            
        case guestLoginActTag:
            {
            SDK_LOG(wwwww_tag_wwwww_guestLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            }
            break;
            
        case fbLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_fbLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            break;
        case googleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_googleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
        {
            NSDictionary * confj = @{@"soporific":@(747)};
        }
            break;
        case lineLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_lineLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [CHMXTTAccount lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
        {
            float findf = 2152.0;
             if (@(findf).longLongValue > 72) {}
        }
            break;
        default:
            break;
    }
    
}

-(NSArray *)impBackwardsLogoOperationProject{
     int last = 4264;
     float adaptErvice = 6572.0;
    NSMutableArray * chip = [NSMutableArray arrayWithCapacity:69];
    last = last;
    [chip addObject: @(last)];
         int e_64 = (int)last;
     e_64 -= 99;
adaptErvice = MAX(last, 1) / MAX(adaptErvice, 1);
    [chip addObject: @(adaptErvice)];
         int temp_u_50 = (int)adaptErvice;
     int a_49 = 1;
     int y_91 = 1;
     if (temp_u_50 > y_91) {
         temp_u_50 = y_91;
     }
     while (a_49 <= temp_u_50) {
         a_49 += 1;
     int r_48 = a_49;
          switch (r_48) {
          case 37: {
          r_48 += 56;
                  break;

     }
          case 96: {
          r_48 *= 54;
             break;

     }
          case 24: {
          r_48 /= 16;
          r_48 += 10;
             break;

     }
          case 73: {
          r_48 -= 56;
          if (r_48 >= 42) {
          r_48 *= 29;
          r_48 /= 95;
     }
             break;

     }
          case 38: {
                  break;

     }
          case 78: {
          r_48 /= 52;
             break;

     }
          case 6: {
          if (r_48 <= 974) {
          r_48 -= 41;
          }
             break;

     }
          case 0: {
                  break;

     }
          case 21: {
          r_48 *= 79;
          if (r_48 < 255) {
          r_48 -= 87;
          r_48 *= 42;
     }
             break;

     }
     default:
         break;

     }
         break;
     }

    return chip;

}







-(void)addView_MMMethodMMM
{

    
    
    
    UIView *main_uView = [[UIView alloc] init];
            Boolean responsei = YES;
    [self addSubview:main_uView];

         {
NSArray * whoseReactant = [self impBackwardsLogoOperationProject];

      [whoseReactant enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx < 37) {
              NSLog(@"delete_fs:%@", obj);
        }
      }];
      int whoseReactant_len = whoseReactant.count;
     int o_2 = (int)whoseReactant_len;
     int b_35 = 0;
     int a_47 = 0;
     if (o_2 > a_47) {
         o_2 = a_47;

     }
     for (int e_57 = 1; e_57 < o_2; e_57++) {
         b_35 += e_57;
          if (e_57 > 0) {
          o_2 -=  e_57;

     }
              break;

     }


}
    [main_uView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
            NSString * bolckd = @"hat";
             while (bolckd.length > 62) { break; }
        make.centerY.mas_equalTo(self);
            NSString * receiptM = @"means";
             while (receiptM.length > 199) { break; }
    }];
    
    UIImageView *registView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:mw_logo];
            double touchq = 3633.0;
             while (@(touchq).floatValue < 121) { break; }
    registView.hidden = YES;
    if (SDK_DATA.mConfigModel.showLogo) {
        registView.hidden = NO;
    }
    [main_uView addSubview:registView];
    [registView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(main_uView.mas_top);
            NSDictionary * timere = @{@"lace":@(592), @"criminal":@(752)};
             if (timere[@"N"]) {}
        make.width.mas_equalTo(VW(200));
        if (SDK_DATA.mConfigModel.showLogo) {
            make.height.mas_equalTo(VH(50));
        }else{
            make.height.mas_equalTo(VH(2));
        }
        make.centerX.mas_equalTo(main_uView);
            NSArray * client5 = [NSArray arrayWithObjects:@(279), @(287), @(241), nil];
    }];
    
    
    
    guestLoginBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];
            NSArray * emptyb = [NSArray arrayWithObjects:@(629), @(33), @(573), nil];
             if ([emptyb containsObject:@"M"]) {}
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [main_uView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (registView.hidden) {
            make.top.mas_equalTo(registView.mas_bottom);
        }else{
            make.top.mas_equalTo(registView.mas_bottom).mas_offset(VH(18));
        }
        
        make.leading.mas_equalTo(main_uView).mas_offset(VH(38));
            NSDictionary * facebookX = @{@"macerate":@(34)};
             while (facebookX.count > 81) { break; }
        make.trailing.mas_equalTo(main_uView).mas_offset(VH(-38));;
            int tokenW = 9843;
             while (@(tokenW).integerValue > 184) { break; }
        make.height.mas_equalTo(VH(50));
            NSDictionary * closeZ = @{@"ditty":@(563), @"mandate":@(477), @"verbiage":@(21)};
             if (closeZ[@"v"]) {}
    }];
    
    UIView *prefers = [[UIView alloc] init];
            NSArray * models2 = @[@(290), @(17), @(431)];
             while (models2.count > 77) { break; }
    [guestLoginBtn addSubview:prefers];
    [prefers mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);
            int contentr = 3323;
             if (@(contentr).integerValue > 21) {}
    }];
    
    UIButton *becomeBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:guse_login_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [prefers addSubview:becomeBtn];
    [becomeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(prefers);
            NSArray * eventk = @[@(408), @(516)];
        make.width.height.mas_equalTo(VW(30));
            NSString * changec = @"hindrance";
             if (changec.length > 9) {}
    }];
    
    UIButton *public_7Btn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_guest_login_btn.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSArray * sheetA = [NSArray arrayWithObjects:@(856), @(816), @(269), nil];
             while (sheetA.count > 197) { break; }
    [prefers addSubview:public_7Btn];
    [public_7Btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(prefers);
            NSDictionary * modeJ = [NSDictionary dictionaryWithObjectsAndKeys:@"gregarious",@(8050), nil];
        make.leading.mas_equalTo(becomeBtn.mas_trailing).mas_offset(VW(12));
            double update_xqb = 906.0;
             while (@(update_xqb).intValue < 22) { break; }
    }];
    if (!SDK_DATA.mConfigModel.visitorLogin) {
        prefers.hidden = YES;
    }
    
    
    UIView *orientationsView = guestLoginBtn;
    
    
    
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSDictionary * method__jL = [NSDictionary dictionaryWithObjectsAndKeys:@"extricable",@(776), @"african",@(89), @"science",@(888), nil];
        x_titleBtn.tag = appleLoginActTag;
        x_titleBtn.cornerRadius = VH(25);
            NSInteger ecodingU = 2139;
             while (@(ecodingU).longValue == 12) { break; }
        [main_uView addSubview:x_titleBtn];

        orientationsView = x_titleBtn;
        
        if (!SDK_DATA.mConfigModel.appleLogin || SDK_DATA.mConfigModel.appPassCheck) {
            x_titleBtn.hidden = YES;
            [x_titleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.mas_equalTo(guestLoginBtn);
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(2);
            double touch5 = 6471.0;
             while (@(touch5).floatValue >= 8) { break; }
                make.height.mas_equalTo(2);
            Boolean ppleBB = NO;
             if (!ppleBB) { __asm__("NOP"); }
            }];
            
        }else{
            [x_titleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.height.mas_equalTo(guestLoginBtn);
            NSArray * userx = [NSArray arrayWithObjects:@(402), @(717), @(176), nil];
             while (userx.count > 34) { break; }
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
            NSDictionary * saved = [NSDictionary dictionaryWithObjectsAndKeys:@"skein",@(259), nil];
            }];
        }
        
    }
    
    UIView *hour = [[UIView alloc] init];
            NSDictionary * g_count7 = @{@"wreck":@(76)};
             if (g_count7.count > 22) {}
    [main_uView addSubview:hour];
    [hour mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(main_uView);
            int currentE = 6928;
             while (@(currentE).longValue >= 68) { break; }
        make.top.mas_equalTo(orientationsView.mas_bottom).mas_offset(VH(27));
            NSDictionary * localxp = [NSDictionary dictionaryWithObjectsAndKeys:@"that",@(419), @"cube",@(257), @"willowy",@(283), nil];
             if (localxp.count > 200) {}
    }];
    
    UILabel *orientationsLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_tips_have_account.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor]];
            NSString * googlej = @"gull";
             if ([googlej isEqualToString:@"w"]) {}
    [hour addSubview:orientationsLabel];
    [orientationsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hour);
    }];
    
    UILabel *passwordLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor]];
            NSDictionary * localizedG = @{@"handicapped":@(738), @"suburb":@(388), @"creamy":@(870)};
             if (localizedG[@"l"]) {}
    [hour addSubview:passwordLabel];
    [passwordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hour);
            Boolean backgroundY = NO;
             if (backgroundY) { __asm__("NOP"); }
        make.leading.mas_equalTo(orientationsLabel.mas_trailing);
            NSInteger radius6 = 1842;
             while (@(radius6).integerValue > 139) { break; }
    }];
    
    
    UILabel *boardLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login_other.localx fontSize_MMMethodMMM:FS(11) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSInteger size_55e = 656;
             if (@(size_55e).longValue <= 162) {}
    [main_uView addSubview:boardLabel];
    [boardLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(orientationsLabel.mas_bottom).mas_offset(VH(22));
            NSArray * closeW = [NSArray arrayWithObjects:@(936), @(820), nil];
             if (closeW.count > 124) {}
        make.centerX.mas_equalTo(main_uView);
            NSString * seedx = @"play";
             while (seedx.length > 160) { break; }
    }];
    
    UIView *window_5v = [[UIView alloc] init];
            NSDictionary * c_imageP = [NSDictionary dictionaryWithObjectsAndKeys:@"steak",@(3238.0), nil];
             while (c_imageP.count > 196) { break; }
    window_5v.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            double delegate_fk = 6881.0;
             if (@(delegate_fk).integerValue >= 23) {}
    [main_uView addSubview:window_5v];
    [window_5v mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.trailing.mas_equalTo(boardLabel.mas_leading).mas_offset(VW(-22));
            NSArray * return_20 = @[@(692), @(298)];
             while (return_20.count > 108) { break; }
        make.centerY.mas_equalTo(boardLabel);
            NSString * handle5 = @"hygiene";
        make.height.mas_equalTo(1);
            float orderr = 1774.0;
             for(int orderr_idx = 75; orderr_idx < @(orderr).intValue; orderr_idx--) { break; } 
        make.width.mas_equalTo(VW(26));
        
    }];
    
    UIView *conf = [[UIView alloc] init];
            NSInteger presentinge = 980;
             while (@(presentinge).doubleValue >= 38) { break; }
    conf.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
            NSArray * configS = [NSArray arrayWithObjects:@(968), @(624), nil];
             if (configS.count > 103) {}
    [main_uView addSubview:conf];
    [conf mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.leading.mas_equalTo(boardLabel.mas_trailing).mas_offset(VW(22));
            NSArray * normal7 = [NSArray arrayWithObjects:@"compress", nil];
             if (normal7.count > 4) {}
        make.centerY.mas_equalTo(boardLabel);
            double blockU = 6612.0;
             if (@(blockU).integerValue < 25) {}
        make.height.mas_equalTo(1);
            int functionz = 1856;
             if (@(functionz).longValue <= 38) {}
        make.width.mas_equalTo(VW(26));
        
    }];
    
    
    
    
    UIView *homeView = [[UIView alloc] init];
            NSArray * stopO = @[@(328), @(995)];
             if (stopO.count > 30) {}
    [main_uView addSubview:homeView];
    [homeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(main_uView);
            NSString * inputY = @"sway";
        make.top.mas_equalTo(boardLabel.mas_bottom).mas_offset(VH(24));
        
        make.bottom.mas_equalTo(main_uView.mas_bottom);
            NSArray * timinge = @[@(8194)];
             if ([timinge containsObject:@"T"]) {}
    }];
    
    
    CGFloat rate = VW(34);
            double fromY = 3889.0;
             for(int fromY_idx = 0; fromY_idx < @(fromY).intValue; fromY_idx += 4) { break; } 
    CGFloat landscape = rate;
            double method_m2N = 5001.0;
             while (@(method_m2N).floatValue <= 75) { break; }
    CGFloat mask = VW(27);
    
    NSMutableArray *idfaQE;
    if (SDK_DATA.mConfigModel.appPassCheck) {
        idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:NO];
    }else{
        idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:NO guestBtn_MMMethodMMM:NO];
    }
    UIView *with_7View = homeView;
  
    for (int i = 0; i < idfaQE.count; i++) {
        
        LoginButtonData *removeL = idfaQE[i];
            NSString * rrorW = @"electric";
             if ([rrorW isEqualToString:@"u"]) {}
        UIView *seedView;
        
        if ([removeL.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
            
            if (@available(iOS 13.0, *)) {
                
                ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                          authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSString * termi = @"arabian";
                x_titleBtn.tag = removeL.tag;
            NSString * rate6 = @"reportage";
             if (rate6.length > 156) {}
                x_titleBtn.cornerRadius = rate / 2.0;
            Boolean ppleq = NO;
             while (ppleq) { __asm__("NOP"); break; }
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
            float phonek = 8679.0;
             if (@(phonek).doubleValue >= 200) {}
                make.height.mas_equalTo(landscape);
            Boolean codeZ = NO;
             while (!codeZ) { __asm__("NOP"); break; }
                make.top.mas_equalTo(homeView);
            int interruptH = 237;
             if (@(interruptH).integerValue > 84) {}
                make.bottom.mas_equalTo(homeView);
                
                if (i == 0) {
                    make.leading.mas_equalTo(with_7View);
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
    
    
    [hour addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        if (self.delegate) {
            [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) from_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME param_MMMethodMMM:@1];
        }
    }];
    
  
    UIView *postView = [[UIView alloc] init];
            NSArray * generic_ = @[@[@(288), @(256)]];
             while (generic_.count > 137) { break; }
    [self addSubview:postView];
    [postView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
            double window_7gh = 1289.0;
             for(int window_7gh_idx = 0; window_7gh_idx < @(window_7gh).intValue; window_7gh_idx++) { break; } 
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
    }];
    
    checkBoxTermsBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            double versionA = 4423.0;
             if (@(versionA).floatValue >= 176) {}
    checkBoxTermsBtn.selected = YES;
            float change8 = 7292.0;
             if (@(change8).longLongValue >= 12) {}
    [postView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(postView);
            NSArray * mode9 = [NSArray arrayWithObjects:@(242), @(649), @(672), nil];
        make.centerY.mas_equalTo(postView);
            NSString * bool_qr = @"hardihood";
             if ([bool_qr isEqualToString:@"o"]) {}
        make.width.height.mas_equalTo(VH(15));
       
    }];
    
        NSString *progress = GetString(wwwww_tag_wwwww_text_ui_term_port_read2);
            NSString * disappearW = @"nylon";
             while (disappearW.length > 56) { break; }
    NSString *local_u = GetString(wwwww_tag_wwwww_sdk_terms_title);
    
        UILabel *parse = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:progress fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSArray * with_xZ = @[@"amusement", @"clever"];
             while (with_xZ.count > 198) { break; }
        parse.textAlignment = NSTextAlignmentLeft;
            NSArray * array3 = @[@(9084.0)];
             if (array3.count > 164) {}
        parse.backgroundColor = [UIColor clearColor];
            float timesQ = 4202.0;
             for(NSInteger timesQ_idx = 0; timesQ_idx < @(timesQ).intValue; timesQ_idx += 8) { break; } 
        parse.numberOfLines = 1;
        
    
         NSDictionary *landspace = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
            double seriesd = 3502.0;
             if (@(seriesd).integerValue < 58) {}
         NSMutableAttributedString *format = [[NSMutableAttributedString alloc]initWithString:progress];
        [format addAttributes:landspace range: NSMakeRange(progress.length- local_u.length, local_u.length)];
         
        parse.attributedText = format;
        
        [postView addSubview:parse];
        [parse mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(postView);
            double return_zt = 9859.0;
             while (@(return_zt).doubleValue <= 92) { break; }
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSString * l_subviewsO = @"aquiline";
             while (l_subviewsO.length > 16) { break; }
            make.trailing.mas_equalTo(postView.mas_trailing);
        }];
            NSArray * authrizationR = @[@(702), @(380), @(34)];
             if ([authrizationR containsObject:@"y"]) {}
        parse.userInteractionEnabled=YES;
        [parse addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            [self showTermsView_MMMethodMMM];
            
        }];
            float changs = 1083.0;
             for(NSInteger changs_idx = 0; changs_idx < @(changs).intValue; changs_idx++) { break; } 
    ConfigModel *http = SDK_DATA.mConfigModel;
            NSInteger webV = 2033;
             while (@(webV).doubleValue == 86) { break; }
    postView.hidden = !http.showContract;
    
    
    if (http.deleteAccount) {
        [self addDeleteAccountView_MMMethodMMM];
        if(deleteView){
            [self addSubview:deleteView];
         
            [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
                if(IS_PORTRAIT){
                    make.bottom.mas_equalTo(postView.mas_top).mas_offset(VH(-28));
            float creats = 5202.0;
             if (@(creats).longLongValue >= 67) {}
                    make.centerX.mas_equalTo(self);
                }else{
                    make.bottom.mas_equalTo(postView.mas_top).mas_offset(VH(-12));
            NSString * p_products8 = @"pinnacle";
                    make.centerX.mas_equalTo(self);
                }
            }];
            
        }
    }
}



-(BOOL)checkAgreeTerm_MMMethodMMM
{

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
            NSArray * supported0 = [NSArray arrayWithObjects:@(517), @(33), @(305), nil];
    [self showTermsView_MMMethodMMM];
            int remove1 = 3344;
             if (@(remove1).floatValue < 37) {}
    return NO;
}

#pragma mark - 删除账号按钮




- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
       
        [self addView_MMMethodMMM];
    }
    return self;
}

@end
