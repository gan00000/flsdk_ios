
#import "CHMXTTManagerRequest.h"

@interface CHMXTTManagerRequest()


@property(nonatomic, assign)long  responceIndex;
@property(nonatomic, assign)double  interruptOffset;
@property(nonatomic, assign)double  calculateMargin;
@property(nonatomic, copy)NSString *  authrizationArac_str;


@end

@implementation CHMXTTManagerRequest
{
    UIButton *loginTabBtn;
    UIButton *regTabBtn;
    
    NSUInteger currentClickTab;
    
    UIView *loginBottomLine;
    
    UIView *regBottomLine;
    
    UIButton *backBtn;
    
}

-(NSArray *)attribtFinishBolck{
     float model = 8586.0;
    NSMutableArray * decayArbitratorGuitar = [NSMutableArray arrayWithObject:@(247)];
    model = 1447;
    [decayArbitratorGuitar addObject: @(model)];
         int temp_v_89 = (int)model;
     temp_v_89 += 62;

    return decayArbitratorGuitar;

}








-(void)addView_MMMethodMMM
{

    
    UIView *valueView = [[UIView alloc] init];
    
    
    [self addSubview:valueView];
    [valueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
            NSString * phonex = @"adjutant";

         {
NSArray * latter = [self attribtFinishBolck];

      int latter_len = latter.count;
     int j_37 = (int)latter_len;
     if (j_37 > 77) {
          }
     else if (j_37 < 589) {
          j_37 += 81;
          j_37 /= 58;

     }
      [latter enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx > 32) {
              NSLog(@"selected:%@", obj);
        }
      }];


}
             if ([phonex isEqualToString:@"K"]) {}
        make.top.mas_equalTo(VH(MARGIN_TOP));
            NSDictionary * start9 = @{@"upheaval":@(122), @"salmon":@(928)};
             while (start9.count > 109) { break; }
    }];
    
    
    
    loginTabBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            Boolean readerT = NO;
             if (!readerT) { __asm__("NOP"); }
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
            NSString * beganQ = @"palate";
             if ([beganQ isEqualToString:@"A"]) {}
    [valueView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(valueView);
            NSInteger selectP = 8281;
             if (@(selectP).integerValue < 73) {}
        make.leading.mas_equalTo(valueView);
            NSString * util9 = @"levee";
             if ([util9 isEqualToString:@"0"]) {}
        make.centerX.mas_equalTo(self.mas_leading).mas_offset(VW(100+16));
            NSArray * maskX = [NSArray arrayWithObjects:@(631), @(480), @(121), nil];
             if (maskX.count > 164) {}
    }];
    
    
    regTabBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_register.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
            double preferredg = 130.0;
             for(NSInteger preferredg_idx = 62; preferredg_idx < @(preferredg).intValue; preferredg_idx -= 8) { break; } 
    [valueView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(valueView);
            NSDictionary * modeL = @{@"trolley":@(462)};
             if (modeL[@"1"]) {}
        make.trailing.mas_equalTo(valueView);
            Boolean securityH = NO;
             while (!securityH) { __asm__("NOP"); break; }
        make.centerX.mas_equalTo(self.mas_trailing).mas_offset(-VW(100+16));

    }];
    
    loginBottomLine = [[UIView alloc] init];
            double styleQ = 30.0;
             while (@(styleQ).doubleValue > 122) { break; }
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            int receipte = 3612;
             while (@(receipte).longLongValue <= 186) { break; }
    [valueView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
            NSArray * valuep = [NSArray arrayWithObjects:@(946), @(272), nil];
             while (valuep.count > 180) { break; }
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
            double landscapeQ = 3091.0;
             while (@(landscapeQ).intValue == 177) { break; }
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * codej = @"maroon";
             if ([codej isEqualToString:@"P"]) {}
    regBottomLine.hidden = YES;
            double appendq = 3340.0;
             while (@(appendq).intValue < 113) { break; }
    [valueView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
            double preferred2 = 2742.0;
             if (@(preferred2).intValue == 108) {}
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
            NSString * logouto = @"unchangeable";
             if ([logouto isEqualToString:@"r"]) {}
        make.height.mas_equalTo(2);

    }];
    
    
    backBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(valueView);
            int authticationt = 6823;
             while (@(authticationt).floatValue > 27) { break; }
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));
            NSDictionary * closee = [NSDictionary dictionaryWithObjectsAndKeys:@"conspire",@(226), @"immoral",@(105), @"detraction",@(89), nil];
    }];
    
    
    
    currentClickTab = 1;
            float handlerg = 7288.0;
             for(int handlerg_idx = 15; handlerg_idx < @(handlerg).intValue; handlerg_idx -= 1) { break; } 
    [loginTabBtn setSelected:YES];
            double scaleD = 5868.0;
             while (@(scaleD).floatValue <= 136) { break; }
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[CHMXTTResponceBind alloc] initView_MMMethodMMM];
            NSArray * g_centern = [NSArray arrayWithObjects:@(324), @(508), @(607), nil];
             if ([g_centern containsObject:@"5"]) {}
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
            float error7 = 3287.0;
             if (@(error7).intValue > 102) {}
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

    }];
    
    self.mRegisterAccountView = [[CHMXTTFind alloc] initView_MMMethodMMM];
            double headery = 4198.0;
             while (@(headery).longLongValue >= 73) { break; }
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
            NSString * seriesT = @"selfcentered";
             if (seriesT.length > 17) {}
    }];
    
    self.mRegisterAccountView.hidden = YES;
    
}

-(int)termPassowrdReceiptPtrRepeatsAloneics{
    int impact = 0;

    return impact;

}






- (void)drawRect:(CGRect)rect  
{

         {
int pedagogy = [self termPassowrdReceiptPtrRepeatsAloneics];

      if (pedagogy != 83) {
             NSLog(@"%d",pedagogy);
      }
     int temp_g_29 = (int)pedagogy;
     temp_g_29 -= 79;


}

    [super drawRect:rect];
            NSInteger delegate_k0W = 7678;
             while (@(delegate_k0W).floatValue <= 96) { break; }
    self.mAccountLoginView.delegate = self.delegate;
            double y_hideD = 2543.0;
             if (@(y_hideD).doubleValue == 105) {}
    self.mRegisterAccountView.delegate = self.delegate;
    
    self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
    
    if (!self.fromPage) {
        backBtn.hidden = YES;
    }
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        currentClickTab = 1;
            double drawK = 7437.0;
             if (@(drawK).doubleValue == 102) {}
        [self addView_MMMethodMMM];
    }
    return self;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

   self.responceIndex = 9865;

   self.interruptOffset = 6396.0;

   self.calculateMargin = 6144.0;

   self.authrizationArac_str = @"cattle";

   self.start_index = 912;

   self.flows_padding = 5386.0;

   self.iconOffset = 1122.0;

   self.helperSpace = 3634.0;

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
            NSArray * readerM = @[@"intersperse"];
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

-(void) makeTabStatus_MMMethodMMM:(BOOL) loginClick
{

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
