
#define js_close    wwwww_tag_wwwww_close

#import "CHMXTTMainController.h"
#import <SafariServices/SafariServices.h>

#define WK_WEBVIEW_ESTIMATED_PROGRESS wwwww_tag_wwwww_estimatedProgress


@interface CHMXTTMainController ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>
@property(nonatomic, assign)double  times_min;
@property(nonatomic, assign)long  portraitIdx;
@property(nonatomic, assign)Boolean  can_Color;
@property(nonatomic, copy)NSString *  pressAgreenProvisionString;



@property (nonatomic, copy) MWWebLayoutHandler layoutThird;
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) WKWebView *file;
@property (nonatomic, strong) UIView *bool_oh;
@property (nonatomic, strong) UIView *levelBackground;
@property (nonatomic, strong) UIActivityIndicatorView *long_hIdentifier;
@property (nonatomic, strong) UIProgressView *changedSystem;
@property (nonatomic) BOOL window_xSecurity;
@property (nonatomic, strong)NSURLRequest *shouldNews;
@end

@implementation CHMXTTMainController

+(NSString *)uppercaseSinConfire:(long)window_j {
     float encodingEditing = 7614.0;
    NSString *insignificantSideshow = [NSString string];
         int tmp_d_64 = (int)encodingEditing;
     tmp_d_64 /= 70;

    return insignificantSideshow;

}





+(instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request layoutHandler_MMMethodMMM:(id)handler animation_MMMethodMMM:(BOOL)window_xSecurity animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle
{

    UIViewController *regularController = appTopViewController;
            int modityx = 4764;

         {
    [self uppercaseSinConfire:5301];

}
             for(NSInteger modityx_idx = 0; modityx_idx < @(modityx).intValue; modityx_idx++) { break; } 
    CHMXTTMainController *sdkController = [[CHMXTTMainController alloc] initWithWebLayoutHandler_MMMethodMMM:handler animation_MMMethodMMM:window_xSecurity];
            NSInteger g_titleC = 310;
             if (@(g_titleC).integerValue == 197) {}
    sdkController.modalTransitionStyle = animationStyle;
            NSArray * tranI = @[@(139), @(886)];
             if ([tranI containsObject:@"3"]) {}
    sdkController.modalPresentationStyle = UIModalPresentationFullScreen;
            NSString * bindingd = @"yell";
             while (bindingd.length > 132) { break; }
    sdkController.shouldNews = request;
    
    [regularController presentViewController:sdkController animated:window_xSecurity completion:nil];
            double listZ = 978.0;
             while (@(listZ).longValue < 134) { break; }
    return sdkController;
}
- (instancetype)initWithWebLayoutHandler_MMMethodMMM:(MWWebLayoutHandler)handler animation_MMMethodMMM:(BOOL)window_xSecurity
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.layoutThird = handler;
            NSArray * findv = @[@(648), @(463)];
             if ([findv containsObject:@"A"]) {}
        self.window_xSecurity = window_xSecurity;
            NSDictionary * customg = [NSDictionary dictionaryWithObjectsAndKeys:@"incubation",@(159), @"heckle",@(541), nil];
        self.backgroundView = [[UIView alloc] init];
            NSArray * content9 = [NSArray arrayWithObjects:@(14), @(638), nil];
             if (content9.count > 46) {}
        self.bool_oh = [[UIView alloc] init];
        
        
        self.changedSystem = [[UIProgressView alloc] init];
            NSInteger registN = 1015;
             while (@(registN).floatValue > 82) { break; }
        self.changedSystem.progressViewStyle = UIProgressViewStyleDefault;
            NSString * calculateo = @"fret";
        self.changedSystem.progress = 0.0;

        self.levelBackground = [[UIView alloc] init];
        
        self.shouldRotate = NO;
            NSArray * z_widthf = @[@(YES)];
             while (z_widthf.count > 107) { break; }
        self.interfaceOrientationMask = UIInterfaceOrientationMaskAll;
            NSArray * back_ = @[@(636), @(738)];
        self.interfaceOrientation = UIInterfaceOrientationPortrait;
    }
    return self;
}

-(UIScrollView *)oneCreateScanFoundationLayoutScrollView{
     NSArray * info = [NSArray arrayWithObjects:@(3190), nil];
     NSArray * ipad = @[@(536), @(412)];
     UIView * m_center = [UIView new];
    UIScrollView * epauletComely = [UIScrollView new];
    m_center.alpha = 0.5;
    m_center.backgroundColor = [UIColor colorWithRed:117 / 255.0 green:185 / 255.0 blue:114 / 255.0 alpha:0.6];
    m_center.frame = CGRectMake(152, 36, 0, 0);
    
    CGRect m_centerFrame = m_center.frame;
    m_centerFrame.size = CGSizeMake(50, 290);
    m_center.frame = m_centerFrame;
    if (m_center.alpha > 0.0) {
         m_center.alpha = 0.0;
    }
    if (m_center.isHidden) {
         m_center.hidden = false;
    }
    if (!m_center.isUserInteractionEnabled) {
         m_center.userInteractionEnabled = true;
    }

    [epauletComely addSubview:m_center];
    epauletComely.showsHorizontalScrollIndicator = YES;
    epauletComely.delegate = nil;
    epauletComely.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    epauletComely.alwaysBounceVertical = YES;
    epauletComely.alwaysBounceHorizontal = NO;
    epauletComely.showsVerticalScrollIndicator = NO;
    epauletComely.alpha = 0.4;
    epauletComely.backgroundColor = [UIColor colorWithRed:91 / 255.0 green:80 / 255.0 blue:17 / 255.0 alpha:0.2];
    epauletComely.frame = CGRectMake(219, 315, 0, 0);

    
    CGRect epauletComelyFrame = epauletComely.frame;
    epauletComelyFrame.size = CGSizeMake(202, 171);
    epauletComely.frame = epauletComelyFrame;
    if (epauletComely.alpha > 0.0) {
         epauletComely.alpha = 0.0;
    }
    if (epauletComely.isHidden) {
         epauletComely.hidden = false;
    }
    if (!epauletComely.isUserInteractionEnabled) {
         epauletComely.userInteractionEnabled = true;
    }

    return epauletComely;

}





- (WKWebView*)file{

    
    if (!_file) {
        
        WKWebViewConfiguration *statue = [[WKWebViewConfiguration alloc] init];
            NSString * existingU = @"exemplary";

         {
UIScrollView * savvy = [self oneCreateScanFoundationLayoutScrollView];

      [self.view addSubview: savvy];
      int savvy_tag = savvy.tag;
     int tmp_p_63 = (int)savvy_tag;
     int s_41 = 1;
     int o_42 = 1;
     if (tmp_p_63 > o_42) {
         tmp_p_63 = o_42;
     }
     while (s_41 < tmp_p_63) {
         s_41 += 1;
          tmp_p_63 -= s_41;
     int i_95 = s_41;
          switch (i_95) {
          case 52: {
          i_95 -= 36;
          i_95 *= 38;
             break;

     }
          case 50: {
          i_95 /= 19;
                  break;

     }
          case 16: {
          i_95 += 17;
          if (i_95 != 225) {
          }
             break;

     }
          case 27: {
                  break;

     }
          case 0: {
          i_95 /= 9;
             break;

     }
          case 57: {
                  break;

     }
          case 89: {
                  break;

     }
          case 59: {
          i_95 /= 51;
          i_95 -= 71;
             break;

     }
     default:
         break;

     }
         break;
     }


}
             while (existingU.length > 170) { break; }
        statue.userContentController = [[WKUserContentController alloc] init];
            NSInteger method_b0 = 3735;
             while (@(method_b0).longValue < 13) { break; }
        [statue.userContentController addScriptMessageHandler:self name:js_close];

        _file = [[WKWebView alloc] initWithFrame:self.view.frame configuration:statue];
        
        
        _file.navigationDelegate = self;
            NSDictionary * btn4 = [NSDictionary dictionaryWithObjectsAndKeys:@"widow",@(144), @"erotic",@(185), nil];
        _file.UIDelegate = self;
            NSArray * private_8py = @[@(988), @(265)];
             if ([private_8py containsObject:@"A"]) {}
        [_file addObserver:self forKeyPath:wwwww_tag_wwwww_estimatedProgress options:NSKeyValueObservingOptionNew context:nil];
    }
    
    return _file;

}

- (void)loadView 
{
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] gama_currentBounds_MMMethodMMM]];
            NSArray * dicv = @[@"indecorous"];
             if (dicv.count > 181) {}
}

-(NSString *)scanTrackingEnbleSynthesize:(NSDictionary *)btn function:(NSArray *)function landscape:(NSDictionary *)landscape {
     int path = 9148;
    NSMutableString *amuletClassicalIncogitant = [NSMutableString new];
         int tmp_s_93 = (int)path;
     int m_97 = 1;
     int e_51 = 0;
     if (tmp_s_93 > e_51) {
         tmp_s_93 = e_51;
     }
     while (m_97 < tmp_s_93) {
         m_97 += 1;
          tmp_s_93 *= m_97;
         break;
     }

    return amuletClassicalIncogitant;

}





- (void)viewDidLoad {
 
    [super viewDidLoad];
    
    
    UIView *bindView = [[UIView alloc] init];

         {
NSString * exemptionAerial = [self scanTrackingEnbleSynthesize:[NSDictionary dictionaryWithObjectsAndKeys:@"fencing",@(3175), nil] function:[NSArray arrayWithObjects:@(937), @(805), nil] landscape:[NSDictionary dictionaryWithObjectsAndKeys:@"sprout",[NSArray arrayWithObjects:@(48), @(549), nil], nil]];

      if ([exemptionAerial isEqualToString:@"efault"]) {
              NSLog(@"%@",exemptionAerial);
      }
      int exemptionAerial_len = exemptionAerial.length;
     int temp_x_76 = (int)exemptionAerial_len;
     int e_91 = 0;
     int c_5 = 1;
     if (temp_x_76 > c_5) {
         temp_x_76 = c_5;

     }
     for (int q_0 = 0; q_0 < temp_x_76; q_0++) {
         e_91 += q_0;
          if (q_0 > 0) {
          temp_x_76 -=  q_0;

     }
     int y_58 = e_91;
          if (y_58 == 843) {
          y_58 /= 29;
     }
         break;

     }


}
            Boolean preferred_ = YES;
             if (!preferred_) { __asm__("NOP"); }
    bindView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F13B11];
            double nameq = 3869.0;
             if (@(nameq).longValue <= 47) {}
    [self.view addSubview:bindView];
    [bindView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.leading.trailing.mas_equalTo(self.view);
            NSString * inputp = @"corpuscle";
             if ([inputp isEqualToString:@"8"]) {}
        make.height.mas_equalTo(60);
            double hourg = 6039.0;
             if (@(hourg).longValue > 3) {}
    }];
    
    self.backgroundView = [[UIView alloc] init];
    
    [self.view addSubview:self.backgroundView];
    
    
    
    [self.backgroundView addSubview:self.file];
    
    self.view.backgroundColor = UIColor.clearColor;
    
    if (_layoutThird) {
        _layoutThird(self.backgroundView, self.bool_oh, self.file, self.levelBackground);
    } else {
        [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            if (@available(iOS 11.0, *)) {
                make.leading.trailing.mas_equalTo(self.view);
            Boolean footh = YES;
             if (footh) { __asm__("NOP"); }
                make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
                make.bottom.mas_equalTo(self.view);
            } else {
                
                make.edges.mas_equalTo(self.view);
            }
        }];
        
        
        
        [self.file mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.backgroundView);
            NSArray * press1 = @[@[@(705), @(621)]];
             if (press1.count > 53) {}
        }];
    }
    
    if (self.file && _changedSystem) {
        [self.file addSubview:_changedSystem];
        [_changedSystem mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.leading.trailing.mas_equalTo(self.file);
            NSDictionary * editN = [NSDictionary dictionaryWithObjectsAndKeys:@"quaff",@(640), nil];
             if (editN.count > 8) {}
            make.height.equalTo(@(3));
            int ramework_ = 357;
             while (@(ramework_).floatValue > 186) { break; }
        }];
    }
    [self webLoadURLRequest_MMMethodMMM:self.shouldNews];
    
    
}

-(UILabel *)numberBdykTintPlegingAttrBlockLabel:(double)security {
     NSString * pageHour = @"diagnosis";
     int loggerEdit = 3384;
     UILabel * codesVip = [[UILabel alloc] initWithFrame:CGRectMake(28, 50, 0, 0)];
    UILabel * processMutual = [[UILabel alloc] initWithFrame:CGRectMake(146, 90, 0, 0)];
    processMutual.alpha = 0.1;
    processMutual.backgroundColor = [UIColor colorWithRed:225 / 255.0 green:81 / 255.0 blue:72 / 255.0 alpha:0.0];
    processMutual.frame = CGRectMake(4, 206, 0, 0);
    processMutual.text = @"";
    processMutual.font = [UIFont systemFontOfSize:10];
    processMutual.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    processMutual.textAlignment = NSTextAlignmentLeft;
         int _w_47 = (int)loggerEdit;
     if (_w_47 >= 210) {
          _w_47 /= 31;
          switch (_w_47) {
          case 69: {
          _w_47 += 96;
                  break;

     }
          case 27: {
                  break;

     }
          case 15: {
          _w_47 /= 12;
          if (_w_47 >= 887) {
          _w_47 -= 19;
          }
             break;

     }
          case 77: {
                  break;

     }
          case 94: {
          _w_47 -= 47;
                  break;

     }
          case 76: {
          _w_47 *= 89;
          _w_47 /= 39;
             break;

     }
          case 13: {
          _w_47 -= 17;
          _w_47 *= 51;
             break;

     }
          case 100: {
          _w_47 -= 8;
          _w_47 -= 3;
             break;

     }
     default:
         break;

     }
     }
    codesVip.alpha = 1.0;
    codesVip.backgroundColor = [UIColor colorWithRed:58 / 255.0 green:14 / 255.0 blue:168 / 255.0 alpha:0.3];
    codesVip.frame = CGRectMake(107, 216, 0, 0);
    codesVip.textAlignment = NSTextAlignmentLeft;
    codesVip.font = [UIFont systemFontOfSize:15];
    codesVip.text = nil;
    codesVip.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    
    CGRect codesVipFrame = codesVip.frame;
    codesVipFrame.size = CGSizeMake(191, 273);
    codesVip.frame = codesVipFrame;
    if (codesVip.alpha > 0.0) {
         codesVip.alpha = 0.0;
    }
    if (codesVip.isHidden) {
         codesVip.hidden = false;
    }
    if (!codesVip.isUserInteractionEnabled) {
         codesVip.userInteractionEnabled = true;
    }


    return processMutual;

}





- (void)viewWillAppear:(BOOL)animated{

         {
UILabel * triangularCondign = [self numberBdykTintPlegingAttrBlockLabel:2445.0];

      [self.view addSubview: triangularCondign];
      int triangularCondign_tag = triangularCondign.tag;
     int tmp_r_84 = (int)triangularCondign_tag;
     if (tmp_r_84 < 896) {
          tmp_r_84 -= 21;
          int j_7 = 1;
     int u_76 = 0;
     if (tmp_r_84 > u_76) {
         tmp_r_84 = u_76;
     }
     while (j_7 < tmp_r_84) {
         j_7 += 1;
          tmp_r_84 /= j_7;
     int f_100 = j_7;
          if (f_100 <= 391) {
          f_100 *= 53;
          }
         break;
     }
     }


}
  
    [self setNeedsStatusBarAppearanceUpdate];
}

-(Boolean)openFileControlLandscape:(NSArray *)firebaseInfo purchase:(double)purchase sdk:(NSArray *)sdk {
    BOOL cavalry = NO;

    return cavalry;

}





- (BOOL)prefersStatusBarHidden  
{

         {
Boolean income = [self openFileControlLandscape:[NSArray arrayWithObjects:@(233), @(674), nil] purchase:9939.0 sdk:@[@(878), @(563)]];

      if (income) {
          NSLog(@"ok");
      }


}

    return YES;  
}

-(NSDictionary *)postBoardPhoneKitGetter{
     int requestWkweb = 5332;
    NSMutableDictionary * tug = [NSMutableDictionary dictionaryWithCapacity:272];
    requestWkweb /= 12;
    [tug setObject: @(requestWkweb) forKey:@"genesisJesting"];
         int tmp_e_19 = (int)requestWkweb;
     int m_67 = 1;
     int c_38 = 1;
     if (tmp_e_19 > c_38) {
         tmp_e_19 = c_38;
     }
     while (m_67 < tmp_e_19) {
         m_67 += 1;
          tmp_e_19 -= m_67;
     int c_93 = m_67;
          if (c_93 == 918) {
          c_93 += 51;
          }
         break;
     }

    return tug;

}






- (UIStatusBarStyle)preferredStatusBarStyle{

         {
NSDictionary * monogamy = [self postBoardPhoneKitGetter];

      [monogamy enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"arac"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];
      int monogamy_len = monogamy.count;
     int r_42 = (int)monogamy_len;
     if (r_42 >= 516) {
          }
     else {
          r_42 += 37;
          r_42 *= 34;

     }


}
    
    return UIStatusBarStyleDefault;
}

-(UITableView *)convertSessionAllocatorTableView:(float)block short_1Util:(NSArray *)short_1Util {
     UIButton * input = [[UIButton alloc] initWithFrame:CGRectMake(90, 72, 0, 0)];
     NSString * purchase = @"grope";
     UIButton * delete_7s = [[UIButton alloc] initWithFrame:CGRectMake(202, 178, 0, 0)];
    UITableView * laconism = [[UITableView alloc] init];
    input.backgroundColor = [UIColor colorWithRed:12 / 255.0 green:12 / 255.0 blue:156 / 255.0 alpha:0.2];
    input.alpha = 0.0;
    input.frame = CGRectMake(207, 110, 0, 0);
    [input setBackgroundImage:[UIImage imageNamed:@"eventConf"] forState:UIControlStateNormal];
    input.titleLabel.font = [UIFont systemFontOfSize:19];
    [input setImage:[UIImage imageNamed:@"widthCreate"] forState:UIControlStateNormal];
    [input setTitle:@"address" forState:UIControlStateNormal];
    
    CGRect inputFrame = input.frame;
    inputFrame.size = CGSizeMake(107, 150);
    input.frame = inputFrame;
    if (input.isHidden) {
         input.hidden = false;
    }
    if (input.alpha > 0.0) {
         input.alpha = 0.0;
    }
    if (!input.isUserInteractionEnabled) {
         input.userInteractionEnabled = true;
    }

    delete_7s.frame = CGRectMake(146, 173, 0, 0);
    delete_7s.alpha = 0.8;
    delete_7s.backgroundColor = [UIColor colorWithRed:123 / 255.0 green:10 / 255.0 blue:53 / 255.0 alpha:0.3];
    [delete_7s setTitle:@"callback" forState:UIControlStateNormal];
    [delete_7s setBackgroundImage:[UIImage imageNamed:@"prefers"] forState:UIControlStateNormal];
    delete_7s.titleLabel.font = [UIFont systemFontOfSize:20];
    [delete_7s setImage:[UIImage imageNamed:@"values"] forState:UIControlStateNormal];
    
    CGRect delete_7sFrame = delete_7s.frame;
    delete_7sFrame.size = CGSizeMake(297, 129);
    delete_7s.frame = delete_7sFrame;
    if (delete_7s.alpha > 0.0) {
         delete_7s.alpha = 0.0;
    }
    if (delete_7s.isHidden) {
         delete_7s.hidden = false;
    }
    if (!delete_7s.isUserInteractionEnabled) {
         delete_7s.userInteractionEnabled = true;
    }

    laconism.alpha = 0.8;
    laconism.backgroundColor = [UIColor colorWithRed:230 / 255.0 green:24 / 255.0 blue:119 / 255.0 alpha:1.0];
    laconism.frame = CGRectMake(199, 184, 0, 0);
    laconism.delegate = nil;
    laconism.dataSource = nil;
    laconism.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];

    
    CGRect laconismFrame = laconism.frame;
    laconismFrame.size = CGSizeMake(201, 81);
    laconism.frame = laconismFrame;
    if (laconism.isHidden) {
         laconism.hidden = false;
    }
    if (laconism.alpha > 0.0) {
         laconism.alpha = 0.0;
    }
    if (!laconism.isUserInteractionEnabled) {
         laconism.userInteractionEnabled = true;
    }


    return laconism;

}






- (void)viewDidLayoutSubviews{

         {
UITableView * plumbing = [self convertSessionAllocatorTableView:5101.0 short_1Util:@[@(31), @(705), @(614)]];

      [self.view addSubview: plumbing];
      int plumbing_tag = plumbing.tag;
     int temp_i_55 = (int)plumbing_tag;
     switch (temp_i_55) {
          case 77: {
          int t_63 = 1;
     int d_24 = 1;
     if (temp_i_55 > d_24) {
         temp_i_55 = d_24;
     }
     while (t_63 <= temp_i_55) {
         t_63 += 1;
          temp_i_55 *= t_63;
         break;
     }
             break;

     }
          case 64: {
          int b_72 = 1;
     int h_9 = 0;
     if (temp_i_55 > h_9) {
         temp_i_55 = h_9;
     }
     while (b_72 <= temp_i_55) {
         b_72 += 1;
          temp_i_55 /= b_72;
     int g_67 = b_72;
          if (g_67 == 372) {
          }
         break;
     }
             break;

     }
          case 34: {
          int h_98 = 1;
     int w_55 = 0;
     if (temp_i_55 > w_55) {
         temp_i_55 = w_55;
     }
     while (h_98 <= temp_i_55) {
         h_98 += 1;
          temp_i_55 -= h_98;
     int x_81 = h_98;
              break;
     }
             break;

     }
          case 79: {
          temp_i_55 /= 78;
             break;

     }
          case 9: {
          temp_i_55 -= 5;
          if (temp_i_55 < 942) {
          temp_i_55 *= 100;
          if (temp_i_55 >= 476) {
          temp_i_55 /= 52;
          temp_i_55 *= 96;
     }
     }
             break;

     }
     default:
         break;

     }


}
  
    [super viewDidLayoutSubviews];
            NSArray * knewsC = [NSArray arrayWithObjects:@(736), @(680), @(53), nil];
    NSLog(wwwww_tag_wwwww_viewDidLayoutSubviews);
    
    if (@available(iOS 11.0, *)) {
        
        [self.backgroundView mas_updateConstraints:^(MASConstraintMaker *make) {

            make.leading.trailing.mas_equalTo(self.view);
            make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
            float popupx = 1601.0;
             if (@(popupx).floatValue == 78) {}
            make.bottom.mas_equalTo(self.view);

        }];
    }
  
    
}

#pragma mark - WebView Operator

-(NSString *)attribtUncompleteRadiusConf:(NSDictionary *)tableAlert wkweb:(NSArray *)wkweb s_layer:(NSArray *)s_layer {
     long localxBolck = 8767;
     double bindString = 9931.0;
    NSString *mockJuneFarmhouse = [NSString string];
         int v_12 = (int)localxBolck;
     v_12 += 78;
         int n_7 = (int)bindString;
     switch (n_7) {
          case 85: {
          n_7 += 66;
             break;

     }
          case 32: {
          n_7 *= 56;
          n_7 -= 42;
             break;

     }
          case 26: {
          n_7 /= 78;
             break;

     }
          case 89: {
          n_7 -= 84;
          if (n_7 < 300) {
          n_7 += 76;
          n_7 /= 58;
     }
             break;

     }
          case 31: {
          if (n_7 != 908) {
          n_7 *= 70;
     }
             break;

     }
     default:
         break;

     }

    return mockJuneFarmhouse;

}




- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request
{

         {
NSString * sterilize = [self attribtUncompleteRadiusConf:@{@"immorality":@(5705)} wkweb:[NSArray arrayWithObjects:@(994), @(596), nil] s_layer:[NSArray arrayWithObjects:@(629), @(529), nil]];

      int sterilize_len = sterilize.length;
     int r_34 = (int)sterilize_len;
     if (r_34 < 422) {
          r_34 -= 28;
     }
      NSLog(@"%@",sterilize);


}

    if (self.file) {
        [self.file loadRequest:request];
    }
}

- (void)webGoBack_MMMethodMMM
{

    if ([self.file canGoBack]) {
        [self.file goBack];
    }
}

- (void)webGoForward_MMMethodMMM
{

    if ([self.file canGoForward]) {
        [self.file goForward];
    }
}

- (void)webReload_MMMethodMMM
{

    [self.file reload];
            NSArray * pple9 = [NSArray arrayWithObjects:@(294), @(257), nil];
             while (pple9.count > 134) { break; }
}

-(NSString *)accessAnimationsAddMarkOrderManager:(long)valid reset:(int)reset {
     double timingStamp = 4544.0;
     float successSession = 897.0;
    NSString *glowingNucleusThermal = [NSString new];
         int n_6 = (int)timingStamp;
     switch (n_6) {
          case 77: {
          if (n_6 <= 910) {
          n_6 += 34;
     }
             break;

     }
          case 87: {
          n_6 *= 68;
          n_6 *= 77;
             break;

     }
          case 36: {
          n_6 *= 56;
          int m_65 = 0;
     int f_24 = 0;
     if (n_6 > f_24) {
         n_6 = f_24;

     }
     for (int y_0 = 1; y_0 < n_6; y_0++) {
         m_65 += y_0;
          if (y_0 > 0) {
          n_6 -=  y_0;

     }
     int x_42 = m_65;
          if (x_42 >= 43) {
          x_42 *= 74;
          }
         break;

     }
             break;

     }
          case 49: {
          n_6 /= 15;
             break;

     }
          case 59: {
          int u_4 = 0;
     for (int k_96 = n_6; k_96 >= n_6 - 1; k_96--) {
         u_4 += k_96;
          n_6 += k_96;
         break;

     }
             break;

     }
          case 88: {
          n_6 -= 18;
          n_6 += 6;
             break;

     }
          case 61: {
          n_6 *= 47;
             break;

     }
          case 67: {
          n_6 *= 12;
             break;

     }
          case 58: {
          n_6 -= 35;
          n_6 *= 55;
             break;

     }
          case 28: {
          n_6 *= 14;
          n_6 *= 82;
             break;

     }
     default:
         break;

     }
         int tmp_l_18 = (int)successSession;
     int x_79 = 0;
     int i_74 = 1;
     if (tmp_l_18 > i_74) {
         tmp_l_18 = i_74;

     }
     for (int l_94 = 1; l_94 < tmp_l_18; l_94++) {
         x_79 += l_94;
          if (l_94 > 0) {
          tmp_l_18 -=  l_94;

     }
              break;

     }

    return glowingNucleusThermal;

}





- (void)webClose_MMMethodMMM
{

   self.times_min = 9310.0;

   self.portraitIdx = 4893;

   self.can_Color = YES;

   self.pressAgreenProvisionString = @"propagate";

   self.enbaleMode = YES;

         {
NSString * gownMetric = [self accessAnimationsAddMarkOrderManager:2679 reset:4318];

      if ([gownMetric isEqualToString:@"logined"]) {
              NSLog(@"%@",gownMetric);
      }
      int gownMetric_len = gownMetric.length;
     int _y_55 = (int)gownMetric_len;
     switch (_y_55) {
          case 11: {
          _y_55 *= 12;
          if (_y_55 != 201) {
          _y_55 += 94;
          }
     else {
          _y_55 += 10;
     
     }
             break;

     }
          case 99: {
          _y_55 /= 5;
             break;

     }
          case 24: {
          _y_55 /= 43;
             break;

     }
          case 66: {
          _y_55 /= 47;
          if (_y_55 > 589) {
          }
             break;

     }
          case 41: {
          _y_55 -= 29;
          int t_35 = 0;
     int w_37 = 0;
     if (_y_55 > w_37) {
         _y_55 = w_37;

     }
     for (int m_95 = 1; m_95 < _y_55; m_95++) {
         t_35 += m_95;
          if (m_95 > 0) {
          _y_55 -=  m_95;

     }
     int l_2 = t_35;
          if (l_2 > 684) {
          l_2 += 83;
          l_2 -= 31;
     }
         break;

     }
             break;

     }
          case 42: {
          _y_55 /= 51;
          int n_44 = 1;
     int u_37 = 1;
     if (_y_55 > u_37) {
         _y_55 = u_37;
     }
     while (n_44 < _y_55) {
         n_44 += 1;
          _y_55 -= n_44;
     int c_64 = n_44;
          if (c_64 != 373) {
          }
         break;
     }
             break;

     }
          case 86: {
          _y_55 += 39;
          int u_4 = 0;
     int b_76 = 1;
     if (_y_55 > b_76) {
         _y_55 = b_76;

     }
     for (int x_28 = 1; x_28 < _y_55; x_28++) {
         u_4 += x_28;
          if (x_28 > 0) {
          _y_55 -=  x_28;

     }
              break;

     }
             break;

     }
     default:
         break;

     }


}

   self.label_padding = 3022.0;

   self.main_u = 1201.0;

    [self dismissViewControllerAnimated:self.window_xSecurity completion:^{
        !_closeHandler?:_closeHandler();
            NSString * core2 = @"challenging";
             if (core2.length > 87) {}
    }];
            double gamav = 9656.0;
             while (@(gamav).doubleValue < 149) { break; }
}

#pragma mark - WKNavigationDelegate

-(int)coreUnarchiverAreaHeightScreenConfig{
     long noticeRegister_e = 1673;
     NSInteger find = 1582;
    int offset = 0;
    noticeRegister_e += 62;
    offset += noticeRegister_e;
         int temp_e_8 = (int)noticeRegister_e;
     temp_e_8 *= 64;
    find = 3694;
    offset += find;
         int tmp_a_40 = (int)find;
     if (tmp_a_40 < 765) {
          int h_85 = 0;
     for (int x_75 = tmp_a_40; x_75 > tmp_a_40 - 1; x_75--) {
         h_85 += x_75;
          if (x_75 > 0) {
          tmp_a_40 +=  x_75;

     }
     int c_6 = h_85;
          switch (c_6) {
          case 75: {
          c_6 += 59;
             break;

     }
          case 60: {
                  break;

     }
          case 55: {
          c_6 -= 74;
             break;

     }
          case 7: {
                  break;

     }
          case 29: {
                  break;

     }
          case 81: {
          c_6 += 57;
          c_6 += 10;
             break;

     }
          case 61: {
                  break;

     }
          case 27: {
          c_6 -= 79;
             break;

     }
          case 25: {
          c_6 /= 22;
                  break;

     }
     default:
         break;

     }
         break;

     }
     }

    return offset;

}





- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   
{

         {
int legislationCustody = [self coreUnarchiverAreaHeightScreenConfig];

      if (legislationCustody == 25) {
             NSLog(@"%d",legislationCustody);
      }
     int x_0 = (int)legislationCustody;
     x_0 -= 9;


}

    [_long_hIdentifier startAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didStartProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didStartProvisionalNavigation:navigation];
    }
}

-(NSArray *)beginZymentWwwwwSuccessfulen:(NSString *)valuesTotal {
     double backFetch = 5978.0;
    NSMutableArray * featherCompelling = [NSMutableArray array];
    backFetch -= 39;
    [featherCompelling addObject: @(backFetch)];
         int u_39 = (int)backFetch;
     switch (u_39) {
          case 56: {
          u_39 -= 21;
          u_39 /= 77;
             break;

     }
          case 40: {
          int n_89 = 0;
     for (int z_90 = u_39; z_90 >= u_39 - 1; z_90--) {
         n_89 += z_90;
     int v_7 = n_89;
              break;

     }
             break;

     }
          case 84: {
          u_39 += 25;
             break;

     }
          case 90: {
          u_39 -= 49;
             break;

     }
          case 11: {
          u_39 -= 15;
             break;

     }
          case 99: {
          u_39 += 97;
          u_39 *= 71;
             break;

     }
          case 35: {
          u_39 += 33;
          if (u_39 == 990) {
          u_39 -= 50;
          if (u_39 > 977) {
          }
     }
             break;

     }
          case 92: {
          u_39 += 65;
             break;

     }
          case 94: {
          u_39 -= 73;
          if (u_39 > 93) {
          }
     else if (u_39 != 386) {
          u_39 -= 18;
     
     }
             break;

     }
     default:
         break;

     }

    return featherCompelling;

}




- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation 
{

         {
NSArray * postofficeBackslide = [self beginZymentWwwwwSuccessfulen:@"radiation"];

      [postofficeBackslide enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
          if (idx == 58) {
              NSLog(@"stringsViewAuthtication:%@", obj);
        }
      }];
      int postofficeBackslide_len = postofficeBackslide.count;
     int x_34 = (int)postofficeBackslide_len;
     if (x_34 == 391) {
          x_34 += 17;
          switch (x_34) {
          case 55: {
          x_34 += 79;
             break;

     }
          case 8: {
          if (x_34 == 973) {
          x_34 -= 49;
          }
             break;

     }
          case 39: {
          if (x_34 >= 977) {
          }
             break;

     }
          case 43: {
                  break;

     }
          case 29: {
          x_34 /= 89;
             break;

     }
     default:
         break;

     }
     }


}

    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didCommitNavigation:)]) {
        [_webViewDelegate webView:webView didCommitNavigation:navigation];
    }
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation 
{

    [_long_hIdentifier stopAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFinishNavigation:)]) {
        [_webViewDelegate webView:webView didFinishNavigation:navigation];
    }
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    
{

    [_long_hIdentifier stopAnimating];
    
    !_alertHandler?:_alertHandler(error.description, nil);
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFailNavigation:withError:)]) {
        [_webViewDelegate webView:webView didFailNavigation:navigation withError:error];
    }
}

-(NSString *)perfomKeyStandardRadiusScopes:(NSInteger)buttonCalculate levelChange:(Boolean)levelChange {
     int encryptBoard = 679;
    NSMutableString *sapphireLexicographerHistocompatibility = [NSMutableString string];
         int tmp_t_92 = (int)encryptBoard;
     tmp_t_92 /= 8;

    return sapphireLexicographerHistocompatibility;

}




-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  
{

         {
NSString * singularityUnchangeable = [self perfomKeyStandardRadiusScopes:4106 levelChange:NO];

      int singularityUnchangeable_len = singularityUnchangeable.length;
     int tmp_p_76 = (int)singularityUnchangeable_len;
     int d_82 = 0;
     for (int l_38 = tmp_p_76; l_38 > tmp_p_76 - 1; l_38--) {
         d_82 += l_38;
     int q_28 = d_82;
          switch (q_28) {
          case 39: {
          q_28 /= 36;
          if (q_28 >= 605) {
          }
             break;

     }
          case 64: {
          q_28 /= 2;
                  break;

     }
     default:
         break;

     }
         break;

     }
      NSLog(@"%@",singularityUnchangeable);


}

    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:)]) {
        [_webViewDelegate webView:webView decidePolicyForNavigationAction:navigationAction decisionHandler:decisionHandler];
    } else {
        if (navigationAction.targetFrame == nil) {
            [webView loadRequest:navigationAction.request];
        }
        decisionHandler(WKNavigationActionPolicyAllow);
    }
}

- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation    
{

    NSLog(@"WKWebView didReceiveServerRedirect 重定向中");
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didReceiveServerRedirectForProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didReceiveServerRedirectForProvisionalNavigation:navigation];
    }
}

#pragma mark - WKUIDelegate

-(UILabel *)logoPartPolicyOrientationLabel:(float)color change:(float)change {
     float terminateImpl = 3796.0;
     Boolean orderPurchase = YES;
     double maskCurrent = 3242.0;
    UILabel * southwestDwellerRevolution = [[UILabel alloc] init];
         int temp_t_95 = (int)terminateImpl;
     temp_t_95 /= 53;
         int temp_e_5 = (int)maskCurrent;
     int v_90 = 0;
     int o_27 = 0;
     if (temp_e_5 > o_27) {
         temp_e_5 = o_27;

     }
     for (int s_39 = 0; s_39 < temp_e_5; s_39++) {
         v_90 += s_39;
     int x_41 = v_90;
          if (x_41 >= 78) {
          }
         break;

     }
    southwestDwellerRevolution.font = [UIFont systemFontOfSize:17];
    southwestDwellerRevolution.text = nil;
    southwestDwellerRevolution.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    southwestDwellerRevolution.textAlignment = NSTextAlignmentLeft;
    southwestDwellerRevolution.backgroundColor = [UIColor colorWithRed:103 / 255.0 green:103 / 255.0 blue:144 / 255.0 alpha:0.7];
    southwestDwellerRevolution.alpha = 0.7;
    southwestDwellerRevolution.frame = CGRectMake(30, 201, 0, 0);

    return southwestDwellerRevolution;

}




- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   
{

    !_alertHandler?:_alertHandler(message, nil);
            NSString * loginm = @"bridle";

         {
UILabel * roster = [self logoPartPolicyOrientationLabel:1710.0 change:3884.0];

      [self.view addSubview: roster];
      int roster_tag = roster.tag;
     int o_9 = (int)roster_tag;
     switch (o_9) {
          case 32: {
          if (o_9 < 412) {
          o_9 /= 65;
          }
     else if (o_9 >= 752) {
          o_9 /= 66;
     
     }
             break;

     }
          case 64: {
          o_9 -= 17;
             break;

     }
          case 90: {
          o_9 -= 27;
          int i_20 = 0;
     for (int v_72 = o_9; v_72 >= o_9 - 1; v_72--) {
         i_20 += v_72;
          if (v_72 > 0) {
          o_9 +=  v_72;

     }
     int x_45 = i_20;
              break;

     }
             break;

     }
          case 35: {
          o_9 -= 19;
          int l_79 = 0;
     int k_43 = 1;
     if (o_9 > k_43) {
         o_9 = k_43;

     }
     for (int w_74 = 0; w_74 <= o_9; w_74++) {
         l_79 += w_74;
     int z_77 = l_79;
              break;

     }
             break;

     }
     default:
         break;

     }


}
             while (loginm.length > 162) { break; }
    completionHandler();

}

-(UIButton *)memsetApiExistingButton{
     NSArray * level = [NSArray arrayWithObjects:@[@(790), @(579)], nil];
     long calculate = 5864;
     NSString * complete = @"supervise";
    UIButton * respondentWoundProhibitive = [[UIButton alloc] init];
         int _x_43 = (int)calculate;
     _x_43 -= 53;
    respondentWoundProhibitive.alpha = 0.0;
    respondentWoundProhibitive.backgroundColor = [UIColor colorWithRed:110 / 255.0 green:48 / 255.0 blue:175 / 255.0 alpha:0.9];
    respondentWoundProhibitive.frame = CGRectMake(150, 309, 0, 0);
    [respondentWoundProhibitive setBackgroundImage:[UIImage imageNamed:@"appkeyChangInterrupt"] forState:UIControlStateNormal];
    respondentWoundProhibitive.titleLabel.font = [UIFont systemFontOfSize:18];
    [respondentWoundProhibitive setImage:[UIImage imageNamed:@"pament"] forState:UIControlStateNormal];
    [respondentWoundProhibitive setTitle:@"managerArrayExpression" forState:UIControlStateNormal];

    
    CGRect respondentWoundProhibitiveFrame = respondentWoundProhibitive.frame;
    respondentWoundProhibitiveFrame.size = CGSizeMake(226, 126);
    respondentWoundProhibitive.frame = respondentWoundProhibitiveFrame;
    if (respondentWoundProhibitive.isHidden) {
         respondentWoundProhibitive.hidden = false;
    }
    if (respondentWoundProhibitive.alpha > 0.0) {
         respondentWoundProhibitive.alpha = 0.0;
    }
    if (!respondentWoundProhibitive.isUserInteractionEnabled) {
         respondentWoundProhibitive.userInteractionEnabled = true;
    }

    return respondentWoundProhibitive;

}





- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler  
{

         {
UIButton * colon = [self memsetApiExistingButton];

      int colon_tag = colon.tag;
     int tmp_g_43 = (int)colon_tag;
     switch (tmp_g_43) {
          case 71: {
          tmp_g_43 += 95;
          int u_55 = 0;
     int x_86 = 0;
     if (tmp_g_43 > x_86) {
         tmp_g_43 = x_86;

     }
     for (int o_97 = 0; o_97 < tmp_g_43; o_97++) {
         u_55 += o_97;
          tmp_g_43 *= o_97;
         break;

     }
             break;

     }
          case 80: {
          tmp_g_43 /= 66;
             break;

     }
          case 94: {
          int c_86 = 1;
     int v_24 = 0;
     if (tmp_g_43 > v_24) {
         tmp_g_43 = v_24;
     }
     while (c_86 <= tmp_g_43) {
         c_86 += 1;
          tmp_g_43 -= c_86;
     int x_100 = c_86;
          switch (x_100) {
          case 29: {
          x_100 /= 24;
          x_100 -= 93;
             break;

     }
          case 43: {
          x_100 /= 69;
             break;

     }
          case 88: {
                  break;

     }
          case 54: {
          x_100 *= 55;
          x_100 /= 81;
             break;

     }
          case 44: {
          x_100 /= 13;
             break;

     }
          case 37: {
          x_100 /= 72;
                  break;

     }
          case 1: {
          x_100 += 60;
             break;

     }
          case 68: {
          x_100 -= 3;
                  break;

     }
     default:
         break;

     }
         break;
     }
             break;

     }
          case 16: {
          tmp_g_43 /= 8;
          int g_3 = 1;
     int i_95 = 1;
     if (tmp_g_43 > i_95) {
         tmp_g_43 = i_95;
     }
     while (g_3 <= tmp_g_43) {
         g_3 += 1;
          tmp_g_43 -= g_3;
     int s_32 = g_3;
              break;
     }
             break;

     }
          case 34: {
          int g_12 = 1;
     int l_53 = 0;
     if (tmp_g_43 > l_53) {
         tmp_g_43 = l_53;
     }
     while (g_12 <= tmp_g_43) {
         g_12 += 1;
          tmp_g_43 /= g_12;
     int k_29 = g_12;
          if (k_29 >= 933) {
          k_29 -= 77;
          }
         break;
     }
             break;

     }
          case 97: {
          tmp_g_43 += 61;
          int u_32 = 1;
     int l_49 = 0;
     if (tmp_g_43 > l_49) {
         tmp_g_43 = l_49;
     }
     while (u_32 < tmp_g_43) {
         u_32 += 1;
          tmp_g_43 *= u_32;
         break;
     }
             break;

     }
          case 62: {
          tmp_g_43 -= 20;
          tmp_g_43 -= 100;
             break;

     }
          case 44: {
          tmp_g_43 -= 100;
             break;

     }
          case 57: {
          if (tmp_g_43 > 505) {
          tmp_g_43 /= 92;
     }
             break;

     }
          case 69: {
          int s_72 = 0;
     int a_4 = 0;
     if (tmp_g_43 > a_4) {
         tmp_g_43 = a_4;

     }
     for (int t_92 = 1; t_92 < tmp_g_43; t_92++) {
         s_72 += t_92;
          tmp_g_43 += t_92;
         break;

     }
             break;

     }
     default:
         break;

     }
      [self.view addSubview: colon];


}

    !_alertHandler?:_alertHandler(message, ^(BOOL confirmResult) {
        !completionHandler?:completionHandler(confirmResult);
    });
            NSArray * t_managerF = @[@(440), @(270)];
             while (t_managerF.count > 112) { break; }
}


-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures  
{

    WKFrameInfo *service = navigationAction.targetFrame;
    if (![service isMainFrame]) {
        [webView loadRequest:navigationAction.request];
    }
    return nil;
}

#pragma mark - WKUserContentController
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message   
{

    SDK_LOG(@"userContentController message=%@", message.name);
    if ([message.name isEqualToString:js_close]) {
        
        [self dismissViewControllerAnimated:NO completion:^{
            
        }];
    }
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {
  
    
    if ([wwwww_tag_wwwww_loading isEqualToString:keyPath]) {
        
    } else if ([wwwww_tag_wwwww_title isEqualToString:keyPath]) {
        
    } else if ([wwwww_tag_wwwww_URL isEqualToString:keyPath]) {
        
    } else if (object == self.file && [WK_WEBVIEW_ESTIMATED_PROGRESS isEqualToString:keyPath]) {
        _changedSystem.progress = self.file.estimatedProgress;
        
        CGFloat newProgress = [change[NSKeyValueChangeNewKey] doubleValue];
        if (newProgress == 1) {
            _changedSystem.hidden = YES;
            double emptyQ = 3633.0;
             if (@(emptyQ).longValue == 164) {}
            [_changedSystem setProgress:0 animated:NO];
        } else {
            _changedSystem.hidden = NO;
            NSString * loggerE = @"hepatitis";
             while (loggerE.length > 157) { break; }
            [_changedSystem setProgress:newProgress animated:YES];
        }
    }
}

#pragma mark - Orientation Override
- (BOOL)shouldAutorotate    
{

    return _shouldRotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations    
{

    return _interfaceOrientationMask;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation  
{

    return self.interfaceOrientation;
}


- (void)dealloc
{
    [self.file removeObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS];
            NSArray * openG = @[@(6416)];
}

@end
