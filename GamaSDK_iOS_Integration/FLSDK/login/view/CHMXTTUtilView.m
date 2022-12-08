
#import "CHMXTTUtilView.h"
#import "SdkHeader.h"
#import "CHMXTTStringView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTApplePrivateButton.h"

#import <AuthenticationServices/AuthenticationServices.h>

@implementation CHMXTTUtilView{
    CHMXTTStringView *mLoginTitleView;
    UIView *appleBindView;
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        UIColor *rror = [UIColor colorWithHexString_MMMethodMMM:ContentViewBgColor];
            NSArray * webC = [NSArray arrayWithObjects:@(925), @(487), nil];
             while (webC.count > 40) { break; }
        self.backgroundColor = rror;
            int gestureD = 6821;
             if (@(gestureD).longLongValue <= 91) {}
        self.layer.cornerRadius = 10; 
        
        
        self.layer.masksToBounds = YES; 
        
        
        mLoginTitleView = [[CHMXTTStringView alloc] initViewWithTitle_MMMethodMMM:wwwww_tag_wwwww_sureenne_terless hander_MMMethodMMM:^(NSInteger) {
            
        }];
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(32));
            NSString * paget = @"plume";
             if (paget.length > 138) {}
            make.centerX.mas_equalTo(self);
            NSString * helperH = @"pillar";
             if ([helperH isEqualToString:@"A"]) {}
            make.width.mas_equalTo(self).mas_offset(-VW(55));
            NSArray * statueY = @[@(375), @(822), @(509)];
             while (statueY.count > 136) { break; }
            make.height.mas_equalTo(VH(56));
            NSString * edita = @"irreparable";
        }];
        
        
        UIView *cellBtn = [[CHMXTTApplePrivateButton alloc] initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST) tag_MMMethodMMM:kBindGuestActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
           
        [self addSubview:cellBtn];
        
        [cellBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            NSArray * httpy = @[[NSArray arrayWithObjects:@"chemistry", @"instruction", nil]];
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(40));
            make.height.mas_equalTo(VH(70));
            NSDictionary * thirdw = [NSDictionary dictionaryWithObjectsAndKeys:@"makeshift",@(221), @"comely",@(165), nil];
            make.width.mas_equalTo(mLoginTitleView);
            NSInteger pageK = 4562;
             if (@(pageK).intValue >= 185) {}
        }];
        
        
              UIView *phoneBtn = [[CHMXTTApplePrivateButton alloc] initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB) tag_MMMethodMMM:kBindFBActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            Boolean wrapper2 = NO;
             if (!wrapper2) { __asm__("NOP"); }
              [self addSubview:phoneBtn];
              
              [phoneBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                  make.centerX.equalTo(self);
            NSArray * post8 = @[@[@(8050.0)]];
                  make.top.equalTo(cellBtn.mas_bottom).mas_offset(20);
                  make.width.mas_equalTo(cellBtn);
            double main_cq = 5837.0;
             for(NSInteger main_cq_idx = 45; main_cq_idx < @(main_cq).intValue; main_cq_idx--) { break; } 
                  make.height.mas_equalTo(cellBtn);
            NSDictionary * boardj = @{@"tieup":@(833), @"minion":@(119)};
             while (boardj.count > 102) { break; }
              }];
              
        
        
        if (@available(iOS 13.0, *)) {
            
            appleBindView = [[UIView alloc] init];
            NSDictionary * accont0 = @{@"intent":@(217), @"aver":@(954), @"forum":@(678)};
             if (accont0[@"s"]) {}
            appleBindView.layer.cornerRadius = 4;
            double readl = 9963.0;
             if (@(readl).longLongValue <= 134) {}
            appleBindView.tag = kBindAppleActTag;
            double report7 = 804.0;
             if (@(report7).doubleValue > 143) {}
            appleBindView.backgroundColor = [UIColor blackColor];
            
            appleBindView.userInteractionEnabled = YES; 
            UITapGestureRecognizer *state = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(appleViewTapped_MMMethodMMM:)];
            NSString * f_title5 = @"excoriate";
             if (f_title5.length > 10) {}
            [appleBindView addGestureRecognizer:state];
            
            [self addSubview:appleBindView];
            [appleBindView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self);
            Boolean success3 = NO;
             while (success3) { __asm__("NOP"); break; }
                make.top.equalTo(phoneBtn.mas_bottom).mas_offset(20);
                make.width.mas_equalTo(cellBtn);
            Boolean logoutR = YES;
                make.height.mas_equalTo(cellBtn);
            float fieldx = 2379.0;
             if (@(fieldx).integerValue > 151) {}
            }];

               ASAuthorizationAppleIDButton *lineBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                         authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
            
            [lineBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
            NSInteger normalr = 9177;
             for(NSInteger normalr_idx = 17; normalr_idx < @(normalr).intValue; normalr_idx -= 3) { break; } 
            lineBtn.tag = kBindAppleActTag;
            NSArray * queryZ = @[@(122), @(846)];
             if ([queryZ containsObject:@"k"]) {}
            [appleBindView addSubview:lineBtn];
               
                   [lineBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                       make.top.mas_equalTo(appleBindView);
            float plist1 = 4501.0;
             if (@(plist1).doubleValue >= 77) {}
                       make.leading.mas_equalTo(appleBindView).mas_offset(VW(30));
            NSString * buttonU = @"void";
             if (buttonU.length > 43) {}
                       make.height.mas_equalTo(cellBtn);
            NSDictionary * useri = [NSDictionary dictionaryWithObjectsAndKeys:@"march",@(4950.0), nil];
             if (useri[@"i"]) {}
                       make.width.mas_equalTo(cellBtn.mas_height);
            int eventb = 2263;
             if (@(eventb).floatValue > 16) {}
                   }];
            
            UILabel *filed = [[UILabel alloc] init];
            NSString * infoh = @"extant";
             while (infoh.length > 157) { break; }
           filed.text = wwwww_tag_wwwww_plasative_comdebateatic;
           filed.font = [UIFont systemFontOfSize:VH(32)];
            NSDictionary * areaB = [NSDictionary dictionaryWithObjectsAndKeys:@"mulct",@(921), @"greengrocer",@(262), nil];
             if (areaB[@"q"]) {}
           filed.textAlignment = NSTextAlignmentCenter;
            NSDictionary * start7 = [NSDictionary dictionaryWithObjectsAndKeys:@"daunt",@(27), nil];
           filed.backgroundColor = [UIColor clearColor];
            NSInteger engineH = 4333;
             if (@(engineH).intValue > 123) {}
            filed.numberOfLines = 1;
            float finishB = 6887.0;
             if (@(finishB).longValue > 131) {}
           filed.textColor = [UIColor whiteColor];
            double vip_ = 3549.0;
             while (@(vip_).intValue > 141) { break; }
            filed.adjustsFontSizeToFitWidth = YES;
            float animationl = 2071.0;
             if (@(animationl).integerValue >= 169) {}
            [appleBindView addSubview:filed];
            [filed mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(appleBindView);
            NSDictionary * regularh = @{@"enamel":@(168)};
             if (regularh[@"i"]) {}
                make.bottom.mas_equalTo(appleBindView);
                
                
                make.leading.mas_equalTo(lineBtn.mas_trailing);
            double finishg = 1703.0;
             for(int finishg_idx = 83; finishg_idx < @(finishg).intValue; finishg_idx--) { break; } 
                make.trailing.mas_equalTo(appleBindView);
            NSArray * agreenl = @[@(787), @(616)];
             if (agreenl.count > 193) {}
            }];
            
           } else {
               
           }
      
        
    }
    return self;
}

-(NSDictionary *)iconRegistVerficationMessage:(NSDictionary *)btn seed:(long)seed {
    NSMutableDictionary * aversion = [NSMutableDictionary dictionaryWithObject:@(432)forKey:@"recession"];

    return aversion;

}






- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{

         {
NSDictionary * aggrievedSword = [self iconRegistVerficationMessage:@{@"beginning":@(41), @"opposite":@(604)} seed:1927];

      [aggrievedSword enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
          if ([key isEqualToString:@"service"]) {
              NSLog(@"value: %@", obj);
          }else {
              NSLog(@"key: %@, value: %@", key, obj);
          }
      }];
      int aggrievedSword_len = aggrievedSword.count;
     int _b_53 = (int)aggrievedSword_len;
     int n_39 = 0;
     for (int x_100 = _b_53; x_100 > _b_53 - 1; x_100--) {
         n_39 += x_100;
     int n_90 = n_39;
          if (n_90 <= 594) {
          n_90 += 1;
     }
         break;

     }


}

        switch (sender.tag) {
            case kBindAppleActTag:
            {
                SDK_LOG(wwwww_tag_wwwww_kBindAppleActTag);
                if (@available(iOS 13, *)) {
                                
                  }else{
                     [CHMXTTPrivateOrder showAlertWithMessage_MMMethodMMM:GetString(wwwww_tag_wwwww_GAMA_APPLE_SYSTEM_OLD_WARNING)];
        {
            int paramS = 1078;
             while (@(paramS).doubleValue == 133) { break; }
        }
                      return;
                  }
            }
                
                break;
    
            case kBindFBActTag:
                SDK_LOG(wwwww_tag_wwwww_kBindFBActTag);
        {
            NSString * passwordA = @"notwithstanding";
        }
            break;
    
            case kBindAccountActTag:
                SDK_LOG(wwwww_tag_wwwww_kBindGuestActTag);
        {
            double keychaina = 9157.0;
             if (@(keychaina).longValue == 86) {}
        }
            break;
    
            default:
                break;
        }
    
    
    if (self.delegate) {
        [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) from_MMMethodMMM:(CURRENT_PAGE_TYPE_SELECT_BIND_TYPE) param_MMMethodMMM:@(sender.tag)];
    }
}




-(void)appleViewTapped_MMMethodMMM:(UITapGestureRecognizer*)tapGr
{

    SDK_LOG(wwwww_tag_wwwww_appleViewTapped);
    UIButton *valueButton = [[UIButton alloc] init];
            NSArray * disappear8 = [NSArray arrayWithObjects:@(886), @(657), @(970), nil];
             if (disappear8.count > 141) {}
    valueButton.tag = kBindAppleActTag;
    [self registerViewBtnAction_MMMethodMMM:valueButton];
            Boolean pathe = NO;
             if (!pathe) { __asm__("NOP"); }
}
@end
