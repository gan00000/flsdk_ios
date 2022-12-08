
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
            NSDictionary * configB = [NSDictionary dictionaryWithObjectsAndKeys:@"cutlery",@(416), @"financing",@(831), @"cloister",@(79), nil];
             if (configB[@"5"]) {}
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSArray * applicationL = @[@(433), @(838)];
             while (applicationL.count > 100) { break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            NSString * supportedA = @"brazen";
             if (supportedA.length > 85) {}
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSDictionary * wkwebv = @{@"imperturbable":@(393), @"unimpeachable":@(949), @"grief":@(295)};
             while (wkwebv.count > 124) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            make.height.mas_equalTo(VH(40));
            NSArray * confM = [NSArray arrayWithObjects:@(5465), nil];
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSInteger logout9 = 4989;
             if (@(logout9).integerValue > 162) {}
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            double backgrounds = 4652.0;
             while (@(backgrounds).longLongValue >= 134) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSDictionary * cnewsf = @{@"entre":@(44), @"calculated":@(814)};
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSDictionary * genericq = [NSDictionary dictionaryWithObjectsAndKeys:@"u",@"l", @"D",@"Z", nil];
             if (genericq[@"C"]) {}
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            NSArray * n_hideq = @[@(674), @(83), @(624)];
             if (n_hideq.count > 50) {}
        }];
        
        UILabel *expressionLabel = [[UILabel alloc] init];
        expressionLabel.font = [UIFont systemFontOfSize:FS(10)];
        expressionLabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
            double alertk = 9792.0;
             for(NSInteger alertk_idx = 18; alertk_idx < @(alertk).intValue; alertk_idx -= 2) { break; } 
        expressionLabel.textAlignment = NSTextAlignmentLeft;
            NSString * socialp = @"viaduct";
             if ([socialp isEqualToString:@"2"]) {}
        expressionLabel.numberOfLines = 0; 
        expressionLabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:expressionLabel];
        [expressionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSDictionary * accountE = [NSDictionary dictionaryWithObjectsAndKeys:@"examination",@(699), nil];
             if (accountE.count > 70) {}
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
            int keychainJ = 4635;
             while (@(keychainJ).intValue < 157) { break; }
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSArray * local_isa = [NSArray arrayWithObjects:@"overhead", nil];
             while (local_isa.count > 185) { break; }
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSDictionary * local_bdc = [NSDictionary dictionaryWithObjectsAndKeys:@"copper",@(447), @"epoch",@(994), @"wander",@(211), nil];
             while (local_bdc.count > 114) { break; }
            make.top.equalTo(expressionLabel.mas_bottom).mas_offset(VH(34));
            float respl = 5635.0;
             for(NSInteger respl_idx = 38; respl_idx < @(respl).intValue; respl_idx -= 4) { break; } 
            make.height.mas_equalTo(VH(50));
            double keyp = 5349.0;
             while (@(keyp).intValue <= 102) { break; }
        }];
        
        
    }
    return self;
}

- (instancetype)initView_MMMethodMMM
{
   self.normalFindImpl_string = @"typo";

   self.boardMax = 4619.0;

   self.implSpace = 1347.0;

    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}

-(NSString *)addAssertCount:(NSDictionary *)pament close:(double)close tapped:(NSString *)tapped {
     NSInteger n_products = 3664;
    NSString *dyslexiaMinor = [NSString string];
         int tmp_i_42 = (int)n_products;
     int v_23 = 1;
     int q_94 = 1;
     if (tmp_i_42 > q_94) {
         tmp_i_42 = q_94;
     }
     while (v_23 <= tmp_i_42) {
         v_23 += 1;
     int u_41 = v_23;
          if (u_41 != 694) {
          }
     else if (u_41 <= 517) {
     
     }
         break;
     }

    return dyslexiaMinor;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
        {
            Boolean type_mxv = YES;

         {
NSString * licentious = [self addAssertCount:[NSDictionary dictionaryWithObjectsAndKeys:@"lung",@(315), @"ordeal",@(225), nil] close:6006.0 tapped:@"inestimable"];

      int licentious_len = licentious.length;
     int temp_b_100 = (int)licentious_len;
     if (temp_b_100 > 987) {
          switch (temp_b_100) {
          case 67: {
          temp_b_100 /= 54;
                  break;

     }
          case 72: {
          temp_b_100 += 58;
          temp_b_100 *= 63;
             break;

     }
          case 55: {
          temp_b_100 /= 100;
             break;

     }
          case 71: {
                  break;

     }
     default:
         break;

     }
     }
      NSLog(@"%@",licentious);


}
             if (!type_mxv) { __asm__("NOP"); }
        }
            NSString *reset = accountSDKTextFiledView.inputUITextField.text;
        {
            NSDictionary * listG = [NSDictionary dictionaryWithObjectsAndKeys:@"recognition",@(197), @"increasing",@(882), @"vertebrate",@(742), nil];
             if (listG.count > 33) {}
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

@end
