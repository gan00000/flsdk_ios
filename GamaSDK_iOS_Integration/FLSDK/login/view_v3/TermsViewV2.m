
#import "TermsViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"
#import "ViewUtil.h"

#define SDK_PROVISIONS_FIRST_ENBLE wwwww_tag_wwwww_sdk_provisions_first_enble
@interface TermsViewV2 ()

@property(nonatomic, assign)NSInteger  colorMark;
@property(nonatomic, assign)int  t_count;


@property (copy,nonatomic) void (^completer)(void);
@end

@implementation TermsViewV2
{

    
    WKWebView *provisionWebView;
    
}

- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
   self.colorMark = 4755;

   self.t_count = 9440;

   self.enbale_Base = YES;

   self.has_Orientation = NO;

    self = [self init];
    if (self) {
        self.completer = completer;
    }
    return self;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.1];
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}

-(NSString *)pwdReusableNetdb:(float)value {
     double contain = 9337.0;
    NSString *injuriousEscalator = [NSString new];
         int tmp_f_93 = (int)contain;
     tmp_f_93 *= 24;

    return injuriousEscalator;

}






- (void)landspaceView_MMMethodMMM {

         {
NSString * snob = [self pwdReusableNetdb:4933.0];

      NSLog(@"%@",snob);
      int snob_len = snob.length;
     int tmp_e_20 = (int)snob_len;
     int v_38 = 0;
     int r_36 = 0;
     if (tmp_e_20 > r_36) {
         tmp_e_20 = r_36;

     }
     for (int y_13 = 0; y_13 < tmp_e_20; y_13++) {
         v_38 += y_13;
     int x_34 = v_38;
          int f_34 = 0;
     for (int b_29 = x_34; b_29 > x_34 - 1; b_29--) {
         f_34 += b_29;
          if (b_29 > 0) {
          x_34 +=  b_29;

     }
              break;

     }
         break;

     }


}

   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
            NSArray * openX = [NSArray arrayWithObjects:@(388), @(500), @(547), nil];
             if (openX.count > 169) {}
    contentView.backgroundColor = color;
            NSInteger touchesI = 2275;
             while (@(touchesI).longValue >= 154) { break; }
    contentView.layer.cornerRadius = 10; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
            NSString * s_counto = @"oblong";
             while (s_counto.length > 61) { break; }
        make.width.mas_equalTo(VW(330));
            NSDictionary * keyX = @{@"mite":@(39), @"setback":@(535)};
        make.height.mas_equalTo(VH(300));
            NSString * animationn = @"oust";
             while (animationn.length > 125) { break; }
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
            NSArray * pushe = @[[NSArray arrayWithObjects:@(394), @(151), nil]];
             if ([pushe containsObject:@"E"]) {}
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(10));
            NSString * provision9 = @"comment";
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));
            NSString * serverh = @"toil";
             if (serverh.length > 135) {}
        make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
            double changO = 6983.0;
             for(int changO_idx = 67; changO_idx < @(changO).intValue; changO_idx -= 3) { break; } 
    }];
    
    UIView *tagView = [[UIView alloc] init];
            double alert3 = 7101.0;
             while (@(alert3).doubleValue > 42) { break; }
    tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSArray * g_managerq = @[@(733), @(391), @(581)];
             if ([g_managerq containsObject:@"v"]) {}
    [titleView addSubview:tagView];
    [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(titleView);
            float public_xbo = 9486.0;
             while (@(public_xbo).integerValue <= 98) { break; }
        make.leading.mas_equalTo(titleView);
            double fieldX = 8819.0;
             while (@(fieldX).longValue <= 98) { break; }
        make.width.mas_equalTo(VW(4));
            NSInteger shareE = 2207;
             while (@(shareE).longValue >= 98) { break; }
        make.height.mas_equalTo(VH(14));
            int editing9 = 3769;
             while (@(editing9).integerValue < 182) { break; }
        make.bottom.mas_equalTo(titleView);
            NSString * paramb = @"brutal";
             if ([paramb isEqualToString:@"W"]) {}
    }];
    
    
    UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_sdk_terms_title.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
    titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleView).mas_offset(6);
            NSDictionary * changH = @{@"fraternity":@(407)};
        make.trailing.mas_equalTo(titleView);
            NSString * touchesn = @"unimpeachable";
             while (touchesn.length > 158) { break; }
        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_close.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    closeBtn.layer.cornerRadius = VH(32) / 2;
            int accessR = 4340;
             for(NSInteger accessR_idx = 25; accessR_idx < @(accessR).intValue; accessR_idx -= 10) { break; } 
    closeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
            NSString * update_2Y = @"cling";
             if (update_2Y.length > 125) {}
    closeBtn.layer.borderWidth = 0.5;
    
    [contentView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
            Boolean dataI = NO;
             while (!dataI) { __asm__("NOP"); break; }
        make.bottom.mas_equalTo(contentView.mas_bottom).mas_offset(-VH(10));
            NSArray * data1 = [NSArray arrayWithObjects:@(993), @(374), nil];
             if ([data1 containsObject:@"d"]) {}
        make.width.mas_equalTo(VW(94));
            float pamentk = 2422.0;
             if (@(pamentk).longLongValue == 68) {}
        make.height.mas_equalTo(VH(32));
            NSArray * with_y2k = @[@(919), @(760), @(783)];
    }];
    
    UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_agree_read_tips.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    okBtn.layer.cornerRadius = VH(16);
            NSInteger movedl = 9220;
             if (@(movedl).floatValue > 111) {}
    okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [contentView addSubview:okBtn];
    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
            NSString * freek = @"specifics";
             while (freek.length > 164) { break; }
        make.bottom.mas_equalTo(closeBtn.mas_bottom);
            double background6 = 5879.0;
             while (@(background6).integerValue >= 4) { break; }
        make.width.mas_equalTo(VW(190));
            int foote = 4798;
             if (@(foote).intValue >= 110) {}
        make.height.mas_equalTo(VH(32));
            NSDictionary * upload0 = [NSDictionary dictionaryWithObjectsAndKeys:@"macroeconomics",@(4778.0), nil];
             while (upload0.count > 80) { break; }
    }];
    
    CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(16)];
            NSString * begint = @"invariable";
    [okBtn.layer addSublayer:gl];
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        gl.frame = okBtn.bounds;
            NSDictionary * screenF = @{@"wellknown":@(43)};
    }];
    
    
    UIView *xView = [[UIView alloc] init];
    
    xView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_DEDEDE].CGColor;
            double normalR = 6223.0;
             while (@(normalR).longValue == 131) { break; }
    xView.layer.borderWidth = 0.6;
            NSString * ipadY = @"although";
             if ([ipadY isEqualToString:@"2"]) {}
    [contentView addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
            NSDictionary * configuratoru = @{@"sensitivity":@(559), @"frame":@(156)};
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
            float appleh = 6389.0;
             if (@(appleh).longValue == 76) {}
        make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VW(10));
            NSDictionary * keyk = @{@"coherence":@(7377)};
             while (keyk.count > 16) { break; }
        make.bottom.mas_equalTo(closeBtn.mas_top).mas_offset(-VW(10));
    }];



    
    
    
    NSString * url = SDK_DATA.urls.agreementUrl;
    if (!url || [@"" isEqualToString:url]) {
        url = [NSString stringWithFormat:TERMS_SERVICE_URL,GAME_CODE];
    }
    
    SDK_LOG(@"termsUrl=%@",url);
            NSDictionary * ratec = @{@"descendant":@(764), @"pleonastic":@(180)};
             if (ratec.count > 53) {}
    provisionWebView = [[WKWebView alloc] init];
            NSArray * savey = @[@(973), @(370)];
             while (savey.count > 33) { break; }
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
            NSDictionary * plistS = [NSDictionary dictionaryWithObjectsAndKeys:@"forgery",@(911), nil];
             if (plistS[@"G"]) {}
    [provisionWebView.scrollView setBounces:YES];
            NSArray * findP = [NSArray arrayWithObjects:@(8870.0), nil];
             if (findP.count > 95) {}
    [provisionWebView.scrollView setScrollEnabled:YES];
    [xView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VW(8));
            NSString * codes_ = @"outmoded";
             if (codes_.length > 19) {}
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VW(8));
            NSDictionary * callbackV = [NSDictionary dictionaryWithObjectsAndKeys:@"salt",@(409), @"lucre",@(362), @"stigmatize",@(880), nil];
             if (callbackV.count > 139) {}
    }];
    
}

-(Boolean)successAnchorScanReplacingDay:(NSDictionary *)existing transactionApple:(float)transactionApple identifier:(float)identifier {
    BOOL their = NO;

    return their;

}





- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{

         {
Boolean detriment = [self successAnchorScanReplacingDay:@{@"i":@"E", @"S":@"t", @"P":@"j"} transactionApple:2842.0 identifier:6385.0];

      if (!detriment) {
      }


}

   
    switch (sender.tag) {
        case 11:
            break;
        case TAG_CLOSE:
            [self removeFromSuperview];
        {
            NSInteger find2 = 8387;
             while (@(find2).longLongValue == 162) { break; }
        }
            break;
            
        case kAgreeTermsCheckBoxBtnTag:
            
            if (self.completer) {
                self.completer();
            }
            
            [self removeFromSuperview];
            
            break;
            
        default:
            break;
    }
    
}

+(NSString *)welcomeDaysFootDefaultsMasonryBolck:(NSDictionary *)keychain return_1:(NSDictionary *)return_1 {
    NSMutableString *advertPhilosophyTestify = [NSMutableString new];

    return advertPhilosophyTestify;

}





+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen
{

    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
            double implW = 9294.0;

         {
    [self welcomeDaysFootDefaultsMasonryBolck:[NSDictionary dictionaryWithObjectsAndKeys:@"forefather",@(2), @"field",@(951), nil] return_1:[NSDictionary dictionaryWithObjectsAndKeys:@"deserve",@(750), @"stasis",@(653), nil]];

}
             while (@(implW).integerValue <= 122) { break; }
    [saveDefault setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
            NSDictionary * phoneJ = @{@"skyrocket":[NSArray arrayWithObjects:@(1262.0), nil]};
             if (phoneJ[@"_"]) {}
    [saveDefault synchronize];
            NSString * rotate8 = @"striking";
             if (rotate8.length > 62) {}
}

+(Boolean)inputSelectArgs:(NSDictionary *)terminateMobile {
    BOOL soppingCuckoo = NO;

    return soppingCuckoo;

}





+ (BOOL)openProvision_MMMethodMMM{

         {
    [self inputSelectArgs:[NSDictionary dictionaryWithObjectsAndKeys:@"liner",@(7521.0), nil]];

}

    
    return ![TermsViewV2 isAgreenProvision_MMMethodMMM];
}

+(BOOL)isAgreenProvision_MMMethodMMM
{

    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
            NSString * regularN = @"pat";
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
