
#import "RegisterAccountViewV2.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "SDKTextFiledView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"
#import "SAppleLogin.h"
#import "LoginHelper.h"
#import "ViewUtil.h"

@implementation RegisterAccountViewV2
{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *passwordAgainSDKTextFiledView;
    UIButton *regAccountBtn; 
    LoginTitleView   *mLoginTitleView;
    int phoneCountdown;
    
    
}



- (instancetype)initView_MMMethodMMM
{
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}

-(UITableView *)beginBolckSortMhanderObtainTableView:(NSInteger)strings appkey:(NSDictionary *)appkey pesenting:(NSArray *)pesenting {
     UIButton * terms = [[UIButton alloc] initWithFrame:CGRectMake(253, 266, 0, 0)];
     NSArray * type_fScale = [NSArray arrayWithObjects:@(437), @(221), @(785), nil];
     UILabel * existingRequest = [[UILabel alloc] init];
     NSDictionary * linePresentation = [NSDictionary dictionaryWithObjectsAndKeys:@"6",@"f", @"S",@"U", nil];
    UITableView * calculated = [[UITableView alloc] initWithFrame:CGRectZero];
    calculated.delegate = nil;
    calculated.dataSource = nil;
    calculated.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    calculated.backgroundColor = [UIColor colorWithRed:103 / 255.0 green:130 / 255.0 blue:165 / 255.0 alpha:0.9];
    calculated.alpha = 0.2;
    calculated.frame = CGRectMake(261, 84, 0, 0);
    terms.alpha = 0.6;
    terms.backgroundColor = [UIColor colorWithRed:47 / 255.0 green:14 / 255.0 blue:93 / 255.0 alpha:0.8];
    terms.frame = CGRectMake(24, 149, 0, 0);
    
    CGRect termsFrame = terms.frame;
    termsFrame.size = CGSizeMake(231, 160);
    terms.frame = termsFrame;
    if (terms.isHidden) {
         terms.hidden = false;
    }
    if (terms.alpha > 0.0) {
         terms.alpha = 0.0;
    }
    if (!terms.isUserInteractionEnabled) {
         terms.userInteractionEnabled = true;
    }

    existingRequest.backgroundColor = [UIColor colorWithRed:49 / 255.0 green:82 / 255.0 blue:61 / 255.0 alpha:0.1];
    existingRequest.alpha = 0.8;
    existingRequest.frame = CGRectMake(53, 212, 0, 0);
    existingRequest.textAlignment = NSTextAlignmentRight;
    existingRequest.font = [UIFont systemFontOfSize:19];
    existingRequest.text = nil;
    existingRequest.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    
    CGRect existingRequestFrame = existingRequest.frame;
    existingRequestFrame.size = CGSizeMake(255, 125);
    existingRequest.frame = existingRequestFrame;
    if (existingRequest.isHidden) {
         existingRequest.hidden = false;
    }
    if (existingRequest.alpha > 0.0) {
         existingRequest.alpha = 0.0;
    }
    if (!existingRequest.isUserInteractionEnabled) {
         existingRequest.userInteractionEnabled = true;
    }


    
    CGRect calculatedFrame = calculated.frame;
    calculatedFrame.size = CGSizeMake(181, 214);
    calculated.frame = calculatedFrame;
    if (calculated.alpha > 0.0) {
         calculated.alpha = 0.0;
    }
    if (calculated.isHidden) {
         calculated.hidden = false;
    }
    if (!calculated.isUserInteractionEnabled) {
         calculated.userInteractionEnabled = true;
    }


    return calculated;

}





- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
        {
            NSArray * dimeS = @[@(352), @(607), @(298)];

         {
UITableView * partlyCouncil = [self beginBolckSortMhanderObtainTableView:1269 appkey:[NSDictionary dictionaryWithObjectsAndKeys:@"dabble",@(793), @"cognizant",@(20), @"handkerchief",@(870), nil] pesenting:[NSArray arrayWithObjects:@(974), @(376), nil]];

      [self addSubview: partlyCouncil];
      int partlyCouncil_tag = partlyCouncil.tag;
     int w_65 = (int)partlyCouncil_tag;
     switch (w_65) {
          case 66: {
          w_65 -= 42;
             break;

     }
          case 23: {
          w_65 -= 31;
          if (w_65 > 808) {
          }
             break;

     }
     default:
         break;

     }


}
             if ([dimeS containsObject:@"y"]) {}
        }
            NSString *accountName = accountSDKTextFiledView.inputUITextField.text;
        {
            NSString * role0 = @"yield";
        }
            NSString *pwd = passwordSDKTextFiledView.inputUITextField.text;
            
            
            if (![SdkUtil validUserName_MMMethodMMM:accountName]) {
                
                return;
            }
            
            if (![SdkUtil validPwd_MMMethodMMM:pwd]) {
                return;
            }
          
            [LoginHelper accountRegister_MMMethodMMM:self.delegate view_MMMethodMMM:self areaCode_MMMethodMMM:@"" name:accountName password_MMMethodMMM:pwd phoneNum_MMMethodMMM:@"" vfCode_MMMethodMMM:@""];
            
        }
            break;
            
        default:
            break;
    }
}



- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
   self.bnews_min = 4154.0;

   self.ipadFlag = 9913;

    self = [super init];
    if (self) {
        
        
        
        
        self.bindType = bindType;
        
       
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSArray * call5 = [NSArray arrayWithObjects:@(30), @(857), nil];
             if (call5.count > 96) {}
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            int listu = 6434;
             while (@(listu).intValue <= 175) { break; }
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            NSDictionary * systeme = [NSDictionary dictionaryWithObjectsAndKeys:@"V",@"H", @"C",@"I", @"t",@"v", nil];
             if (systeme[@"e"]) {}
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            int queryF = 2039;
             while (@(queryF).intValue > 26) { break; }
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            int orientations = 7496;
             while (@(orientations).intValue <= 13) { break; }
            make.height.mas_equalTo(VH(40));
            double clienty = 4277.0;
             while (@(clienty).longValue > 115) { break; }
        }];
        
        
        
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            NSDictionary * arrayt = [NSDictionary dictionaryWithObjectsAndKeys:@"conspicuous",@(962), nil];
             if (arrayt[@"W"]) {}
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            NSDictionary * window_alF = [NSDictionary dictionaryWithObjectsAndKeys:@"fantasia",@(870), @"ellipsis",@(962), @"accurately",@(89), nil];
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            float h_layerg = 3123.0;
             if (@(h_layerg).doubleValue <= 103) {}
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            int encodingh = 7880;
             for(int encodingh_idx = 0; encodingh_idx < @(encodingh).intValue; encodingh_idx += 5) { break; } 
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            NSArray * cancelQ = [NSArray arrayWithObjects:@(143), @(621), @(628), nil];
             while (cancelQ.count > 136) { break; }
        }];
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
            Boolean basex = YES;
             if (!basex) { __asm__("NOP"); }
        tipsUILabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
            double efaultS = 5245.0;
             if (@(efaultS).integerValue < 96) {}
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
            Boolean ipadR = NO;
             if (!ipadR) { __asm__("NOP"); }
        tipsUILabel.numberOfLines = 0; 
        tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            double aracc = 4803.0;
             while (@(aracc).doubleValue < 18) { break; }
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
            NSString * u_viewz = @"seaport";
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * table_ = @"ulcerate";
             while (table_.length > 68) { break; }
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSDictionary * showM = @{@"dessert":@(363), @"veil":@(491), @"glimpse":@(132)};
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(34));
            NSString * moreE = @"proprietor";
             while (moreE.length > 181) { break; }
            make.height.mas_equalTo(VH(50));
            Boolean forgotd = YES;
        }];
        
        CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(25)];
            NSArray * changeA = @[@(267), @(933)];
        [regAccountBtn.layer addSublayer:gl];
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            gl.frame = regAccountBtn.bounds;
            NSArray * baseu = [NSArray arrayWithObjects:@"problem", @"homage", nil];
             if (baseu.count > 179) {}
        }];

        
        
    }
    return self;
}

@end
