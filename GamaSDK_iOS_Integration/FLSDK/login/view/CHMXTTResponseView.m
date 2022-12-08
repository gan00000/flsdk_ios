
#import "CHMXTTResponseView.h"
#import "SdkHeader.h"
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTStringView.h"
#import "CHMXTTCenterView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTAccount.h"
#import "CHMXTTRegister.h"
#import "CHMXTTNewsView.h"

@implementation CHMXTTResponseView

{
    CHMXTTServiceTermsView *thirdAccountSDKTextFiledView;
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    CHMXTTServiceTermsView *pwdSDKTextFiledView;
    
    
    
    CHMXTTStringView   *mLoginTitleView;
    
    
}

-(NSArray *)appsProvisionalAlertLocationsClicked{
     int draw = 2659;
    NSMutableArray * ointmentIdolizeRome = [NSMutableArray array];
    draw = 8717;
    [ointmentIdolizeRome addObject: @(draw)];
         int s_18 = (int)draw;
     switch (s_18) {
          case 59: {
          s_18 *= 83;
             break;

     }
          case 66: {
          s_18 += 70;
             break;

     }
          case 88: {
          s_18 *= 9;
          s_18 -= 99;
             break;

     }
          case 90: {
          s_18 *= 3;
          s_18 /= 33;
             break;

     }
          case 70: {
          s_18 *= 54;
          int d_77 = 0;
     int u_33 = 1;
     if (s_18 > u_33) {
         s_18 = u_33;

     }
     for (int a_64 = 1; a_64 < s_18; a_64++) {
         d_77 += a_64;
     int o_4 = d_77;
              break;

     }
             break;

     }
          case 51: {
          s_18 /= 26;
          int m_71 = 1;
     int h_75 = 0;
     if (s_18 > h_75) {
         s_18 = h_75;
     }
     while (m_71 < s_18) {
         m_71 += 1;
     int n_8 = m_71;
          switch (n_8) {
          case 69: {
                  break;

     }
          case 90: {
          n_8 *= 87;
                  break;

     }
          case 23: {
          n_8 -= 90;
                  break;

     }
          case 51: {
          n_8 *= 84;
          n_8 /= 22;
             break;

     }
          case 8: {
          n_8 *= 47;
             break;

     }
          case 48: {
          n_8 /= 4;
          n_8 *= 41;
             break;

     }
          case 56: {
          n_8 += 41;
                  break;

     }
          case 58: {
          n_8 *= 65;
             break;

     }
          case 98: {
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
     default:
         break;

     }

    return ointmentIdolizeRome;

}






-(void)bindAccount_MMMethodMMM
{

    
    if (!self.fromPageParam) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
            NSArray * provisionf = [NSArray arrayWithObjects:@(703), @(319), @(148), nil];

         {
NSArray * policeman = [self appsProvisionalAlertLocationsClicked];

      int policeman_len = policeman.count;
     int tmp_d_17 = (int)policeman_len;
     switch (tmp_d_17) {
          case 40: {
          tmp_d_17 *= 60;
          tmp_d_17 /= 77;
             break;

     }
          case 59: {
          tmp_d_17 -= 23;
          if (tmp_d_17 >= 85) {
          tmp_d_17 += 17;
          }
             break;

     }
          case 57: {
          tmp_d_17 /= 88;
          tmp_d_17 /= 70;
             break;

     }
     default:
         break;

     }
      [policeman enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx > 34) {
              NSLog(@"more:%@", obj);
        }
      }];


}
             if ([provisionf containsObject:@"R"]) {}
        return;
    }
    
    AccountModel * upload = (AccountModel *)self.fromPageParam;
    
    
    NSString *helper = accountSDKTextFiledView.inputUITextField.text;
            float popupy = 958.0;
             while (@(popupy).doubleValue > 150) { break; }
    NSString *board = pwdSDKTextFiledView.inputUITextField.text;
  
    
 
    if (![CHMXTTRegister validUserName_MMMethodMMM:helper]) {
        return;
    }
    
    
    if (![CHMXTTRegister validPwd_MMMethodMMM:board]) {
        return;
    }
    
    if (!upload) {
        [CHMXTTRegister toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
            NSString * handero = @"burglar";
             if ([handero isEqualToString:@"I"]) {}
        return;
    }
  
    [CHMXTTAccount bindAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:upload account_MMMethodMMM:helper pwd_MMMethodMMM:board];
            NSArray * emailt = @[@(315), @(714)];
             if (emailt.count > 5) {}
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
     
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
        {
        }
            [self endEditing:YES];
        {
            float accessm = 5249.0;
             while (@(accessm).intValue < 118) { break; }
        }
            [self bindAccount_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}



- (instancetype)initView_MMMethodMMM
{
   self.is_Comm = NO;

   self.change_string = @"retentive";

   self.data_Array = @[@(352), @(7), @(291)];

    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[CHMXTTStringView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_update_account) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK)];
            NSString * reader1 = @"quiz";
             if (reader1.length > 79) {}
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            NSDictionary * decode_ = [NSDictionary dictionaryWithObjectsAndKeys:@"F",@"r", nil];
            make.leading.trailing.mas_equalTo(self);
            NSArray * decryptZ = @[@(562), @(515), @(337)];
             if ([decryptZ containsObject:@"p"]) {}
            make.height.mas_equalTo(VH(40));
            float failv = 4408.0;
             if (@(failv).integerValue == 162) {}
        }];
        
        
        thirdAccountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * endedr = @"devoid";
             if ([endedr isEqualToString:@"i"]) {}
        thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSArray * gesture6 = @[@(187), @(742), @(609)];
             if ([gesture6 containsObject:@"v"]) {}
        [self addSubview:thirdAccountSDKTextFiledView];
        
        [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            NSString * styleR = @"injection";
             while (styleR.length > 4) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-40);
            NSInteger confire3 = 7197;
             while (@(confire3).integerValue >= 75) { break; }
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            float handlerf = 4636.0;
             while (@(handlerf).intValue > 56) { break; }
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            NSDictionary * modityb = [NSDictionary dictionaryWithObjectsAndKeys:@"scientific",@(228), @"versemonger",@(391), nil];
             while (modityb.count > 185) { break; }
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);

            make.top.equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        pwdSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSArray * purchase1 = @[@(155), @(76)];
             if ([purchase1 containsObject:@"g"]) {}
        [self addSubview:pwdSDKTextFiledView];
        
        [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            NSDictionary * registm = [NSDictionary dictionaryWithObjectsAndKeys:@"adverse",@(549), nil];
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            Boolean valuex = YES;
             if (!valuex) { __asm__("NOP"); }
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);
            NSDictionary * orientationh = @{@"sweat":@(1)};
             if (orientationh.count > 164) {}
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        UILabel *drawLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_bind_account_tips) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
            NSArray * calculateR = [NSArray arrayWithObjects:@(152), @(722), nil];
             while (calculateR.count > 66) { break; }
        [self addSubview:drawLabel];
        
        [drawLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            NSDictionary * decryptg = @{@"asperity":@[@(379), @(191)]};
             if (decryptg[@"D"]) {}
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            NSString * tipsn = @"peril";
             if (tipsn.length > 47) {}
            make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
            
        }];
        
        
        
        UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire_update) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        
        [lableBtn.layer setCornerRadius:VH(25)];
            NSDictionary * g_heighty = @{@"aspirin":@(690), @"sodium":@(895)};
        lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            double urlsp = 767.0;
             for(int urlsp_idx = 34; urlsp_idx < @(urlsp).intValue; urlsp_idx -= 4) { break; } 
        [self addSubview:lableBtn];
        
        [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSString * message3 = @"ironical";
            make.top.equalTo(drawLabel.mas_bottom).mas_offset(VH(32));
            NSDictionary * modityH = @{@"sarcastic":@(7806.0)};
             if (modityH[@"_"]) {}
            make.width.mas_equalTo(pwdSDKTextFiledView);
            NSInteger orientationz = 2668;
             while (@(orientationz).doubleValue < 142) { break; }
            make.height.mas_equalTo(VH(50));
            float password2 = 3392.0;
             while (@(password2).integerValue > 14) { break; }
        }];
        
      
    }
    return self;
}


- (void)initData_MMMethodMMM
{
    [super initData_MMMethodMMM];
            NSDictionary * landspaceS = [NSDictionary dictionaryWithObjectsAndKeys:@"segment",@"dream", nil];
             if (landspaceS[@"t"]) {}
    AccountModel *notification = (AccountModel *)self.fromPageParam;
            NSArray * short_urp = [NSArray arrayWithObjects:@(932), @(207), nil];
             if (short_urp.count > 160) {}
    [CHMXTTNewsView makeAccountFiledViewStatus_MMMethodMMM:notification accountView_MMMethodMMM:thirdAccountSDKTextFiledView pwdView_MMMethodMMM:nil];
            NSArray * type_3wL = @[@(1515.0)];
             if ([type_3wL containsObject:@"8"]) {}
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
            NSArray * dicY = [NSArray arrayWithObjects:@(341), @(599), @(634), nil];
             if ([dicY containsObject:@"i"]) {}
}


@end
