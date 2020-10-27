//
//  HelloUtils.m
//
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import "GamaUtils.h"
#import "HelloHeader.h"
#import <Photos/Photos.h>

#define GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY @"GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY"
#define GAMA_LAST_STARPY_LOGIN_USER_INFO_KEY @"GAMA_LAST_STARPY_LOGIN_USER_INFO_KEY"
#define GAMA_NOTE_SAVE_PHOTO @"GAMA_NOTE_SAVE_PHOTO"

#define kEncryKey @"GAMAENKEY"
#define kEncryIv  @"GAMAENIV"

#define hFirstLoginKey              @"hello_first_login_sign"
#define hFirstGuestLoginKey         @"hello_first_guest_login_sign"
#define hTodayNotShowAnyMoreKey     @"hello_today_not_show_any_more_sign"
#define hLoginType                  @"hello_login_type"
#define hLoginUserName              @"hello_login_user_name"
#define hLogoutClickedKey           @"hello_logout_clicked_sign"

#define kLoadingTag     9999

#define titleMaxFontSize    17
#define titleMinFontSize    9

@implementation GamaUtils

+ (BOOL)isFirstLogin
{
    if (![self _userdefaultGetObjForKey:hFirstLoginKey]) {
        return NO;
    }
    return YES;
}

+ (void)firstLoginSign
{
    NSString *sign = @"firstLoginSign";
    [self _userdefaultSetObject:sign forKey:hFirstLoginKey];
}

+ (BOOL)isFirstGuestLogin
{
    if (![self _userdefaultGetObjForKey:hFirstGuestLoginKey]) {
        return NO;
    }
    return YES;
}

+ (void)firstGuestLoginSign
{
    NSString *sign = @"firstGuestLoginSign";
    [self _userdefaultSetObject:sign forKey:hFirstLoginKey];
}

+ (BOOL)hasClickLogout
{
    if (![self _userdefaultGetObjForKey:hLogoutClickedKey]) {
        return NO;
    }
    return YES;
}

+ (void)logoutSign
{
    NSString *sign = @"helloLogoutSign";
    [self _userdefaultSetObject:sign forKey:hLogoutClickedKey];
}

+ (void)removeLogoutSign
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:hLogoutClickedKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)isAccountValid
{
    return YES;
}

#pragma mark - NSUserdefault

+ (void)setLoginType:(NSString *)loginType
{
    
}

+ (NSString *)getLoginType
{
    return @"";
}

+ (BOOL)getTodayNotShowAdwallAnyMoreStatus
{
    return [self _userdefaultGetBoolForKey:hTodayNotShowAnyMoreKey];
}

+ (void)setTodayNotShowAdwallAnyMoreStatus:(BOOL)checkedStatus
{
    [self _userdefaultSetBool:checkedStatus forKey:hTodayNotShowAnyMoreKey];
}

// ---- register excute two times
+ (void)recordStateLoginWithType:(NSString *)type andUserName:(NSString *)name
{
    NSUserDefaults *tempUserDeafults = [NSUserDefaults standardUserDefaults];
    if (type) {
        [tempUserDeafults setObject:type forKey:hLoginType];
    }
    if (name) {
        [tempUserDeafults setObject:name forKey:hLoginUserName];
    }
    
    [tempUserDeafults synchronize];
}

+ (void)getStateLoginWithType:(NSString **)type andUserName:(NSString **)name
{
    NSUserDefaults *tempUserDeafults = [NSUserDefaults standardUserDefaults];
    [tempUserDeafults synchronize];
    
    if (type != nil) {
        @try {
            *type = [tempUserDeafults stringForKey:hLoginType];
        } @catch(NSException* exp) {
            *type = @"";
        }
    }
    if (name != nil) {
        @try {
            *name = [tempUserDeafults stringForKey:hLoginUserName];
        } @catch(NSException* exp) {
            *name = @"";
        }
    }
}

+ (void)removeStateLogin
{
    NSUserDefaults *tempUserDeafults = [NSUserDefaults standardUserDefaults];
    [tempUserDeafults removeObjectForKey:hLoginType];
    [tempUserDeafults removeObjectForKey:hLoginUserName];
    [tempUserDeafults synchronize];
}

+ (BOOL)hadLastLoginStatus
{
    NSString *loginType = nil;
    NSString *userNameID = nil;
    [GamaUtils getStateLoginWithType:&loginType andUserName:&userNameID];
    if (loginType.length > 0 && userNameID.length > 0) {
        return YES;
    }
    return NO;
}

#pragma mark - UI

+ (UIButton *)initBtnWithNormalImage:(NSString *)normalImageName
                    highlightedImage:(NSString *)highlightedImageName
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:GetImage(normalImageName) forState:UIControlStateNormal];
    [btn setImage:GetImage(highlightedImageName) forState:UIControlStateHighlighted];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (UIButton *)initBtnWithTag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

+ (UIButton *)initBtnWithTitle:(NSString *)titleText
                                 tag:(NSUInteger)tag
                            selector:(SEL)selector
                              target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:titleText forState:0];
    [btn setTitleColor:[UIColor blackColor] forState:0];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [btn.layer setBorderWidth:1.5f];
    [btn.layer setBorderColor:RGB(32, 45, 57)];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:5.0f];
    
    return btn;
}

+ (UIButton *)initBtnWithType:(UIButtonType)type
                        title:(NSString *)titleText
                          tag:(NSUInteger)tag
                     selector:(SEL)selector
                       target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:type];
    [btn setTitle:titleText forState:0];
    [btn setTitleColor:[UIColor blackColor] forState:0];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [btn.layer setBorderWidth:1.5f];
    [btn.layer setBorderColor:[UIColor grayColor].CGColor];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:5.0f];
    [btn.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:14]];
    
    return btn;
}

+ (UIButton *)initBtnWithTitle:(NSString *)titleText
               backgroundColor:(NSString *)hexColor
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:titleText forState:0];
    [btn setTitleColor:[UIColor whiteColor] forState:0];
    [btn setBackgroundColor:[UIColor colorWithHexString:hexColor]];
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [btn.layer setBorderWidth:1.0f];
    [btn.layer setBorderColor:[UIColor whiteColor].CGColor];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:2.0f];
    
    return btn;
}

+ (UIButton *)initBtnWithTitle:(NSString *)titleText
               backgroundImage:(NSString *)imageStr
                           tag:(NSUInteger)tag
                      selector:(SEL)selector
                        target:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:titleText forState:0];
    [btn setTitleColor:[UIColor whiteColor] forState:0];
//    [btn setBackgroundImage:GetImage(imageStr) forState:0];
    [btn setBackgroundColor:RGB(88, 133, 239)];
    btn.layer.cornerRadius = FONTSIZE(8);
    [btn setTag:tag];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [btn.titleLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(12)]];
    return btn;
}

+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect:(CGRect)rect
                                               urlStirng:(NSString *)urlString
                                            cornerRadius:(CGFloat)radius
                                                delegate:(id)delegate
{
    WKWebView *resultWebView;
    NSString *jScript = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
    WKUserScript *wkUScript = [[WKUserScript alloc] initWithSource:jScript injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
    WKUserContentController *wkUController = [[WKUserContentController alloc] init]; [wkUController addUserScript:wkUScript];
    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
    wkWebConfig.userContentController = wkUController;
    resultWebView = [[WKWebView alloc] initWithFrame:rect configuration:wkWebConfig];

//    resultWebView = [[WKWebView alloc] initWithFrame:rect];
//    resultWebView.scalesPageToFit = YES;
//    resultWebView.delegate = delegate;
    resultWebView.UIDelegate = delegate;
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
    [resultWebView loadRequest:request];
    [request release];
    return [resultWebView autorelease];
}

+ (HelloTextField *)customTextfieldWidgetWithLeftView:(NSString *)imageName rightView:(UIView *)right placeholder:(NSString *)placeholder delegate:(id)delegate
{
    CGFloat onCalWidth = [ViewCalculationCriteria shareCriteria].calWidth;
    CGFloat onCalHeight = [ViewCalculationCriteria shareCriteria].calHeight;

    UIImageView *icon = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    [icon setFrame:CGRectMake(0, 0, 93/bgOriginWidth * onCalWidth, 58/bgOriginHeight * onCalHeight)];// 要用比例 93*58
    
    HelloTextField *resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:icon rightView:right];
    [icon release];
    [resultText setBackground:GetImage(textfield_bg)];
    resultText.initDistance = (140)/bgOriginWidth * onCalWidth;
    resultText.leftViewDistance = 27/bgOriginWidth * onCalWidth;
    //    resultText.rightViewDistance = 50/1070.0f * rate * curWidth;
    resultText.placeholder = placeholder;
    resultText.clearButtonMode = UITextFieldViewModeAlways;
    resultText.delegate = delegate;
    
    // font size and color
    NSMutableParagraphStyle *style = [resultText.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
    style.minimumLineHeight = resultText.font.lineHeight - (resultText.font.lineHeight - [UIFont systemFontOfSize:12.0].lineHeight) / 2.0;
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12],NSParagraphStyleAttributeName:style}];
    [resultText setAttributedPlaceholder:attrStr];
    [attrStr release];
    
    return [resultText autorelease];
}

+ (void)makeTextFieldPlaceHolderProperty:(UITextField *)textField
{
    NSMutableParagraphStyle *style = [textField.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
    style.minimumLineHeight = textField.font.lineHeight - (textField.font.lineHeight - [UIFont systemFontOfSize:14.0].lineHeight) / 2.0;
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:textField.placeholder attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSParagraphStyleAttributeName:style}];
    [style release];
    [textField setAttributedPlaceholder:attrStr];
    [attrStr release];
}

+ (CGSize)calculateSizeOfLabel:(UILabel *)label
{
    NSString *labelStr = label.text;
    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(1000, 1000)
                                              options:NSStringDrawingTruncatesLastVisibleLine
                                           attributes:@{NSFontAttributeName:label.font}
                                              context:nil].size;
    
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

+ (CGSize)calculateSizeOfLabel:(UILabel *)label andWidth:(CGFloat)width
{
    NSString *labelStr = label.text;
    
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    style.lineBreakMode = NSLineBreakByWordWrapping;
    style.alignment = NSTextAlignmentLeft;
    
    
    CGSize resultSize = [labelStr boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading //NSStringDrawingTruncatesLastVisibleLine
                                            attributes:@{NSFontAttributeName:label.font,NSParagraphStyleAttributeName:style}
                                               context:nil].size;
    [style release];
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

+ (NSString *)spliceSpecialString
{
    NSMutableString *gamaUrlStr = [[NSMutableString alloc] init];
    
    NSString *timeStamp = [GamaFunction getTimeStamp];
    // md5 和第三方充值的 sign 规则一样  appkey+gamecode(无ios)+timestamp
    NSString *signature = [GamaFunction getMD5StrFromString:[NSString stringWithFormat:@"%@%@%@",
                                                           SDKConReaderGetString(GAMA_GAME_KEY),
                                                           SDKConReaderGetString(SDK_GAME_CODE),
                                                           timeStamp
                                                           ]];
    //    [signature lowercaseString];
    
    NSDictionary *dic = nil;
    @try {
        dic = @{
                @"roleId"                   :           [SdkUserInfoModel shareInfoModel].roleID,
                @"roleLevel"                :           [SdkUserInfoModel shareInfoModel].roleLevel,
                @"roleName"                 :           [SdkUserInfoModel shareInfoModel].roleName,
                @"serverCode"               :           [SdkUserInfoModel shareInfoModel].serverCode,
                @"serverName"               :           [SdkUserInfoModel shareInfoModel].serverName,
                
                //
                @"userId"                   :           [SdkUserInfoModel shareInfoModel].userId,
                @"gameCode"                 :           [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                @"timestamp"                :           timeStamp,
                @"signature"                :           [signature lowercaseString],
                @"psid"                     :           @"62",
                
                // public
                @"packageName"      :     [GamaFunction getBundleIdentifier],
                @"mac"              :     [[GamaFunction getMacaddress] lowercaseString],
                @"idfa"             :     [[GamaFunction getIdfa]       lowercaseString],
                @"uuid"             :     [[GamaFunction getGamaUUID]     lowercaseString],
                @"versionName"      :     [GamaFunction getBundleShortVersionString],
                @"versionCode"      :     [GamaFunction getBundleVersion],
                @"systemVersion"    :     [GamaFunction getSystemVersion],
                @"deviceType"       :     [GamaFunction getDeviceType],
                @"operatingSystem"  :     @"ios",
                @"gameLanguage"     :     [GamaFunction getServerLocaleStrWithGameLanguage:SDKConReaderGetString(GAMA_GAME_LANGUAGE)],
                @"osLanguage"       :     [GamaFunction getPreferredLanguage],
                
                @"loginTimestamp"   :     [SdkUserInfoModel shareInfoModel].timestamp ?
                [SdkUserInfoModel shareInfoModel].timestamp : @"",
                @"accessToken"      :     [SdkUserInfoModel shareInfoModel].accessToken ?
                [SdkUserInfoModel shareInfoModel].accessToken : @"",
                @"uniqueId"         :     [[GamaFunction getGamaUUID] lowercaseString],
                };
    }
    @catch (NSException *exception)
    {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At serviceParms:\n %@ \n %@", dic, exception.description]];
                       });
        GAMA_FUNCTION_LOG(exception.description);
    }
    
    NSMutableString *appendStr = [[NSMutableString alloc] init];
    for (NSString* key in dic.allKeys) {
        
        NSString *tmpVal = dic[key];
        if (![tmpVal isKindOfClass:[NSString class]]) {
            NSString *errorInfo = [NSString stringWithFormat:@"ERROR Type:%@, key:%@, value:%@\n allValue: %@",[tmpVal class],key, tmpVal,dic];
            [GamaAlertView showAlertWithMessage:errorInfo];
            NSString *fullDicInfo = [NSString stringWithFormat:@"%@",dic];
            GAMA_FUNCTION_LOG(fullDicInfo)
            continue ;
        }
        tmpVal = [tmpVal gamaUrlDecodeString];
        
        [appendStr appendFormat:@"%@=%@&",
         key,
         [GamaFunction urlEcodingFromString:tmpVal]
         
         ];
    }
    
    NSString *finalStr = [appendStr substringToIndex:appendStr.length - 1]; // 去掉 &
    [appendStr release];
    
    // domain and proj Name
    NSString *domainName = [NSString stringWithFormat:@"%@%@?",SDKConReaderGetString(GAMA_IAP_DOMAIN_NAME),SDKConReaderGetString(@"iapThirdPayProName")];
    [gamaUrlStr appendFormat:@"%@%@",domainName,finalStr];
    
//    NSLog(@"url = %@",gamaUrlStr);
    
    return [gamaUrlStr autorelease];
}

#pragma mark - Tri String

+ (NSString *)triString:(NSString *)aStr
{
    return [aStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
}

#pragma mark - Text Rule
+ (BOOL)validUserName:(NSString *)userName
{
    NSString *triStr = [userName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
    
    NSString  *regex = @"(^[A-Za-z0-9]{6,18}$)";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    return [pred evaluateWithObject:triStr];
}

+ (BOOL)validPwd:(NSString *)pwd
{
    NSString *triStr = [pwd stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *regex = @"^(?=.*[a-zA-Z])(?=.*[0-9])(?!.*[\\W]).{8,16}$";//^(?=.*[a-zA-Z])(?=.*[0-9])(?!.*[\W]).{8,16}$
    if([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]){
        regex = @"(^[A-Za-z0-9]{6,18}$)";
    }
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pred evaluateWithObject:triStr];
}

+ (BOOL)validEmail:(NSString *)email
{
    NSString *triStr = [email stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailPred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailPred evaluateWithObject:triStr];
}

+ (BOOL)validPhone:(NSString *)phone phoneRegex:(NSString *)regex
{
    NSString *triStr = [phone stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
    NSPredicate *phonePred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return ![phonePred evaluateWithObject:phone];
}

#pragma mark - private

+ (void)_userdefaultSetObject:(id)obj forKey:(NSString *)key
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:obj forKey:key];
    [ud synchronize];
}
+ (id)_userdefaultGetObjForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+ (void)_userdefaultSetBool:(BOOL)statu forKey:(NSString *)key
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:statu forKey:key];
    [ud synchronize];
}
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

#pragma mark - Toast

+ (void)gamaToastWithMsg:(NSString *)msg
{
    [self gamaToastWithMsg:msg atView:nil];
}

+ (void)gamaToastWithMsg:(NSString *)msg atView:(UIView *)baseView
{
    if (!baseView) {
        baseView = [UIApplication sharedApplication].windows[0];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        // bottom view
        UIView *aler = [[UIView alloc] initWithFrame:CGRectZero];

        aler.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.7];
        aler.alpha = 0.9f;
        aler.layer.cornerRadius = 10.0f;
        
        [baseView addSubview:aler];
        [baseView bringSubviewToFront:aler];
        
        
        NSMutableString *insertStr = [[NSMutableString alloc] initWithString:msg];
        if(insertStr.length > 26 && ![msg containsString:@"\n"]){
            [insertStr insertString:@"\n" atIndex:26];
        }

        NSString *toastString = insertStr;
        // toast text
        UILabel *toastLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        toastLabel.text = toastString;
        toastLabel.backgroundColor = [UIColor clearColor];
        toastLabel.textColor = [UIColor whiteColor];

        if([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]){
            toastLabel.font = [UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(10)];
        }else if([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]){
            toastLabel.font = [UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(12)];
        }else{
            toastLabel.font = [UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(16)];
        }
        toastLabel.textAlignment = NSTextAlignmentCenter;
        toastLabel.numberOfLines = 0;
//        toastLabel.lineBreakMode = NSLineBreakByWordWrapping;
        
        CGSize tempStringSize = [GamaUtils calculateSizeOfLabel:toastLabel];
        CGFloat _width = tempStringSize.width + 60;
        CGFloat _height = tempStringSize.height + 20;
        CGFloat _tempHeight = tempStringSize.height;
        if(insertStr.length > 26){
            _height = tempStringSize.height + 20 * 2;
            _tempHeight = tempStringSize.height*3;
        }
        
        [aler setFrame:CGRectMake(0, 0, _width, _height)];
        aler.center = baseView.center;
        
        [toastLabel setFrame:CGRectMake( 0, 0, tempStringSize.width *2 , _tempHeight)];
        toastLabel.center = CGPointMake(_width/2, _height/2);
        
        [aler addSubview:toastLabel];
        
        [toastLabel release];
        toastLabel = nil;
        
        // animation
        [UIView animateWithDuration:1.5f
                         animations:^{
                             aler.alpha = 1.0f;
                         } completion:^(BOOL finished) {
                             [aler removeFromSuperview];
                             [aler release];
                         }];
        
    });
}


+ (void)gamaStarLoadingAtView:(UIView *)baseView
{
    if (baseView == nil) {
        baseView = appTopViewController.view;
    }
    UIView *bgV = [[UIView alloc] initWithFrame:CGRectZero];
    bgV.backgroundColor = [UIColor clearColor];
    bgV.tag = kLoadingTag;
    [baseView addSubview:bgV];
    
    [bgV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(winWidth));
        make.height.equalTo(@(winHeight));
    }];

    UIView *v=[[UIView alloc] initWithFrame:CGRectZero];
    v.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.6];
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

+ (void)gamaStopLoadingAtView:(UIView *)baseView
{
    if (baseView == nil) {
        baseView = appTopViewController.view;
    }
    UIActivityIndicatorView *indicator = (UIActivityIndicatorView *)[baseView viewWithTag:kLoadingTag];
    [indicator removeFromSuperview];
}

+ (UIView *)initWithMaxTitle:(NSString *)maxTitle minTitle:(NSString *)minTitle
{
    UIView *titleView = [[UIView alloc] init];
    [titleView setBackgroundColor:[UIColor clearColor]];

    CGSize maxTextSize = [self sizeWithText:maxTitle font:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGSize minTextSize = [self sizeWithText:minTitle font:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    
    UITextField *maxTextView = [[UITextField alloc] init];
    [maxTextView setEnabled:NO];
    [maxTextView setText:maxTitle];
    [maxTextView setTextColor:RGB(84, 149, 223)];
    [maxTextView setFont:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)]];
    [titleView addSubview:maxTextView];
    [maxTextView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.equalTo(titleView).multipliedBy(0.5);
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
//        make.height.equalTo(titleView);
        make.bottom.equalTo(titleView);
        make.left.equalTo(maxTextView.mas_right);
        make.width.equalTo(@(minTextSize.width+3));//標題小文字不+3則可能出現部分內容不可見...
    }];
    return titleView;
}

+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    
}

+ (CGFloat)titleFontWedthWithMaxStr:(NSString *)maxStr minStr:(NSString *)minStr
{
    CGSize maxTextSize = [self sizeWithText:maxStr font:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMaxFontSize)] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGSize minTextSize = [self sizeWithText:minStr font:[UIFont fontWithName:@"Helvetica-Bold" size:FONTSIZE(titleMinFontSize)] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    
    return maxTextSize.width+minTextSize.width;
}


#pragma mark - 整合部分
+ (void)gama_guestLoginSign
{
    [[NSUserDefaults standardUserDefaults] setObject:@"gama_guest" forKey:@"gama_guest_sign"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)gama_hadEverGuestLogin
{
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"gama_guest_sign"]) {
        return YES;
    }
    return NO;
}
#pragma mark 保存免注册账号密码至相册
+ (void)gama_saveGuestAccountToPhoto:(UIView *)curView
{
    // to do
    NSLog(@"保存guest账号密码截图到相册");
    // create image
    UIGraphicsBeginImageContext(CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height));
    [curView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *extractImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData *imageData = UIImagePNGRepresentation(extractImage);
    UIImage *img = [UIImage imageWithData:imageData];
    
    // 根据英文版本审核时通常因为相册问题被拒绝
//    [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"TXT_GUEST_SAVE_IMAGE_OR_NOT")
//                           completion:^(NSInteger clickedBtnIndex) {
//                               if (clickedBtnIndex == 1) {
//                                   // save img to photo
                                   UIImageWriteToSavedPhotosAlbum(img, self, @selector(_image:didFinishSavingWithError:contextInfo:), NULL);
//                               }
//                           } andButtonTitles:SDKConReaderGetLocalizedString(@"BTN_TITLE_TXT_CANCEL"),SDKConReaderGetLocalizedString(@"BTN_TITLE_TXT_COMFIRM"), nil];
    
    // save img to photo
    //    UIImageWriteToSavedPhotosAlbum(img, self, @selector(_image:didFinishSavingWithError:contextInfo:), NULL);
}

+ (void)gama_getGuestAccount:(NSString **)userName andPassword:(NSString **)password
{
    if (password) {
        *password = [[GamaLoginFuncionPort getLastLoginUserInfo] objectForKey:@"gamaGuestUserPassword"];
    }
    if (userName) {
        *userName = [[GamaLoginFuncionPort getLastLoginUserInfo] objectForKey:@"gamaGuestUserName"];
    }
}

+ (void)gama_saveGuestEncryptedUserInfoToUserDefaultWith:(NSString *)userName
                                           andPassword:(NSString *)password
{
    //紀錄本次登陸的用戶信息
    NSDictionary * thisUserInfoDic=[NSDictionary dictionaryWithObjectsAndKeys:
                                    userName,@"gamaGuestUserName",
                                    password,@"gamaGuestUserPassword",
                                    nil];
    NSMutableDictionary * encryptDic=[[[NSMutableDictionary alloc]init]autorelease];
    for (NSString * oneKey in thisUserInfoDic.allKeys)
    {
        NSString * valueStr=[thisUserInfoDic objectForKey:oneKey];
        NSString * encryptKey = [self _loginEncryptFromString:oneKey];
        NSString * encryptValue = [self _loginEncryptFromString:valueStr];
        [encryptDic addEntriesFromDictionary:@{encryptKey:encryptValue}];
    }
    [self _updataLastLoginUserInfoWithNewInfo:encryptDic];
}


#pragma mark - self
//纪录登陆玩家信息
+ (void)_updataLastLoginUserInfoWithNewInfo:(NSDictionary *)loginUserInfo
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

+ (NSString *)loginEncryptFromString:(NSString *)aString
{
    return [GamaSecurity getEncryptStringFromString:aString WithKey:kEncryKey iv:kEncryIv];
}

+ (NSString *)loginDecryptFromString:(NSString *)aString
{
    return [GamaSecurity getDecryptStringFromString:aString withKey:kEncryKey iv:kEncryIv];
}

// 保存图片到相册后的结果
+ (void)_image: (UIImage *) image didFinishSavingWithError: (NSError *) error contextInfo: (void *) contextInfo
{
    NSString *msg = nil ;
    if(error != NULL){
        msg = SDKConReaderGetLocalizedString(@"ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_FAIL") ;
    }else{
        msg = SDKConReaderGetLocalizedString(@"ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_SUCCESS") ;
    }
    
    [GamaUtils gamaToastWithMsg:msg];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_NOTE_SAVE_PHOTO object:nil userInfo:nil];
}

#pragma mark -

+ (void)saveUserInfo:(NSString *)userName andPassword:(NSString *)password toFile:(NSString*)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:fileName];
    
    NSString *encryptPwd = [self loginEncryptFromString:password];
    
    NSDictionary * userInfoDic = [NSDictionary dictionaryWithObjectsAndKeys:
                                  userName,encryptPwd,// user name 不需要加密，加密密码即可
                                  nil];
    [userInfoDic writeToFile:filename atomically:YES];
}

+ (void)getUserInfo:(NSString **)userName andPassword:(NSString **)password fromFile:(NSString*)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filename = [path stringByAppendingPathComponent:fileName];
    
    NSDictionary * userInfodic = [[NSDictionary dictionaryWithContentsOfFile:filename] retain];
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
    [userInfodic release];
}
@end
