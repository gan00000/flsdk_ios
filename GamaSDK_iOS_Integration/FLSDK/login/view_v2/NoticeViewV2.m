
#import "NoticeViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"

@interface NoticeViewV2 ()

@property(nonatomic, assign)Boolean  canConfigurator;
@property(nonatomic, assign)Boolean  canFirebase;
@property(nonatomic, assign)Boolean  isConnected;
@property(nonatomic, copy)NSString *  setupHttp_str;


@property (copy,nonatomic) void (^completer)(void);
@end

@implementation NoticeViewV2
{
    
    WKWebView *nWebView;
    
}


- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
   self.canConfigurator = YES;

   self.canFirebase = NO;

   self.isConnected = YES;

   self.setupHttp_str = @"starvation";

   self.readerFlag = 9237;

   self.statusLable_string = @"consumption";

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
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}

-(NSString *)masksArrayResetTableviewStear:(NSString *)webGame icon:(NSArray *)icon {
    NSMutableString *commandHopefulSlate = [NSMutableString new];

    return commandHopefulSlate;

}







- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{

         {
NSString * aggravate = [self masksArrayResetTableviewStear:@"extension" icon:[NSArray arrayWithObjects:@"reprehensible", @"subtract", nil]];

      if ([aggravate isEqualToString:@"preferred"]) {
              NSLog(@"%@",aggravate);
      }
      int aggravate_len = aggravate.length;
     int temp_b_32 = (int)aggravate_len;
     if (temp_b_32 > 615) {
          temp_b_32 /= 44;
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

-(double)originalScopeCheckDayVisibleEncode:(NSDictionary *)supported rotate:(NSDictionary *)rotate util:(double)util {
     double terminateTimes = 4212.0;
    double insentientCreekVerge = 0;
    terminateTimes *= 96;
    insentientCreekVerge += terminateTimes;
         int l_24 = (int)terminateTimes;
     int f_25 = 0;
     int v_31 = 0;
     if (l_24 > v_31) {
         l_24 = v_31;

     }
     for (int a_72 = 0; a_72 < l_24; a_72++) {
         f_25 += a_72;
          if (a_72 > 0) {
          l_24 -=  a_72;

     }
     int t_53 = f_25;
          if (t_53 <= 712) {
          }
         break;

     }

    return insentientCreekVerge;

}






- (void)landspaceView_MMMethodMMM {

   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
            NSInteger adapty = 7931;

         {
double fallibility = [self originalScopeCheckDayVisibleEncode:@{@"job":@(424)} rotate:[NSDictionary dictionaryWithObjectsAndKeys:@"disavowal",@(339), @"longwinded",@(765), @"resultant",@(976), nil] util:5612.0];

     int temp_a_91 = (int)fallibility;
     int f_83 = 0;
     int h_69 = 0;
     if (temp_a_91 > h_69) {
         temp_a_91 = h_69;

     }
     for (int d_58 = 1; d_58 < temp_a_91; d_58++) {
         f_83 += d_58;
          if (d_58 > 0) {
          temp_a_91 -=  d_58;

     }
              break;

     }
      if (fallibility <= 99) {
             NSLog(@"%f",fallibility);
      }


}
             if (@(adapty).integerValue > 70) {}
    contentView.backgroundColor = color;
            double presenting7 = 324.0;
             if (@(presenting7).intValue <= 159) {}
    contentView.layer.cornerRadius = 5; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        
        if (IS_PORTRAIT) {
            make.width.mas_equalTo(VW(330));
            NSString * firebaseK = @"pithiness";
             while (firebaseK.length > 115) { break; }
            make.height.mas_equalTo(VH(512));
        }else{
            
            make.width.mas_equalTo(VW(498));
            make.height.mas_equalTo(VH(288));
            
        }
       
        
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
            NSString * tablem = @"hunger";
             if ([tablem isEqualToString:@"F"]) {}
    titleView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12];
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top);
            Boolean engine_ = YES;
             if (engine_) { __asm__("NOP"); }
        make.leading.mas_equalTo(contentView);
            float encodingk = 4971.0;
             while (@(encodingk).integerValue <= 17) { break; }
        make.trailing.mas_equalTo(contentView);
            double mobileH = 6575.0;
             while (@(mobileH).intValue == 53) { break; }
        make.height.mas_equalTo(VH(36));
            NSDictionary * hinit_05 = [NSDictionary dictionaryWithObjectsAndKeys:@"explicable",@(969), nil];
             if (hinit_05.count > 157) {}
    }];
    
    UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_title_notice.localx fontSize_MMMethodMMM:FS(16) textColor_MMMethodMMM:[UIColor whiteColor]];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(titleView);
            double encryptX = 5418.0;
             if (@(encryptX).integerValue < 135) {}
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_4 highlightedImage_MMMethodMMM:icon_close_4 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    
    [titleView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(titleView).mas_offset(VW(-8));;
        make.centerY.mas_equalTo(titleView);
            NSDictionary * parseR = [NSDictionary dictionaryWithObjectsAndKeys:@"beforehand",@(797), @"bygone",@(871), @"auspice",@(631), nil];
             while (parseR.count > 119) { break; }
        make.width.mas_equalTo(VH(22));
            NSDictionary * elegateW = [NSDictionary dictionaryWithObjectsAndKeys:@"oak",@(853), @"ambiguous",@(226), @"bombardment",@(712), nil];
             while (elegateW.count > 105) { break; }
        make.height.mas_equalTo(VH(22));
            NSDictionary * textr = @{@"Z":@"d", @"E":@"Z"};
    }];
    
    
    UIButton *leftBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_arr_left highlightedImage_MMMethodMMM:mw_arr_left tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
            NSArray * adaptw = [NSArray arrayWithObjects:@(142), @(847), @(556), nil];
             if (adaptw.count > 68) {}
    [titleView addSubview:leftBtn];
    [leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleLabel.mas_trailing).mas_offset(VW(20));;
            double labelb = 5543.0;
             while (@(labelb).integerValue < 44) { break; }
        make.centerY.mas_equalTo(titleLabel);
            NSInteger bundle6 = 5389;
             while (@(bundle6).floatValue < 8) { break; }
        make.width.mas_equalTo(VH(36));
            NSDictionary * setupx = @{@"outlandish":@(703), @"temple":@(348), @"bilious":@(677)};
        make.height.mas_equalTo(VH(14));
            double delete_wD = 3485.0;
             while (@(delete_wD).doubleValue == 184) { break; }
    }];
    
    
    UIButton *rightBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_arr_right highlightedImage_MMMethodMMM:mw_arr_right tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
            NSDictionary * adaptj = [NSDictionary dictionaryWithObjectsAndKeys:@"flute",@(474), @"irrevocable",@(681), @"anonymous",@(747), nil];
    [titleView addSubview:rightBtn];
    [rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(titleLabel.mas_leading).mas_offset(-VW(20));;
            Boolean accountC = YES;
             while (!accountC) { __asm__("NOP"); break; }
        make.centerY.mas_equalTo(titleLabel);
            double flowsj = 9149.0;
             if (@(flowsj).floatValue > 196) {}
        make.width.mas_equalTo(VH(36));
            NSArray * codesN = @[@(347), @(300), @(452)];
             if (codesN.count > 105) {}
        make.height.mas_equalTo(VH(14));
            NSDictionary * handlerW = [NSDictionary dictionaryWithObjectsAndKeys:@"precursor",[NSArray arrayWithObjects:@(192), @(604), nil], nil];
    }];
    
    UIView *xView = [[UIView alloc] init];
    
    [contentView addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView);
            Boolean callA = NO;
        make.trailing.mas_equalTo(contentView);
            NSArray * erviceh = [NSArray arrayWithObjects:@"corrosive", @"dictator", nil];
             if (erviceh.count > 74) {}
        make.top.mas_equalTo(titleView.mas_bottom);
            double valuem = 8782.0;
             while (@(valuem).floatValue <= 79) { break; }
        make.bottom.mas_equalTo(contentView);
            double logina = 2066.0;
             while (@(logina).longValue == 157) { break; }
    }];

    
    
    nWebView = [[WKWebView alloc] init];
            NSDictionary * localx5 = [NSDictionary dictionaryWithObjectsAndKeys:@"dispense",@(9), @"lady",@(758), @"locomotive",@(899), nil];
             if (localx5[@"s"]) {}
    [nWebView.scrollView setBounces:YES];
            NSString * delete_10 = @"understatement";
    [nWebView.scrollView setScrollEnabled:YES];
            NSInteger private_ar = 2448;
             if (@(private_ar).floatValue >= 34) {}
    [xView addSubview:nWebView];
    [nWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VH(10));
            NSString * bindingG = @"humanitarian";
             if ([bindingG isEqualToString:@"Z"]) {}
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VH(10));
            NSArray * logoutz = @[@(749), @(833)];
             if ([logoutz containsObject:@"k"]) {}
    }];
    
    NSString * url = SDK_DATA.urls.noticeUrl;
    SDK_LOG(@"notice Url=%@",url);
    if(url){
        [nWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
    }
    
}

@end
