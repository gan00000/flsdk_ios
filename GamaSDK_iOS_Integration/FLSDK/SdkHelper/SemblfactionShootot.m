

#import "SemblfactionShootot.h"
#import "SdkHeader.h"
#import <Photos/Photos.h>
#import "NotoacleMajorable.h"
#import "CivilativeFutilView.h"

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

@implementation SemblfactionShootot


#pragma mark - UI


+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect_MMMethodMMM:(CGRect)rect
                                               urlStirng_MMMethodMMM:(NSString *)urlString
                                            cornerRadius_MMMethodMMM:(CGFloat)radius
                                                delegate:(id)delegate
{
    WKWebView *resultWebView;
    NSString *jScript = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
    WKUserScript *wkUScript = [[WKUserScript alloc] initWithSource:jScript injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
    WKUserContentController *wkUController = [[WKUserContentController alloc] init]; [wkUController addUserScript:wkUScript];
    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
    wkWebConfig.userContentController = wkUController;
    resultWebView = [[WKWebView alloc] initWithFrame:rect configuration:wkWebConfig];

    resultWebView.UIDelegate = delegate;

    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
    [resultWebView loadRequest:request];
    return resultWebView;
}



+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label
{
    NSString *labelStr = label.text;
    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(1000, 1000)
                                              options:NSStringDrawingTruncatesLastVisibleLine
                                           attributes:@{NSFontAttributeName:label.font}
                                              context:nil].size;

    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

+ (CGSize)calculateSizeOfLabel_MMMethodMMM:(UILabel *)label andWidth_MMMethodMMM:(CGFloat)width
{
    NSString *labelStr = label.text;

    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.lineBreakMode = NSLineBreakByWordWrapping;
    style.alignment = NSTextAlignmentLeft;


    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading 
                                            attributes:@{NSFontAttributeName:label.font,NSParagraphStyleAttributeName:style}
                                               context:nil].size;
    
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

#pragma mark - Tri String

+ (NSString *)triString_MMMethodMMM:(NSString *)aStr
{
    return [aStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

#pragma mark - Text Rule
+ (BOOL)validUserName_MMMethodMMM:(NSString *)accountName
{


    if (!accountName || [accountName isEqualToString:@""]) {
        [SemblfactionShootot toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
        return NO;
    }
    

    NSString *regex_email = @"^.+@\\w+\\..+$"; 
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex_email];
    
    BOOL isOk = [pred evaluateWithObject:accountName];
    if(!isOk){
        [SemblfactionShootot toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
    }
    return isOk;
    
    
}

+ (BOOL)validPwd_MMMethodMMM:(NSString *)pwd
{
    if (!pwd || [pwd isEqualToString:@""]) {
        [SemblfactionShootot toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return NO;
    }
    
    if (pwd.length < 6) {
        [SemblfactionShootot toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_format)];
        return NO;
    }
    return YES;
}


+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex
{
    NSPredicate *phonePred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [phonePred evaluateWithObject:phone];
}

#pragma mark - Toast

+ (void)toastMsg_MMMethodMMM:(NSString *)msg
{
    [self toastMsg_MMMethodMMM:msg atView_MMMethodMMM:nil];
}

+ (UIView *)findKeyWindow {

    
    return [UIApplication sharedApplication].keyWindow;
    
}

#pragma mark 获取键盘window的HostView
+ (UIView *)getTextEffectsWindowHostView{
    
    @try {
        UIWindow *keyboardWindow = [[[UIApplication sharedApplication] windows] lastObject];
        UIView *keyboardContainerView;
        UIView *keyboardHostView;
     
        for(int i = 0; i < [keyboardWindow.subviews count]; i++) {
            keyboardContainerView = [keyboardWindow.subviews objectAtIndex:i];
            UIViewController *nextResponder = (UIViewController*)[keyboardContainerView nextResponder];
            
            if ([nextResponder isKindOfClass:NSClassFromString(@"UIInputWindowController")]) {
                for(int y = 0; y < [nextResponder.view.subviews count]; y++) {
                    
                    if([[keyboardContainerView description] hasPrefix:@"<UIInputSetContainerView"] == YES){
                        for(int t = 0; t < [keyboardContainerView.subviews count]; t++) {
                            keyboardHostView = [keyboardContainerView.subviews objectAtIndex:y];
                            
                            if([[keyboardHostView description] hasPrefix:@"<UIInputSetHostView"] == YES){
                                return keyboardHostView;
                            }
                        }
                    }
                }
            }
        }
    } @catch (NSException *exception) {
        
    }
    return nil;
    
}

+ (void)toastMsg_MMMethodMMM:(NSString *)msg atView_MMMethodMMM:(UIView *)baseView
{
    if (!baseView) {
        baseView = [self findKeyWindow];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        
        UIView *aler = [[UIView alloc] initWithFrame:CGRectZero];

        aler.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.7];
        aler.alpha = 0.9f;
        aler.layer.cornerRadius = 10.0f;
        
        [baseView addSubview:aler];
        [baseView bringSubviewToFront:aler];
        
        
        NSMutableString *insertStr = [[NSMutableString alloc] initWithString:msg];
        if(insertStr.length > 26 && ![msg containsString:@"\n"]){
            [insertStr insertString:@"\n" atIndex:26];
        }

        NSString *toastString = insertStr;
        
        UILabel *toastLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        toastLabel.text = toastString;
        toastLabel.backgroundColor = [UIColor clearColor];
        toastLabel.textColor = [UIColor whiteColor];

        
        toastLabel.font = [UIFont fontWithName:FONT_Helvetica_BOLD size:FONTSIZE(16)];
        toastLabel.textAlignment = NSTextAlignmentCenter;
        toastLabel.numberOfLines = 0;
        
        CGSize tempStringSize = [SemblfactionShootot calculateSizeOfLabel_MMMethodMMM:toastLabel];
        CGFloat _width = tempStringSize.width + 60;
        CGFloat _height = tempStringSize.height + 20;
        CGFloat _tempHeight = tempStringSize.height;
        if(insertStr.length > 26){
            _height = tempStringSize.height + 20 * 2;
            _tempHeight = tempStringSize.height*3;
        }
        
        [aler setFrame:CGRectMake(0, 0, _width, _height)];
        
        CGPoint b_c = baseView.center;

        if (SDK_DATA.keyBoardHeight > 10) {
            aler.center = CGPointMake( b_c.x, baseView.frame.size.height - SDK_DATA.keyBoardHeight - _height);
        }else{
            
            CGFloat toastView_y = b_c.y + b_c.y / 2;
            
            UIView *inputSetHostView = [self getTextEffectsWindowHostView];
            if(inputSetHostView){
                
                CGRect inputSetHostView_frame = inputSetHostView.frame;
                if(toastView_y + _height > inputSetHostView_frame.origin.y){
                    toastView_y = inputSetHostView.frame.origin.y - _height;
                }
                
                aler.center = CGPointMake( b_c.x, toastView_y);
                
            }else{
                aler.center = CGPointMake( b_c.x, toastView_y);
            }
            
        }
        
        [toastLabel setFrame:CGRectMake( 0, 0, tempStringSize.width *2 , _tempHeight)];
        toastLabel.center = CGPointMake(_width/2, _height/2);
        
        [aler addSubview:toastLabel];
        
       
        toastLabel = nil;
        
        
        [UIView animateWithDuration:1.0f
                         animations:^{
                             aler.alpha = 1.0f;
                         } completion:^(BOOL finished) {
                             [aler removeFromSuperview];
                             
                         }];
        
    });
}


+ (void)showLoadingAtView_MMMethodMMM:(UIView *)baseView
{
    if (baseView == nil) {
        baseView = appTopViewController.view;
    }
    UIView *bgV = [[CivilativeFutilView alloc] initWithFrame:CGRectZero];
    bgV.backgroundColor = [UIColor clearColor];
    bgV.tag = kLoadingTag;
    
    
    [baseView addSubview:bgV];
    
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(SCREEN_WIDTH));
        make.height.equalTo(@(SCREEN_HEIGHT));
    }];
    [baseView bringSubviewToFront:bgV];
    
    UIView *v=[[UIView alloc] initWithFrame:CGRectZero];
    v.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.6];
    v.layer.cornerRadius = 10.0f;
    [bgV addSubview:v];

    [v mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(40));
        make.height.equalTo(@(40));
    }];
    UIActivityIndicatorView *indicator;
    indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [v addSubview:indicator];
    [indicator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(40));
        make.height.equalTo(@(40));
    }];
    [indicator startAnimating];
}

+ (void)stopLoadingAtView_MMMethodMMM:(UIView *)baseView
{
    __block  UIView *blockView= baseView;
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (blockView == nil) {
            blockView = appTopViewController.view;
        }
        UIActivityIndicatorView *indicator = (UIActivityIndicatorView *)[blockView viewWithTag:kLoadingTag];
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
    [maxTextView setEnabled:NO];
    [maxTextView setText:maxTitle];
    [maxTextView setTextColor:RGB(84, 149, 223)];
    [maxTextView setFont:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)]];
    [titleView addSubview:maxTextView];
    [maxTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(titleView);
        make.left.bottom.equalTo(titleView);
        make.width.equalTo(@(maxTextSize.width));
    }];
    
    UITextField *minTextView = [[UITextField alloc] init];
    [minTextView setText:minTitle];
    [minTextView setEnabled:NO];
    [minTextView setAdjustsFontSizeToFitWidth:NO];
    [minTextView setTextColor:[UIColor whiteColor]];
    [minTextView setFont:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)]];
    [minTextView setTextAlignment:NSTextAlignmentLeft];
    [titleView addSubview:minTextView];
    [minTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(titleView);
        make.left.equalTo(maxTextView.mas_right);
        make.width.equalTo(@(minTextSize.width+3));
    }];
    return titleView;
}

+ (CGSize)sizeWithText_MMMethodMMM:(NSString *)text font_MMMethodMMM:(UIFont *)font maxSize_MMMethodMMM:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    
}

+ (CGFloat)titleFontWedthWithMaxStr_MMMethodMMM:(NSString *)maxStr minStr_MMMethodMMM:(NSString *)minStr
{
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
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
    [[NSUserDefaults standardUserDefaults]setObject:loginUserInfo
                                             forKey:GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

+ (NSString *)loginEncryptFromString_MMMethodMMM:(NSString *)aString
{
    return [NotoacleMajorable getEncryptStringFromString_MMMethodMMM:aString WithKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
}

+ (NSString *)loginDecryptFromString_MMMethodMMM:(NSString *)aString
{
    return [NotoacleMajorable getDecryptStringFromString_MMMethodMMM:aString withKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
}

+ (void)_image_MMMethodMMM: (UIImage *) image didFinishSavingWithError_MMMethodMMM: (NSError *) error contextInfo_MMMethodMMM: (void *) contextInfo
{
    NSString *msg = nil ;
    if(error != NULL){
        msg = GetString(wwwww_tag_wwwww_ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_FAIL) ;
    }else{
        msg = GetString(wwwww_tag_wwwww_ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_SUCCESS) ;
    }
    
    [SemblfactionShootot toastMsg_MMMethodMMM:msg];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_NOTE_SAVE_PHOTO object:nil userInfo:nil];
}

#pragma mark -


+(NSMutableArray *)getShowBtnDatas_MMMethodMMM:(ConfigModel *)mConfigModel appleBtn_MMMethodMMM:(BOOL) appleBtn guestBtn_MMMethodMMM:(BOOL) guestBtn
{

    NSMutableArray *loginBtnDatas = [NSMutableArray array];
    if (mConfigModel.appleLogin && appleBtn) {
        
        if (@available(iOS 13.0, *)) {
            NonagenproofPlainicsData *lbds = [[NonagenproofPlainicsData alloc] init];
            lbds.tag = appleLoginActTag;
            lbds.btnType = LOGIN_TYPE_APPLE;
            [loginBtnDatas addObject:lbds];
        }
        
    }
    if (mConfigModel.visitorLogin && guestBtn) {
        NonagenproofPlainicsData *lbds = [[NonagenproofPlainicsData alloc] init];
        lbds.tag = guestLoginActTag;
        lbds.btnType = LOGIN_TYPE_GUEST;
        lbds.image = mw_guest_icon;
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.fbLogin) {
        NonagenproofPlainicsData *lbds = [[NonagenproofPlainicsData alloc] init];
        lbds.tag = fbLoginActTag;
        lbds.btnType = LOGIN_TYPE_FB;
        lbds.image = mw_fb_icon;
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.googleLogin) {
        NonagenproofPlainicsData *lbds = [[NonagenproofPlainicsData alloc] init];
        lbds.tag = googleLoginActTag;
        lbds.btnType = LOGIN_TYPE_GOOGLE;
        lbds.image = mw_gp_icon;
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.lineLogin) {
        NonagenproofPlainicsData *lbds = [[NonagenproofPlainicsData alloc] init];
        lbds.tag = lineLoginActTag;
        lbds.btnType = LOGIN_TYPE_LINE;
        lbds.image = mw_line_icon;
        [loginBtnDatas addObject:lbds];
    }
    
#ifdef SDK_KR
    if (mConfigModel.naverLogin) {
        NonagenproofPlainicsData *lbds = [[NonagenproofPlainicsData alloc] init];
        lbds.tag = naverLoginActTag;
        lbds.btnType = LOGIN_TYPE_NAVER;
        lbds.image = mw_naver_icon;
        [loginBtnDatas addObject:lbds];
    }
#endif
    
    return loginBtnDatas;
}

+ (void)savePhoneAreaInfo_MMMethodMMM:(NSArray *)numberAry
{
    [[NSUserDefaults standardUserDefaults] setObject:numberAry forKey:SDK_PHONE_AREA_CODE];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark -服务端加载的手机区号信息
+ (NSArray *)fetchPhoneAreaInfo_MMMethodMMM
{
    NSArray *tempAry = [[NSUserDefaults standardUserDefaults] objectForKey:SDK_PHONE_AREA_CODE];
    return tempAry;
}

+ (NSArray *)getPhoneAreaInfo_MMMethodMMM
{
    NSArray *serverInfo = [self fetchPhoneAreaInfo_MMMethodMMM];
    if (serverInfo) {
        return serverInfo;
    }else{
        return SDKRES.areaInfoArray;
    }
}

+ (NSDictionary *)getPhoneInfoByAreaCode_MMMethodMMM:(NSString *)areaCode
{
    areaCode = [[areaCode trim_MMMethodMMM] stringByReplacingOccurrencesOfString:@"+" withString:@""];
    NSArray *phoneArry = [self getPhoneAreaInfo_MMMethodMMM];
    for (NSDictionary *pInfo in phoneArry) {
        NSString *areaCodeValue = pInfo[wwwww_tag_wwwww_value];
        
        if([areaCodeValue isEqualToString:areaCode]){
            return pInfo;
        }
    }
    return nil;
}


+ (void)saveReportEventName_MMMethodMMM:(NSString *)eventName
{
    [[NSUserDefaults standardUserDefaults] setObject:eventName forKey:[NSString stringWithFormat:@"sdk_event_%@",eventName]];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)isReportEventName_MMMethodMMM:(NSString *)eventName
{
    NSString *saveName = [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"sdk_event_%@",eventName]];
    
    if (saveName) {
        return YES;
    }
    return NO;
}

+ (void)saveAlready14Age_MMMethodMMM:(BOOL)isAge14
{
    [[NSUserDefaults standardUserDefaults]  setBool:isAge14 forKey:@"sdk_is14age"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)isAlready14Age_MMMethodMMM
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"sdk_is14age"];
}


@end
