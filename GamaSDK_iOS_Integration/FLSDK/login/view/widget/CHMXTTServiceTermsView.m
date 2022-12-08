
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTLoginChange.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation CHMXTTServiceTermsView
{
    UITextField *mUITextField;
    UIButton *eyeBtn;
}



- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type
{
   self.parse_size = 4396.0;

   self.fire_tag = 4350;

   self.termEfaultRameworkArr = [NSArray arrayWithObjects:@(9075.0), nil];

   self.callMark = 6799;

    self = [super init];
    if (self) {
        if (is_Version2) {
            
            [self addContentView_v2_MMMethodMMM:type];
        }else{
            [self addContentView_MMMethodMMM:type];
        }
        
    }
    return self;
}

-(long)parseSessonYourselfenneVfcode:(NSArray *)register_f9Code {
     double serviceBoard = 4931.0;
    long gorgeous = 0;
    serviceBoard /= 42;
    gorgeous /= MAX(serviceBoard, 1);
         int _l_67 = (int)serviceBoard;
     _l_67 -= 19;

    return gorgeous;

}






- (void)eyeViewBtnAction_MMMethodMMM:(UIButton *)sender
{

    
    if (sender.selected) { 
        
        NSString *datas = mUITextField.text;
            NSArray * workV = [NSArray arrayWithObjects:@(125), @(858), nil];

         {
long incognito = [self parseSessonYourselfenneVfcode:[NSArray arrayWithObjects:@(253), @(564), nil]];

      NSLog(@"%ld",incognito);
     int _k_20 = (int)incognito;
     _k_20 /= 71;


}
             if ([workV containsObject:@"V"]) {}
        mUITextField.text = @""; 
        mUITextField.secureTextEntry = NO;
            NSDictionary * fromq = [NSDictionary dictionaryWithObjectsAndKeys:@"award",@(284), @"simulation",@(408), @"woodpecker",@(551), nil];
             while (fromq.count > 110) { break; }
        mUITextField.text = datas;
        
    } else { 
        
        NSString *datas = mUITextField.text;
            double drawX = 4173.0;
             if (@(drawX).integerValue > 142) {}
        mUITextField.text = @"";
            NSString * handerd = @"generation";
             while (handerd.length > 200) { break; }
        mUITextField.secureTextEntry = YES;
            int gesture8 = 5597;
             if (@(gesture8).floatValue == 81) {}
        mUITextField.text = datas;
    }
    
    sender.selected = !sender.selected;
            NSDictionary * sessionq = [NSDictionary dictionaryWithObjectsAndKeys:@"expedite",@(925), nil];
             if (sessionq.count > 72) {}
}

-(NSString *)secondSecUpload:(double)long_4x {
     long method_pfHelper = 5579;
    NSMutableString *dumping = [NSMutableString string];
         int tmp_n_15 = (int)method_pfHelper;
     if (tmp_n_15 < 10) {
          if (tmp_n_15 == 642) {
          }
     }

    return dumping;

}






- (void) addContentView_MMMethodMMM:(SDKTextFiledView_Type) type
{

    
    
    
    
    NSString *iconName;
    NSString *lableName;
    BOOL showEye = NO;

         {
NSString * discretion = [self secondSecUpload:7475.0];

      if ([discretion isEqualToString:@"response"]) {
              NSLog(@"%@",discretion);
      }
      int discretion_len = discretion.length;
     int _q_80 = (int)discretion_len;
     _q_80 /= 6;


}
    BOOL addMoreAccountBtn = NO;
    UIKeyboardType mUIKeyboardType = UIKeyboardTypeDefault;
    NSString *placeholderText = @"";
    BOOL showLableIcon = YES;
    
    switch (type) {
        case SDKTextFiledView_Type_VfCode:
            iconName = wwwww_tag_wwwww_fl_sdk_dx_png;
            lableName = wwwww_tag_wwwww_soonoon_teleoator;
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = wwwww_tag_wwwww_corticoaster_numberature;
            showLableIcon = NO;
            break;
            
        case SDKTextFiledView_Type_Account:
            iconName = mw_account_icon;
            lableName = wwwww_tag_wwwww_broncheer_whitester;
            placeholderText = wwwww_tag_wwwww_oursure_pleging;
            addMoreAccountBtn = YES;
            break;
            
        case SDKTextFiledView_Type_Password:
            
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_almostive_penotic;
            placeholderText = @"請輸入6-20字元";
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_Again:
            
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_almostive_penotic;
            placeholderText = wwwww_tag_wwwww_zyment_gamid;
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_New:
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_scientist_misceair;
            placeholderText = wwwww_tag_wwwww_scientist_misceair;
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = mw_passowrd_icon;
            lableName = wwwww_tag_wwwww_fontmentionry_labor;
            placeholderText = wwwww_tag_wwwww_fontmentionry_labor;
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    self.lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    self.lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView];
    [self.lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading);
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));
        make.width.mas_equalTo(self.lableIconImageView.mas_height);
    }];
    
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(self.lableIconImageView.mas_trailing).mas_offset(VW(8));
        make.centerY.mas_equalTo(self);
        
        make.height.mas_equalTo(VH(14));
        
    }];
    
    
    int trailing_offset = -10;
    if (addMoreAccountBtn || showEye) {
        trailing_offset = -VW(30);
    }
    
    mUITextField = [[UITextField alloc] init];
    self.inputUITextField = mUITextField;
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
    }
    mUITextField.textColor = [UIColor whiteColor];
    
    mUITextField.font = [UIFont systemFontOfSize:FS(14)];
    
    if (SDK_DATA.mUITextFieldDelegate) {
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate;
    }
    
    
    
    
    
    
    int placeHolderTextSize = FS(14);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484]}];
    mUITextField.attributedPlaceholder = attrStr;
    
    
    [self addSubview:mUITextField];
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lineView1.mas_trailing).mas_offset(VW(8));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(trailing_offset);
        
    }];
    
    if (addMoreAccountBtn) {
        
        self.moreAccountBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];
        
        self.moreAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.moreAccountBtn];
        [self.moreAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));;
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
        
    }
    
    
    
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        eyeBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        eyeBtn.selected = YES;
        mUITextField.secureTextEntry = YES;
        
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-8));
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
           
        }];
    }
    
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.leading.trailing.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        
        make.height.mas_equalTo(1);
        
    }];
    
    if (!showLableIcon) {
        self.lableIconImageView.hidden = YES;
        lineView1.hidden = YES;
        lineView2.hidden = YES;
    }
    
    if (self.inputUITextField) {
        [self.inputUITextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
    
}

- (void) addContentView_v2_MMMethodMMM:(SDKTextFiledView_Type) type
{

    
    
    self.layer.cornerRadius = VH(20);
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    
    NSString *iconName;
    BOOL showEye = NO;
    BOOL addMoreAccountBtn = NO;
    UIKeyboardType mUIKeyboardType = UIKeyboardTypeDefault;
    NSString *placeholderText = @"";
    BOOL showLableIcon = YES;
    
    switch (type) {
        case SDKTextFiledView_Type_VfCode:
            iconName = wwwww_tag_wwwww_fl_sdk_dx_png;
            
            mUIKeyboardType = UIKeyboardTypeNumberPad;
            placeholderText = wwwww_tag_wwwww_py_msg_vfcode_hint.localx;
            showLableIcon = NO;
            break;
            
        case SDKTextFiledView_Type_Account:
            iconName = mw_account_icon;
            
            placeholderText = wwwww_tag_wwwww_py_register_account_hit.localx;
            addMoreAccountBtn = YES;
            break;
            
        case SDKTextFiledView_Type_Password:
            
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_py_register_password_hit.localx;
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_Again:
            
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_text_input_new_pwd_confire.localx;
            showEye = YES;
            break;
            
        case SDKTextFiledView_Type_Password_New:
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_text_input_new_pwd.localx;
            showEye = YES;
            break;
        case SDKTextFiledView_Type_Password_Old:
            iconName = mw_passowrd_icon;
            
            placeholderText = wwwww_tag_wwwww_py_input_old_password.localx;
            showEye = YES;
            break;
            
        default:
            break;
    }
    
    self.lableIconImageView = [[UIImageView alloc] initWithImage:[UIImage res_imageNamed_MMMethodMMM:iconName]];
    self.lableIconImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.lableIconImageView];
    [self.lableIconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.mas_leading).mas_offset(VW(18));
        make.centerY.mas_equalTo(self);
        make.height.mas_equalTo(VH(21));
        make.width.mas_equalTo(self.lableIconImageView.mas_height);
    }];
    
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(self.lableIconImageView.mas_trailing).mas_offset(VW(8));
        make.centerY.mas_equalTo(self);
        
        make.height.mas_equalTo(VH(14));
        
    }];
    
    
    int trailing_offset = -10;
    if (addMoreAccountBtn || showEye) {
        trailing_offset = -VW(30);
    }
    
    mUITextField = [[UITextField alloc] init];
    self.inputUITextField = mUITextField;
    if (mUIKeyboardType) {
        [mUITextField setKeyboardType:mUIKeyboardType];
    }
    mUITextField.textColor = [UIColor whiteColor];
    
    mUITextField.font = [UIFont systemFontOfSize:FS(14)];
    
    if (SDK_DATA.mUITextFieldDelegate) {
        mUITextField.delegate = SDK_DATA.mUITextFieldDelegate;
    }
    
    
    
    
    
    
    int placeHolderTextSize = FS(14);
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholderText
                                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:placeHolderTextSize],NSForegroundColorAttributeName: [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484]}];
    mUITextField.attributedPlaceholder = attrStr;
    
    
    [self addSubview:mUITextField];
    [mUITextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(lineView1.mas_trailing).mas_offset(VW(8));
        make.top.mas_equalTo(self).offset(2);
        make.bottom.mas_equalTo(self).offset(-2);
        make.trailing.mas_equalTo(self.mas_trailing).mas_offset(trailing_offset);
        
    }];
    
    if (addMoreAccountBtn) {
        
        self.moreAccountBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:sdk_list_down highlightedImage_MMMethodMMM:sdk_list_down selectedImageName_MMMethodMMM:sdk_list_up tag_MMMethodMMM:kMoreAccountListActTag selector:@selector(clickItemBtn_MMMethodMMM:) target_MMMethodMMM:self];
        
        self.moreAccountBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:self.moreAccountBtn];
        [self.moreAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-15));;
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
        }];
        
    }
    
    
    
    if (showEye) {
        mUITextField.secureTextEntry = NO;
        eyeBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:fl_sdk_ky highlightedImage_MMMethodMMM:fl_sdk_ky selectedImageName_MMMethodMMM:fl_sdk_by tag_MMMethodMMM:22 selector:@selector(eyeViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        eyeBtn.selected = YES;
        mUITextField.secureTextEntry = YES;
        
        eyeBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:eyeBtn];
        [eyeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.trailing.mas_equalTo(self).mas_offset(VW(-15));
            make.centerY.mas_equalTo(self);
            
            make.height.mas_equalTo(self.mas_height);
            make.width.mas_equalTo(VW(17));
           
        }];
    }
    
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.hidden = YES;
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [self addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.leading.trailing.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        
        make.height.mas_equalTo(1);
        
    }];
    
    if (!showLableIcon) {
        self.lableIconImageView.hidden = YES;
        lineView1.hidden = YES;
        lineView2.hidden = YES;
    }
    
    if (self.inputUITextField) {
        [self.inputUITextField addTarget:self action:@selector(textChanged_MMMethodMMM:) forControlEvents:(UIControlEventEditingChanged)];
    }
    
}

-(UIButton *)removeZymentSaveNonnullNeededSheetButton:(NSArray *)macaddressParent key:(NSDictionary *)key {
     double supported = 1670.0;
     double existingWrite = 2332.0;
     NSDictionary * codesDelegate_80 = @{@"1":@"s", @"U":@"L"};
    UIButton * torporTycoon = [[UIButton alloc] init];
         int temp_a_74 = (int)supported;
     int p_84 = 1;
     int n_10 = 1;
     if (temp_a_74 > n_10) {
         temp_a_74 = n_10;
     }
     while (p_84 < temp_a_74) {
         p_84 += 1;
          temp_a_74 += p_84;
         break;
     }
         int q_30 = (int)existingWrite;
     q_30 += 63;
    torporTycoon.frame = CGRectMake(262, 252, 0, 0);
    torporTycoon.alpha = 0.3;
    torporTycoon.backgroundColor = [UIColor colorWithRed:200 / 255.0 green:244 / 255.0 blue:118 / 255.0 alpha:0.2];

    
    CGRect torporTycoonFrame = torporTycoon.frame;
    torporTycoonFrame.size = CGSizeMake(285, 236);
    torporTycoon.frame = torporTycoonFrame;
    if (torporTycoon.isHidden) {
         torporTycoon.hidden = false;
    }
    if (torporTycoon.alpha > 0.0) {
         torporTycoon.alpha = 0.0;
    }
    if (!torporTycoon.isUserInteractionEnabled) {
         torporTycoon.userInteractionEnabled = true;
    }

    return torporTycoon;

}






- (void)clickItemBtn_MMMethodMMM:(UIButton *)sender
{

         {
UIButton * ignoramus = [self removeZymentSaveNonnullNeededSheetButton:@[@(988), @(39), @(361)] key:@{@"detergent":@(YES)}];

      int ignoramus_tag = ignoramus.tag;
     int tmp_c_43 = (int)ignoramus_tag;
     int j_44 = 0;
     for (int o_11 = tmp_c_43; o_11 >= tmp_c_43 - 1; o_11--) {
         j_44 += o_11;
     int x_0 = j_44;
          int e_64 = 1;
     int a_8 = 1;
     if (x_0 > a_8) {
         x_0 = a_8;
     }
     while (e_64 < x_0) {
         e_64 += 1;
     int c_10 = e_64;
              break;
     }
         break;

     }
      [self addSubview: ignoramus];


}

    if (self.clickAccountListItem) {
        self.clickAccountListItem(sender.tag);
    }
}

-(double)hasEffortfoldFirstInformationSaving:(double)dealloc_ebSocial autorotateSeries:(NSDictionary *)autorotateSeries animation:(float)animation {
     double field = 6929.0;
    double license = 0;
    field /= MAX(field, 1);
    license -= field;
         int _w_84 = (int)field;
     _w_84 -= 47;

    return license;

}






- (void)textChanged_MMMethodMMM:(UITextField *)sender
{

    SDK_LOG(@"textChanged=>%@",sender.text);
    
    if (sender.text && [sender.text containsString:@" "]) {
        NSString *decrypt = [sender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
            double responceL = 6677.0;

         {
double denominationPossibly = [self hasEffortfoldFirstInformationSaving:7447.0 autorotateSeries:@{@"tailor":@(947), @"pastry":@(859), @"totem":@(778)} animation:1336.0];

     int tmp_i_46 = (int)denominationPossibly;
     int u_2 = 0;
     for (int n_43 = tmp_i_46; n_43 > tmp_i_46 - 1; n_43--) {
         u_2 += n_43;
          if (n_43 > 0) {
          tmp_i_46 +=  n_43;

     }
     int d_31 = u_2;
          int p_26 = 0;
     int l_23 = 0;
     if (d_31 > l_23) {
         d_31 = l_23;

     }
     for (int f_38 = 0; f_38 <= d_31; f_38++) {
         p_26 += f_38;
          if (f_38 > 0) {
          d_31 -=  f_38;

     }
          d_31 += 46;
         break;

     }
         break;

     }
      if (denominationPossibly < 61) {
             NSLog(@"%f",denominationPossibly);
      }


}
             if (@(responceL).longValue >= 67) {}
        self.inputUITextField.text = decrypt;
    }
    
    if (self.inputTextFieldChange) {
        self.inputTextFieldChange(self.inputUITextField.text,0,nil);
    }
    
}

-(NSString *)comThusenceAssociatedPort:(NSDictionary *)arac mode:(NSInteger)mode device:(NSDictionary *)device {
     long presentationWithproduct = 6377;
     double serviceHidden = 7139.0;
    NSString *englishEnshrine = [[NSString alloc] init];
         int temp_x_7 = (int)presentationWithproduct;
     int g_99 = 1;
     int b_86 = 1;
     if (temp_x_7 > b_86) {
         temp_x_7 = b_86;
     }
     while (g_99 <= temp_x_7) {
         g_99 += 1;
     int g_41 = g_99;
          int y_55 = 1;
     int j_23 = 1;
     if (g_41 > j_23) {
         g_41 = j_23;
     }
     while (y_55 < g_41) {
         y_55 += 1;
          g_41 -= y_55;
     int x_23 = y_55;
              break;
     }
         break;
     }
         int p_20 = (int)serviceHidden;
     if (p_20 <= 697) {
          int m_50 = 1;
     int i_45 = 1;
     if (p_20 > i_45) {
         p_20 = i_45;
     }
     while (m_50 <= p_20) {
         m_50 += 1;
          p_20 /= m_50;
     int b_19 = m_50;
              break;
     }
     }

    return englishEnshrine;

}






-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable{

         {
NSString * reversal = [self comThusenceAssociatedPort:[NSDictionary dictionaryWithObjectsAndKeys:@"jabber",@(53), nil] mode:5980 device:[NSDictionary dictionaryWithObjectsAndKeys:@"parchment",@(941), nil]];

      NSLog(@"%@",reversal);
      int reversal_len = reversal.length;
     int t_48 = (int)reversal_len;
     t_48 -= 94;


}

    
    eyeBtn.hidden = !enable;
            int filed3 = 676;
             while (@(filed3).integerValue > 112) { break; }
    mUITextField.enabled = enable;
    if (enable) {
        self.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_icon];
            NSDictionary * agreeT = @{@"invigorating":@(404), @"childish":@(478), @"define":@(448)};
        mUITextField.secureTextEntry = YES;
            NSString * appendT = @"arable";
        mUITextField.text = @"";
            float stringI = 4181.0;
             if (@(stringI).intValue >= 35) {}
        eyeBtn.selected = YES;
            NSString * currentq = @"cloth";
             if ([currentq isEqualToString:@"M"]) {}
        mUITextField.textColor = [UIColor whiteColor];
        
    }else{
        self.lableIconImageView.image = [UIImage res_imageNamed_MMMethodMMM:mw_passowrd_disable_icon];
            float bundlev = 9702.0;
             if (@(bundlev).intValue > 101) {}
        mUITextField.secureTextEntry = NO;
            NSDictionary * btn4 = @{@"influenza":@(632), @"dawdle":@(451)};
             while (btn4.count > 149) { break; }
        mUITextField.text = GetString(wwwww_tag_wwwww_text_free_register);
            NSDictionary * iconE = [NSDictionary dictionaryWithObjectsAndKeys:@"juncture",@(948), nil];
             if (iconE[@"6"]) {}
        mUITextField.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484];

        eyeBtn.selected = NO;
    }
    
}
@end
