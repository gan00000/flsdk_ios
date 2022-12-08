
#import "CHMXTTApplePrivateButton.h"
#import "Masonry.h"
#import "CHMXTTLoginChange.h"
#import "SdkHeader.h"
#import "CHMXTTRegister.h"


@implementation CHMXTTApplePrivateButton




- (instancetype)initBtnViewWithType_MMMethodMMM:(SDK_ICON_TITLE_BUTTON_TYPE)type tag_MMMethodMMM:(NSUInteger)tag selector:(SEL)selector target_MMMethodMMM:(id)target
{
   self.item_Array = @[@"flatterer", @"insolent"];

   self.handerCount = 4089;

   self.erviceAccessSecurityStr = @"flavor";

   self.findLableMainArr = @[@(NO)];

    self = [super init];
    if (self) {
        if(type == SDK_ICON_TITLE_BUTTON_TYPE_FB || type == SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB)
        {
            
            self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_fb_bg_png).CGImage);
        }else{
             self.layer.contents = (id)(GetImage(wwwww_tag_wwwww_sdk_btn_bg_png).CGImage);
        }
        self.layer.cornerRadius = kR2BtnCornerRadius;
        
        NSString *time_yo = wwwww_tag_wwwww_fl_logo_png;
        {
            NSString * phoneN = @"spatial";
        }
        NSString *selectY = wwwww_tag_wwwww_today_fiveess;
        
        switch (type) {
            case SDK_ICON_TITLE_BUTTON_TYPE_FB:
                time_yo = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
        {
            NSString * r_centerV = @"drip";
             while (r_centerV.length > 83) { break; }
        }
                selectY = @"Sign in with Facebook";
        {
            NSString * common3 = @"disbarment";
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_APPLE:
                
                time_yo = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
        {
            NSDictionary * editM = [NSDictionary dictionaryWithObjectsAndKeys:@"wear",@(934), nil];
        }
                selectY = @"Sign in with Apple";
                
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_GEUST:
                time_yo = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
        {
            Boolean lineD = YES;
        }
                selectY = wwwww_tag_wwwww_betteritive_exampleage;
        {
            NSArray * idfaR = [NSArray arrayWithObjects:@(932), @(408), nil];
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_ACCOUNT:
                time_yo = wwwww_tag_wwwww_fl_logo_png;
        {
            NSInteger beginW = 4893;
             while (@(beginW).floatValue == 37) { break; }
        }
                selectY = wwwww_tag_wwwww_today_fiveess;
        {
            Boolean n_titleG = NO;
        }
                break;
                
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB:
                time_yo = wwwww_tag_wwwww_sdk_btn_icon_fb_png;
        {
            NSDictionary * firebaseU = @{@"apex":[NSArray arrayWithObjects:@(302), @(803), @(843), nil]};
             while (firebaseU.count > 109) { break; }
        }
                selectY = wwwww_tag_wwwww_ichthyshootness_stear;
        {
            NSDictionary * pinitializeH = @{@"fractional":@(259), @"impurity":@(989), @"reply":@(300)};
             if (pinitializeH.count > 143) {}
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST:
                time_yo = wwwww_tag_wwwww_sdk_btn_icon_guest_png;
        {
            NSArray * bolckN = @[@(740), @(0)];
             while (bolckN.count > 196) { break; }
        }
                selectY = wwwww_tag_wwwww_battbetter_aloneics;
        {
            int closep = 3631;
             if (@(closep).intValue == 92) {}
        }
                break;
            case SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE:
                time_yo = wwwww_tag_wwwww_sdk_btn_icon_apple_png;
        {
            NSInteger clientB = 4220;
             for(int clientB_idx = 0; clientB_idx < @(clientB).intValue; clientB_idx++) { break; } 
        }
                selectY = wwwww_tag_wwwww_plasative_comdebateatic;
        {
            double securityX = 1271.0;
             while (@(securityX).doubleValue < 108) { break; }
        }
                break;
                
                default:
                break;
        }
        
        UIImageView *pesentingView = [[UIImageView alloc] initWithImage:GetImage(time_yo)];
        {
            NSString * debug0 = @"chaste";
             while (debug0.length > 89) { break; }
        }
        pesentingView.contentMode = UIViewContentModeScaleAspectFit;
        {
            NSString * closei = @"subvert";
             if (closei.length > 148) {}
        }
        [self addSubview:pesentingView];
        [pesentingView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
        {
        }
            make.bottom.equalTo(self).mas_offset(-4);
        {
            NSArray * fetchX = [NSArray arrayWithObjects:[NSArray arrayWithObjects:@(NO), nil], nil];
             while (fetchX.count > 39) { break; }
        }
            make.width.mas_equalTo(self.mas_height);
        {
            Boolean commonw = NO;
             while (commonw) { __asm__("NOP"); break; }
        }
            make.leading.mas_equalTo(self).mas_offset(VW(30));
        {
            NSString * b_managerB = @"present";
             if (b_managerB.length > 67) {}
        }
        }];
        
        UILabel *filed = [[UILabel alloc] init];
        {
            NSString * rrord = @"clot";
             if ([rrord isEqualToString:@"3"]) {}
        }
        filed.text = selectY;
        filed.font = [UIFont boldSystemFontOfSize:VH(32)];
        {
            float timerf = 3208.0;
             while (@(timerf).doubleValue <= 13) { break; }
        }
        filed.textAlignment = NSTextAlignmentCenter;
        {
            NSDictionary * auto_jp = [NSDictionary dictionaryWithObjectsAndKeys:@"digest",@[@(881), @(32), @(556)], nil];
        }
        filed.backgroundColor = [UIColor clearColor];
        {
            NSArray * layout2 = [NSArray arrayWithObjects:@(573), @(388), @(174), nil];
        }
        filed.numberOfLines = 1;
        {
            float paramsH = 4112.0;
             if (@(paramsH).longValue == 54) {}
        }
        filed.textColor = [UIColor whiteColor];
        
        [self addSubview:filed];
        [filed mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).mas_offset(4);
        {
            NSString * touchz = @"desiccant";
             while (touchz.length > 61) { break; }
        }
            make.bottom.equalTo(self).mas_offset(-4);
        {
            NSDictionary * accessF = [NSDictionary dictionaryWithObjectsAndKeys:@"lake",@"bowling", nil];
             while (accessF.count > 53) { break; }
        }
            make.leading.mas_equalTo(pesentingView.mas_trailing);
        {
            float loging = 2910.0;
             if (@(loging).integerValue == 30) {}
        }
            make.trailing.mas_equalTo(self);
        {
            NSArray * selectd = [NSArray arrayWithObjects:@(136), @(673), @(460), nil];
             if (selectd.count > 146) {}
        }
        }];
              
        
        UIButton *codesButton = [CHMXTTLoginChange initBtnWithTitleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:nil tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
        {
        }
        codesButton.backgroundColor = [UIColor clearColor];
        {
            int rrorx = 1960;
             if (@(rrorx).longValue >= 35) {}
        }
        [self addSubview:codesButton];
          
          [codesButton mas_makeConstraints:^(MASConstraintMaker *make) {
              make.size.mas_equalTo(self);
        {
            NSArray * type_8da = [NSArray arrayWithObjects:@(274), @(605), @(968), nil];
             while (type_8da.count > 25) { break; }
        }
              make.center.mas_equalTo(self);
        {
            NSDictionary * http7 = [NSDictionary dictionaryWithObjectsAndKeys:@"checkup",@(341), @"gallop",@(417), @"bean",@(854), nil];
        }
          }];
        
        
    }
    return self;
}


@end
