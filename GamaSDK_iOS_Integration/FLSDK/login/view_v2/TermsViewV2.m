
#import "TermsViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"

#define SDK_PROVISIONS_FIRST_ENBLE wwwww_tag_wwwww_sdk_provisions_first_enble
@interface TermsViewV2 ()

@property(nonatomic, assign)Boolean  enbale_Perssion;
@property(nonatomic, assign)Boolean  has_Click;
@property(nonatomic, assign)float  decodeMin;
@property(nonatomic, assign)double  encoding_margin;


@property (copy,nonatomic) void (^completer)(void);
@end

@implementation TermsViewV2
{

    
    WKWebView *provisionWebView;
    
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
   self.enbale_Perssion = YES;

   self.has_Click = NO;

   self.decodeMin = 1002.0;

   self.encoding_margin = 7779.0;

   self.can_Table = NO;

   self.colorLocalxQuery_str = @"revive";

   self.authtication_str = @"curtail";

    self = [super init];
    if (self) {
        
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.1];
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}

-(float)availableTouchesAmount:(NSArray *)prefersIdentifier {
    float good = 0;

    return good;

}






- (void)landspaceView_MMMethodMMM {

         {
float taxParttime = [self availableTouchesAmount:@[@(451), @(791), @(304)]];

     int tmp_v_78 = (int)taxParttime;
     tmp_v_78 /= 62;
      NSLog(@"%f",taxParttime);


}

   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
            NSInteger paramL = 6283;
             while (@(paramL).integerValue < 7) { break; }
    contentView.backgroundColor = color;
            NSArray * sheetq = [NSArray arrayWithObjects:@(598), @(228), nil];
             if ([sheetq containsObject:@"i"]) {}
    contentView.layer.cornerRadius = 10; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
            float currentQ = 9246.0;
             if (@(currentQ).doubleValue > 8) {}
        make.width.mas_equalTo(VW(330));
            float ervice7 = 5556.0;
             if (@(ervice7).integerValue > 97) {}
        make.height.mas_equalTo(VH(300));
            NSArray * q_widtha = @[@(927), @(998), @(871)];
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
            double confN = 7767.0;
             if (@(confN).intValue < 170) {}
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(10));
            NSDictionary * selectz = [NSDictionary dictionaryWithObjectsAndKeys:@"cadet",@(168), @"parturition",@(155), @"amethyst",@(631), nil];
             if (selectz[@"L"]) {}
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));
            Boolean loginD = YES;
             if (!loginD) { __asm__("NOP"); }
        make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
            NSDictionary * dataB = [NSDictionary dictionaryWithObjectsAndKeys:@"disciple",@(424), nil];
             while (dataB.count > 34) { break; }
    }];
    
    UIView *tagView = [[UIView alloc] init];
            NSArray * systemM = [NSArray arrayWithObjects:[NSArray arrayWithObjects:@(979), @(342), @(918), nil], nil];
             while (systemM.count > 200) { break; }
    tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
            int r_heightK = 8524;
             while (@(r_heightK).longLongValue >= 70) { break; }
    [titleView addSubview:tagView];
    [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(titleView);
            NSArray * indicatorr = @[@(307), @(876), @(793)];
             while (indicatorr.count > 0) { break; }
        make.leading.mas_equalTo(titleView);
            NSString * modeR = @"safeguard";
             if (modeR.length > 64) {}
        make.width.mas_equalTo(VW(4));
            NSString * success4 = @"bodyguard";
             if ([success4 isEqualToString:@"n"]) {}
        make.height.mas_equalTo(VH(14));
            NSString * labelj = @"hospitable";
             if (labelj.length > 139) {}
        make.bottom.mas_equalTo(titleView);
            NSDictionary * configq = [NSDictionary dictionaryWithObjectsAndKeys:@"tree",@(431), nil];
    }];
    
    
    UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_sdk_terms_title.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_2A2A2A]];
    titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleView).mas_offset(6);
            NSDictionary * callt = @{@"showy":@(7745)};
        make.trailing.mas_equalTo(titleView);
            float namez = 8588.0;
             for(int namez_idx = 0; namez_idx < @(namez).intValue; namez_idx += 8) { break; } 
        make.top.mas_equalTo(titleView);
            NSString * type_wkH = @"hilarious";
        make.bottom.mas_equalTo(titleView);
            NSArray * fromd = [NSArray arrayWithObjects:@(941), @(113), @(163), nil];
             while (fromd.count > 14) { break; }
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_close.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor] tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    closeBtn.layer.cornerRadius = VH(32) / 2;
            NSDictionary * filedh = @{@"impropriety":@(303), @"box":@(433), @"relocate":@(2)};
             if (filedh.count > 132) {}
    closeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
            NSInteger progress0 = 5883;
             for(NSInteger progress0_idx = 69; progress0_idx < @(progress0).intValue; progress0_idx -= 1) { break; } 
    closeBtn.layer.borderWidth = 0.5;
    
    [contentView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
            NSDictionary * applicationK = @{@"entrapment":@(31), @"nebula":@(75)};
             if (applicationK.count > 78) {}
        make.bottom.mas_equalTo(contentView.mas_bottom).mas_offset(-VH(10));
            NSArray * dimeU = [NSArray arrayWithObjects:@"sarcasm", @"station", nil];
        make.width.mas_equalTo(VW(94));
            NSString * popup6 = @"qualification";
             while (popup6.length > 7) { break; }
        make.height.mas_equalTo(VH(32));
            NSArray * email5 = @[@(412), @(926)];
             if ([email5 containsObject:@"r"]) {}
    }];
    
    UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_agree_read_tips.localx fontSize_MMMethodMMM:FS(15) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    okBtn.layer.cornerRadius = VH(32) / 2;
            float home2 = 4294.0;
             while (@(home2).longValue < 188) { break; }
    okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [contentView addSubview:okBtn];
    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
            NSInteger termsj = 8039;
             while (@(termsj).longValue == 28) { break; }
        make.bottom.mas_equalTo(closeBtn.mas_bottom);
            NSArray * gamej = @[@(648), @(543), @(955)];
             if (gamej.count > 185) {}
        make.width.mas_equalTo(VW(190));
            NSDictionary * keyL = @{@"E":@"z", @"X":@"c"};
             while (keyL.count > 103) { break; }
        make.height.mas_equalTo(VH(32));
            NSDictionary * landscapeF = @{@"amalgam":@(4168)};
             if (landscapeF[@"i"]) {}
    }];
    
    
    UIView *xView = [[UIView alloc] init];
    
    xView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_DEDEDE].CGColor;
            double termsT = 9708.0;
             if (@(termsT).floatValue <= 189) {}
    xView.layer.borderWidth = 0.6;
            double find7 = 3589.0;
             while (@(find7).intValue > 106) { break; }
    [contentView addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
            NSString * gameV = @"vinegar";
             if (gameV.length > 119) {}
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
            NSDictionary * levelf = @{@"gallon":@(524)};
             while (levelf.count > 121) { break; }
        make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VW(10));
            NSArray * dica = @[@(927), @(252), @(781)];
             if (dica.count > 167) {}
        make.bottom.mas_equalTo(closeBtn.mas_top).mas_offset(-VW(10));
            NSString * keychainS = @"repercussion";
             while (keychainS.length > 57) { break; }
    }];



    
    
    
    NSString * url = SDK_DATA.urls.agreementUrl;
    if (!url || [@"" isEqualToString:url]) {
        url = [NSString stringWithFormat:TERMS_SERVICE_URL,GAME_CODE];
    }
    
    SDK_LOG(@"termsUrl=%@",url);
            NSArray * autorotateV = [NSArray arrayWithObjects:@(537), @(735), @(367), nil];
             if (autorotateV.count > 34) {}
    provisionWebView = [[WKWebView alloc] init];
            NSString * rameworkE = @"motorway";
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
            NSArray * cancelH = [NSArray arrayWithObjects:@"flaunty", nil];
             while (cancelH.count > 129) { break; }
    [provisionWebView.scrollView setBounces:YES];
            NSString * itemC = @"digressive";
             if (itemC.length > 20) {}
    [provisionWebView.scrollView setScrollEnabled:YES];
            NSString * size_lm = @"incipient";
             while (size_lm.length > 128) { break; }
    [xView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VW(8));
            NSDictionary * service2 = [NSDictionary dictionaryWithObjectsAndKeys:@"channel",@(9805), nil];
             if (service2[@"h"]) {}
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VW(8));
            double receipti = 2164.0;
             while (@(receipti).longValue >= 107) { break; }
    }];
    
}

-(NSDictionary *)appendUuidPatternViewport:(NSArray *)total close:(NSString *)close {
     double dataServer = 2802.0;
    NSMutableDictionary * shriekPrime = [NSMutableDictionary dictionaryWithObject:@(740)forKey:@"leniencyApproximate"];
    dataServer -= 95;
    [shriekPrime setObject: @(dataServer) forKey:@"sepulchral"];
         int _k_62 = (int)dataServer;
     if (_k_62 >= 976) {
          int m_15 = 1;
     int p_87 = 1;
     if (_k_62 > p_87) {
         _k_62 = p_87;
     }
     while (m_15 <= _k_62) {
         m_15 += 1;
          _k_62 -= m_15;
     int f_5 = m_15;
          switch (f_5) {
          case 98: {
          f_5 += 32;
                  break;

     }
          case 84: {
          f_5 -= 82;
          f_5 += 62;
             break;

     }
          case 73: {
          f_5 *= 99;
          f_5 /= 11;
             break;

     }
          case 23: {
          f_5 *= 11;
             break;

     }
          case 88: {
                  break;

     }
          case 51: {
          f_5 -= 93;
             break;

     }
          case 39: {
          f_5 *= 92;
          f_5 /= 33;
             break;

     }
          case 25: {
                  break;

     }
     default:
         break;

     }
         break;
     }
     }

    return shriekPrime;

}





- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{

         {
NSDictionary * flipFirework = [self appendUuidPatternViewport:@[@(470), @(622), @(919)] close:@"willingness"];

      int flipFirework_len = flipFirework.count;
     int temp_b_57 = (int)flipFirework_len;
     int b_29 = 0;
     int r_76 = 1;
     if (temp_b_57 > r_76) {
         temp_b_57 = r_76;

     }
     for (int r_85 = 1; r_85 <= temp_b_57; r_85++) {
         b_29 += r_85;
          temp_b_57 *= r_85;
         break;

     }
      [flipFirework enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"keychain"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];


}

   
    switch (sender.tag) {
        case 11:
            break;
        case TAG_CLOSE:
            [self removeFromSuperview];
        {
            NSArray * sharedx = [NSArray arrayWithObjects:@(3722.0), nil];
             while (sharedx.count > 106) { break; }
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

+(double)handleNumberZeroEntryBundle:(NSDictionary *)labelBase dateSession:(NSString *)dateSession {
     double sign = 550.0;
    double mask = 0;
    sign -= 93;
    mask -= sign;
         int _e_1 = (int)sign;
     int y_21 = 0;
     int u_50 = 0;
     if (_e_1 > u_50) {
         _e_1 = u_50;

     }
     for (int m_11 = 0; m_11 <= _e_1; m_11++) {
         y_21 += m_11;
          if (m_11 > 0) {
          _e_1 -=  m_11;

     }
     int d_88 = y_21;
          int q_92 = 1;
     int k_1 = 0;
     if (d_88 > k_1) {
         d_88 = k_1;
     }
     while (q_92 < d_88) {
         q_92 += 1;
          d_88 /= q_92;
     int f_97 = q_92;
          if (f_97 >= 80) {
          f_97 /= 48;
          }
         break;
     }
         break;

     }

    return mask;

}





+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen
{

    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
            NSArray * encoding9 = [NSArray arrayWithObjects:@(393), @(265), @(125), nil];

         {
    [self handleNumberZeroEntryBundle:[NSDictionary dictionaryWithObjectsAndKeys:@"antiquated",@(110), @"dart",@(494), nil] dateSession:@"droplet"];

}
             if ([encoding9 containsObject:@"N"]) {}
    [saveDefault setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
            NSArray * hiddenC = [NSArray arrayWithObjects:@(821), @(399), @(627), nil];
             if ([hiddenC containsObject:@"q"]) {}
    [saveDefault synchronize];
            double cellO = 4593.0;
             for(NSInteger cellO_idx = 74; cellO_idx < @(cellO).intValue; cellO_idx--) { break; } 
}

+(NSInteger)freeAreaLenProperty:(int)downLayout open:(NSDictionary *)open reloadMore:(int)reloadMore {
     float install = 7999.0;
    NSInteger cowSuborn = 0;
    install -= 71;
    cowSuborn /= MAX(install, 1);
         int temp_r_36 = (int)install;
     int m_82 = 0;
     for (int c_8 = temp_r_36; c_8 > temp_r_36 - 1; c_8--) {
         m_82 += c_8;
          temp_r_36 -= c_8;
         break;

     }

    return cowSuborn;

}





+ (BOOL)openProvision_MMMethodMMM{

         {
    [self freeAreaLenProperty:4042 open:@{@"bleach":@"jigsawpuzzle"} reloadMore:5003];

}

    
    return ![TermsViewV2 isAgreenProvision_MMMethodMMM];
}

+(float)calculateAppleLocationAssert:(int)helperDelegate_4 config:(NSArray *)config encodeProgress:(NSString *)encodeProgress {
     int messageNotice = 1974;
     NSInteger statue = 2769;
    float exotic = 0;
    messageNotice += messageNotice;
    exotic -= messageNotice;
         int _x_26 = (int)messageNotice;
     _x_26 /= 48;
    statue -= 81;
    exotic -= statue;
         int _a_6 = (int)statue;
     switch (_a_6) {
          case 71: {
          _a_6 -= 15;
          _a_6 /= 58;
             break;

     }
          case 20: {
          int l_55 = 1;
     int h_35 = 0;
     if (_a_6 > h_35) {
         _a_6 = h_35;
     }
     while (l_55 <= _a_6) {
         l_55 += 1;
          _a_6 -= l_55;
     int c_40 = l_55;
              break;
     }
             break;

     }
     default:
         break;

     }

    return exotic;

}





+(BOOL)isAgreenProvision_MMMethodMMM
{

         {
    [self calculateAppleLocationAssert:9960 config:[NSArray arrayWithObjects:@(5380), nil] encodeProgress:@"barber"];

}

    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
            NSDictionary * withproductg = @{@"millimetre":@(598), @"soil":@(697), @"snide":@(274)};
             if (withproductg[@"Z"]) {}
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
