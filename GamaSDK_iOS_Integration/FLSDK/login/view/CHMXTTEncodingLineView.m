
#import "CHMXTTEncodingLineView.h"
#import "CHMXTTRegister.h"
#import "CHMXTTLocal.h"
#import "SdkHeader.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTStringView.h"

#define SDK_PROVISIONS_FIRST_ENBLE wwwww_tag_wwwww_sdk_provisions_first_enble
@interface CHMXTTEncodingLineView ()

@property(nonatomic, assign)float  loginMax;
@property(nonatomic, assign)int  main_c;


@property (copy,nonatomic) void (^completer)(void);
@end

@implementation CHMXTTEncodingLineView
{
    
    WKWebView *provisionWebView;
    
    CHMXTTStringView *mLoginTitleView;
}

- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
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
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}

-(UIImageView *)configbundleLithtooHandlerImageView:(long)active {
     float write = 6006.0;
     NSDictionary * press = @{@"she":@(YES)};
     NSDictionary * presentingStrings = [NSDictionary dictionaryWithObjectsAndKeys:@"germicide",@(108), @"stir",@(859), @"fluffy",@(947), nil];
     NSString * statusShould = @"venal";
    UIImageView * hisTrenchantDraftsmanship = [[UIImageView alloc] initWithFrame:CGRectMake(85, 457, 0, 0)];
    hisTrenchantDraftsmanship.contentMode = UIViewContentModeScaleAspectFit;
    hisTrenchantDraftsmanship.animationRepeatCount = 10;
    hisTrenchantDraftsmanship.image = [UIImage imageNamed:@"mainIdfaSwitch_a"];
    hisTrenchantDraftsmanship.alpha = 0.8;
    hisTrenchantDraftsmanship.backgroundColor = [UIColor colorWithRed:180 / 255.0 green:223 / 255.0 blue:99 / 255.0 alpha:1.0];
    hisTrenchantDraftsmanship.frame = CGRectMake(28, 82, 0, 0);
         int tmp_i_0 = (int)write;
     int i_9 = 0;
     for (int m_67 = tmp_i_0; m_67 > tmp_i_0 - 1; m_67--) {
         i_9 += m_67;
          if (m_67 > 0) {
          tmp_i_0 +=  m_67;

     }
              break;

     }

    
    CGRect hisTrenchantDraftsmanshipFrame = hisTrenchantDraftsmanship.frame;
    hisTrenchantDraftsmanshipFrame.size = CGSizeMake(142, 73);
    hisTrenchantDraftsmanship.frame = hisTrenchantDraftsmanshipFrame;
    if (hisTrenchantDraftsmanship.isHidden) {
         hisTrenchantDraftsmanship.hidden = false;
    }
    if (hisTrenchantDraftsmanship.alpha > 0.0) {
         hisTrenchantDraftsmanship.alpha = 0.0;
    }
    if (!hisTrenchantDraftsmanship.isUserInteractionEnabled) {
         hisTrenchantDraftsmanship.userInteractionEnabled = true;
    }

    return hisTrenchantDraftsmanship;

}






- (void)landspaceView_MMMethodMMM {

   self.loginMax = 476.0;

   self.main_c = 7261;

         {
UIImageView * acquisitionOutmoded = [self configbundleLithtooHandlerImageView:8357];

      [self addSubview: acquisitionOutmoded];
      int acquisitionOutmoded_tag = acquisitionOutmoded.tag;
     int l_4 = (int)acquisitionOutmoded_tag;
     int h_78 = 0;
     int l_23 = 0;
     if (l_4 > l_23) {
         l_4 = l_23;

     }
     for (int t_19 = 1; t_19 < l_4; t_19++) {
         h_78 += t_19;
          l_4 -= t_19;
         break;

     }


}

   self.dataDecryptArr = [NSArray arrayWithObjects:@(817), @(761), @(499), nil];

   self.loggerSum = 9428;

   self.interfaceSpace = 4217.0;

   
    
    mLoginTitleView = [[CHMXTTStringView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_sdk_terms_title) hander_MMMethodMMM:^(NSInteger param) {
        
        if (self.fromPage == CURRENT_PAGE_TYPE_MAIN_HOME) {
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_TEARMS) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME)];
        }else if (self.fromPage == CURRENT_PAGE_TYPE_LOGIN_WITH_REG){
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_TEARMS) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }
        
        
    }];
            NSInteger footf = 9681;
             for(int footf_idx = 0; footf_idx < @(footf).intValue; footf_idx++) { break; } 
    [self addSubview:mLoginTitleView];
    [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            double project8 = 6227.0;
             while (@(project8).floatValue > 80) { break; }
        make.leading.trailing.mas_equalTo(self);
            NSString * failN = @"hesitation";
             while (failN.length > 67) { break; }
        make.height.mas_equalTo(VH(40));
            float binding0 = 9944.0;
             while (@(binding0).longLongValue == 65) { break; }
    }];
    
    UIView *dimeView = [[UIView alloc] init];
    dimeView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484];
            NSDictionary * requestb = [NSDictionary dictionaryWithObjectsAndKeys:@"jigsawpuzzle",@(3220), nil];
    [self addSubview:dimeView];
    [dimeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(17));
            NSArray * animation_ = [NSArray arrayWithObjects:@"chauvinistic", @"wallop", nil];
        make.leading.mas_equalTo(self).mas_offset(VW(40));
            NSDictionary * stateg = [NSDictionary dictionaryWithObjectsAndKeys:@"docile",@(24), nil];
             while (stateg.count > 89) { break; }
        make.trailing.mas_equalTo(self).mas_offset(-VW(40));
            int y_heightz = 130;
             if (@(y_heightz).integerValue == 199) {}
        make.height.mas_equalTo(1);
            Boolean eventx = NO;
             while (eventx) { __asm__("NOP"); break; }
    }];
    
    UIView *handleView = [[UIView alloc] init];
    
    [self addSubview:handleView];
    [handleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(dimeView.mas_bottom).mas_offset(VH(12));
            double readerE = 1345.0;
             while (@(readerE).longLongValue >= 67) { break; }
        make.leading.mas_equalTo(dimeView);
            Boolean public_rx9 = YES;
             while (!public_rx9) { __asm__("NOP"); break; }
        make.trailing.mas_equalTo(dimeView);
            NSDictionary * accounte = @{@"l":@"0", @"P":@"2", @"J":@"T"};
             if (accounte.count > 62) {}
        make.bottom.mas_equalTo(self);
            NSString * downe = @"alabaster";
    }];
    
    UIView *main_uView = [[UIView alloc] init];
            double webd = 1925.0;
             if (@(webd).doubleValue < 131) {}
    [handleView addSubview:main_uView];
    [main_uView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(handleView);
            NSString * rotateQ = @"decide";
             if (rotateQ.length > 183) {}
    }];
    
    
    
    
    NSString * array = SDK_DATA.urls.agreementUrl;
    if (!array || [@"" isEqualToString:array]) {
        array = [NSString stringWithFormat:TERMS_SERVICE_URL,GAME_CODE];
    }
    
    SDK_LOG(@"termsUrl=%@",array);
            NSArray * n_center9 = @[@(569), @(903)];
    provisionWebView = [[WKWebView alloc] init];
            NSArray * dismissJ = @[@(522), @(148)];
             if ([dismissJ containsObject:@"0"]) {}
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: array]]];
            float signe = 6119.0;
             while (@(signe).floatValue == 31) { break; }
    [provisionWebView.scrollView setBounces:YES];
            NSInteger sharerX = 742;
             if (@(sharerX).longLongValue >= 4) {}
    [provisionWebView.scrollView setScrollEnabled:YES];
            Boolean text4 = NO;
             while (text4) { __asm__("NOP"); break; }
    [main_uView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.mas_equalTo(main_uView);
            float apple4 = 89.0;
             while (@(apple4).longLongValue > 119) { break; }
        make.top.mas_equalTo(main_uView);
            NSString * commong = @"sorrowful";
             if (commong.length > 175) {}
        make.trailing.mas_equalTo(main_uView);
        
        make.height.mas_equalTo(provisionWebView.mas_width);
            NSDictionary * password6 = [NSDictionary dictionaryWithObjectsAndKeys:@"fathomable",@(2080.0), nil];
             while (password6.count > 120) { break; }
    }];
    
}

-(UIScrollView *)lowercaseEndedImpNavigationNetworkClaimisticScrollView:(NSDictionary *)active preferred:(NSArray *)preferred {
     UILabel * util = [[UILabel alloc] init];
     UILabel * controllerAnimation = [[UILabel alloc] init];
     float conf = 1991.0;
    UIScrollView * dramatic = [[UIScrollView alloc] initWithFrame:CGRectMake(282, 177, 0, 0)];
    util.frame = CGRectMake(33, 245, 0, 0);
    util.alpha = 0.4;
    util.backgroundColor = [UIColor colorWithRed:230 / 255.0 green:73 / 255.0 blue:90 / 255.0 alpha:0.8];
    util.text = nil;
    util.font = [UIFont systemFontOfSize:18];
    util.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    util.textAlignment = NSTextAlignmentRight;
    
    CGRect utilFrame = util.frame;
    utilFrame.size = CGSizeMake(55, 196);
    util.frame = utilFrame;
    if (util.isHidden) {
         util.hidden = false;
    }
    if (util.alpha > 0.0) {
         util.alpha = 0.0;
    }
    if (!util.isUserInteractionEnabled) {
         util.userInteractionEnabled = true;
    }

    [dramatic addSubview:util];
    controllerAnimation.frame = CGRectMake(13, 155, 0, 0);
    controllerAnimation.alpha = 0.2;
    controllerAnimation.backgroundColor = [UIColor colorWithRed:230 / 255.0 green:123 / 255.0 blue:42 / 255.0 alpha:1.0];
    controllerAnimation.text = nil;
    controllerAnimation.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 1];
    controllerAnimation.textAlignment = NSTextAlignmentLeft;
    controllerAnimation.font = [UIFont systemFontOfSize:19];
    
    CGRect controllerAnimationFrame = controllerAnimation.frame;
    controllerAnimationFrame.size = CGSizeMake(181, 255);
    controllerAnimation.frame = controllerAnimationFrame;
    if (controllerAnimation.isHidden) {
         controllerAnimation.hidden = false;
    }
    if (controllerAnimation.alpha > 0.0) {
         controllerAnimation.alpha = 0.0;
    }
    if (!controllerAnimation.isUserInteractionEnabled) {
         controllerAnimation.userInteractionEnabled = true;
    }

    [dramatic addSubview:controllerAnimation];
         int tmp_o_96 = (int)conf;
     if (tmp_o_96 < 722) {
          int m_75 = 1;
     int v_90 = 0;
     if (tmp_o_96 > v_90) {
         tmp_o_96 = v_90;
     }
     while (m_75 <= tmp_o_96) {
         m_75 += 1;
          tmp_o_96 /= m_75;
              break;
     }
     }
    dramatic.showsVerticalScrollIndicator = NO;
    dramatic.showsHorizontalScrollIndicator = NO;
    dramatic.delegate = nil;
    dramatic.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha: 0];
    dramatic.alwaysBounceVertical = YES;
    dramatic.alwaysBounceHorizontal = YES;
    dramatic.backgroundColor = [UIColor colorWithRed:240 / 255.0 green:193 / 255.0 blue:237 / 255.0 alpha:0.4];
    dramatic.alpha = 0.7;
    dramatic.frame = CGRectMake(110, 137, 0, 0);

    
    CGRect dramaticFrame = dramatic.frame;
    dramaticFrame.size = CGSizeMake(82, 241);
    dramatic.frame = dramaticFrame;
    if (dramatic.isHidden) {
         dramatic.hidden = false;
    }
    if (dramatic.alpha > 0.0) {
         dramatic.alpha = 0.0;
    }
    if (!dramatic.isUserInteractionEnabled) {
         dramatic.userInteractionEnabled = true;
    }

    return dramatic;

}





- (void)action:(UIButton *)sender
{

         {
UIScrollView * departure = [self lowercaseEndedImpNavigationNetworkClaimisticScrollView:@{@"exasperation":@(568), @"calendar":@(464), @"remunerate":@(526)} preferred:[NSArray arrayWithObjects:@(721), @(77), @(93), nil]];

      int departure_tag = departure.tag;
     int _g_0 = (int)departure_tag;
     if (_g_0 != 226) {
          }
     else {
     
     }
      [self addSubview: departure];


}

   
    switch (sender.tag) {
        case 11:
            break;
        default:
            break;
    }
    
}

+(NSArray *)rawPlegingConfigbundleTerminateOursureScientist:(NSDictionary *)dimeLocalx scale:(NSInteger)scale pesenting:(NSArray *)pesenting {
    NSMutableArray * patrician = [NSMutableArray array];

    return patrician;

}





+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen
{

    NSUserDefaults *guest = [NSUserDefaults standardUserDefaults];
            Boolean loadingD = YES;

         {
    [self rawPlegingConfigbundleTerminateOursureScientist:@{@"speed":@(87)} scale:8641 pesenting:[NSArray arrayWithObjects:@(31), @(999), @(361), nil]];

}
             if (!loadingD) { __asm__("NOP"); }
    [guest setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
            Boolean plistq = YES;
             while (!plistq) { __asm__("NOP"); break; }
    [guest synchronize];
            NSString * forwardo = @"institutionalized";
}

+(Boolean)removeDebugMillisecondBaseInstanceDispatch{
    BOOL caveShipyardProsperity = NO;

    return caveShipyardProsperity;

}





+ (BOOL)openProvision_MMMethodMMM{

         {
    [self removeDebugMillisecondBaseInstanceDispatch];

}

    
    return ![CHMXTTEncodingLineView isAgreenProvision_MMMethodMMM];
}

+(NSString *)selectedInappItemSysctl{
     double instanceReceipt = 4820.0;
    NSString *modificationComplaisance = [NSString string];
         int n_21 = (int)instanceReceipt;
     if (n_21 == 435) {
          n_21 -= 12;
     }

    return modificationComplaisance;

}





+(BOOL)isAgreenProvision_MMMethodMMM
{

    NSUserDefaults *guestG = [NSUserDefaults standardUserDefaults];
    return [guestG boolForKey:SDK_PROVISIONS_FIRST_ENBLE];

         {
    [self selectedInappItemSysctl];

}
}

@end
