
#import "SdkUtil.h"
#import "SdkHeader.h"
#import <Photos/Photos.h>
#import "SecurityUtil.h"
#import "TouchEventInterruptView.h"

#define GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY wwwww_tag_wwwww_GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY
#define GAMA_NOTE_SAVE_PHOTO wwwww_tag_wwwww_GAMA_NOTE_SAVE_PHOTO

#define kEncryKey wwwww_tag_wwwww_GAMAENKEY
#define kEncryIv  wwwww_tag_wwwww_GAMAENIV

#pragma mark - loading alert用到

#define FONT_Helvetica_BOLD      @"Helvetica-Bold"
#define FONT_Helvetica           wwwww_tag_wwwww_Helvetica
#define FONTSIZE(fontsize)  IS_IPAD ? fontsize+7.0f : fontsize


#define kLoadingTag     9999

#define titleMaxFontSize    17
#define titleMinFontSize    9

#define SDK_PHONE_AREA_CODE  wwwww_tag_wwwww_SDK_PHONE_AREA_CODE

@implementation SdkUtil


#pragma mark - UI

+(double)cancelFlyerAdjustsTerlessLableObject:(NSDictionary *)socialSubviews stop:(long)stop {
     double prefersAdapt = 1709.0;
    double smellDidacticIndividual = 0;
    prefersAdapt = 8219;
    smellDidacticIndividual += prefersAdapt;
         int temp_g_34 = (int)prefersAdapt;
     int z_64 = 0;
     int b_59 = 1;
     if (temp_g_34 > b_59) {
         temp_g_34 = b_59;

     }
     for (int q_38 = 1; q_38 < temp_g_34; q_38++) {
         z_64 += q_38;
          if (q_38 > 0) {
          temp_g_34 -=  q_38;

     }
     int y_0 = z_64;
          int k_84 = 1;
     int g_57 = 1;
     if (y_0 > g_57) {
         y_0 = g_57;
     }
     while (k_84 <= y_0) {
         k_84 += 1;
          y_0 -= k_84;
     int r_63 = k_84;
              break;
     }
         break;

     }

    return smellDidacticIndividual;

}






+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect_MMMethodMMM:(CGRect)rect
                                               urlStirng_MMMethodMMM:(NSString *)urlString
                                            cornerRadius_MMMethodMMM:(CGFloat)radius
                                                delegate:(id)delegate
{

    WKWebView *resultWebView;
            NSArray * editingB = @[@(0), @(957), @(449)];
    NSString *jScript = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
            double userdefaultb = 9345.0;

         {
    [self cancelFlyerAdjustsTerlessLableObject:[NSDictionary dictionaryWithObjectsAndKeys:@"unresponsive",@(699), @"thin",@(251), @"enthralling",@(843), nil] stop:5236];

}
             for(int userdefaultb_idx = 46; userdefaultb_idx < @(userdefaultb).intValue; userdefaultb_idx -= 8) { break; } 
    WKUserScript *wkUScript = [[WKUserScript alloc] initWithSource:jScript injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
            Boolean rateI = NO;
             if (rateI) { __asm__("NOP"); }
    WKUserContentController *wkUController = [[WKUserContentController alloc] init]; [wkUController addUserScript:wkUScript];
            NSArray * completerQ = @[@"bare", @"farreaching"];
             if ([completerQ containsObject:@"U"]) {}
    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
            NSArray * agreeJ = [NSArray arrayWithObjects:@"luxuriant", @"pout", nil];
    wkWebConfig.userContentController = wkUController;
            NSString * dimex = @"commemorate";
             while (dimex.length > 43) { break; }
    resultWebView = [[WKWebView alloc] initWithFrame:rect configuration:wkWebConfig];

    resultWebView.UIDelegate = delegate;

    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
            NSDictionary * portraitP = [NSDictionary dictionaryWithObjectsAndKeys:@"cannibal",@(101), @"quota",@(847), nil];
    [resultWebView loadRequest:request];
            double beginv = 4720.0;
             while (@(beginv).longValue <= 40) { break; }
    return resultWebView;
}

+(NSArray *)fractionArchiFunctionsPriority:(NSDictionary *)coreImage window_y:(NSInteger)window_y {
    NSMutableArray * ambulance = [NSMutableArray array];

    return ambulance;

}







+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label
{

         {
    [self fractionArchiFunctionsPriority:[NSDictionary dictionaryWithObjectsAndKeys:@"insomnia",@(8287), nil] window_y:1508];

}

    NSString *labelStr = label.text;
    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(1000, 1000)
                                              options:NSStringDrawingTruncatesLastVisibleLine
                                           attributes:@{NSFontAttributeName:label.font}
                                              context:nil].size;

    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

+(long)resetupLibHasPlegingPoint:(NSArray *)touch {
     double footButton = 2779.0;
    long allotmentGraftRestored = 0;
    footButton -= 19;
    allotmentGraftRestored -= footButton;
         int u_89 = (int)footButton;
     u_89 *= 35;

    return allotmentGraftRestored;

}





+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label andWidth_MMMethodMMM:(CGFloat)width
{

    NSString *labelStr = label.text;

    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];

         {
    [self resetupLibHasPlegingPoint:[NSArray arrayWithObjects:[NSDictionary dictionaryWithObjectsAndKeys:@"fusty",@(5935), nil], nil]];

}
            int backgroundJ = 8971;
             if (@(backgroundJ).floatValue == 88) {}
    style.lineBreakMode = NSLineBreakByWordWrapping;
            double commH = 4807.0;
             while (@(commH).longValue == 129) { break; }
    style.alignment = NSTextAlignmentLeft;


    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading 
                                            attributes:@{NSFontAttributeName:label.font,NSParagraphStyleAttributeName:style}
                                               context:nil].size;
    
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

#pragma mark - Tri String

+(NSArray *)acceptableRevenueCountryAnythingIdmd:(NSArray *)observerContent {
     long itemThird = 5352;
     double postParent = 4168.0;
    NSMutableArray * angelFume = [NSMutableArray array];
    itemThird = 6934;
    [angelFume addObject: @(itemThird)];
         int tmp_k_27 = (int)itemThird;
     int r_95 = 0;
     for (int i_55 = tmp_k_27; i_55 >= tmp_k_27 - 1; i_55--) {
         r_95 += i_55;
          if (i_55 > 0) {
          tmp_k_27 +=  i_55;

     }
     int h_81 = r_95;
          int k_55 = 0;
     int q_26 = 0;
     if (h_81 > q_26) {
         h_81 = q_26;

     }
     for (int m_79 = 0; m_79 < h_81; m_79++) {
         k_55 += m_79;
          if (m_79 > 0) {
          h_81 -=  m_79;

     }
              break;

     }
         break;

     }
    postParent -= itemThird;
    postParent /= MAX(postParent, 1);
    [angelFume addObject: @(postParent)];
         int _y_40 = (int)postParent;
     int k_47 = 0;
     for (int j_68 = _y_40; j_68 > _y_40 - 1; j_68--) {
         k_47 += j_68;
          if (j_68 > 0) {
          _y_40 +=  j_68;

     }
     int v_1 = k_47;
          if (v_1 <= 332) {
          v_1 -= 42;
          }
         break;

     }

    return angelFume;

}





+ (NSString *)triString_MMMethodMMM:(NSString *)aStr
{

         {
    [self acceptableRevenueCountryAnythingIdmd:[NSArray arrayWithObjects:@{@"g":@"X"}, nil]];

}

    return [aStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

#pragma mark - Text Rule

+(NSString *)observeWrappingAuthorizeResource:(float)make viewHandle:(NSString *)viewHandle formatBundle:(NSArray *)formatBundle {
     double sectionsClient = 8013.0;
    NSMutableString *insurgentDelicateFiling = [NSMutableString new];
         int tmp_b_6 = (int)sectionsClient;
     int m_53 = 1;
     int x_82 = 1;
     if (tmp_b_6 > x_82) {
         tmp_b_6 = x_82;
     }
     while (m_53 <= tmp_b_6) {
         m_53 += 1;
          tmp_b_6 -= m_53;
     int j_66 = m_53;
          if (j_66 <= 607) {
          j_66 /= 73;
          }
         break;
     }

    return insurgentDelicateFiling;

}




+ (BOOL)validUserName_MMMethodMMM:(NSString *)accountName
{

         {
    [self observeWrappingAuthorizeResource:3915.0 viewHandle:@"cash" formatBundle:@[@(902), @(367)]];

}

    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
            Boolean table3 = NO;
             while (!table3) { __asm__("NOP"); break; }
        return NO;
    }
    
    if (![accountName containsString:@"@"]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
            NSDictionary * existinga = [NSDictionary dictionaryWithObjectsAndKeys:@"not",@(398), @"video",@(958), nil];
        return NO;
    }
    return YES;
    
}

+(double)normalUtilIndexInfodic:(long)role {
     float homeRemove = 1547.0;
     NSInteger adaptIdfa = 545;
    double shatter = 0;
    homeRemove -= 16;
    shatter -= homeRemove;
         int _m_75 = (int)homeRemove;
     int b_7 = 0;
     for (int w_89 = _m_75; w_89 > _m_75 - 1; w_89--) {
         b_7 += w_89;
     int n_85 = b_7;
          int g_42 = 1;
     int o_57 = 1;
     if (n_85 > o_57) {
         n_85 = o_57;
     }
     while (g_42 <= n_85) {
         g_42 += 1;
     int w_1 = g_42;
              break;
     }
         break;

     }
    adaptIdfa = adaptIdfa;
    shatter -= adaptIdfa;
         int tmp_u_14 = (int)adaptIdfa;
     if (tmp_u_14 > 346) {
          tmp_u_14 /= 61;
          tmp_u_14 *= 5;
     }

    return shatter;

}





+ (BOOL)validPwd_MMMethodMMM:(NSString *)pwd
{

         {
    [self normalUtilIndexInfodic:4417];

}

    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
            NSString * rolel = @"flax";
             while (rolel.length > 3) { break; }
        return NO;
    }
    
    if (pwd.length < 6) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_format)];
            float keychainP = 6599.0;
             for(NSInteger keychainP_idx = 0; keychainP_idx < @(keychainP).intValue; keychainP_idx++) { break; } 
        return NO;
    }
    return YES;
    
}

+(NSArray *)placeTelephoneMakerRemake:(NSDictionary *)item {
     double switch_hz = 88.0;
    NSMutableArray * grandDonationCantata = [NSMutableArray arrayWithCapacity:250];
    switch_hz = 6020;
    [grandDonationCantata addObject: @(switch_hz)];
         int c_14 = (int)switch_hz;
     if (c_14 >= 503) {
          c_14 -= 79;
          if (c_14 >= 374) {
          c_14 /= 75;
          c_14 -= 44;
     }
     }

    return grandDonationCantata;

}





+ (BOOL)validEmail_MMMethodMMM:(NSString *)email
{

         {
    [self placeTelephoneMakerRemake:[NSDictionary dictionaryWithObjectsAndKeys:@"deprivation",@(187), nil]];

}

    NSString *triStr = [email stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
            NSString * array1 = @"philosophy";
    NSPredicate *emailPred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
            NSArray * buttonJ = [NSArray arrayWithObjects:@(679), @(681), nil];
             while (buttonJ.count > 73) { break; }
    return [emailPred evaluateWithObject:triStr];
}

+(NSArray *)masksJunkFatuWrapper{
    NSMutableArray * gangSave = [NSMutableArray arrayWithCapacity:84];

    return gangSave;

}





+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex
{

         {
    [self masksJunkFatuWrapper];

}

    NSString *triStr = [phone stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSPredicate *phonePred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
            Boolean bool_z3V = NO;
             while (!bool_z3V) { __asm__("NOP"); break; }
    return [phonePred evaluateWithObject:triStr];
}

#pragma mark - Toast

+(NSArray *)downSkyStarety:(NSString *)m_layer hour:(int)hour {
    NSMutableArray * run = [[NSMutableArray alloc] init];

    return run;

}





+ (void)toastMsg_MMMethodMMM:(NSString *)msg
{

         {
    [self downSkyStarety:@"influential" hour:8922];

}

    [self toastMsg_MMMethodMMM:msg atView_MMMethodMMM:nil];
            NSInteger confL = 6459;
             while (@(confL).integerValue == 11) { break; }
}

+ (void)toastMsg_MMMethodMMM:(NSString *)msg atView_MMMethodMMM:(UIView *)baseView
{

    if (!baseView) {
        baseView = [UIApplication sharedApplication].keyWindow;
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        
        UIView *aler = [[UIView alloc] initWithFrame:CGRectZero];

        aler.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.7];
            float idfak = 2994.0;
             while (@(idfak).doubleValue > 60) { break; }
        aler.alpha = 0.9f;
            float with__3_ = 3531.0;
             while (@(with__3_).longValue >= 180) { break; }
        aler.layer.cornerRadius = 10.0f;
        
        [baseView addSubview:aler];
            NSDictionary * icont = @{@"liver":@(695.0)};
             while (icont.count > 106) { break; }
        [baseView bringSubviewToFront:aler];
        
        
        NSMutableString *insertStr = [[NSMutableString alloc] initWithString:msg];
        if(insertStr.length > 26 && ![msg containsString:@"\n"]){
            [insertStr insertString:@"\n" atIndex:26];
        }

        NSString *toastString = insertStr;
        
        UILabel *toastLabel = [[UILabel alloc] initWithFrame:CGRectZero];
            NSArray * window_uO = @[@{@"ore":@(528)}];
             if ([window_uO containsObject:@"O"]) {}
        toastLabel.text = toastString;
            NSArray * adaptu = @[@(540), @(620)];
             if ([adaptu containsObject:@"A"]) {}
        toastLabel.backgroundColor = [UIColor clearColor];
            float rotateo = 598.0;
             while (@(rotateo).intValue <= 38) { break; }
        toastLabel.textColor = [UIColor whiteColor];

        
        toastLabel.font = [UIFont fontWithName:FONT_Helvetica_BOLD size:FONTSIZE(16)];
            NSArray * delegate_878 = @[@(57), @(124), @(877)];
        toastLabel.textAlignment = NSTextAlignmentCenter;
            double interrupt1 = 3093.0;
             if (@(interrupt1).longValue > 100) {}
        toastLabel.numberOfLines = 0;
        
        CGSize tempStringSize = [SdkUtil calculateSizeOfLabel_MMMethodMMM:toastLabel];
            NSInteger tokenP = 4436;
             for(int tokenP_idx = 0; tokenP_idx < @(tokenP).intValue; tokenP_idx++) { break; } 
        CGFloat _width = tempStringSize.width + 60;
            NSString * firebaseP = @"amiable";
             while (firebaseP.length > 151) { break; }
        CGFloat _height = tempStringSize.height + 20;
            Boolean areaZ = NO;
             while (areaZ) { __asm__("NOP"); break; }
        CGFloat _tempHeight = tempStringSize.height;
        if(insertStr.length > 26){
            _height = tempStringSize.height + 20 * 2;
            NSString * thirdd = @"initially";
             if (thirdd.length > 102) {}
            _tempHeight = tempStringSize.height*3;
        }
        
        [aler setFrame:CGRectMake(0, 0, _width, _height)];
        
        CGPoint b_c = baseView.center;
        if (SDK_DATA.keyBoardHeight > 10) {
            aler.center = CGPointMake( b_c.x, baseView.frame.size.height - SDK_DATA.keyBoardHeight - _height);
        }else{
            aler.center = CGPointMake( b_c.x,b_c.y + b_c.y / 2);
        }
        
        [toastLabel setFrame:CGRectMake( 0, 0, tempStringSize.width *2 , _tempHeight)];
            NSString * rameworkC = @"banal";
             if ([rameworkC isEqualToString:@"h"]) {}
        toastLabel.center = CGPointMake(_width/2, _height/2);
        
        [aler addSubview:toastLabel];
        
       
        toastLabel = nil;
        
        
        [UIView animateWithDuration:1.5f
                         animations:^{
                             aler.alpha = 1.0f;
                         } completion:^(BOOL finished) {
                             [aler removeFromSuperview];
                             
                         }];
        
    });
            NSDictionary * changedf = [NSDictionary dictionaryWithObjectsAndKeys:@"terminal",@{@"adornment":@(NO)}, nil];
             if (changedf.count > 142) {}
}

+(double)changeSharerDecodeFunctions:(float)urls parent:(Boolean)parent {
    double exponentially = 0;

    return exponentially;

}






+ (void)showLoadingAtView_MMMethodMMM:(UIView *)baseView
{

         {
    [self changeSharerDecodeFunctions:3380.0 parent:NO];

}

    if (baseView == nil) {
        baseView = appTopViewController.view;
    }
    UIView *bgV = [[TouchEventInterruptView alloc] initWithFrame:CGRectZero];
            NSString * timesu = @"eucalyptus";
    bgV.backgroundColor = [UIColor clearColor];
            Boolean gamed = NO;
             while (gamed) { __asm__("NOP"); break; }
    bgV.tag = kLoadingTag;
    
    
    [baseView addSubview:bgV];
    
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
            NSArray * homef = @[@(276), @(645)];
             if (homef.count > 104) {}
        make.centerY.equalTo(@(0));
            NSArray * m_viewi = [NSArray arrayWithObjects:@"vestment", @"smoothly", @"gorgeous", nil];
             if (m_viewi.count > 164) {}
        make.width.equalTo(@(SCREEN_WIDTH));
            NSString * time_1Z = @"amorous";
             while (time_1Z.length > 58) { break; }
        make.height.equalTo(@(SCREEN_HEIGHT));
            NSArray * accountC = [NSArray arrayWithObjects:@(58), @(381), @(75), nil];
    }];
            NSDictionary * wkwebV = [NSDictionary dictionaryWithObjectsAndKeys:@"misogamy",@(130), @"wheat",@(511), @"weaver",@(278), nil];
             if (wkwebV[@"G"]) {}
    [baseView bringSubviewToFront:bgV];
    
    UIView *v=[[UIView alloc] initWithFrame:CGRectZero];
            int g_products_ = 1894;
             while (@(g_products_).doubleValue > 107) { break; }
    v.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.6];
            double logini = 8489.0;
             while (@(logini).longLongValue == 11) { break; }
    v.layer.cornerRadius = 10.0f;
            int append_ = 5440;
             while (@(append_).longLongValue == 15) { break; }
    [bgV addSubview:v];

    [v mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
            NSString * provision3 = @"originally";
             if ([provision3 isEqualToString:@"C"]) {}
        make.centerY.equalTo(@(0));
            NSArray * dicL = @[@(9078.0)];
        make.width.equalTo(@(40));
            double dealloc_gdh = 8679.0;
             while (@(dealloc_gdh).intValue >= 17) { break; }
        make.height.equalTo(@(40));
            int securityr = 2711;
             for(NSInteger securityr_idx = 24; securityr_idx < @(securityr).intValue; securityr_idx -= 0) { break; } 
    }];
            NSString * rrorB = @"slip";
    UIActivityIndicatorView *indicator;
            NSDictionary * method_h8 = [NSDictionary dictionaryWithObjectsAndKeys:@"rendering",@(467), @"bigotry",@(740), @"stratosphere",@(159), nil];
             if (method_h8[@"o"]) {}
    indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
            int rrorE = 6743;
             while (@(rrorE).integerValue < 90) { break; }
    [v addSubview:indicator];
    [indicator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
            NSArray * beganF = @[@"prattle"];
             if (beganF.count > 58) {}
        make.centerY.equalTo(@(0));
            int changer = 652;
             while (@(changer).floatValue < 169) { break; }
        make.width.equalTo(@(40));
            NSString * pageS = @"equitable";
             if ([pageS isEqualToString:@"M"]) {}
        make.height.equalTo(@(40));
            double handlerT = 5855.0;
             if (@(handlerT).integerValue == 11) {}
    }];
            NSString * authticationW = @"sincere";
    [indicator startAnimating];
            NSArray * frame_01 = [NSArray arrayWithObjects:@(300), @(69), @(842), nil];
             if (frame_01.count > 117) {}
}

+(double)addNavigationCountHtml:(Boolean)time_jaEncode keychainManager:(NSDictionary *)keychainManager {
     double interfaceModel = 3585.0;
     long urls = 7784;
    double kidneyInvoke = 0;
    interfaceModel = interfaceModel * urls;
    kidneyInvoke /= MAX(interfaceModel, 1);
         int u_62 = (int)interfaceModel;
     int w_60 = 0;
     int i_9 = 1;
     if (u_62 > i_9) {
         u_62 = i_9;

     }
     for (int s_22 = 1; s_22 <= u_62; s_22++) {
         w_60 += s_22;
     int j_16 = w_60;
          int f_25 = 1;
     int c_46 = 0;
     if (j_16 > c_46) {
         j_16 = c_46;
     }
     while (f_25 <= j_16) {
         f_25 += 1;
     int c_13 = f_25;
          switch (c_13) {
          case 26: {
                  break;

     }
          case 19: {
          c_13 += 33;
                  break;

     }
          case 92: {
                  break;

     }
          case 53: {
          c_13 /= 77;
          c_13 *= 46;
             break;

     }
          case 74: {
          c_13 /= 9;
          c_13 += 24;
             break;

     }
          case 13: {
          c_13 *= 16;
             break;

     }
          case 10: {
                  break;

     }
          case 31: {
          c_13 += 10;
             break;

     }
          case 89: {
          c_13 += 11;
          c_13 -= 7;
             break;

     }
          case 58: {
                  break;

     }
     default:
         break;

     }
         break;
     }
         break;

     }
    urls = urls;
    kidneyInvoke -= urls;
         int _e_88 = (int)urls;
     switch (_e_88) {
          case 3: {
          if (_e_88 >= 6) {
          }
             break;

     }
          case 69: {
          _e_88 /= 47;
          int z_6 = 0;
     int o_42 = 1;
     if (_e_88 > o_42) {
         _e_88 = o_42;

     }
     for (int o_59 = 0; o_59 < _e_88; o_59++) {
         z_6 += o_59;
          if (o_59 > 0) {
          _e_88 -=  o_59;

     }
          _e_88 *= 49;
         break;

     }
             break;

     }
          case 26: {
          _e_88 *= 68;
          _e_88 *= 94;
             break;

     }
          case 46: {
          if (_e_88 <= 831) {
          _e_88 *= 38;
     }
             break;

     }
          case 50: {
          _e_88 += 21;
          _e_88 -= 9;
             break;

     }
          case 23: {
          _e_88 *= 64;
          _e_88 *= 72;
             break;

     }
          case 32: {
          if (_e_88 <= 57) {
          _e_88 *= 76;
     }
             break;

     }
          case 87: {
          _e_88 *= 30;
          int v_25 = 0;
     for (int a_33 = _e_88; a_33 >= _e_88 - 1; a_33--) {
         v_25 += a_33;
     int x_74 = v_25;
          if (x_74 >= 59) {
          }
         break;

     }
             break;

     }
          case 85: {
          _e_88 /= 2;
          if (_e_88 <= 794) {
          _e_88 -= 86;
     }
             break;

     }
     default:
         break;

     }

    return kidneyInvoke;

}





+ (void)stopLoadingAtView_MMMethodMMM:(UIView *)baseView
{

         {
    [self addNavigationCountHtml:YES keychainManager:[NSDictionary dictionaryWithObjectsAndKeys:@"deliberately",@"iota", nil]];

}

    __block  UIView *blockView= baseView;
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (blockView == nil) {
            blockView = appTopViewController.view;
        }
        UIActivityIndicatorView *indicator = (UIActivityIndicatorView *)[blockView viewWithTag:kLoadingTag];
            NSArray * decrypt2 = [NSArray arrayWithObjects:@(766), @(27), @(634), nil];
             if (decrypt2.count > 158) {}
        [indicator removeFromSuperview];
    });
   
}

+ (UIView *)initWithMaxTitle_MMMethodMMM:(NSString *)maxTitle minTitle_MMMethodMMM:(NSString *)minTitle
{
    UIView *titleView = [[UIView alloc] init];
    [titleView setBackgroundColor:[UIColor clearColor]];

    CGSize maxTextSize = [self sizeWithText_MMMethodMMM:maxTitle font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGSize minTextSize = [self sizeWithText_MMMethodMMM:minTitle font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    
    UITextField *maxTextView = [[UITextField alloc] init];
            NSDictionary * editingA = @{@"reserve":@(20)};
             if (editingA[@"8"]) {}
    [maxTextView setEnabled:NO];
            Boolean listq = NO;
             if (!listq) { __asm__("NOP"); }
    [maxTextView setText:maxTitle];
    [maxTextView setTextColor:RGB(84, 149, 223)];
            NSDictionary * action6 = @{@"suspicion":@(6010.0)};
    [maxTextView setFont:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)]];
            double aracv = 739.0;
             while (@(aracv).floatValue >= 32) { break; }
    [titleView addSubview:maxTextView];
    [maxTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(titleView);
            NSDictionary * dismiss9 = @{@"telegram":@(517), @"insubstantial":@(104)};
             if (dismiss9.count > 171) {}
        make.left.bottom.equalTo(titleView);
            NSDictionary * stringsp = [NSDictionary dictionaryWithObjectsAndKeys:@"kaleidoscope",@(113), @"fecund",@(348), @"accord",@(313), nil];
             while (stringsp.count > 128) { break; }
        make.width.equalTo(@(maxTextSize.width));
            NSDictionary * eventf = [NSDictionary dictionaryWithObjectsAndKeys:@"brooch",@(8103), nil];
             while (eventf.count > 120) { break; }
    }];
    
    UITextField *minTextView = [[UITextField alloc] init];
            float f_countj = 9067.0;
             if (@(f_countj).longValue < 196) {}
    [minTextView setText:minTitle];
    [minTextView setEnabled:NO];
            NSString * productD = @"practice";
    [minTextView setAdjustsFontSizeToFitWidth:NO];
            NSArray * v_boundsv = @[@(560), @(983), @(602)];
             if ([v_boundsv containsObject:@"G"]) {}
    [minTextView setTextColor:[UIColor whiteColor]];
            Boolean game1 = YES;
             while (game1) { __asm__("NOP"); break; }
    [minTextView setFont:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)]];
    [minTextView setTextAlignment:NSTextAlignmentLeft];
            NSArray * decryptQ = @[@(6933.0)];
             if (decryptQ.count > 68) {}
    [titleView addSubview:minTextView];
    [minTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(titleView);
            NSDictionary * d_managerS = @{@"indefinitely":@(998), @"air":@(517)};
             while (d_managerS.count > 97) { break; }
        make.left.equalTo(maxTextView.mas_right);
            int bindg = 2791;
             if (@(bindg).longValue == 199) {}
        make.width.equalTo(@(minTextSize.width+3));
            NSDictionary * param4 = [NSDictionary dictionaryWithObjectsAndKeys:@"ache",@(538), @"position",@(503), nil];
             if (param4[@"Z"]) {}
    }];
            Boolean account9 = YES;
    return titleView;
}

+(NSString *)decideOnceSetupEditing{
     int backgroundManager = 4088;
    NSMutableString *emperor = [NSMutableString string];
         int _l_13 = (int)backgroundManager;
     _l_13 += 31;

    return emperor;

}





+ (CGSize)sizeWithText_MMMethodMMM:(NSString *)text font_MMMethodMMM:(UIFont *)font maxSize_MMMethodMMM:(CGSize)maxSize
{

         {
    [self decideOnceSetupEditing];

}

    NSDictionary *attrs = @{NSFontAttributeName : font};
            NSDictionary * util_ = @{@"tonic":@(235), @"offset":@(539)};
             if (util_[@"o"]) {}
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    
}

+(int)writeAxisNative{
     double item = 8423.0;
    int library = 0;
    item *= item;
    library /= MAX(item, 1);
         int tmp_w_64 = (int)item;
     int f_58 = 0;
     int n_54 = 0;
     if (tmp_w_64 > n_54) {
         tmp_w_64 = n_54;

     }
     for (int r_7 = 0; r_7 <= tmp_w_64; r_7++) {
         f_58 += r_7;
     int l_75 = f_58;
          int z_33 = 0;
     for (int z_56 = l_75; z_56 > l_75 - 1; z_56--) {
         z_33 += z_56;
          if (z_56 > 0) {
          l_75 +=  z_56;

     }
     int s_16 = z_33;
              break;

     }
         break;

     }

    return library;

}





+ (CGFloat)titleFontWedthWithMaxStr_MMMethodMMM:(NSString *)maxStr minStr_MMMethodMMM:(NSString *)minStr
{

         {
    [self writeAxisNative];

}

    CGSize maxTextSize = [self sizeWithText_MMMethodMMM:maxStr font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGSize minTextSize = [self sizeWithText_MMMethodMMM:minStr font_MMMethodMMM:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)] maxSize_MMMethodMMM:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    
    return maxTextSize.width+minTextSize.width;
}



#pragma mark - self
+ (void)_updataLastLoginUserInfoWithNewInfo_MMMethodMMM:(NSDictionary *)loginUserInfo
{

    NSDictionary * lastUserInfoDic=
    [[NSUserDefaults standardUserDefaults]objectForKey:GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY];
    if (lastUserInfoDic)
    {
        [[NSUserDefaults standardUserDefaults]removeObjectForKey:GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY];
            NSDictionary * touchE = @{@"mop":@(423)};
             if (touchE[@"R"]) {}
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
    [[NSUserDefaults standardUserDefaults]setObject:loginUserInfo
                                             forKey:GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY];
            NSString * datal = @"lumberjack";
    [[NSUserDefaults standardUserDefaults]synchronize];
            NSString * register_zrA = @"insider";
             while (register_zrA.length > 104) { break; }
}

+ (NSString *)loginEncryptFromString_MMMethodMMM:(NSString *)aString
{

    return [SecurityUtil getEncryptStringFromString_MMMethodMMM:aString WithKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
}

+ (NSString *)loginDecryptFromString_MMMethodMMM:(NSString *)aString
{

    return [SecurityUtil getDecryptStringFromString_MMMethodMMM:aString withKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
}

+(NSInteger)changDaysLaunchGameswordGasad:(NSArray *)reload completerTerminate:(NSArray *)completerTerminate changedAgree:(float)changedAgree {
     long encoding = 4974;
    NSInteger gesticulate = 0;
    encoding = 7018;
    gesticulate += encoding;
         int tmp_c_19 = (int)encoding;
     tmp_c_19 -= 53;

    return gesticulate;

}





+ (void)_image_MMMethodMMM: (UIImage *) image didFinishSavingWithError_MMMethodMMM: (NSError *) error contextInfo_MMMethodMMM: (void *) contextInfo
{

         {
    [self changDaysLaunchGameswordGasad:@[@(549), @(864)] completerTerminate:[NSArray arrayWithObjects:@"castigation", @"contentious", nil] changedAgree:9415.0];

}

    NSString *msg = nil ;
    if(error != NULL){
        msg = GetString(wwwww_tag_wwwww_ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_FAIL) ;
    }else{
        msg = GetString(wwwww_tag_wwwww_ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_SUCCESS) ;
    }
    
    [SdkUtil toastMsg_MMMethodMMM:msg];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_NOTE_SAVE_PHOTO object:nil userInfo:nil];
            NSArray * pay_bd = @[@{@"hypnosis":@(228), @"milkman":@(7)}];
             while (pay_bd.count > 7) { break; }
}

#pragma mark -

+(NSArray *)evaluateScopesMaxDeviceClaimistic:(NSString *)selectIcon {
     int moreMessage = 1848;
    NSMutableArray * closedownAttractionField = [NSMutableArray array];
    moreMessage += 80;
    [closedownAttractionField addObject: @(moreMessage)];
         int a_5 = (int)moreMessage;
     if (a_5 >= 605) {
          a_5 /= 81;
          switch (a_5) {
          case 78: {
          a_5 /= 14;
             break;

     }
          case 1: {
          a_5 -= 46;
             break;

     }
          case 40: {
          a_5 /= 39;
                  break;

     }
          case 88: {
                  break;

     }
          case 27: {
          a_5 *= 71;
                  break;

     }
          case 59: {
          a_5 /= 20;
             break;

     }
     default:
         break;

     }
     }

    return closedownAttractionField;

}





+ (void)saveUserInfo_MMMethodMMM:(NSString *)userName andPassword_MMMethodMMM:(NSString *)password toFile_MMMethodMMM:(NSString*)fileName
{

         {
    [self evaluateScopesMaxDeviceClaimistic:@"devalue"];

}

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
            NSDictionary * keychainw = @{@"i":@(63), @"feudalism":@(792)};
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:fileName];
    
    NSString *encryptPwd = [self loginEncryptFromString_MMMethodMMM:password];
    
    NSDictionary * userInfoDic = [NSDictionary dictionaryWithObjectsAndKeys:
                                  userName,encryptPwd,
                                  nil];
            float termw = 7918.0;
             if (@(termw).intValue >= 51) {}
    [userInfoDic writeToFile:filename atomically:YES];
            NSString * home6 = @"geometry";
}

+ (void)getUserInfo_MMMethodMMM:(NSString **)userName andPassword_MMMethodMMM:(NSString **)password fromFile_MMMethodMMM:(NSString*)fileName
{

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
            NSArray * interruptp = [NSArray arrayWithObjects:@(150), @(766), @(573), nil];
             if ([interruptp containsObject:@"p"]) {}
    NSString *path = [paths objectAtIndex:0];
            NSString * completeq = @"undaunted";
             while (completeq.length > 75) { break; }
    NSString *filename = [path stringByAppendingPathComponent:fileName];
    
    NSDictionary * userInfodic = [NSDictionary dictionaryWithContentsOfFile:filename];
    if (userInfodic.count > 0 || userInfodic!=nil) {
        if (userName != nil)  {
            @try {
                *userName = [[userInfodic allValues]objectAtIndex:0];
            }
            @catch(NSException* exp) {
                *userName = @"";
            }
        }
        if (password != nil) {
            @try {
                *password = [[userInfodic allKeys]objectAtIndex:0];
            }
            @catch(NSException* exp) {
                *password = @"";
            }
        }
    }
}

+(NSArray *)touchesNativeArchiFunction:(NSString *)paramsEncoding googleAddress:(float)googleAddress encryptRemove:(NSString *)encryptRemove {
    NSMutableArray * victorProgramer = [[NSMutableArray alloc] init];

    return victorProgramer;

}





+(NSMutableArray *)getShowBtnDatas_MMMethodMMM:(ConfigModel *)mConfigModel appleBtn_MMMethodMMM:(BOOL) appleBtn guestBtn_MMMethodMMM:(BOOL) guestBtn
{

         {
    [self touchesNativeArchiFunction:@"predator" googleAddress:8935.0 encryptRemove:@"dirt"];

}

    NSMutableArray *loginBtnDatas = [NSMutableArray array];
    if (mConfigModel.appleLogin && appleBtn) {
        
        if (@available(iOS 13.0, *)) {
            LoginButtonData *lbds = [[LoginButtonData alloc] init];
            int times3 = 6793;
             if (@(times3).longValue >= 197) {}
            lbds.tag = appleLoginActTag;
            double method_hN = 4312.0;
             if (@(method_hN).integerValue <= 66) {}
            lbds.btnType = LOGIN_TYPE_APPLE;
            Boolean selectedP = YES;
             if (!selectedP) { __asm__("NOP"); }
            [loginBtnDatas addObject:lbds];
        }
        
    }
    if (mConfigModel.visitorLogin && guestBtn) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
            NSDictionary * styleL = [NSDictionary dictionaryWithObjectsAndKeys:@"miasma",@(7338.0), nil];
             if (styleL[@"X"]) {}
        lbds.tag = guestLoginActTag;
            NSArray * zinitializez = [NSArray arrayWithObjects:@"marrow", @"desperation", @"wealth", nil];
             while (zinitializez.count > 173) { break; }
        lbds.btnType = LOGIN_TYPE_GUEST;
            NSDictionary * modityO = [NSDictionary dictionaryWithObjectsAndKeys:@"cousin",@(56), nil];
        lbds.image = mw_guest_icon;
            NSDictionary * rate8 = @{@"truce":@(380)};
             if (rate8.count > 162) {}
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.fbLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
            NSString * footJ = @"ungainly";
             if (footJ.length > 40) {}
        lbds.tag = fbLoginActTag;
            NSInteger erviceu = 6031;
             for(NSInteger erviceu_idx = 40; erviceu_idx < @(erviceu).intValue; erviceu_idx -= 0) { break; } 
        lbds.btnType = LOGIN_TYPE_FB;
        lbds.image = mw_fb_icon;
            NSInteger drawM = 8679;
             for(NSInteger drawM_idx = 86; drawM_idx < @(drawM).intValue; drawM_idx--) { break; } 
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.googleLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
            NSString * delegate_3a_ = @"admit";
             if ([delegate_3a_ isEqualToString:@"P"]) {}
        lbds.tag = googleLoginActTag;
            double basey = 4671.0;
             if (@(basey).intValue == 191) {}
        lbds.btnType = LOGIN_TYPE_GOOGLE;
            double font4 = 6570.0;
             for(NSInteger font4_idx = 0; font4_idx < @(font4).intValue; font4_idx += 2) { break; } 
        lbds.image = mw_gp_icon;
            Boolean bindings = YES;
             while (bindings) { __asm__("NOP"); break; }
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.lineLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
            NSDictionary * wrapperE = [NSDictionary dictionaryWithObjectsAndKeys:@"permanent",@(546), @"verse",@(453), nil];
        lbds.tag = lineLoginActTag;
            double registS = 5008.0;
             if (@(registS).integerValue <= 169) {}
        lbds.btnType = LOGIN_TYPE_LINE;
            float encodeN = 8748.0;
             if (@(encodeN).integerValue < 2) {}
        lbds.image = mw_line_icon;
            NSString * selectedx = @"exhausted";
             while (selectedx.length > 68) { break; }
        [loginBtnDatas addObject:lbds];
    }
    return loginBtnDatas;
}

+(NSInteger)borderKindHantInvalid:(NSDictionary *)payment_uw sdk:(double)sdk {
    NSInteger virileAttentiveWithin = 0;

    return virileAttentiveWithin;

}





+ (void)savePhoneAreaInfo_MMMethodMMM:(NSArray *)numberAry
{

         {
    [self borderKindHantInvalid:@{@"goodbye":@(880), @"sedulity":@(230), @"wrongdoing":@(122)} sdk:442.0];

}

    [[NSUserDefaults standardUserDefaults] setObject:numberAry forKey:SDK_PHONE_AREA_CODE];
            NSArray * fromC = [NSArray arrayWithObjects:@(382), @(951), @(938), nil];
             while (fromC.count > 36) { break; }
    [[NSUserDefaults standardUserDefaults] synchronize];
            NSInteger n_imageY = 7966;
             if (@(n_imageY).floatValue >= 61) {}
}

+ (NSArray *)fetchPhoneAreaInfo_MMMethodMMM
{

    NSArray *tempAry = [[NSUserDefaults standardUserDefaults] objectForKey:SDK_PHONE_AREA_CODE];
            NSString * window_bE = @"electronic";
    return tempAry;
}

+(NSInteger)prefersChildOccurrencesAgree{
     NSInteger accountCommon = 9124;
     NSInteger wedthBackground = 9536;
    NSInteger sinkEnticement = 0;
    accountCommon *= 28;
    sinkEnticement -= accountCommon;
         int y_26 = (int)accountCommon;
     switch (y_26) {
          case 89: {
          y_26 /= 68;
             break;

     }
          case 31: {
          y_26 /= 11;
          int m_91 = 1;
     int s_42 = 1;
     if (y_26 > s_42) {
         y_26 = s_42;
     }
     while (m_91 < y_26) {
         m_91 += 1;
          y_26 -= m_91;
         break;
     }
             break;

     }
     default:
         break;

     }
    wedthBackground = MAX(accountCommon, 1) / MAX(wedthBackground, 1);
    sinkEnticement += wedthBackground;
         int _a_14 = (int)wedthBackground;
     switch (_a_14) {
          case 33: {
          _a_14 -= 8;
          _a_14 += 84;
             break;

     }
          case 63: {
          _a_14 *= 12;
          _a_14 /= 27;
             break;

     }
          case 41: {
          int p_67 = 0;
     for (int d_7 = _a_14; d_7 >= _a_14 - 1; d_7--) {
         p_67 += d_7;
          _a_14 += d_7;
         break;

     }
             break;

     }
     default:
         break;

     }

    return sinkEnticement;

}





+ (void)saveReportEventName_MMMethodMMM:(NSString *)eventName
{

    [[NSUserDefaults standardUserDefaults] setObject:eventName forKey:[NSString stringWithFormat:@"sdk_event_%@",eventName]];
            NSArray * closeg = [NSArray arrayWithObjects:@(202), @(913), @(618), nil];

         {
    [self prefersChildOccurrencesAgree];

}
             while (closeg.count > 60) { break; }
    [[NSUserDefaults standardUserDefaults] synchronize];
            Boolean handleri = NO;
             if (!handleri) { __asm__("NOP"); }
}

+ (BOOL)isReportEventName_MMMethodMMM:(NSString *)eventName
{

    NSString *saveName = [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"sdk_event_%@",eventName]];
    
    if (saveName) {
        return YES;
    }
    return NO;
}


@end
