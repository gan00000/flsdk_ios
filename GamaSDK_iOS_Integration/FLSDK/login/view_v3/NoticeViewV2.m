
#import "NoticeViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"

@interface NoticeViewV2 ()

@property(nonatomic, assign)float  switch_f;
@property(nonatomic, assign)int  q_width;


@property (copy,nonatomic) void (^completer)(void);
@end

@implementation NoticeViewV2
{
    
    WKWebView *nWebView;
    
}


- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
    self = [self init];
    if (self) {
        self.completer = completer;
    }
    return self;
}

-(UITableView *)roleLayoutBoldTmpResponceTableView:(NSString *)game appleImage:(NSString *)appleImage {
     double gameLocal_3 = 4280.0;
     NSString * gradientBind = @"reinforcement";
     UIButton * rateLocal_n = [[UIButton alloc] initWithFrame:CGRectZero];
    UITableView * tributary = [[UITableView alloc] init];
         int l_87 = (int)gameLocal_3;
     int j_20 = 0;
     int u_96 = 0;
     if (l_87 > u_96) {
         l_87 = u_96;

     }
     for (int p_70 = 0; p_70 < l_87; p_70++) {
         j_20 += p_70;
          l_87 += p_70;
         break;

     }
    rateLocal_n.frame = CGRectMake(211, 121, 0, 0);
    rateLocal_n.alpha = 0.2;
    rateLocal_n.backgroundColor = [UIColor colorWithRed:24 / 255.0 green:170 / 255.0 blue:18 / 255.0 alpha:0.1];
    [rateLocal_n setImage:[UIImage imageNamed:@"adaptSwitch_qr"] forState:UIControlStateNormal];
    [rateLocal_n setTitle:@"fileEnded" forState:UIControlStateNormal];
    [rateLocal_n setBackgroundImage:[UIImage imageNamed:@"closeLevel"] forState:UIControlStateNormal];
    rateLocal_n.titleLabel.font = [UIFont systemFontOfSize:14];
    
    CGRect rateLocal_nFrame = rateLocal_n.frame;
    rateLocal_nFrame.size = CGSizeMake(207, 250);
    rateLocal_n.frame = rateLocal_nFrame;
    if (rateLocal_n.alpha > 0.0) {
         rateLocal_n.alpha = 0.0;
    }
    if (rateLocal_n.isHidden) {
         rateLocal_n.hidden = false;
    }
    if (!rateLocal_n.isUserInteractionEnabled) {
         rateLocal_n.userInteractionEnabled = true;
    }

    tributary.backgroundColor = [UIColor colorWithRed:15 / 255.0 green:37 / 255.0 blue:144 / 255.0 alpha:0.3];
    tributary.alpha = 0.6;
    tributary.frame = CGRectMake(259, 4, 0, 0);
    tributary.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    tributary.delegate = nil;
    tributary.dataSource = nil;

    
    CGRect tributaryFrame = tributary.frame;
    tributaryFrame.size = CGSizeMake(283, 182);
    tributary.frame = tributaryFrame;
    if (tributary.isHidden) {
         tributary.hidden = false;
    }
    if (tributary.alpha > 0.0) {
         tributary.alpha = 0.0;
    }
    if (!tributary.isUserInteractionEnabled) {
         tributary.userInteractionEnabled = true;
    }


    return tributary;

}







- (void)landspaceView_MMMethodMMM {

   self.switch_f = 1226.0;

   self.q_width = 1930;

   self.encodingMargin = 4650.0;

   self.load_str = @"member";

   self.arac_margin = 5933.0;

   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];

         {
UITableView * remainsObsessed = [self roleLayoutBoldTmpResponceTableView:@"fathomless" appleImage:@"rouse"];

      [self addSubview: remainsObsessed];
      int remainsObsessed_tag = remainsObsessed.tag;
     int e_79 = (int)remainsObsessed_tag;
     int q_88 = 1;
     int i_75 = 0;
     if (e_79 > i_75) {
         e_79 = i_75;
     }
     while (q_88 < e_79) {
         q_88 += 1;
          e_79 -= q_88;
     int g_0 = q_88;
          int x_42 = 0;
     for (int n_100 = g_0; n_100 > g_0 - 1; n_100--) {
         x_42 += n_100;
          g_0 += n_100;
         break;

     }
         break;
     }


}
            NSArray * modelp = @[@(699), @(694)];
    contentView.backgroundColor = color;
            double failQ = 6016.0;
             while (@(failQ).doubleValue == 77) { break; }
    contentView.layer.cornerRadius = 5; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        
        if (IS_PORTRAIT) {
            make.width.mas_equalTo(VW(330));
            double znews5 = 3399.0;
             if (@(znews5).longLongValue < 7) {}
            make.height.mas_equalTo(VH(512));
        }else{
            
            make.width.mas_equalTo(VW(498));
            NSInteger controllerc = 6992;
             while (@(controllerc).intValue > 130) { break; }
            make.height.mas_equalTo(VH(288));
            
        }
       
        
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
            NSDictionary * appkeyP = @{@"gluttony":@(818)};
             if (appkeyP[@"j"]) {}
    titleView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12];
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top);
            NSDictionary * currentA = @{@"typo":@(729)};
             if (currentA[@"t"]) {}
        make.leading.mas_equalTo(contentView);
        make.trailing.mas_equalTo(contentView);
            NSDictionary * labelG = [NSDictionary dictionaryWithObjectsAndKeys:@"shallow",@(2737.0), nil];
             if (labelG.count > 168) {}
        make.height.mas_equalTo(VH(36));
            double beganb = 4062.0;
             while (@(beganb).floatValue > 101) { break; }
    }];
    
    UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_title_notice.localx fontSize_MMMethodMMM:FS(16) textColor_MMMethodMMM:[UIColor whiteColor]];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(titleView);
            double icon_D = 3457.0;
             for(int icon_D_idx = 0; icon_D_idx < @(icon_D).intValue; icon_D_idx++) { break; } 
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_4 highlightedImage_MMMethodMMM:icon_close_4 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    
    [titleView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(titleView).mas_offset(VW(-8));;
            NSString * i_productsH = @"clamp";
             if (i_productsH.length > 153) {}
        make.centerY.mas_equalTo(titleView);
            int ecodingL = 2336;
             while (@(ecodingL).integerValue > 151) { break; }
        make.width.mas_equalTo(VH(22));
        make.height.mas_equalTo(VH(22));
            NSString * scriptu = @"pirate";
             if (scriptu.length > 28) {}
    }];
    
    
    UIButton *leftBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_arr_left highlightedImage_MMMethodMMM:mw_arr_left tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
    [titleView addSubview:leftBtn];
    [leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleLabel.mas_trailing).mas_offset(VW(20));;
            NSString * rateA = @"corporate";
             while (rateA.length > 187) { break; }
        make.centerY.mas_equalTo(titleLabel);
            double client9 = 7126.0;
             while (@(client9).floatValue <= 107) { break; }
        make.width.mas_equalTo(VH(36));
            float configuratorY = 102.0;
             if (@(configuratorY).floatValue >= 26) {}
        make.height.mas_equalTo(VH(14));
            Boolean servicen = NO;
             if (servicen) { __asm__("NOP"); }
    }];
    
    
    UIButton *rightBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_arr_right highlightedImage_MMMethodMMM:mw_arr_right tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
            NSArray * successG = [NSArray arrayWithObjects:@(130), @(227), nil];
             if ([successG containsObject:@"l"]) {}
    [titleView addSubview:rightBtn];
    [rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(titleLabel.mas_leading).mas_offset(-VW(20));;
            Boolean filedI = YES;
        make.centerY.mas_equalTo(titleLabel);
        make.width.mas_equalTo(VH(36));
            NSString * impls = @"encapsulate";
        make.height.mas_equalTo(VH(14));
            NSDictionary * lableV = @{@"justification":@(795), @"execrate":@(141)};
             while (lableV.count > 166) { break; }
    }];
    
    UIView *xView = [[UIView alloc] init];
    
    [contentView addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView);
            double footS = 8323.0;
             while (@(footS).longLongValue < 185) { break; }
        make.trailing.mas_equalTo(contentView);
            double ipadn = 4774.0;
             if (@(ipadn).longValue == 137) {}
        make.top.mas_equalTo(titleView.mas_bottom);
            NSDictionary * switch_h6I = @{@"customs":@"census"};
             while (switch_h6I.count > 155) { break; }
        make.bottom.mas_equalTo(contentView);
            NSDictionary * private_b7 = @{@"turncoat":@(168), @"reciprocate":@(257)};
    }];

    
    
    nWebView = [[WKWebView alloc] init];
    [nWebView.scrollView setBounces:YES];
            double mobileA = 24.0;
             while (@(mobileA).longLongValue > 179) { break; }
    [nWebView.scrollView setScrollEnabled:YES];
            NSArray * maskV = [NSArray arrayWithObjects:@(7954.0), nil];
             if (maskV.count > 121) {}
    [xView addSubview:nWebView];
    [nWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VH(10));
            int kinitializet = 6322;
             while (@(kinitializet).doubleValue < 100) { break; }
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VH(10));
            Boolean stateO = NO;
             if (!stateO) { __asm__("NOP"); }
    }];
    
    NSString * url = SDK_DATA.urls.noticeUrl;
            double rectb = 2563.0;
             while (@(rectb).longLongValue == 167) { break; }
    SDK_LOG(@"notice Url=%@",url);
    if(url){
        [nWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
    }
    
}



- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}

-(long)uppercaseOutstringNonnull:(NSString *)fromEncrypt dateSecurity:(double)dateSecurity board:(double)board {
     double layoutLoad = 3816.0;
    long palingsCinema = 0;
    layoutLoad /= 66;
    palingsCinema += layoutLoad;
         int f_63 = (int)layoutLoad;
     switch (f_63) {
          case 32: {
          f_63 += 2;
          int l_98 = 1;
     int s_38 = 1;
     if (f_63 > s_38) {
         f_63 = s_38;
     }
     while (l_98 <= f_63) {
         l_98 += 1;
     int i_24 = l_98;
          switch (i_24) {
          case 90: {
          i_24 -= 57;
                  break;

     }
          case 55: {
          i_24 -= 63;
             break;

     }
          case 58: {
          i_24 += 36;
                  break;

     }
          case 24: {
          i_24 += 40;
             break;

     }
          case 80: {
                  break;

     }
          case 75: {
          i_24 *= 36;
             break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 82: {
          f_63 -= 53;
          f_63 -= 51;
             break;

     }
     default:
         break;

     }

    return palingsCinema;

}






- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{

         {
long motilitySibling = [self uppercaseOutstringNonnull:@"naysay" dateSecurity:7221.0 board:8438.0];

     int temp_x_76 = (int)motilitySibling;
     int f_8 = 0;
     for (int c_84 = temp_x_76; c_84 > temp_x_76 - 1; c_84--) {
         f_8 += c_84;
          temp_x_76 *= c_84;
         break;

     }
      if (motilitySibling <= 68) {
             NSLog(@"%ld",motilitySibling);
      }


}

   
    switch (sender.tag) {
        case 11:
            break;
        case TAG_CLOSE:
            [self removeFromGameView];
            if (self.completer) {
                self.completer();
            }
            break;
            
        default:
            break;
    }
    
}

@end
