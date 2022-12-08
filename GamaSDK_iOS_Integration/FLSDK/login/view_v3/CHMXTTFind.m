
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

-(Boolean)gameRecoverWaitDirectionStearFiled{
     NSInteger localx = 8613;
     long startScale = 3015;
    BOOL cold = NO;
    localx = 754;
    cold = localx > 46;
         int _a_35 = (int)localx;
     if (_a_35 != 967) {
          _a_35 -= 31;
          int k_15 = 1;
     int f_75 = 0;
     if (_a_35 > f_75) {
         _a_35 = f_75;
     }
     while (k_15 < _a_35) {
         k_15 += 1;
          _a_35 -= k_15;
     int j_30 = k_15;
          if (j_30 >= 126) {
          j_30 += 37;
          }
         break;
     }
     }
    startScale = 4341;
    cold = startScale > 20;
         int o_90 = (int)startScale;
     int w_19 = 0;
     int r_68 = 0;
     if (o_90 > r_68) {
         o_90 = r_68;

     }
     for (int m_77 = 1; m_77 <= o_90; m_77++) {
         w_19 += m_77;
          o_90 += m_77;
         break;

     }

    return cold;

}







- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.securityOffset = 5952.0;

   self.helperFlag = 6817;

    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
        {
            Boolean loadx = YES;

         {
Boolean irreducibleCountermeasure = [self gameRecoverWaitDirectionStearFiled];

      if (irreducibleCountermeasure) {
          NSLog(@"delete_0rHandler");
      }


}
             if (loadx) { __asm__("NOP"); }
        }
            NSString *reset = accountSDKTextFiledView.inputUITextField.text;
        {
            NSString * currentw = @"immunize";
             while (currentw.length > 189) { break; }
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

- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
    self = [super init];
    if (self) {
        
        
        
        
        self.bindType = bindType;
        
       
        
        accountSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            int gamak = 4275;
             if (@(gamak).longValue >= 173) {}
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSArray * plistf = @[@{@"redemptive":@(779), @"habituate":@(946), @"whisky":@(884)}];
             if ([plistf containsObject:@"n"]) {}
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            Boolean helper6 = YES;
             while (helper6) { __asm__("NOP"); break; }
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSString * changedE = @"raffish";
             if (changedE.length > 104) {}
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            Boolean pageY = NO;
            make.height.mas_equalTo(VH(40));
            NSString * payment_cO = @"underneath";
             if ([payment_cO isEqualToString:@"s"]) {}
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            Boolean rate5 = NO;
             if (rate5) { __asm__("NOP"); }
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            int maskn = 4235;
             while (@(maskn).floatValue < 70) { break; }
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            int emptyA = 4730;
             if (@(emptyA).floatValue < 53) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            NSInteger termss = 2430;
             for(int termss_idx = 0; termss_idx < @(termss).intValue; termss_idx += 0) { break; } 
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            double rrorP = 9712.0;
             if (@(rrorP).doubleValue == 97) {}
        }];
        
        UILabel *expressionLabel = [[UILabel alloc] init];
        expressionLabel.font = [UIFont systemFontOfSize:FS(10)];
            NSDictionary * installH = @{@"panacea":@(654), @"dappled":@(107), @"explanation":@(53)};
             if (installH.count > 177) {}
        expressionLabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
        expressionLabel.textAlignment = NSTextAlignmentLeft;
            NSString * appkeyl = @"fort";
             if (appkeyl.length > 61) {}
        expressionLabel.numberOfLines = 0; 
        expressionLabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:expressionLabel];
        [expressionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSArray * openC = @[@(143), @(360)];
             if ([openC containsObject:@"v"]) {}
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
            double tran4 = 8791.0;
             for(int tran4_idx = 10; tran4_idx < @(tran4).intValue; tran4_idx -= 3) { break; } 
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * rateF = @"relatively";
             if ([rateF isEqualToString:@"_"]) {}
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            double size_1va = 19.0;
             while (@(size_1va).integerValue == 29) { break; }
            make.top.equalTo(expressionLabel.mas_bottom).mas_offset(VH(34));
            float handlerG = 8439.0;
             if (@(handlerG).longValue >= 88) {}
            make.height.mas_equalTo(VH(50));
            NSInteger color4 = 4485;
             if (@(color4).doubleValue <= 96) {}
        }];
        
        CAGradientLayer *confp = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(25)];
        [regAccountBtn.layer addSublayer:confp];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            confp.frame = regAccountBtn.bounds;
            NSArray * impW = @[@(700), @(349)];
             if (impW.count > 40) {}
        }];

        
        
    }
    return self;
}



- (instancetype)initView_MMMethodMMM
{
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}

@end
