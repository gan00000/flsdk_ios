
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

@implementation RegisterAccountViewV2
{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *passwordAgainSDKTextFiledView;
    UIButton *regAccountBtn; 
    LoginTitleView   *mLoginTitleView;
    int phoneCountdown;
    
    
}



- (instancetype)initViewWithBindType_MMMethodMMM:(NSInteger) bindType
{
   self.scriptOffset = 4079.0;

   self.window_umWkwebEncodingStr = @"infinitely";

   self.wkweb_idx = 4879;

   self.private_g = 1289.0;

    self = [super init];
    if (self) {
        
        
        
        
        self.bindType = bindType;
        
       
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Account)];
            NSString * tapped6 = @"compost";
             while (tapped6.length > 74) { break; }
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            NSArray * wkwebx = @[@(953), @(562)];
             if (wkwebx.count > 199) {}
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self);
            NSString * type_q1u = @"rationalize";
             if (type_q1u.length > 192) {}
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSArray * installl = @[@"acquire"];
            make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            double userdefaultb = 4536.0;
             if (@(userdefaultb).longValue == 100) {}
            make.height.mas_equalTo(VH(40));
            Boolean applicationT = NO;
             if (!applicationT) { __asm__("NOP"); }
        }];
        
        
        
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password)];
            double gameI = 5566.0;
             while (@(gameI).longValue < 100) { break; }
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(22));
            NSArray * filea = [NSArray arrayWithObjects:@(573), @(891), @(895), nil];
             if (filea.count > 157) {}
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            double rrorZ = 7276.0;
             while (@(rrorZ).integerValue < 56) { break; }
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            double urlsP = 1565.0;
             if (@(urlsP).longLongValue <= 50) {}
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
            double filedv = 6656.0;
             while (@(filedv).longLongValue == 16) { break; }
        }];
        
        UILabel *tipsUILabel = [[UILabel alloc] init];
        tipsUILabel.font = [UIFont systemFontOfSize:FS(10)];
            NSString * loggerH = @"eventempered";
             if ([loggerH isEqualToString:@"g"]) {}
        tipsUILabel.text = wwwww_tag_wwwww_text_reg_tips.localx;
            NSArray * calculateF = [NSArray arrayWithObjects:@(3485.0), nil];
             if (calculateF.count > 129) {}
        tipsUILabel.textAlignment = NSTextAlignmentLeft;
            NSString * contenta = @"garment";
             while (contenta.length > 102) { break; }
        tipsUILabel.numberOfLines = 0; 
        tipsUILabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    
        [self addSubview:tipsUILabel];
        [tipsUILabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            NSDictionary * seedu = [NSDictionary dictionaryWithObjectsAndKeys:@"silicon",@(890), nil];
             if (seedu.count > 31) {}
            make.top.mas_equalTo(passwordSDKTextFiledView.mas_bottom).offset(8);
    
        }];
        
        
        regAccountBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_confire_reg.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kRegisterAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        [regAccountBtn.layer setCornerRadius:VH(25)];
            double firebaseW = 5505.0;
             if (@(firebaseW).doubleValue == 38) {}
        regAccountBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            double socialD = 7608.0;
             while (@(socialD).doubleValue < 117) { break; }
        [self addSubview:regAccountBtn];
        
        [regAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.trailing.equalTo(accountSDKTextFiledView);
            make.top.equalTo(tipsUILabel.mas_bottom).mas_offset(VH(34));
            NSDictionary * statuev = @{@"summarily":@(327)};
             if (statuev.count > 49) {}
            make.height.mas_equalTo(VH(50));
            NSString * register_24 = @"woodcutter";
             if (register_24.length > 12) {}
        }];
        
        
    }
    return self;
}

-(int)arraySureenneDesNullable:(int)handleFirebase short_s5Perssion:(NSDictionary *)short_s5Perssion productsUser:(NSInteger)productsUser {
     NSInteger colorMain = 2481;
    int maskOldWhetstone = 0;
    colorMain = 7036;
    maskOldWhetstone /= MAX(colorMain, 1);
         int tmp_q_83 = (int)colorMain;
     switch (tmp_q_83) {
          case 61: {
          tmp_q_83 += 99;
          tmp_q_83 *= 51;
             break;

     }
          case 65: {
          tmp_q_83 /= 45;
          tmp_q_83 += 60;
             break;

     }
          case 45: {
          tmp_q_83 -= 27;
             break;

     }
          case 48: {
          tmp_q_83 /= 18;
          int g_63 = 1;
     int x_16 = 0;
     if (tmp_q_83 > x_16) {
         tmp_q_83 = x_16;
     }
     while (g_63 < tmp_q_83) {
         g_63 += 1;
          tmp_q_83 /= g_63;
     int n_65 = g_63;
              break;
     }
             break;

     }
          case 37: {
          tmp_q_83 += 84;
          tmp_q_83 -= 1;
             break;

     }
          case 95: {
          tmp_q_83 -= 72;
          int u_44 = 1;
     int v_37 = 0;
     if (tmp_q_83 > v_37) {
         tmp_q_83 = v_37;
     }
     while (u_44 < tmp_q_83) {
         u_44 += 1;
          tmp_q_83 /= u_44;
     int j_9 = u_44;
              break;
     }
             break;

     }
          case 34: {
          tmp_q_83 -= 16;
             break;

     }
          case 27: {
          tmp_q_83 -= 12;
          tmp_q_83 += 68;
             break;

     }
          case 96: {
          tmp_q_83 -= 33;
             break;

     }
          case 3: {
          tmp_q_83 /= 16;
          int j_92 = 1;
     int k_95 = 0;
     if (tmp_q_83 > k_95) {
         tmp_q_83 = k_95;
     }
     while (j_92 <= tmp_q_83) {
         j_92 += 1;
          tmp_q_83 /= j_92;
     int h_93 = j_92;
              break;
     }
             break;

     }
     default:
         break;

     }

    return maskOldWhetstone;

}





- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    switch (sender.tag) {
            
            
        case kRegisterAccountActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kRegisterAccountActTag);
        {
            NSString * cellX = @"devotee";

         {
int opus = [self arraySureenneDesNullable:8151 short_s5Perssion:[NSDictionary dictionaryWithObjectsAndKeys:@"moat",@(YES), nil] productsUser:7473];

      if (opus <= 41) {
             NSLog(@"%d",opus);
      }
     int tmp_c_7 = (int)opus;
     int k_64 = 0;
     for (int h_6 = tmp_c_7; h_6 >= tmp_c_7 - 1; h_6--) {
         k_64 += h_6;
          tmp_c_7 += h_6;
         break;

     }


}
             if ([cellX isEqualToString:@"6"]) {}
        }
            NSString *accountName = accountSDKTextFiledView.inputUITextField.text;
        {
            int payment_wjr = 789;
             while (@(payment_wjr).doubleValue < 61) { break; }
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



- (instancetype)initView_MMMethodMMM
{
    self = [self initViewWithBindType_MMMethodMMM:0];
    if (!self) {
        return nil;
    }
    return self;
}

@end
