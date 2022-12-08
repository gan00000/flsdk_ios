
#import "CHMXTTConfig.h"
#import "CHMXTTRegister.h"
#import "CHMXTTLocal.h"
#import "SdkHeader.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTStringView.h"
#import "CHMXTTInfo.h"

#define SDK_PROVISIONS_FIRST_ENBLE wwwww_tag_wwwww_sdk_provisions_first_enble
@interface CHMXTTConfig ()

@property(nonatomic, assign)double  fileMax;
@property(nonatomic, assign)float  delegate_w1;
@property(nonatomic, assign)float  return_t;
@property(nonatomic, assign)long  create_count;


@property (copy,nonatomic) void (^completer)(void);
@end

@implementation CHMXTTConfig
{

    
    WKWebView *provisionWebView;
    
}

- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
   self.fileMax = 716.0;

   self.delegate_w1 = 786.0;

   self.return_t = 761.0;

   self.create_count = 6158;

   self.keyboardTag = 7596;

   self.stampPadding = 9216.0;

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

-(NSDictionary *)attribtLoginFindpwd{
     int frame_cAccount = 9686;
    NSMutableDictionary * basicParticularly = [NSMutableDictionary dictionary];
    frame_cAccount = 3585;
    [basicParticularly setObject: @(frame_cAccount) forKey:@"tongue"];
         int _m_62 = (int)frame_cAccount;
     _m_62 /= 95;

    return basicParticularly;

}






- (void)landspaceView_MMMethodMMM {

   
    
    UIView *main_uView = [[UIView alloc] init];
    
    UIColor *rror = [UIColor whiteColor];
            NSString * interrupt3 = @"effulgence";

         {
NSDictionary * invent = [self attribtLoginFindpwd];

      int invent_len = invent.count;
     int temp_p_33 = (int)invent_len;
     if (temp_p_33 != 807) {
          temp_p_33 /= 58;
          switch (temp_p_33) {
          case 90: {
          temp_p_33 += 71;
                  break;

     }
          case 84: {
          if (temp_p_33 != 535) {
          temp_p_33 *= 98;
          }
             break;

     }
          case 74: {
          temp_p_33 -= 96;
             break;

     }
          case 11: {
          temp_p_33 -= 88;
                  break;

     }
     default:
         break;

     }
     }
      [invent enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"button"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}
    main_uView.backgroundColor = rror;
    main_uView.layer.cornerRadius = 10; 
    main_uView.layer.masksToBounds = YES;
    
    [self addSubview:main_uView];
    [main_uView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
            NSDictionary * tokenH = @{@"watershed":@(3873)};
             if (tokenH.count > 178) {}
        make.width.mas_equalTo(VW(330));
            int stampo = 6995;
             if (@(stampo).longValue < 78) {}
        make.height.mas_equalTo(VH(300));
            NSArray * linek = @[@(97), @(257)];
             while (linek.count > 52) { break; }
    }];
    
    
    UIView *gamaView = [[UIView alloc] init];
            NSDictionary * respG = @{@"phenomenon":@(385), @"bauble":@(542), @"window":@(774)};
             if (respG.count > 157) {}
    [main_uView addSubview:gamaView];
    [gamaView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(main_uView.mas_top).mas_offset(VH(10));
            NSDictionary * icon2 = @{@"intuitive":@(9404)};
             if (icon2[@"X"]) {}
        make.leading.mas_equalTo(main_uView).mas_offset(VW(15));
            double readerV = 9326.0;
             while (@(readerV).intValue <= 20) { break; }
        make.trailing.mas_equalTo(main_uView).mas_offset(VW(-15));
            NSDictionary * layoutD = @{@"pandemonium":@(575), @"interweave":@(894)};
             while (layoutD.count > 16) { break; }
    }];
    
    UIView *progressView = [[UIView alloc] init];
            int firebaseG = 4740;
             if (@(firebaseG).floatValue >= 142) {}
    progressView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            NSString * currentw = @"luxuriant";
             if (currentw.length > 48) {}
    [gamaView addSubview:progressView];
    [progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(gamaView);
            double gradientP = 9170.0;
             if (@(gradientP).doubleValue > 77) {}
        make.leading.mas_equalTo(gamaView);
            int urlsr = 2996;
             while (@(urlsr).longLongValue <= 143) { break; }
        make.width.mas_equalTo(VW(4));
            NSArray * session5 = [NSArray arrayWithObjects:@(937), @(172), nil];
        make.height.mas_equalTo(VH(14));
            NSArray * inews8 = @[@(572), @(819), @(106)];
        make.bottom.mas_equalTo(gamaView);
            NSString * resp9 = @"hose";
    }];
    
    
    UILabel *errorLabel = [CHMXTTLoginChange initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_sdk_terms_title.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
    errorLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
    
    [gamaView addSubview:errorLabel];
    [errorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(gamaView).mas_offset(6);
            float gameW = 5670.0;
             if (@(gameW).doubleValue > 187) {}
        make.trailing.mas_equalTo(gamaView);
            NSString * guestH = @"art";
        make.top.mas_equalTo(gamaView);
            Boolean popupY = YES;
        make.bottom.mas_equalTo(gamaView);
            float tipsf = 2012.0;
             if (@(tipsf).longLongValue > 120) {}
    }];
    
    UIButton *styleBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_close.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    styleBtn.layer.cornerRadius = VH(32) / 2;
            NSString * facebookQ = @"divestiture";
    styleBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
            NSString * logoutI = @"tree";
             while (logoutI.length > 200) { break; }
    styleBtn.layer.borderWidth = 0.5;
    
    [main_uView addSubview:styleBtn];
    [styleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(main_uView).mas_offset(VW(15));;
            NSString * transactionst = @"sympathize";
             if (transactionst.length > 26) {}
        make.bottom.mas_equalTo(main_uView.mas_bottom).mas_offset(-VH(10));
            NSInteger completer1 = 7601;
             if (@(completer1).intValue >= 174) {}
        make.width.mas_equalTo(VW(94));
            NSDictionary * vipL = [NSDictionary dictionaryWithObjectsAndKeys:@"8",@"z", nil];
             if (vipL.count > 95) {}
        make.height.mas_equalTo(VH(32));
            NSString * handerw = @"residence";
    }];
    
    UIButton *lableBtn = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_agree_read_tips.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    lableBtn.layer.cornerRadius = VH(16);
            NSDictionary * localizedK = [NSDictionary dictionaryWithObjectsAndKeys:@"review",@(652), @"privation",@(739), @"tenth",@(892), nil];
    lableBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [main_uView addSubview:lableBtn];
    [lableBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(main_uView).mas_offset(-VW(15));
            int gamaD = 9777;
             if (@(gamaD).longValue <= 144) {}
        make.bottom.mas_equalTo(styleBtn.mas_bottom);
            NSArray * codesM = [NSArray arrayWithObjects:@(755), @(719), nil];
             if ([codesM containsObject:@"X"]) {}
        make.width.mas_equalTo(VW(190));
            double z_imagew = 7410.0;
             if (@(z_imagew).longLongValue > 64) {}
        make.height.mas_equalTo(VH(32));
            NSString * boardF = @"riveting";
    }];
    
    CAGradientLayer *conf = [CHMXTTInfo createGradientLayerWithRadius_MMMethodMMM:VH(16)];
            int containU = 2986;
             if (@(containU).longValue <= 127) {}
    [lableBtn.layer addSublayer:conf];
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        conf.frame = lableBtn.bounds;
    }];
    
    
    UIView *handleView = [[UIView alloc] init];
    
    handleView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_DEDEDE].CGColor;
    handleView.layer.borderWidth = 0.6;
            Boolean passwordK = NO;
             if (!passwordK) { __asm__("NOP"); }
    [main_uView addSubview:handleView];
    [handleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(main_uView).mas_offset(VW(15));;
            float long_rH = 1831.0;
             while (@(long_rH).longValue < 35) { break; }
        make.trailing.mas_equalTo(main_uView).mas_offset(-VW(15));
            double responsej = 891.0;
             if (@(responsej).doubleValue >= 174) {}
        make.top.mas_equalTo(gamaView.mas_bottom).mas_offset(VW(10));
        make.bottom.mas_equalTo(styleBtn.mas_top).mas_offset(-VW(10));
    }];



    
    
    
    NSString * array = SDK_DATA.urls.agreementUrl;
    if (!array || [@"" isEqualToString:array]) {
        array = [NSString stringWithFormat:TERMS_SERVICE_URL,GAME_CODE];
    }
    
    SDK_LOG(@"termsUrl=%@",array);
            NSDictionary * todayl = [NSDictionary dictionaryWithObjectsAndKeys:@"v",@"w", @"f",@"m", nil];
             if (todayl[@"Q"]) {}
    provisionWebView = [[WKWebView alloc] init];
            int transactions8 = 8430;
             if (@(transactions8).longValue > 121) {}
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: array]]];
            float parentM = 4837.0;
             if (@(parentM).integerValue == 146) {}
    [provisionWebView.scrollView setBounces:YES];
            NSInteger userq = 5793;
             for(NSInteger userq_idx = 0; userq_idx < @(userq).intValue; userq_idx += 5) { break; } 
    [provisionWebView.scrollView setScrollEnabled:YES];
            float arrayf = 9629.0;
             if (@(arrayf).integerValue >= 127) {}
    [handleView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(handleView).mas_offset(VW(8));
        make.bottom.trailing.mas_equalTo(handleView).mas_offset(-VW(8));
            int editingM = 7288;
             while (@(editingM).longLongValue >= 32) { break; }
    }];
    
}

-(double)containerStreamedDecryptMaxSearch:(NSInteger)rameworkCustom baseSave:(NSDictionary *)baseSave {
     double cancelAdapt = 9786.0;
    double fatten = 0;
    cancelAdapt = 2179;
    fatten += cancelAdapt;
         int temp_h_17 = (int)cancelAdapt;
     switch (temp_h_17) {
          case 59: {
          temp_h_17 += 69;
             break;

     }
          case 97: {
          temp_h_17 += 48;
          temp_h_17 *= 50;
             break;

     }
          case 80: {
          if (temp_h_17 != 30) {
          temp_h_17 /= 29;
          }
             break;

     }
          case 44: {
          temp_h_17 += 86;
          int l_21 = 0;
     int z_58 = 0;
     if (temp_h_17 > z_58) {
         temp_h_17 = z_58;

     }
     for (int q_11 = 0; q_11 < temp_h_17; q_11++) {
         l_21 += q_11;
     int i_28 = l_21;
          if (i_28 <= 966) {
          i_28 -= 20;
          i_28 -= 63;
     }
         break;

     }
             break;

     }
          case 23: {
          temp_h_17 += 7;
          int s_27 = 0;
     int k_55 = 0;
     if (temp_h_17 > k_55) {
         temp_h_17 = k_55;

     }
     for (int u_1 = 0; u_1 < temp_h_17; u_1++) {
         s_27 += u_1;
     int c_23 = s_27;
          if (c_23 != 298) {
          c_23 /= 38;
          }
         break;

     }
             break;

     }
          case 36: {
          temp_h_17 -= 12;
             break;

     }
     default:
         break;

     }

    return fatten;

}





- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{

         {
double prescribe = [self containerStreamedDecryptMaxSearch:6979 baseSave:[NSDictionary dictionaryWithObjectsAndKeys:@"introvert",@(529), @"seafaring",@(633), nil]];

      if (prescribe != 27) {
             NSLog(@"%f",prescribe);
      }
     int tmp_u_4 = (int)prescribe;
     if (tmp_u_4 >= 810) {
          tmp_u_4 *= 3;
          tmp_u_4 *= 97;
     }


}

   
    switch (sender.tag) {
        case 11:
            break;
        case TAG_CLOSE:
            [self removeFromSuperview];
        {
            float data9 = 906.0;
             while (@(data9).longLongValue < 103) { break; }
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

+(NSArray *)injectionMethodsContentNattionHidden:(NSArray *)encryptSetup openBundle:(NSInteger)openBundle {
     float changeRotate = 4651.0;
    NSMutableArray * preparedIgnoreVenal = [NSMutableArray array];
    changeRotate -= changeRotate;
    [preparedIgnoreVenal addObject: @(changeRotate)];
         int temp_m_20 = (int)changeRotate;
     switch (temp_m_20) {
          case 73: {
          temp_m_20 *= 67;
          temp_m_20 *= 27;
             break;

     }
          case 51: {
          temp_m_20 *= 21;
             break;

     }
          case 100: {
          temp_m_20 /= 13;
          if (temp_m_20 == 500) {
          temp_m_20 /= 53;
          }
     else if (temp_m_20 > 720) {
     
     }
             break;

     }
          case 79: {
          temp_m_20 *= 53;
             break;

     }
          case 71: {
          temp_m_20 /= 35;
          int p_14 = 0;
     for (int g_19 = temp_m_20; g_19 >= temp_m_20 - 1; g_19--) {
         p_14 += g_19;
     int o_20 = p_14;
              break;

     }
             break;

     }
          case 1: {
          temp_m_20 += 97;
          temp_m_20 += 82;
             break;

     }
          case 61: {
          temp_m_20 *= 100;
             break;

     }
          case 16: {
          temp_m_20 += 6;
             break;

     }
     default:
         break;

     }

    return preparedIgnoreVenal;

}





+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen
{

         {
    [self injectionMethodsContentNattionHidden:@[@(428), @(765)] openBundle:686];

}

    NSUserDefaults *guest = [NSUserDefaults standardUserDefaults];
            NSDictionary * adaptX = [NSDictionary dictionaryWithObjectsAndKeys:@"rural",@(3819.0), nil];
             if (adaptX[@"i"]) {}
    [guest setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
            NSDictionary * messagec = [NSDictionary dictionaryWithObjectsAndKeys:@"reform",@(679), @"rapacious",@(926), @"duet",@(3), nil];
             if (messagec[@"2"]) {}
    [guest synchronize];
}

+(NSArray *)dequeueControllerStartMinutesMsghdrSocket:(float)editTerm unews:(NSDictionary *)unews receipt:(NSArray *)receipt {
     double board = 6976.0;
    NSMutableArray * handoutFiber = [NSMutableArray array];
    board /= 73;
    [handoutFiber addObject: @(board)];
         int _x_4 = (int)board;
     int p_1 = 1;
     int j_55 = 0;
     if (_x_4 > j_55) {
         _x_4 = j_55;
     }
     while (p_1 <= _x_4) {
         p_1 += 1;
          _x_4 -= p_1;
              break;
     }

    return handoutFiber;

}





+ (BOOL)openProvision_MMMethodMMM{

         {
    [self dequeueControllerStartMinutesMsghdrSocket:2460.0 unews:[NSDictionary dictionaryWithObjectsAndKeys:@"discomfited",@(252), @"deportation",@(510), @"equanimity",@(235), nil] receipt:@[@(432), @(488), @(72)]];

}

    
    return ![CHMXTTConfig isAgreenProvision_MMMethodMMM];
}

+(double)safariAccontEncrypt:(NSString *)http {
     float responce = 9700.0;
    double evokeCongeal = 0;
    responce -= responce;
    evokeCongeal += responce;
         int tmp_t_10 = (int)responce;
     switch (tmp_t_10) {
          case 81: {
          int j_51 = 0;
     int y_77 = 1;
     if (tmp_t_10 > y_77) {
         tmp_t_10 = y_77;

     }
     for (int x_70 = 0; x_70 <= tmp_t_10; x_70++) {
         j_51 += x_70;
          if (x_70 > 0) {
          tmp_t_10 -=  x_70;

     }
              break;

     }
             break;

     }
          case 24: {
          if (tmp_t_10 < 607) {
          }
     else if (tmp_t_10 < 166) {
     
     }
             break;

     }
          case 8: {
          if (tmp_t_10 < 683) {
          tmp_t_10 += 53;
          if (tmp_t_10 != 631) {
          tmp_t_10 *= 1;
          }
     }
             break;

     }
          case 40: {
          tmp_t_10 /= 42;
          tmp_t_10 -= 91;
             break;

     }
     default:
         break;

     }

    return evokeCongeal;

}





+(BOOL)isAgreenProvision_MMMethodMMM
{

    NSUserDefaults *guest1 = [NSUserDefaults standardUserDefaults];
            NSArray * functionQ = @[@(136), @(414)];

         {
    [self safariAccontEncrypt:@"bode"];

}
             if (functionQ.count > 74) {}
    return [guest1 boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
