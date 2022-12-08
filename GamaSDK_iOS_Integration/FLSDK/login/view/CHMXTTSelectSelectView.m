
#import "CHMXTTSelectSelectView.h"
#import "SdkHeader.h"
#import "CHMXTTStringView.h"
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTCenterView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTRegister.h"
#import "CHMXTTErvice.h"
#import "CHMXTTAccount.h"

@implementation CHMXTTSelectSelectView
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
            double method_juk = 6968.0;
             for(NSInteger method_juk_idx = 0; method_juk_idx < @(method_juk).intValue; method_juk_idx += 9) { break; } 
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSArray * backgroundM = [NSArray arrayWithObjects:@(624), @(151), nil];
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            NSArray * window_dE = @[@(595), @(695), @(233)];
             if ([window_dE containsObject:@"y"]) {}
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSArray * transactionJ = @[[NSDictionary dictionaryWithObjectsAndKeys:@"D",@"Q", @"b",@"C", @"I",@"z", nil]];
             while (transactionJ.count > 32) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            double pagei = 2892.0;
             for(NSInteger pagei_idx = 0; pagei_idx < @(pagei).intValue; pagei_idx += 7) { break; } 
            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        passwordSDKTextFiledView = [[CHMXTTServiceTermsView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            Boolean buttoni = YES;
             if (buttoni) { __asm__("NOP"); }
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            NSDictionary * wedthH = @{@"soda":@(603), @"respective":@(429)};
             if (wedthH.count > 80) {}
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            NSString * frame_ud = @"quell";
             if (frame_ud.length > 127) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            double bundlei = 128.0;
             while (@(bundlei).integerValue > 149) { break; }
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UILabel *expressionLabel = [[UILabel alloc] init];
        expressionLabel.font = [UIFont systemFontOfSize:FS(10)];
            NSArray * shareb = [NSArray arrayWithObjects:@(471), @(989), @(212), nil];
        expressionLabel.text = @"*帳號信箱將會作為您找回密碼的驗證信箱，請謹慎輸入";
            double message8 = 5071.0;
             while (@(message8).floatValue == 89) { break; }
        expressionLabel.textAlignment = NSTextAlignmentLeft;
            double blockN = 585.0;
             for(int blockN_idx = 0; blockN_idx < @(blockN).intValue; blockN_idx += 0) { break; } 
        expressionLabel.numberOfLines = 1; 
        expressionLabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:expressionLabel];
        [expressionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            double systemk = 6827.0;
             if (@(systemk).longLongValue > 4) {}
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_erraneous_styleward fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
            NSArray * nameF = [NSArray arrayWithObjects:@"responsible", @"night", @"proportional", nil];
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
            NSDictionary * value7 = [NSDictionary dictionaryWithObjectsAndKeys:@"reverie",@(63), nil];
             if (value7.count > 145) {}
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSArray * genericR = [NSArray arrayWithObjects:@(684), @(481), nil];
             if (genericR.count > 6) {}
            make.top.equalTo(expressionLabel.mas_bottom).mas_offset(VH(34));
            NSArray * requestp = @[@"neighbor", @"errant", @"wax"];
             if ([requestp containsObject:@"K"]) {}
            make.height.mas_equalTo(VH(50));
        }];
        
        
    }
    return self;
}

-(UIView *)presentedMakerSavedgetPaymentsViewportTmpView:(NSDictionary *)failMacaddress appearBecome:(double)appearBecome {
     NSArray * configurator = [NSArray arrayWithObjects:@(606), @(144), @(473), nil];
     NSInteger viewLevel = 8454;
     Boolean short_s = NO;
     int keychainShared = 7067;
    UIView * eraseMalpractice = [UIView new];
    eraseMalpractice.alpha = 0.7;
    eraseMalpractice.backgroundColor = [UIColor colorWithRed:29 / 255.0 green:225 / 255.0 blue:173 / 255.0 alpha:0.3];
    eraseMalpractice.frame = CGRectMake(67, 77, 0, 0);

    
    CGRect eraseMalpracticeFrame = eraseMalpractice.frame;
    eraseMalpracticeFrame.size = CGSizeMake(202, 250);
    eraseMalpractice.frame = eraseMalpracticeFrame;
    if (eraseMalpractice.isHidden) {
         eraseMalpractice.hidden = false;
    }
    if (eraseMalpractice.alpha > 0.0) {
         eraseMalpractice.alpha = 0.0;
    }
    if (!eraseMalpractice.isUserInteractionEnabled) {
         eraseMalpractice.userInteractionEnabled = true;
    }

    return eraseMalpractice;

}





- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.removeIndex = 2467;

   self.rrorFile_list = @[@(890), @(364), @(568)];

   self.impl_index = 7598;

         {
UIView * straits = [self presentedMakerSavedgetPaymentsViewportTmpView:@{@"arrangement":@(714), @"founder":@(47), @"jejune":@(1000)} appearBecome:7594.0];

      [self addSubview: straits];
      int straits_tag = straits.tag;
     int _c_63 = (int)straits_tag;
     int t_90 = 1;
     int w_48 = 1;
     if (_c_63 > w_48) {
         _c_63 = w_48;
     }
     while (t_90 < _c_63) {
         t_90 += 1;
          _c_63 /= t_90;
     int n_3 = t_90;
          int n_37 = 0;
     for (int c_28 = n_3; c_28 >= n_3 - 1; c_28--) {
         n_37 += c_28;
          n_3 += c_28;
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
            NSString * arrayO = @"lonesome";
        }
            NSString *reset = accountSDKTextFiledView.inputUITextField.text;
        {
            NSArray * queryq = @[@(649), @(796), @(842)];
        }
            NSString *began = passwordSDKTextFiledView.inputUITextField.text;
            
            [self endEditing:YES];
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
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}

@end
