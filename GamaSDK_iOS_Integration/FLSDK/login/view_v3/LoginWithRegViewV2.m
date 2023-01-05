
#import "LoginWithRegViewV2.h"

@interface LoginWithRegViewV2()


@property(nonatomic, assign)float  named_max;
@property(nonatomic, assign)double  autorotate_margin;
@property(nonatomic, assign)long  eventSum;


@end

@implementation LoginWithRegViewV2
{
    UIButton *loginTabBtn;
    UIButton *regTabBtn;
    
    NSUInteger currentClickTab;
    
    UIView *loginBottomLine;
    
    UIView *regBottomLine;
    
    UIButton *backBtn;
    
}




- (instancetype)initView_MMMethodMMM
{
   self.named_max = 5232.0;

   self.autorotate_margin = 4859.0;

   self.eventSum = 8233;

   self.status_tag = 893;

   self.information_flag = 8584;

   self.commonPadding = 5271.0;

    self = [super init];
    if (self) {
        currentClickTab = 1;
            NSArray * rameworkx = @[@(109), @(238)];
        [self addView_MMMethodMMM];
    }
    return self;
}

-(NSString *)scanExpArea:(double)read {
     float fieldTable = 4834.0;
    NSString *sybaritic = [NSString string];
         int temp_y_19 = (int)fieldTable;
     temp_y_19 /= 72;

    return sybaritic;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
NSString * fearful = [self scanExpArea:8388.0];

      if ([fearful isEqualToString:@"presenting"]) {
              NSLog(@"%@",fearful);
      }
      int fearful_len = fearful.length;
     int o_68 = (int)fearful_len;
     o_68 += 8;


}

    switch (sender.tag) {
       
        case kLoginTabActTag:
            SDK_LOG(wwwww_tag_wwwww_kLoginTabActTag);
            if (currentClickTab == 1) {
                return;
            }
            currentClickTab = 1;
            
            [self makeTabStatus_MMMethodMMM:YES];
            if (self.delegate) {
                
            }
            break;
            
        case kRegTabActTag:
            
            
            SDK_LOG(wwwww_tag_wwwww_kRegTabActTag);
            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            
           
            [self makeTabStatus_MMMethodMMM:NO];
        {
            NSArray * radiusF = [NSArray arrayWithObjects:[NSArray arrayWithObjects:@(7), @(661), nil], nil];
             if (radiusF.count > 188) {}
        }
            break;
            
        case kBackBtnActTag:
            
            if (self.delegate) {
                
                [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME];
               
               
            }
            
            
        default:
            break;
    }
    
}

-(NSInteger)failRngTimestampObserving:(float)click {
    NSInteger devotionOddFashion = 0;

    return devotionOddFashion;

}






-(void)addView_MMMethodMMM
{

    
    UIView *tabView = [[UIView alloc] init];
    
    
    [self addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);

         {
NSInteger forswearCeiling = [self failRngTimestampObserving:6332.0];

      if (forswearCeiling >= 31) {
             NSLog(@"%ld",forswearCeiling);
      }
     int p_57 = (int)forswearCeiling;
     int e_61 = 0;
     int m_16 = 1;
     if (p_57 > m_16) {
         p_57 = m_16;

     }
     for (int x_35 = 0; x_35 < p_57; x_35++) {
         e_61 += x_35;
          if (x_35 > 0) {
          p_57 -=  x_35;

     }
     int m_27 = e_61;
          int n_98 = 1;
     int x_72 = 1;
     if (m_27 > x_72) {
         m_27 = x_72;
     }
     while (n_98 < m_27) {
         n_98 += 1;
     int y_44 = n_98;
              break;
     }
         break;

     }


}
            int projectL = 6405;
             while (@(projectL).intValue <= 30) { break; }
        make.top.mas_equalTo(VH(MARGIN_TOP));
    }];
    
    
    
    loginTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSInteger checkP = 4653;
             if (@(checkP).floatValue >= 43) {}
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
            int contentg = 3146;
             while (@(contentg).longValue >= 11) { break; }
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
            double localized9 = 8242.0;
             if (@(localized9).intValue > 158) {}
        make.leading.mas_equalTo(tabView);
            double instance5 = 411.0;
             while (@(instance5).integerValue < 23) { break; }
        make.centerX.mas_equalTo(self.mas_leading).mas_offset(VW(100+16));
            double ipadr = 1732.0;
             if (@(ipadr).doubleValue <= 196) {}
    }];
    
    
    regTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_register.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
            double completeb = 691.0;
             if (@(completeb).integerValue >= 45) {}
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
            NSString * perssionp = @"commotion";
             if ([perssionp isEqualToString:@"7"]) {}
        make.trailing.mas_equalTo(tabView);
            int file9 = 3967;
             while (@(file9).longValue >= 74) { break; }
        make.centerX.mas_equalTo(self.mas_trailing).mas_offset(-VW(100+16));

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSInteger vip2 = 4534;
             if (@(vip2).longLongValue >= 67) {}
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
            float localizedE = 2115.0;
             while (@(localizedE).integerValue >= 150) { break; }
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
            NSString * phonec = @"impotent";
             while (phonec.length > 16) { break; }
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
            double withproductk = 8027.0;
             for(NSInteger withproductk_idx = 0; withproductk_idx < @(withproductk).intValue; withproductk_idx += 9) { break; } 
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * listx = @"emotion";
             while (listx.length > 142) { break; }
    regBottomLine.hidden = YES;
            NSDictionary * sharedF = [NSDictionary dictionaryWithObjectsAndKeys:@"translate",@(442), @"discernible",@(877), nil];
             if (sharedF.count > 60) {}
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
            int accessi = 5624;
             if (@(accessi).integerValue < 62) {}
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
            NSArray * becomen = [NSArray arrayWithObjects:@(148), @(653), @(714), nil];
             while (becomen.count > 196) { break; }
        make.height.mas_equalTo(2);

    }];
    
    
    backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);
            NSString * bool_lbH = @"vengeance";
             if (bool_lbH.length > 8) {}
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));
            Boolean formatW = YES;
             while (!formatW) { __asm__("NOP"); break; }
    }];
    
    
    
    currentClickTab = 1;
            int webw = 1517;
             while (@(webw).integerValue >= 197) { break; }
    [loginTabBtn setSelected:YES];
            NSInteger mode2 = 7585;
             while (@(mode2).doubleValue > 194) { break; }
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[AccountLoginViewV2 alloc] initView_MMMethodMMM];
            NSInteger savea = 3460;
             while (@(savea).longLongValue == 34) { break; }
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
            double jsonL = 9852.0;
             while (@(jsonL).floatValue > 147) { break; }
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

    }];
    
    self.mRegisterAccountView = [[RegisterAccountViewV2 alloc] initView_MMMethodMMM];
            NSInteger engine0 = 1545;
             if (@(engine0).doubleValue <= 112) {}
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
            NSDictionary * background0 = @{@"cord":@(257)};
             while (background0.count > 118) { break; }
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
            Boolean sdkC = YES;
             if (sdkC) { __asm__("NOP"); }
    }];
    
    self.mRegisterAccountView.hidden = YES;
    
}


- (void)drawRect:(CGRect)rect  
{

    [super drawRect:rect];
            NSString * urlst = @"onerous";
             if (urlst.length > 69) {}
    self.mAccountLoginView.delegate = self.delegate;
            NSInteger bundlea = 7673;
             if (@(bundlea).floatValue <= 49) {}
    self.mRegisterAccountView.delegate = self.delegate;
    
    self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
    
    if (!self.fromPage) {
        backBtn.hidden = YES;
    }
}

-(NSString *)uppercaseEventPentAmount:(NSArray *)callTapped observe:(int)observe {
     double sdk = 2387.0;
     double appear = 7370.0;
    NSString *pulchritudeDecorative = [NSString new];
         int _b_4 = (int)sdk;
     int t_85 = 0;
     for (int t_53 = _b_4; t_53 >= _b_4 - 1; t_53--) {
         t_85 += t_53;
          if (t_53 > 0) {
          _b_4 +=  t_53;

     }
     int n_4 = t_85;
          int k_87 = 0;
     int x_49 = 1;
     if (n_4 > x_49) {
         n_4 = x_49;

     }
     for (int k_40 = 0; k_40 < n_4; k_40++) {
         k_87 += k_40;
     int h_92 = k_87;
              break;

     }
         break;

     }
         int k_17 = (int)appear;
     int t_77 = 1;
     int a_52 = 0;
     if (k_17 > a_52) {
         k_17 = a_52;
     }
     while (t_77 <= k_17) {
         t_77 += 1;
          k_17 /= t_77;
     int z_56 = t_77;
          switch (z_56) {
          case 22: {
          if (z_56 != 579) {
          z_56 -= 100;
          }
             break;

     }
          case 45: {
          z_56 -= 48;
          z_56 -= 94;
             break;

     }
     default:
         break;

     }
         break;
     }

    return pulchritudeDecorative;

}





-(void) makeTabStatus_MMMethodMMM:(BOOL) loginClick
{

         {
NSString * gallows = [self uppercaseEventPentAmount:[NSArray arrayWithObjects:@(584), @(545), @(327), nil] observe:4750];

      int gallows_len = gallows.length;
     int s_20 = (int)gallows_len;
     switch (s_20) {
          case 67: {
          s_20 -= 80;
          s_20 -= 19;
             break;

     }
          case 43: {
          s_20 += 44;
          int k_56 = 0;
     int y_55 = 0;
     if (s_20 > y_55) {
         s_20 = y_55;

     }
     for (int m_57 = 1; m_57 < s_20; m_57++) {
         k_56 += m_57;
          if (m_57 > 0) {
          s_20 -=  m_57;

     }
     int m_59 = k_56;
              break;

     }
             break;

     }
          case 40: {
          s_20 += 34;
          int o_37 = 1;
     int j_12 = 1;
     if (s_20 > j_12) {
         s_20 = j_12;
     }
     while (o_37 < s_20) {
         o_37 += 1;
          s_20 -= o_37;
              break;
     }
             break;

     }
          case 37: {
          if (s_20 != 319) {
          }
             break;

     }
          case 78: {
          s_20 -= 36;
          int o_73 = 1;
     int l_28 = 0;
     if (s_20 > l_28) {
         s_20 = l_28;
     }
     while (o_73 <= s_20) {
         o_73 += 1;
     int m_44 = o_73;
          if (m_44 < 207) {
          }
         break;
     }
             break;

     }
     default:
         break;

     }
      if ([gallows isEqualToString:@"method_vm"]) {
              NSLog(@"%@",gallows);
      }


}

    self.clipsToBounds = YES;

    if (loginClick) {
        
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
        
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
        
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
        }];
        
        
        
    }else{
    
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        

        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,-self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, -self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
        }];
        
    }
}
@end
