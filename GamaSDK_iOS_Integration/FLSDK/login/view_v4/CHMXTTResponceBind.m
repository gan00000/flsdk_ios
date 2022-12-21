
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
#import "CHMXTTInfo.h"

@interface CHMXTTResponceBind()



@property(nonatomic, assign)double  encode_min;
@property(nonatomic, copy)NSArray *  codesIndicator_list;
@property(nonatomic, assign)double  from_space;


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
    
    CAGradientLayer *loginGl;

}

-(NSDictionary *)phoneUrlsErraneousTri:(NSString *)lable {
    NSMutableDictionary * penalty = [[NSMutableDictionary alloc] init];

    return penalty;

}







- (void)doDeleteAccount_MMMethodMMM {

         {
NSDictionary * creditable = [self phoneUrlsErraneousTri:@"profound"];

      [creditable enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"page"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];
      int creditable_len = creditable.count;
     int _g_13 = (int)creditable_len;
     int b_23 = 1;
     int k_53 = 0;
     if (_g_13 > k_53) {
         _g_13 = k_53;
     }
     while (b_23 < _g_13) {
         b_23 += 1;
          _g_13 -= b_23;
     int h_49 = b_23;
          int c_99 = 1;
     int j_36 = 0;
     if (h_49 > j_36) {
         h_49 = j_36;
     }
     while (c_99 <= h_49) {
         c_99 += 1;
     int p_60 = c_99;
          switch (p_60) {
          case 36: {
          p_60 += 31;
                  break;

     }
          case 51: {
                  break;

     }
          case 60: {
                  break;

     }
          case 14: {
          p_60 -= 53;
          p_60 += 59;
             break;

     }
          case 23: {
                  break;

     }
          case 96: {
                  break;

     }
          case 10: {
                  break;

     }
          case 40: {
          p_60 *= 6;
                  break;

     }
     default:
         break;

     }
         break;
     }
         break;
     }


}

    
    if ([CHMXTTImplGama isEmpty_MMMethodMMM:currentAccountModel.userId]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
            NSString * rrorA = @"bargain";
        return;
    }
    [CHMXTTAccount deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
        
        [deleteAccountConfireView removeFromSuperview];
        NSArray<AccountModel *> *mAccountArray = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
        if (mAccountArray.count > 0){
            currentAccountModel = mAccountArray[0];
            
            [accountDataList removeAllObjects];
            NSString * shared2 = @"joint";
             if (shared2.length > 40) {}
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
            
        }else{
            AccountModel *login1 = [[AccountModel alloc] init];
            NSArray * containg = @[@"starting", @"elegiac", @"locust"];
             if ([containg containsObject:@"G"]) {}
            login1.loginType = LOGIN_TYPE_SELF;
            NSString * endedS = @"hearsay";
             if ([endedS isEqualToString:@"x"]) {}
            login1.account = @"";
            login1.password = @"";
            NSString * textB = @"vestigial";
             while (textB.length > 187) { break; }
            currentAccountModel = login1;
            NSInteger freeL = 7960;
             if (@(freeL).intValue > 166) {}
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:login1 accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            
        }
        
    }];
            NSArray * autorotate6 = [NSArray arrayWithObjects:@(414), @(336), @(389), nil];
             if ([autorotate6 containsObject:@"m"]) {}
}

+(NSInteger)authorScaleNametoindexNoti:(NSString *)series {
     NSInteger project = 6030;
    NSInteger rindTaxonomy = 0;
    project = 9101;
    rindTaxonomy -= project;
         int temp_p_38 = (int)project;
     int j_74 = 0;
     int k_95 = 1;
     if (temp_p_38 > k_95) {
         temp_p_38 = k_95;

     }
     for (int s_61 = 0; s_61 <= temp_p_38; s_61++) {
         j_74 += s_61;
     int q_76 = j_74;
          int t_52 = 0;
     int g_73 = 0;
     if (q_76 > g_73) {
         q_76 = g_73;

     }
     for (int i_59 = 1; i_59 <= q_76; i_59++) {
         t_52 += i_59;
          if (i_59 > 0) {
          q_76 -=  i_59;

     }
     int a_54 = t_52;
          if (a_54 > 783) {
          }
         break;

     }
         break;

     }

    return rindTaxonomy;

}






+(void)makeAccountFiledViewStatus_MMMethodMMM:(AccountModel *)mAccountModel accountView_MMMethodMMM:(CHMXTTServiceTermsView *)accountFiledView pwdView_MMMethodMMM:(CHMXTTServiceTermsView *)pwdFiledView{

         {
    [self authorScaleNametoindexNoti:@"tear"];

}

    
    
    
    
    NSString *helper = mAccountModel.userId;
            NSDictionary * rameworky = [NSDictionary dictionaryWithObjectsAndKeys:@"frock",@(71), nil];
             while (rameworky.count > 111) { break; }
    NSString *time_yo = mw_smail_icon;
            NSDictionary * delete_h2 = @{@"moderator":@(938), @"carbohydrate":@(701), @"buxom":@(334)};
             if (delete_h2.count > 7) {}
    NSString *btn = GetString(wwwww_tag_wwwww_text_free_register);
    
    BOOL localx = YES;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        helper = mAccountModel.account;
            NSArray * dime7 = @[@(211), @(425)];
             if (dime7.count > 130) {}
        time_yo = mw_smail_icon;
            double with_2_N = 8984.0;
             for(int with_2_N_idx = 0; with_2_N_idx < @(with_2_N).intValue; with_2_N_idx += 2) { break; } 
        btn = mAccountModel.password;
        localx = YES;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        time_yo = fb_smail_icon;
            double dimeF = 456.0;
             while (@(dimeF).longLongValue >= 52) { break; }
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        time_yo = google_smail_icon;
            NSDictionary * changed7 = @{@"hardheaded":@(96), @"chorus":@(831)};
             if (changed7[@"C"]) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        time_yo = guest_smail_icon;
            NSInteger systemG = 329;
             if (@(systemG).longValue <= 79) {}
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        time_yo = apple_smail_icon;
            NSArray * wkweb0 = @[@(184), @(236), @(645)];
        localx = NO;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        time_yo = line_smail_icon;
            NSString * arac8 = @"soft";
             if ([arac8 isEqualToString:@"f"]) {}
        localx = NO;
    }
    
    accountFiledView.inputUITextField.text = helper;
            Boolean layout3 = NO;
             if (!layout3) { __asm__("NOP"); }
    accountFiledView.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:time_yo];
    
    if (pwdFiledView) {
       
        if (localx) {
            pwdFiledView.hidden = NO;
            double finishB = 2274.0;
             if (@(finishB).longLongValue >= 72) {}
            pwdFiledView.inputUITextField.text = btn;
            
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                
                make.height.mas_equalTo(VH(40));
            NSDictionary * debugo = [NSDictionary dictionaryWithObjectsAndKeys:@"implication",@(412), @"incoherent",@(392), nil];
             if (debugo.count > 105) {}
            }];
            
            
        }else{
            pwdFiledView.inputUITextField.text = @"";
            NSArray * filek = [NSArray arrayWithObjects:@(317), @(814), nil];
             if ([filek containsObject:@"q"]) {}
            pwdFiledView.hidden = YES;
            [pwdFiledView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.height.mas_equalTo(1);
            NSDictionary * impll = @{@"I":@"P", @"g":@"5"};
            }];
            
            
        }
        [pwdFiledView layoutIfNeeded];
        
    }
}

-(double)getsdkAllowSuccessFieldSisteraryValues{
    double balefulApprehensive = 0;

    return balefulApprehensive;

}






-(void)addDeleteAccountView_MMMethodMMM
{

         {
double puny = [self getsdkAllowSuccessFieldSisteraryValues];

     int _u_66 = (int)puny;
     if (_u_66 == 444) {
          if (_u_66 < 64) {
          _u_66 /= 10;
          }
     }
      if (puny >= 41) {
             NSLog(@"%f",puny);
      }


}

    UIView *editingView = [[UIView alloc] init];
            NSArray * lastf = [NSArray arrayWithObjects:@"manifestation", @"discrepancy", nil];
             while (lastf.count > 163) { break; }
    editingView.backgroundColor = UIColor.whiteColor;
            int sdkz = 6291;
             if (@(sdkz).integerValue > 131) {}
    editingView.layer.cornerRadius = VW(14);
    
    [self addSubview:editingView];
    
    [editingView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom);
            NSDictionary * queryu = [NSDictionary dictionaryWithObjectsAndKeys:@"ad",@(718), @"valedictory",@(737), nil];
             if (queryu.count > 60) {}
        make.centerX.equalTo(self);
            NSDictionary * callbackh = @{@"toward":@(3444.0)};
             if (callbackh.count > 114) {}
    }];
    
    UIImageView *dictionaryView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:mw_delete_icon];
            NSString * common0 = @"oculist";
             if (common0.length > 28) {}
    [editingView addSubview:dictionaryView];
    [dictionaryView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(editingView).mas_offset(VW(13));
            NSString * freeU = @"law";
             if ([freeU isEqualToString:@"2"]) {}
        make.top.mas_equalTo(editingView).mas_offset(VW(6));
            NSInteger lableC = 6604;
             for(NSInteger lableC_idx = 0; lableC_idx < @(lableC).intValue; lableC_idx++) { break; } 
        make.bottom.mas_equalTo(editingView).mas_offset(VW(-6));
            float functionB = 935.0;
             if (@(functionB).floatValue < 77) {}
        make.centerY.equalTo(editingView);
            int appendf = 8615;
             while (@(appendf).longLongValue >= 91) { break; }
        make.width.height.mas_equalTo(VW(15));
    }];
    
    UILabel *actionLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
            float changedk = 1074.0;
             while (@(changedk).floatValue > 172) { break; }
    [editingView addSubview:actionLabel];
    [actionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(dictionaryView.mas_trailing).mas_offset(VW(6));
            NSArray * todayc = [NSArray arrayWithObjects:@(569), @(218), @(769), nil];
        make.trailing.mas_equalTo(editingView).mas_offset(VW(-13));
            NSInteger firebasef = 3261;
             if (@(firebasef).longValue < 117) {}
        make.centerY.equalTo(editingView);
       
    }];
    
    [editingView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        if (!currentAccountModel || [CHMXTTImplGama isEmpty_MMMethodMMM:currentAccountModel.userId]) {
            [CHMXTTRegister toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_account_not_login.localx];
            return;
        }
        
        [self addDeleteAccountConfireView_MMMethodMMM];
       
    }];
    
    deleteBtnView = editingView;
            NSString * validS = @"merchant";
}

-(float)keyboardChangedSignature{
     NSInteger pushCode = 5656;
    float leonineMurderBreathe = 0;
    pushCode += pushCode;
    leonineMurderBreathe -= pushCode;
         int x_80 = (int)pushCode;
     int d_4 = 1;
     int h_71 = 0;
     if (x_80 > h_71) {
         x_80 = h_71;
     }
     while (d_4 < x_80) {
         d_4 += 1;
          x_80 /= d_4;
     int s_56 = d_4;
          int q_25 = 1;
     int w_25 = 0;
     if (s_56 > w_25) {
         s_56 = w_25;
     }
     while (q_25 <= s_56) {
         q_25 += 1;
          s_56 /= q_25;
     int q_18 = q_25;
              break;
     }
         break;
     }

    return leonineMurderBreathe;

}






-(void)requestAccountLogin_MMMethodMMM
{

         {
float civilParttime = [self keyboardChangedSignature];

     int temp_e_81 = (int)civilParttime;
     int i_36 = 0;
     for (int c_67 = temp_e_81; c_67 >= temp_e_81 - 1; c_67--) {
         i_36 += c_67;
     int f_12 = i_36;
          if (f_12 == 750) {
          f_12 += 36;
          if (f_12 < 742) {
          }
     }
         break;

     }
      NSLog(@"%f",civilParttime);


}

    
    NSString *reset = [CHMXTTRegister triString_MMMethodMMM:accountSDKTextFiledView.inputUITextField.text];
            NSString * servicee = @"chief";
             while (servicee.length > 49) { break; }
    NSString *began = [CHMXTTRegister triString_MMMethodMMM:passwordSDKTextFiledView.inputUITextField.text];
    
    
    if (!reset || [reset isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            NSArray * i_center9 = @[@(883), @(349)];
             if (i_center9.count > 79) {}
        return;
    }
    
    if (![CHMXTTRegister validUserName_MMMethodMMM:reset]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            double modelt = 7434.0;
             for(int modelt_idx = 0; modelt_idx < @(modelt).intValue; modelt_idx++) { break; } 
        return;
    }
    
    if (!began || [began isEqualToString:@""]) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            NSDictionary * account0 = [NSDictionary dictionaryWithObjectsAndKeys:@"fossil",@(9596.0), nil];
             if (account0[@"O"]) {}
        return;
    }
    [CHMXTTAccount selfLoginAndRequest_MMMethodMMM:self.delegate account_MMMethodMMM:reset pwd_MMMethodMMM:began];
            NSArray * s_layer3 = @[@(45), @(646)];
             if (s_layer3.count > 99) {}
}

-(UIScrollView *)borderRecognizerBugScrollView:(NSDictionary *)btn bundle:(NSArray *)bundle with_e:(NSString *)with_e {
     NSArray * change = [NSArray arrayWithObjects:@(783), @(472), @(120), nil];
     UIView * hour = [UIView new];
     double dimeBool_r = 6130.0;
     NSDictionary * genericSetup = @{@"resurgent":@(507), @"substantiate":@(90), @"drunkard":@(915)};
    UIScrollView * licentiousWield = [[UIScrollView alloc] init];
    licentiousWield.alpha = 0.9;
    licentiousWield.backgroundColor = [UIColor colorWithRed:250 / 255.0 green:162 / 255.0 blue:144 / 255.0 alpha:0.2];
    licentiousWield.frame = CGRectMake(11, 310, 0, 0);
    licentiousWield.delegate = nil;
    licentiousWield.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    licentiousWield.alwaysBounceVertical = YES;
    licentiousWield.alwaysBounceHorizontal = NO;
    licentiousWield.showsVerticalScrollIndicator = NO;
    licentiousWield.showsHorizontalScrollIndicator = YES;
    hour.frame = CGRectMake(308, 226, 0, 0);
    hour.alpha = 0.4;
    hour.backgroundColor = [UIColor colorWithRed:20 / 255.0 green:8 / 255.0 blue:180 / 255.0 alpha:0.0];
    
    CGRect hourFrame = hour.frame;
    hourFrame.size = CGSizeMake(157, 61);
    hour.frame = hourFrame;
    if (hour.alpha > 0.0) {
         hour.alpha = 0.0;
    }
    if (hour.isHidden) {
         hour.hidden = false;
    }
    if (!hour.isUserInteractionEnabled) {
         hour.userInteractionEnabled = true;
    }

    [licentiousWield addSubview:hour];
         int _i_85 = (int)dimeBool_r;
     int e_40 = 1;
     int e_6 = 0;
     if (_i_85 > e_6) {
         _i_85 = e_6;
     }
     while (e_40 < _i_85) {
         e_40 += 1;
     int l_70 = e_40;
          if (l_70 > 167) {
          }
         break;
     }

    
    CGRect licentiousWieldFrame = licentiousWield.frame;
    licentiousWieldFrame.size = CGSizeMake(218, 229);
    licentiousWield.frame = licentiousWieldFrame;
    if (licentiousWield.isHidden) {
         licentiousWield.hidden = false;
    }
    if (licentiousWield.alpha > 0.0) {
         licentiousWield.alpha = 0.0;
    }
    if (!licentiousWield.isUserInteractionEnabled) {
         licentiousWield.userInteractionEnabled = true;
    }

    return licentiousWield;

}







-(BOOL)checkAgreeTerm_MMMethodMMM
{

         {
UIScrollView * jingleMimicry = [self borderRecognizerBugScrollView:[NSDictionary dictionaryWithObjectsAndKeys:@"investigate",@(40), @"ass",@(298), nil] bundle:@[@(412), @(692), @(264)] with_e:@"tension"];

      [self addSubview: jingleMimicry];
      int jingleMimicry_tag = jingleMimicry.tag;
     int tmp_y_38 = (int)jingleMimicry_tag;
     int m_6 = 1;
     int t_0 = 1;
     if (tmp_y_38 > t_0) {
         tmp_y_38 = t_0;
     }
     while (m_6 <= tmp_y_38) {
         m_6 += 1;
     int q_18 = m_6;
          if (q_18 <= 141) {
          q_18 -= 8;
          q_18 /= 81;
     }
         break;
     }


}

    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    
    [self showTermsViewForAccountLoginView_MMMethodMMM];
            NSDictionary * gameO = [NSDictionary dictionaryWithObjectsAndKeys:@"straw",@(614), @"lackadaisical",@(782), nil];
             while (gameO.count > 163) { break; }
    return NO;
}

-(UILabel *)safeSinceJunkKitLabel{
     NSString * writeTouches = @"listen";
     NSDictionary * vnewsError = @{@"sever":@(282), @"ground":@(116), @"transplant":@(371)};
     NSString * closeTable = @"laser";
    UILabel * excrete = [UILabel new];
    excrete.backgroundColor = [UIColor colorWithRed:126 / 255.0 green:68 / 255.0 blue:66 / 255.0 alpha:0.9];
    excrete.alpha = 0.7;
    excrete.frame = CGRectMake(237, 272, 0, 0);
    excrete.textAlignment = NSTextAlignmentRight;
    excrete.font = [UIFont systemFontOfSize:11];
    excrete.text = @"";
    excrete.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 1];

    return excrete;

}







-(void)addAccountListView_MMMethodMMM{

    
    accountMaskView = [[CHMXTTHeaderLoggerView alloc] init];
    accountMaskView.touchesBeganCallback = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
        if (!accountMaskView.isHidden) {
            
            accountSDKTextFiledView.moreAccountBtn.selected = NO;

         {
UILabel * gormandizeInfer = [self safeSinceJunkKitLabel];

      int gormandizeInfer_tag = gormandizeInfer.tag;
     int d_99 = (int)gormandizeInfer_tag;
     int x_78 = 1;
     int j_1 = 1;
     if (d_99 > j_1) {
         d_99 = j_1;
     }
     while (x_78 < d_99) {
         x_78 += 1;
     int z_96 = x_78;
          if (z_96 >= 773) {
          }
     else {
          z_96 *= 61;
     
     }
         break;
     }
      [self addSubview: gormandizeInfer];


}
            NSDictionary * update_0O = @{@"optimism":@(12), @"clothes":@(651)};
            accountMaskView.hidden = YES;
        }
        
    };
            double frame_8B = 8410.0;
             while (@(frame_8B).intValue < 10) { break; }
    UIView * orientationsView = self.superview.superview.superview;
    
    [orientationsView addSubview:accountMaskView];
    [accountMaskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(orientationsView);
            NSString * engine2 = @"vindicate";
             if (engine2.length > 180) {}
    }];
    
    accountListView = [[CHMXTTModeUtilView alloc] init];
            NSString * localxX = @"remodel";
             while (localxX.length > 200) { break; }
    accountListView.layer.cornerRadius = 2.5f;
            NSDictionary * pay_qpX = [NSDictionary dictionaryWithObjectsAndKeys:@"forth",@(7159.0), nil];
             if (pay_qpX.count > 95) {}
    accountListView.layer.masksToBounds = YES;
            NSDictionary * dic6 = [NSDictionary dictionaryWithObjectsAndKeys:@"widen",@(773), @"sedentary",@(643), nil];
             if (dic6[@"n"]) {}
    [accountMaskView addSubview:accountListView];
    [accountListView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSString * indicatorB = @"monster";
             if ([indicatorB isEqualToString:@"J"]) {}
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSArray * impi = @[@"game", @"bag"];
        make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(4);
            NSInteger headern = 64;
             while (@(headern).doubleValue <= 32) { break; }
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
            int interface9 = 1191;
             if (@(interface9).integerValue == 11) {}
                series.loginType = LOGIN_TYPE_SELF;
            NSArray * sessiond = [NSArray arrayWithObjects:@(672), @(988), @(440), nil];
             if (sessiond.count > 30) {}
                series.account = @"";
            NSDictionary * respv = [NSDictionary dictionaryWithObjectsAndKeys:@"wholesaler",@"alarm", nil];
             while (respv.count > 151) { break; }
                series.password = @"";
            NSInteger totalm = 1210;
             while (@(totalm).floatValue < 6) { break; }
                currentAccountModel = series;
                [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:blockSelf->currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
            NSArray * based = [NSArray arrayWithObjects:@(YES), nil];
             if (based.count > 37) {}
                accountSDKTextFiledView.moreAccountBtn.selected = NO;
            float rameworkz = 3151.0;
             if (@(rameworkz).integerValue == 198) {}
                accountMaskView.hidden = YES;
                
                if (deleteBtnView) {
//                    deleteBtnView.hidden = YES;
                }
            }
            
        }else{
            currentAccountModel = aModel;
            Boolean encodeo = NO;
             if (!encodeo) { __asm__("NOP"); }
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            double register_74c = 2289.0;
             if (@(register_74c).floatValue >= 100) {}
            accountSDKTextFiledView.moreAccountBtn.selected = NO;
            int begin9 = 1980;
             while (@(begin9).longValue > 39) { break; }
            accountMaskView.hidden = YES;
            
        }
        
    };
            NSArray * sheets = @[@(433), @(776), @(700)];
             if (sheets.count > 62) {}
}


- (void)dealloc{
    if (accountMaskView) {
        [accountMaskView removeFromSuperview];
    }
}

-(double)borderStateHasMosteryRegex{
    double scorch = 0;

    return scorch;

}






-(void)goGame_MMMethodMMM
{

   self.encode_min = 4731.0;

   self.codesIndicator_list = [NSArray arrayWithObjects:@(NO), nil];

   self.from_space = 7522.0;

   self.blockMargin = 2056.0;

   self.urlsCount = 7452;

   self.codeBaseStr = @"august";

         {
double both = [self borderStateHasMosteryRegex];

     int temp_j_70 = (int)both;
     if (temp_j_70 >= 822) {
          temp_j_70 /= 4;
          temp_j_70 -= 29;
     }
      if (both >= 59) {
             NSLog(@"%f",both);
      }


}

   self.can_Name = YES;

    if (!currentAccountModel) {
        [self requestAccountLogin_MMMethodMMM];
            NSString * self_rX = @"undisciplined";
             if ([self_rX isEqualToString:@"v"]) {}
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



-(UIView *)addDeleteAccountConfireView_MMMethodMMM
{

    
    if (deleteAccountConfireView) {
        [deleteAccountConfireView removeFromSuperview];
    }
    
    UIView *editingViewZ = [[UIView alloc] init];
            double ipad8 = 0.0;
             while (@(ipad8).integerValue == 72) { break; }
    editingViewZ.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
            NSDictionary * implB = [NSDictionary dictionaryWithObjectsAndKeys:@"cavort",@(565), @"pelt",@(163), nil];
             if (implB[@"J"]) {}
    editingViewZ.layer.cornerRadius = VW(10);
    
    [self addSubview:editingViewZ];
    
    [editingViewZ mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.mas_equalTo(VW(272));
            Boolean bindj = NO;
             while (bindj) { __asm__("NOP"); break; }
    }];
    
    UIImageView *genericView = [CHMXTTLoginChange initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
            double home9 = 2575.0;
             while (@(home9).doubleValue >= 81) { break; }
    [editingViewZ addSubview:genericView];
    [genericView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(editingViewZ).mas_offset(VH(12));
            NSInteger rinitializeH = 7290;
             if (@(rinitializeH).floatValue <= 18) {}
        make.centerX.equalTo(self);
            NSString * updataW = @"tepid";
             while (updataW.length > 138) { break; }
        make.height.width.mas_equalTo(VW(25));
            NSDictionary * wkwebk = [NSDictionary dictionaryWithObjectsAndKeys:@"circumstance",@(36), nil];
             while (wkwebk.count > 191) { break; }
    }];
    
    UILabel *radiusLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
    [editingViewZ addSubview:radiusLabel];
            double info7 = 6370.0;
             while (@(info7).longValue >= 133) { break; }
    radiusLabel.numberOfLines = 0;
    [radiusLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(genericView.mas_bottom).mas_offset(VH(10));
            int frameworkf = 4484;
             while (@(frameworkf).doubleValue >= 30) { break; }
        make.leading.mas_equalTo(editingViewZ).mas_offset(VW(14));
        make.trailing.mas_equalTo(editingViewZ).mas_offset(VW(-14));
            int w_view2 = 8683;
             while (@(w_view2).longLongValue >= 18) { break; }
    }];
    
    UIButton *projectBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            double c_imageZ = 1882.0;
             if (@(c_imageZ).integerValue > 164) {}
    projectBtn.layer.cornerRadius = VW(16);
            float httpf = 6991.0;
             while (@(httpf).doubleValue <= 143) { break; }
    projectBtn.layer.borderColor = [UIColor whiteColor].CGColor;
            NSArray * totalO = @[@(800), @(334), @(794)];
             if ([totalO containsObject:@"v"]) {}
    projectBtn.layer.borderWidth = 1;
    
    [editingViewZ addSubview:projectBtn];
    [projectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(radiusLabel.mas_bottom).mas_offset(VH(18));
            NSString * statusV = @"diabolical";
        make.bottom.mas_equalTo(editingViewZ).mas_offset(VH(-18));
            float delegate_3k = 9039.0;
             if (@(delegate_3k).intValue >= 192) {}
        make.height.mas_equalTo(VW(32));
            double datar = 2601.0;
             if (@(datar).integerValue >= 167) {}
        make.width.mas_equalTo(VW(108));
            NSDictionary * efaultR = [NSDictionary dictionaryWithObjectsAndKeys:@"l",@"J", nil];
        make.trailing.mas_equalTo(editingViewZ.mas_centerX).mas_offset(VW(-11));
            double patht = 7142.0;
             if (@(patht).longLongValue > 158) {}
    }];
    
    UIButton *totalBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            float statey = 3149.0;
             for(NSInteger statey_idx = 15; statey_idx < @(statey).intValue; statey_idx--) { break; } 
    totalBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
            NSString * namedM = @"permeable";
             while (namedM.length > 189) { break; }
    totalBtn.layer.cornerRadius = VW(16);
    
    [editingViewZ addSubview:totalBtn];
    [totalBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(projectBtn);
        make.bottom.mas_equalTo(projectBtn);
            Boolean servicem = YES;
             while (servicem) { __asm__("NOP"); break; }
        make.width.mas_equalTo(projectBtn);
            NSString * seriesv = @"stint";
        make.leading.mas_equalTo(editingViewZ.mas_centerX).mas_offset(VW(11));
            float authrization6 = 2285.0;
             if (@(authrization6).longValue < 196) {}
    }];
    
    deleteAccountConfireView = editingViewZ;
            double password0 = 5226.0;
             if (@(password0).floatValue >= 0) {}
    return deleteAccountConfireView;
    
}

-(Boolean)firebaseHeadGuestMacaddressInvalidDeferred:(NSDictionary *)handle {
     float callbackPath = 2244.0;
    BOOL serendipity = NO;
    callbackPath = callbackPath;
    serendipity = callbackPath > 0;
         int u_10 = (int)callbackPath;
     int v_98 = 1;
     int y_64 = 0;
     if (u_10 > y_64) {
         u_10 = y_64;
     }
     while (v_98 < u_10) {
         v_98 += 1;
          u_10 -= v_98;
         break;
     }

    return serendipity;

}








- (void)showTermsViewForAccountLoginView_MMMethodMMM {

    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    CHMXTTConfig *arac = [[CHMXTTConfig alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;

         {
Boolean sevenNadir = [self firebaseHeadGuestMacaddressInvalidDeferred:@{@"rigid":@(746), @"emanate":@(185)}];

      if (!sevenNadir) {
      }


}
            float vip3 = 9996.0;
             while (@(vip3).intValue == 73) { break; }
    }];
    
    UIView *implView = appTopViewController.view;
    [implView addSubview:arac];
    
    [arac mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(implView);
            NSArray * informationI = [NSArray arrayWithObjects:@(826), @(283), nil];
             while (informationI.count > 74) { break; }
        make.leading.mas_equalTo(implView);
        make.trailing.mas_equalTo(implView);
            NSArray * keyg = @[@(608), @(941)];
    }];
    
    
    arac.transform = CGAffineTransformTranslate(arac.transform, 0, implView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        arac.transform = CGAffineTransformTranslate(arac.transform, 0, -implView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
            NSString * dataB = @"unfathomed";
}

-(NSArray *)nowCharactersLocalized{
     long finitialize = 3401;
    NSMutableArray * borrowCacophonousShun = [[NSMutableArray alloc] init];
finitialize = finitialize;
    [borrowCacophonousShun addObject: @(finitialize)];
         int tmp_r_4 = (int)finitialize;
     int n_56 = 0;
     int n_41 = 0;
     if (tmp_r_4 > n_41) {
         tmp_r_4 = n_41;

     }
     for (int l_31 = 0; l_31 < tmp_r_4; l_31++) {
         n_56 += l_31;
          if (l_31 > 0) {
          tmp_r_4 -=  l_31;

     }
              break;

     }

    return borrowCacophonousShun;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
        case kFindPwdActTag:
            SDK_LOG(wwwww_tag_wwwww_kFindPwdActTag);
            if (self.delegate) {
                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_FIND_PWD];

         {
NSArray * gamble = [self nowCharactersLocalized];

      [gamble enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx != 23) {
              NSLog(@"gesture:%@", obj);
        }
      }];
      int gamble_len = gamble.count;
     int c_54 = (int)gamble_len;
     int c_3 = 1;
     int h_37 = 0;
     if (c_54 > h_37) {
         c_54 = h_37;
     }
     while (c_3 <= c_54) {
         c_3 += 1;
          c_54 /= c_3;
     int c_27 = c_3;
          int m_30 = 0;
     int w_6 = 0;
     if (c_27 > w_6) {
         c_27 = w_6;

     }
     for (int r_84 = 0; r_84 <= c_27; r_84++) {
         m_30 += r_84;
     int a_86 = m_30;
              break;

     }
         break;
     }


}
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
            NSArray * configW = @[@(255), @(272), @(45)];
             if ([configW containsObject:@"6"]) {}
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
            Boolean beganz = YES;
             if (beganz) { __asm__("NOP"); }
        }
            [self doDeleteAccount_MMMethodMMM];
        {
            double sharerG = 1803.0;
             while (@(sharerG).integerValue > 52) { break; }
        }
            break;
        case kCancelDeleteAccountActTag:
            SDK_LOG(wwwww_tag_wwwww_kCancelDeleteAccountActTag);
        {
            NSString * t_countl = @"heat";
             if (t_countl.length > 176) {}
        }
            [deleteAccountConfireView removeFromSuperview];
            
            break;
        default:
            break;
    }
    
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * scriptj = @[@(1892)];
        accountSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_account);
            NSArray * encryptO = [NSArray arrayWithObjects:@(670), @(230), @(284), nil];
             while (encryptO.count > 20) { break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self);
            NSDictionary * e_productsr = [NSDictionary dictionaryWithObjectsAndKeys:@"harangue",@(98), @"nostalgia",@(823), nil];
             while (e_productsr.count > 14) { break; }
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSDictionary * popupr = @{@"P":@"o", @"f":@"n"};
             if (popupr.count > 178) {}
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            NSInteger functionn = 7106;
             while (@(functionn).intValue <= 61) { break; }
            make.height.mas_equalTo(VH(40));
            NSInteger rameworkH = 1769;
             if (@(rameworkH).longValue < 154) {}
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSString * script8 = @"granary";
        passwordSDKTextFiledView.inputUITextField.placeholder = GetString(wwwww_tag_wwwww_text_input_pwd);
            int icona = 8807;
             if (@(icona).floatValue < 30) {}
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            Boolean findY = NO;
             if (findY) { __asm__("NOP"); }
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSArray * httpQ = [NSArray arrayWithObjects:@(570), @(536), nil];
             while (httpQ.count > 89) { break; }
            make.height.mas_equalTo(VH(40));
            double alert1 = 2536.0;
             if (@(alert1).integerValue == 145) {}
        }];
        
        
        
        
        UIButton *encodingBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_py_findpwd) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0] tag_MMMethodMMM:kFindPwdActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [self addSubview:encodingBtn];
        [encodingBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(VH(7));
            
            
        }];
        
        
        UIView *postView = [[UIView alloc] init];
            int ipad5 = 6565;
             for(NSInteger ipad5_idx = 22; ipad5_idx < @(ipad5).intValue; ipad5_idx--) { break; } 
        [self addSubview:postView];
        [postView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(encodingBtn);
            NSInteger notificationy = 2490;
             while (@(notificationy).integerValue >= 98) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView);
            NSString * item9 = @"us";
             if ([item9 isEqualToString:@"J"]) {}
        }];
        
        checkBoxTermsBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSDictionary * alert3 = @{@"glib":@(150), @"acquisitive":@(866)};
             if (alert3[@"e"]) {}
        checkBoxTermsBtn.selected = YES;
            float selecteJ = 3174.0;
             while (@(selecteJ).integerValue <= 141) { break; }
        [postView addSubview:checkBoxTermsBtn];
        [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(postView);
            NSArray * bundler = @[@"unobstructed", @"welter"];
             if (bundler.count > 25) {}
            make.centerY.mas_equalTo(postView);
            NSString * begin0 = @"swarm";
            make.width.height.mas_equalTo(VW(15));
            
        }];
        
        NSString *progress = GetString(wwwww_tag_wwwww_sdk_terms_title);
            NSString * switch__R = @"flaccid";
             if ([switch__R isEqualToString:@"p"]) {}
        UILabel *parse = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:progress fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        
        
        parse.numberOfLines = 1;
        
        
        
        
        
        
        
        
        [postView addSubview:parse];
        [parse mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(postView);
            double perfomD = 1254.0;
             if (@(perfomD).intValue >= 18) {}
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            NSDictionary * chang9 = @{@"f":@"J", @"T":@"h"};
             if (chang9[@"z"]) {}
            make.trailing.mas_equalTo(postView.mas_trailing);
            NSDictionary * areaB = [NSDictionary dictionaryWithObjectsAndKeys:@"steer",@(81), nil];
             if (areaB.count > 172) {}
        }];
        parse.userInteractionEnabled=YES;
        [parse addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            
            [self showTermsViewForAccountLoginView_MMMethodMMM];
            
        }];
            NSDictionary * modeb = @{@"compensation":@(681)};
             while (modeb.count > 138) { break; }
        ConfigModel *http = SDK_DATA.mConfigModel;
            float labelO = 1627.0;
             for(int labelO_idx = 41; labelO_idx < @(labelO).intValue; labelO_idx -= 3) { break; } 
        postView.hidden = !http.showContract;
            NSDictionary * welcome_ = [NSDictionary dictionaryWithObjectsAndKeys:@"hydrate",@(602), @"smooth",@(545), nil];
             if (welcome_[@"L"]) {}
        encodingBtn.hidden = !http.showForgetPwd;
        
        
        
        
        accountLoginBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAccountLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [accountLoginBtn.layer setCornerRadius:VH(20)];
            NSDictionary * push0 = @{@"thirty":@(262)};
             if (push0[@"S"]) {}
        accountLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
        [self addSubview:accountLoginBtn];
        
        loginGl = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(20)];
            NSDictionary * eventz = @{@"arroyo":@(750)};
        [accountLoginBtn.layer addSublayer:loginGl];

        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSDictionary * m_managert = @{@"measly":@(858), @"courtyard":@(638), @"owing":@(718)};
             while (m_managert.count > 148) { break; }
            make.top.equalTo(encodingBtn.mas_bottom).mas_offset(VH(25));
            int array7 = 6375;
             while (@(array7).longLongValue == 48) { break; }
            make.width.mas_equalTo(accountSDKTextFiledView);
            float adaptB = 5792.0;
             if (@(adaptB).floatValue < 31) {}
            make.height.mas_equalTo(VH(40));
            NSArray * textV = @[@(625), @(299), @(896)];
             if ([textV containsObject:@"X"]) {}
        }];
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            loginGl.frame = accountLoginBtn.bounds;
            NSDictionary * ervicet = [NSDictionary dictionaryWithObjectsAndKeys:@"legislate",@(330), @"steadfast",@(453), nil];
        }];

        
        UIView *homeView = [[UIView alloc] init];
            NSInteger sdkd = 6335;
             while (@(sdkd).floatValue > 84) { break; }
        [self addSubview:homeView];
        [homeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(accountSDKTextFiledView);
            
            make.top.mas_equalTo(accountLoginBtn.mas_bottom).mas_offset(VH(16));
            
        }];
        
       
        UILabel *input2 = [[UILabel alloc] init];
        input2.font = [UIFont systemFontOfSize:FS(11)];
            NSDictionary * valuesh = [NSDictionary dictionaryWithObjectsAndKeys:@"printer",@(523), nil];
             if (valuesh.count > 183) {}
        input2.text = wwwww_tag_wwwww_text_login_other.localx;
            double operationC = 1999.0;
             for(int operationC_idx = 0; operationC_idx < @(operationC).intValue; operationC_idx += 2) { break; } 
        input2.numberOfLines = 1; 
        input2.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
        
        [homeView addSubview:input2];
        [input2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(homeView.mas_leading);
            make.centerY.mas_equalTo(homeView);
            
        }];
        
        CGFloat rate = VW(34);
            double creates = 4358.0;
             for(int creates_idx = 0; creates_idx < @(creates).intValue; creates_idx++) { break; } 
        CGFloat landscape = rate;
            NSString * sessionR = @"piquancy";
             if ([sessionR isEqualToString:@"a"]) {}
        CGFloat mask = VW(24);
        
        NSMutableArray *idfaQE = [CHMXTTRegister getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:YES];
        UIView *with_7View = input2;
       
        for (int i = 0; i < idfaQE.count; i++) {
            
            LoginButtonData *removeL = idfaQE[i];
            int animationV = 6805;
             if (@(animationV).longValue < 196) {}
            UIView *seedView;
            
            if ([removeL.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
                
                if (@available(iOS 13.0, *)) {
                    
                    ASAuthorizationAppleIDButton *x_titleBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                              authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                    [x_titleBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSString * layoutt = @"extort";
             if (layoutt.length > 3) {}
                    x_titleBtn.tag = removeL.tag;
            NSArray * model_ = @[@(946), @(688), @(494)];
             if (model_.count > 178) {}
                    x_titleBtn.cornerRadius = rate / 2.0;
            NSDictionary * clickt = @{@"fascinate":@"administer"};
             if (clickt[@"r"]) {}
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
            NSDictionary * coreh = @{@"R":@"T", @"8":@"L", @"R":@"r"};
             while (coreh.count > 1) { break; }
                    make.height.mas_equalTo(landscape);
                    make.top.mas_equalTo(homeView);
            Boolean dicI = YES;
             if (!dicI) { __asm__("NOP"); }
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
            int handleB = 9603;
             if (@(handleB).intValue == 64) {}
            [accountDataList addObjectsFromArray:mAccountArray];
            
            [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
        }else{
            if (deleteBtnView) {
//                deleteBtnView.hidden = YES;
            }
        }
        
        
        
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountMaskView && accountListView) {
                
                
                
                if (accountMaskView.isHidden) {
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = YES;
                    accountMaskView.hidden = NO;
            float esclipel = 2635.0;
             if (@(esclipel).doubleValue == 59) {}
                    NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSArray * keychainy = [NSArray arrayWithObjects:@(149), @(794), nil];
             while (keychainy.count > 142) { break; }
                    [accountDataList removeAllObjects];
                    [accountDataList addObjectsFromArray:game];
            NSString * utiln = @"abrogation";
             while (utiln.length > 59) { break; }
                    accountListView.accountDataList = accountDataList;
            NSString * efaultv = @"jail";
                    [accountListView.accountListTableView reloadData];
                    
                }else{
                    
                    accountSDKTextFiledView.moreAccountBtn.selected = NO;
            double delete_mz5 = 4980.0;
             if (@(delete_mz5).integerValue >= 190) {}
                    accountMaskView.hidden = YES;
                    
                }
                
            }else{
                accountSDKTextFiledView.moreAccountBtn.selected = YES;
            double params9 = 4193.0;
             while (@(params9).doubleValue > 91) { break; }
                [self addAccountListView_MMMethodMMM];
            NSString * frameworkC = @"prevarication";
                NSArray *game = [[CHMXTTEfault share] getAccountModels_MMMethodMMM];
            NSArray * touchb = @[@"sociable", @"preparation", @"fell"];
             while (touchb.count > 123) { break; }
                [accountDataList removeAllObjects];
            NSString * decryptt = @"axial";
             if (decryptt.length > 107) {}
                [accountDataList addObjectsFromArray:game];
            float shouldc = 7275.0;
             while (@(shouldc).intValue < 173) { break; }
                accountListView.accountDataList = accountDataList;
            NSArray * provisionL = @[@(922), @(49), @(604)];
                [accountListView.accountListTableView reloadData];
            }
            
        };
        
        accountSDKTextFiledView.inputTextFieldChange = ^(NSString *msg, NSInteger m, NSDictionary *dic) {
            
            if (currentAccountModel && ![currentAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
                
                if (![msg isEqualToString:currentAccountModel.userId]) {
                    AccountModel *notification = [[AccountModel alloc] init];
            NSDictionary * level1 = [NSDictionary dictionaryWithObjectsAndKeys:@"distraught",@(598), @"detour",@(929), @"decidedly",@(791), nil];
                    notification.loginType = LOGIN_TYPE_SELF;
            NSArray * respX = @[@"construction"];
             if ([respX containsObject:@"u"]) {}
                    notification.account = msg;
            double coden = 1274.0;
             while (@(coden).intValue == 49) { break; }
                    notification.password = @"";
            Boolean public_0i = NO;
             while (public_0i) { __asm__("NOP"); break; }
                    [CHMXTTResponceBind makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM:passwordSDKTextFiledView];
            int board1 = 6642;
             while (@(board1).intValue > 159) { break; }
                    currentAccountModel = notification;
                }
            }
            
            
        };
    }
    
    return self;
}


@end
