
#import "CHMXTTFind.h"
#import "SdkHeader.h"
#import "CHMXTTStringView.h"
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTCenterView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTRegister.h"
#import "CHMXTTErvice.h"
#import "CHMXTTAccount.h"
#import "CHMXTTInfo.h"

@implementation CHMXTTFind
{
    CHMXTTServiceTermsView *accountSDKTextFiledView;
    CHMXTTServiceTermsView *passwordSDKTextFiledView;
    CHMXTTServiceTermsView *passwordAgainSDKTextFiledView;
    UIButton *regAccountBtn; 
    CHMXTTStringView   *mLoginTitleView;
    int phoneCountdown;
    
    
}



- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
    self = [super init];
    if (self) {
        
        
        
        
        self.bindType = bindType;
        
       
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSInteger forgotE = 9110;
             if (@(forgotE).intValue <= 160) {}
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSDictionary * headerj = @{@"imitate":@(569)};
             if (headerj[@"F"]) {}
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            int readert = 3795;
             if (@(readert).floatValue == 86) {}
            make.height.mas_equalTo(VH(40));
            NSDictionary * eventj = @{@"taxation":@(8273.0)};
             if (eventj.count > 75) {}
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSString * rate0 = @"colossal";
             if ([rate0 isEqualToString:@"f"]) {}
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            NSString * progresso = @"fop";
             if (progresso.length > 93) {}
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSArray * e_hideZ = [NSArray arrayWithObjects:@(1503), nil];
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSDictionary * serviceo = [NSDictionary dictionaryWithObjectsAndKeys:@"satiny",@(8488), nil];
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            NSString * currenta = @"primeval";
             if ([currenta isEqualToString:@"b"]) {}
        }];
        
        UILabel *expressionLabel = [[UILabel alloc] init];
        expressionLabel.font = [UIFont systemFontOfSize:FS(10)];
            NSInteger headern = 9197;
             for(NSInteger headern_idx = 0; headern_idx < @(headern).intValue; headern_idx++) { break; } 
        expressionLabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
            NSArray * plistk = @[@"tonight", @"pink", @"widely"];
        expressionLabel.textAlignment = NSTextAlignmentLeft;
        expressionLabel.numberOfLines = 0; 
        expressionLabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:expressionLabel];
        [expressionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSString * indicatorq = @"accounting";
             if ([indicatorq isEqualToString:@"p"]) {}
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
            NSArray * agree9 = [NSArray arrayWithObjects:@(721), @(304), @(534), nil];
             if ([agree9 containsObject:@"Z"]) {}
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * accessE = @"count";
             while (accessE.length > 106) { break; }
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            int responceY = 1012;
             while (@(responceY).integerValue > 40) { break; }
            make.top.equalTo(expressionLabel.mas_bottom).mas_offset(VH(34));
            Boolean cancel6 = YES;
             while (!cancel6) { __asm__("NOP"); break; }
            make.height.mas_equalTo(VH(50));
            NSDictionary * alertU = [NSDictionary dictionaryWithObjectsAndKeys:@"warehouse",@(378), @"narcissism",@(351), @"scenery",@(38), nil];
             if (alertU[@"r"]) {}
        }];
        
        CAGradientLayer *confY = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            NSInteger existingf = 6094;
             for(int existingf_idx = 10; existingf_idx < @(existingf).intValue; existingf_idx--) { break; } 
        [regAccountBtn.layer addSublayer:confY];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            confY.frame = regAccountBtn.bounds;
            int emptyL = 5413;
             while (@(emptyL).intValue <= 146) { break; }
        }];

        
        
    }
    return self;
}

-(float)thirdEntryStorePasswordSisterary:(NSArray *)serverBase {
    float downwardsAmends = 0;

    return downwardsAmends;

}





- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
float centrifugalDictatorship = [self thirdEntryStorePasswordSisterary:[NSArray arrayWithObjects:@(253), @(198), @(886), nil]];

      NSLog(@"%f",centrifugalDictatorship);
     int tmp_h_60 = (int)centrifugalDictatorship;
     int u_7 = 0;
     for (int k_14 = tmp_h_60; k_14 >= tmp_h_60 - 1; k_14--) {
         u_7 += k_14;
          if (k_14 > 0) {
          tmp_h_60 +=  k_14;

     }
     int g_61 = u_7;
          int m_48 = 0;
     int b_12 = 0;
     if (g_61 > b_12) {
         g_61 = b_12;

     }
     for (int s_48 = 1; s_48 <= g_61; s_48++) {
         m_48 += s_48;
          if (s_48 > 0) {
          g_61 -=  s_48;

     }
     int x_91 = m_48;
          switch (x_91) {
          case 71: {
          x_91 /= 80;
          x_91 -= 73;
             break;

     }
          case 26: {
                  break;

     }
          case 95: {
                  break;

     }
          case 0: {
          x_91 /= 56;
          x_91 *= 85;
             break;

     }
          case 14: {
          x_91 -= 56;
                  break;

     }
          case 47: {
          x_91 /= 35;
                  break;

     }
          case 83: {
                  break;

     }
          case 13: {
          x_91 += 46;
                  break;

     }
          case 100: {
          x_91 -= 17;
                  break;

     }
          case 18: {
          x_91 -= 50;
          x_91 += 26;
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

    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
        {
            NSString * jinitialize9 = @"well";
             if ([jinitialize9 isEqualToString:@"L"]) {}
        }
            NSString *reset = accountSDKTextFiledView.inputUITextField.text;
        {
            NSString * begin9 = @"rider";
             if (begin9.length > 181) {}
        }
            NSString *began = passwordSDKTextFiledView.inputUITextField.text;
            
            
            if (![CHMXTTRegister validUserName_MMMethodMMM:reset]) {
                
                return;
            }
            
            if (![CHMXTTRegister validPwd_MMMethodMMM:began]) {
                return;
            }
          
            [CHMXTTAccount accountRegister_MMMethodMMM:self.delegate view_MMMethodMMM:self areaCode_MMMethodMMM:@"" name:reset password_MMMethodMMM:began phoneNum_MMMethodMMM:@"" vfCode_MMMethodMMM:@""];
            
        }
            break;
            
        default:
            break;
    }
}



- (instancetype)initView_MMMethodMMM
{
   self.ervice_offset = 3687.0;

   self.modeMark = 262;

   self.engineShort_aList = [NSArray arrayWithObjects:@(791), @(732), nil];

   self.drawMark = 8113;

    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}

@end
