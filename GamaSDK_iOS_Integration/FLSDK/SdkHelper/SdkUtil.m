//
//  HelloUtils.m
//
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 sunn. All rights reserved.
//

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

//#define winWidth        [SUtil getCurrentScreenFrame_MMMethodMMM].size.width//[UIScreen mainScreen].bounds.size.width
//#define winHeight       [SUtil getCurrentScreenFrame_MMMethodMMM].size.height//[UIScreen mainScreen].bounds.size.height
#define FONT_Helvetica_BOLD      @"Helvetica-Bold"
#define FONT_Helvetica           wwwww_tag_wwwww_Helvetica
#define FONTSIZE(fontsize)  IS_IPAD ? fontsize+7.0f : fontsize


#define kLoadingTag     9999

#define titleMaxFontSize    17
#define titleMinFontSize    9

#define SDK_PHONE_AREA_CODE  wwwww_tag_wwwww_SDK_PHONE_AREA_CODE

@implementation SdkUtil


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

//    resultWebView = [[WKWebView alloc] initWithFrame:rect];
//    resultWebView.scalesPageToFit = YES;
//    resultWebView.delegate = delegate;
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
                                               options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading //NSStringDrawingTruncatesLastVisibleLine
                                            attributes:@{NSFontAttributeName:label.font,NSParagraphStyleAttributeName:style}
                                               context:nil].size;
    
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

#pragma mark - Tri String

+ (NSString *)triString_MMMethodMMM:(NSString *)aStr
{
    return [aStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
}

#pragma mark - Text Rule
+ (BOOL)validUserName_MMMethodMMM:(NSString *)accountName
{


    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_account_empty)];
        return NO;
    }
    
//    accountName = [accountName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格

//    accountName = [accountName stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *regex_email = @"^.+@\\w+\\..+$"; //邮箱格式，客户端放得比较宽
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex_email];
    
    BOOL isOk = [pred evaluateWithObject:accountName];
    if(!isOk){
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
    }
    return isOk;
    
//    if (![accountName containsString:@"@"]) {
//        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_format)];
//        return NO;
//    }
//    return YES;
    
}

+ (BOOL)validPwd_MMMethodMMM:(NSString *)pwd
{
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return NO;
    }
    
    if (pwd.length < 6) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_format)];
        return NO;
    }
    return YES;
}

//+ (BOOL)validEmail_MMMethodMMM:(NSString *)email
//{
//    NSString *triStr = [email stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
//    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
//    NSPredicate *emailPred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
//    return [emailPred evaluateWithObject:triStr];
//}

+ (BOOL)validPhone_MMMethodMMM:(NSString *)phone phoneRegex_MMMethodMMM:(NSString *)regex
{
//    NSString *triStr = [phone stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
    NSPredicate *phonePred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [phonePred evaluateWithObject:phone];
}

#pragma mark - Toast

+ (void)toastMsg_MMMethodMMM:(NSString *)msg
{
    [self toastMsg_MMMethodMMM:msg atView_MMMethodMMM:nil];
}

+ (UIView *)findKeyWindow {

    //UIApplication *app = [UIApplication sharedApplication];
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
            //寻找keyboardWindow层的UIInputWindowController
            if ([nextResponder isKindOfClass:NSClassFromString(@"UIInputWindowController")]) {
                for(int y = 0; y < [nextResponder.view.subviews count]; y++) {
                    //寻找UIInputWindowController层的UIInputSetContainerView
                    if([[keyboardContainerView description] hasPrefix:@"<UIInputSetContainerView"] == YES){
                        for(int t = 0; t < [keyboardContainerView.subviews count]; t++) {
                            keyboardHostView = [keyboardContainerView.subviews objectAtIndex:y];
                            //寻找UIInputSetContainerView层的UIInputSetHostView
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
        baseView = [self findKeyWindow];//[UIApplication sharedApplication].keyWindow;//windows[0];
//        baseView = [SUtil getCurrentWindow_MMMethodMMM];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        // bottom view
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
        // toast text
        UILabel *toastLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        toastLabel.text = toastString;
        toastLabel.backgroundColor = [UIColor clearColor];
        toastLabel.textColor = [UIColor whiteColor];

        
        toastLabel.font = [UIFont fontWithName:FONT_Helvetica_BOLD size:FONTSIZE(16)];
        toastLabel.textAlignment = NSTextAlignmentCenter;
        toastLabel.numberOfLines = 0;
//        toastLabel.lineBreakMode = NSLineBreakByWordWrapping;
        
        CGSize tempStringSize = [SdkUtil calculateSizeOfLabel_MMMethodMMM:toastLabel];
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
        
        // animation
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
    UIView *bgV = [[TouchEventInterruptView alloc] initWithFrame:CGRectZero];
    bgV.backgroundColor = [UIColor clearColor];
    bgV.tag = kLoadingTag;
    //bgV.userInteractionEnabled = YES;
    
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


//#pragma mark 保存免注册账号密码至相册
//+ (void)gama_saveGuestAccountToPhoto:(UIView *)curView
//{
//    // to do
//    NSLog(wwwww_tag_wwwww_auct_conditionit);
//    // create image
//    UIGraphicsBeginImageContext(CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height));
//    [curView.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage *extractImage = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    NSData *imageData = UIImagePNGRepresentation(extractImage);
//    UIImage *img = [UIImage imageWithData:imageData];
//    
//    // 根据英文版本审核时通常因为相册问题被拒绝
////    [GamaAlertView showAlertWithMessage_MMMethodMMM:GetString(wwwww_tag_wwwww_TXT_GUEST_SAVE_IMAGE_OR_NOT)
////                           completion:^(NSInteger clickedBtnIndex) {
////                               if (clickedBtnIndex == 1) {
////                                   // save img to photo
//                                   UIImageWriteToSavedPhotosAlbum(img, self, @selector(_image:didFinishSavingWithError:contextInfo:), NULL);
////                               }
////                           } andButtonTitles_MMMethodMMM:GetString(wwwww_tag_wwwww_BTN_TITLE_TXT_CANCEL),GetString(wwwww_tag_wwwww_BTN_TITLE_TXT_COMFIRM), nil];
//    
//    // save img to photo
//    //    UIImageWriteToSavedPhotosAlbum(img, self, @selector(_image:didFinishSavingWithError:contextInfo:), NULL);
//}

#pragma mark - self
//纪录登陆玩家信息
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
    return [SecurityUtil getEncryptStringFromString_MMMethodMMM:aString WithKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
}

+ (NSString *)loginDecryptFromString_MMMethodMMM:(NSString *)aString
{
    return [SecurityUtil getDecryptStringFromString_MMMethodMMM:aString withKey_MMMethodMMM:kEncryKey iv_MMMethodMMM:kEncryIv];
}

// 保存图片到相册后的结果
+ (void)_image_MMMethodMMM: (UIImage *) image didFinishSavingWithError_MMMethodMMM: (NSError *) error contextInfo_MMMethodMMM: (void *) contextInfo
{
    NSString *msg = nil ;
    if(error != NULL){
        msg = GetString(wwwww_tag_wwwww_ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_FAIL) ;
    }else{
        msg = GetString(wwwww_tag_wwwww_ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_SUCCESS) ;
    }
    
    [SdkUtil toastMsg_MMMethodMMM:msg];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_NOTE_SAVE_PHOTO object:nil userInfo:nil];
}

#pragma mark -

//+ (void)saveUserInfo_MMMethodMMM:(NSString *)userName andPassword_MMMethodMMM:(NSString *)password toFile_MMMethodMMM:(NSString*)fileName
//{
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
//    NSString *path = [paths objectAtIndex:0];
//    NSString *filename = [path stringByAppendingPathComponent:fileName];
//    
//    NSString *encryptPwd = [self loginEncryptFromString_MMMethodMMM:password];
//    
//    NSDictionary * userInfoDic = [NSDictionary dictionaryWithObjectsAndKeys:
//                                  userName,encryptPwd,// user name 不需要加密，加密密码即可
//                                  nil];
//    [userInfoDic writeToFile:filename atomically:YES];
//}
//
//+ (void)getUserInfo_MMMethodMMM:(NSString **)userName andPassword_MMMethodMMM:(NSString **)password fromFile_MMMethodMMM:(NSString*)fileName
//{
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
//    NSString *path = [paths objectAtIndex:0];
//    NSString *filename = [path stringByAppendingPathComponent:fileName];
//    
//    NSDictionary * userInfodic = [NSDictionary dictionaryWithContentsOfFile:filename];
//    if (userInfodic.count > 0 || userInfodic!=nil) {
//        if (userName != nil)  {
//            @try {
//                *userName = [[userInfodic allValues]objectAtIndex:0];
//            }
//            @catch(NSException* exp) {
//                *userName = @"";
//            }
//        }
//        if (password != nil) {
//            @try {
//                *password = [[userInfodic allKeys]objectAtIndex:0];
//            }
//            @catch(NSException* exp) {
//                *password = @"";
//            }
//        }
//    }
////    [userInfodic release];
//}

+(NSMutableArray *)getShowBtnDatas_MMMethodMMM:(ConfigModel *)mConfigModel appleBtn_MMMethodMMM:(BOOL) appleBtn guestBtn_MMMethodMMM:(BOOL) guestBtn
{

    NSMutableArray *loginBtnDatas = [NSMutableArray array];
    if (mConfigModel.appleLogin && appleBtn) {
        
        if (@available(iOS 13.0, *)) {
            LoginButtonData *lbds = [[LoginButtonData alloc] init];
            lbds.tag = appleLoginActTag;
            lbds.btnType = LOGIN_TYPE_APPLE;
            [loginBtnDatas addObject:lbds];
        }
        
    }
    if (mConfigModel.visitorLogin && guestBtn) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = guestLoginActTag;
        lbds.btnType = LOGIN_TYPE_GUEST;
        lbds.image = mw_guest_icon;
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.fbLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = fbLoginActTag;
        lbds.btnType = LOGIN_TYPE_FB;
        lbds.image = mw_fb_icon;
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.googleLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = googleLoginActTag;
        lbds.btnType = LOGIN_TYPE_GOOGLE;
        lbds.image = mw_gp_icon;
        [loginBtnDatas addObject:lbds];
    }
    if (mConfigModel.lineLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = lineLoginActTag;
        lbds.btnType = LOGIN_TYPE_LINE;
        lbds.image = mw_line_icon;
        [loginBtnDatas addObject:lbds];
    }
    
#ifdef SDK_KR
    if (mConfigModel.naverLogin) {
        LoginButtonData *lbds = [[LoginButtonData alloc] init];
        lbds.tag = naverLoginActTag;
        lbds.btnType = LOGIN_TYPE_NAVER;
        lbds.image = mw_naver_icon;
        [loginBtnDatas addObject:lbds];
    }
#endif
    
    return loginBtnDatas;
}

+ (void)saveFloatConfigData_MMMethodMMM:(NSString *)cfgData
{
    [[NSUserDefaults standardUserDefaults] setObject:cfgData forKey:@"SDK_FloatConfigData"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (NSString *)getFloatConfigData_MMMethodMMM
{
    NSString *cfgData = [[NSUserDefaults standardUserDefaults] objectForKey:@"SDK_FloatConfigData"];
    return cfgData;
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
//        NSString *areaCodeKey = pInfo[wwwww_tag_wwwww_key];
        NSString *areaCodeValue = pInfo[wwwww_tag_wwwww_value];
//        NSString *regularExpression = pInfo[wwwww_tag_wwwww_pattern];
        
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
