
#import "LoginWithRegViewV2.h"

@interface LoginWithRegViewV2()


@property(nonatomic, assign)long  responce_sum;
@property(nonatomic, assign)float  engineMax;


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

-(double)acceptableEquelPerical:(NSArray *)self_yyBoard client:(NSDictionary *)client {
    double polishedPastoral = 0;

    return polishedPastoral;

}








- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
double expressionMesa = [self acceptableEquelPerical:[NSArray arrayWithObjects:@(560), @(210), @(897), nil] client:[NSDictionary dictionaryWithObjectsAndKeys:@"work",@(816), @"uncertain",@(738), nil]];

     int h_58 = (int)expressionMesa;
     int e_19 = 1;
     int f_16 = 1;
     if (h_58 > f_16) {
         h_58 = f_16;
     }
     while (e_19 < h_58) {
         e_19 += 1;
     int w_5 = e_19;
          int e_88 = 1;
     int v_86 = 0;
     if (w_5 > v_86) {
         w_5 = v_86;
     }
     while (e_88 < w_5) {
         e_88 += 1;
          w_5 -= e_88;
          w_5 *= 8;
         break;
     }
         break;
     }
      NSLog(@"%f",expressionMesa);


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
            NSInteger switch_9zv = 9447;
             if (@(switch_9zv).integerValue > 93) {}
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

-(NSArray *)secSuccessfulenFrom:(NSString *)accontSystem editMobile:(NSString *)editMobile {
    NSMutableArray * disastrous = [NSMutableArray arrayWithCapacity:986];

    return disastrous;

}






- (void)drawRect:(CGRect)rect  
{

    [super drawRect:rect];
            NSString * frameworku = @"saturate";

         {
NSArray * historyPique = [self secSuccessfulenFrom:@"undersigned" editMobile:@"mad"];

      [historyPique enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx <= 95) {
              NSLog(@"wrapper:%@", obj);
        }
      }];
      int historyPique_len = historyPique.count;
     int g_29 = (int)historyPique_len;
     if (g_29 >= 275) {
          g_29 += 46;
          }
     else if (g_29 < 69) {
     
     }
     else {
          g_29 *= 65;
     
     }


}
             while (frameworku.length > 153) { break; }
    self.mAccountLoginView.delegate = self.delegate;
            int gamaI = 8753;
             while (@(gamaI).longLongValue > 85) { break; }
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
            NSInteger emptyu = 2786;
             while (@(emptyu).longLongValue < 42) { break; }
        [self addView_MMMethodMMM];
    }
    return self;
}


-(void)addView_MMMethodMMM
{

   self.responce_sum = 3;

   self.engineMax = 1046.0;

   self.eventCount = 3316;

   self.touch_size = 678.0;

    
    UIView *tabView = [[UIView alloc] init];
    
    
    [self addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
            int identifierv = 8408;
             if (@(identifierv).floatValue == 160) {}
        make.top.mas_equalTo(VH(MARGIN_TOP));
            NSInteger helperJ = 9549;
             while (@(helperJ).intValue >= 68) { break; }
    }];
    
    
    
    loginTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            NSInteger progressI = 3199;
             while (@(progressI).floatValue == 38) { break; }
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
            NSString * pathv = @"incense";
             if (pathv.length > 98) {}
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
            NSString * pay_fm = @"big";
        make.leading.mas_equalTo(tabView);
            NSString * versionD = @"pellmell";
             if ([versionD isEqualToString:@"v"]) {}
        make.centerX.mas_equalTo(self.mas_leading).mas_offset(VW(100+16));
            NSArray * uploadp = [NSArray arrayWithObjects:@(880), @(715), nil];
    }];
    
    
    regTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_register.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
            Boolean tableC = YES;
             if (tableC) { __asm__("NOP"); }
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
            NSArray * impl8 = [NSArray arrayWithObjects:@(6756.0), nil];
             if ([impl8 containsObject:@"y"]) {}
        make.trailing.mas_equalTo(tabView);
            NSString * landspaceN = @"peddle";
             while (landspaceN.length > 90) { break; }
        make.centerX.mas_equalTo(self.mas_trailing).mas_offset(-VW(100+16));

    }];
    
    loginBottomLine = [[UIView alloc] init];
            NSString * jinit_nl = @"phony";
             if ([jinit_nl isEqualToString:@"5"]) {}
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSInteger mobilei = 933;
             if (@(mobilei).integerValue == 176) {}
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
            Boolean touchesk = NO;
             if (!touchesk) { __asm__("NOP"); }
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
            NSArray * self_hog = [NSArray arrayWithObjects:@{@"hereditary":@(8133)}, nil];
             while (self_hog.count > 192) { break; }
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
            NSDictionary * presentations = @{@"sage":@(1330.0)};
             while (presentations.count > 200) { break; }
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSInteger mask4 = 6900;
             if (@(mask4).longValue <= 128) {}
    regBottomLine.hidden = YES;
            NSDictionary * backt = @{@"trace":@(5428)};
             if (backt.count > 22) {}
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
            double c_centerZ = 882.0;
             if (@(c_centerZ).longLongValue > 185) {}
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
            NSInteger seriesL = 799;
             if (@(seriesL).integerValue > 4) {}
        make.height.mas_equalTo(2);

    }];
    
    
    backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);
            int b_titleq = 51;
             if (@(b_titleq).integerValue >= 30) {}
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));
    }];
    
    
    
    currentClickTab = 1;
            double headere = 6712.0;
             if (@(headere).longValue <= 37) {}
    [loginTabBtn setSelected:YES];
            Boolean hourE = YES;
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[AccountLoginViewV2 alloc] initView_MMMethodMMM];
            NSString * size_1nk = @"foppish";
             while (size_1nk.length > 110) { break; }
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
            float callI = 801.0;
             while (@(callI).longLongValue < 69) { break; }
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

    }];
    
    self.mRegisterAccountView = [[RegisterAccountViewV2 alloc] initView_MMMethodMMM];
            NSDictionary * login1 = @{@"live":@(296), @"disembark":@(622)};
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
            int uncompletez = 9288;
             if (@(uncompletez).intValue > 69) {}
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
            NSArray * queryW = [NSArray arrayWithObjects:@(937), @(53), @(880), nil];
    }];
    
    self.mRegisterAccountView.hidden = YES;
    
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
