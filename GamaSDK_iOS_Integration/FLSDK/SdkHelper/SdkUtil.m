//
//  HelloUtils.m
//
//
//  Created by Sunny on 17/2/6.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import "SdkUtil.h"
#import "HelloHeader.h"
#import <Photos/Photos.h>


#define GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY @"GAMA_LAST_GUEST_LOGIN_USER_INFO_KEY"
#define GAMA_NOTE_SAVE_PHOTO @"GAMA_NOTE_SAVE_PHOTO"

#define kEncryKey @"GAMAENKEY"
#define kEncryIv  @"GAMAENIV"

#define hLoginType                  @"hello_login_type"
#define hLoginUserName              @"hello_login_user_name"

#define kLoadingTag     9999

#define titleMaxFontSize    17
#define titleMinFontSize    9

@implementation SdkUtil


#pragma mark - UI


//+ (WKWebView *)createWKWebViewAndAddToParentViewWithRect:(CGRect)rect
//                                               urlStirng:(NSString *)urlString
//                                            cornerRadius:(CGFloat)radius
//                                                delegate:(id)delegate
//{
//    WKWebView *resultWebView;
//    NSString *jScript = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
//    WKUserScript *wkUScript = [[WKUserScript alloc] initWithSource:jScript injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
//    WKUserContentController *wkUController = [[WKUserContentController alloc] init]; [wkUController addUserScript:wkUScript];
//    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
//    wkWebConfig.userContentController = wkUController;
//    resultWebView = [[WKWebView alloc] initWithFrame:rect configuration:wkWebConfig];
//
////    resultWebView = [[WKWebView alloc] initWithFrame:rect];
////    resultWebView.scalesPageToFit = YES;
////    resultWebView.delegate = delegate;
//    resultWebView.UIDelegate = delegate;
//
//    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
//    [resultWebView loadRequest:request];
//    [request release];
//    return [resultWebView autorelease];
//}



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
    
    return CGSizeMake(ceil(resultSize.width)+1, ceil(resultSize.height)+1);
}

+ (NSString *)spliceSpecialString
{
    NSMutableString *gamaUrlStr = [[NSMutableString alloc] init];
    
    NSString *timeStamp = [SUtil getTimeStamp];
    // md5 和第三方充值的 sign 规则一样  appkey+gamecode(无ios)+timestamp
    NSString *signature = [SUtil getMD5StrFromString:[NSString stringWithFormat:@"%@%@%@",
                                                           APP_KEY,
                                                           GAME_CODE,
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
                @"gameCode"                 :           [NSString stringWithFormat:@"%@",GAME_CODE],
                @"timestamp"                :           timeStamp,
                @"signature"                :           [signature lowercaseString],
                @"psid"                     :           @"62",
                
                // public
                @"packageName"      :     [SUtil getBundleIdentifier],
                @"mac"              :     [[SUtil getMacaddress] lowercaseString],
                @"idfa"             :     [[SUtil getIdfa]       lowercaseString],
                @"uuid"             :     [[SUtil getGamaUUID]     lowercaseString],
                @"versionName"      :     [SUtil getBundleShortVersionString],
                @"versionCode"      :     [SUtil getBundleVersion],
                @"systemVersion"    :     [SUtil getSystemVersion],
                @"deviceType"       :     [SUtil getDeviceType],
                @"operatingSystem"  :     @"ios",
                @"gameLanguage"     :     GAME_LANGUAGE,
                @"osLanguage"       :     [SUtil getPreferredLanguage],
                
                @"loginTimestamp"   :     [SdkUserInfoModel shareInfoModel].timestamp ?
                [SdkUserInfoModel shareInfoModel].timestamp : @"",
                @"accessToken"      :     [SdkUserInfoModel shareInfoModel].accessToken ?
                [SdkUserInfoModel shareInfoModel].accessToken : @"",
                @"uniqueId"         :     [[SUtil getGamaUUID] lowercaseString],
                };
    }
    @catch (NSException *exception)
    {
        dispatch_async(dispatch_get_main_queue(),^
                       {
                           [AlertUtil showAlertWithMessage:[NSString stringWithFormat:@"!!!ERROR Dic At serviceParms:\n %@ \n %@", dic, exception.description]];
                       });
        SDK_LOG(exception.description);
    }
    
    NSMutableString *appendStr = [[NSMutableString alloc] init];
    for (NSString* key in dic.allKeys) {
        
        NSString *tmpVal = dic[key];
        if (![tmpVal isKindOfClass:[NSString class]]) {
            NSString *errorInfo = [NSString stringWithFormat:@"ERROR Type:%@, key:%@, value:%@\n allValue: %@",[tmpVal class],key, tmpVal,dic];
            [AlertUtil showAlertWithMessage:errorInfo];
            NSString *fullDicInfo = [NSString stringWithFormat:@"%@",dic];
            SDK_LOG(fullDicInfo);
            continue ;
        }
        tmpVal = [tmpVal urlDecode];
        
        [appendStr appendFormat:@"%@=%@&",
         key,
         [SUtil urlEcodingFromString:tmpVal]
         
         ];
    }
    
    NSString *finalStr = [appendStr substringToIndex:appendStr.length - 1]; // 去掉 &
   
    
    // domain and proj Name
    NSString *domainName = [NSString stringWithFormat:@"%@%@?",[SDKConReader getLoginUrl],api_login_guest];
    [gamaUrlStr appendFormat:@"%@%@",domainName,finalStr];
    
//    NSLog(@"url = %@",gamaUrlStr);
    
    return gamaUrlStr;
}

#pragma mark - Tri String

+ (NSString *)triString:(NSString *)aStr
{
    return [aStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
}

#pragma mark - Text Rule
+ (BOOL)validUserName:(NSString *)accountName
{
//    return [userName containsString:@"@"];
//    NSString *triStr = [userName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];// 去掉左右两边的空格
//
//    NSString  *regex = @"@";
//    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
//
//    return [pred evaluateWithObject:triStr];
    
    if (!accountName || [accountName isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"py_account_empty")];
        return NO;
    }
    
    if (![accountName containsString:@"@"]) {
        [SdkUtil toastMsg:GetString(@"text_account_format")];
        return NO;
    }
    return YES;
    
}

+ (BOOL)validPwd:(NSString *)pwd
{
    if (!pwd || [pwd isEqualToString:@""]) {
        [SdkUtil toastMsg:GetString(@"py_password_empty")];
        return NO;
    }
    
    if (pwd.length < 6) {
        [SdkUtil toastMsg:GetString(@"text_pwd_format")];
        return NO;
    }
    return YES;
    
//    NSString *triStr = [pwd stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
//    NSString *regex = @"^(?=.*[a-zA-Z])(?=.*[0-9])(?!.*[\\W]).{8,16}$";//^(?=.*[a-zA-Z])(?=.*[0-9])(?!.*[\W]).{8,16}$
//
//    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
//    return [pred evaluateWithObject:triStr];
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

+ (void)toastMsg:(NSString *)msg
{
    [self toastMsg:msg atView:nil];
}

+ (void)toastMsg:(NSString *)msg atView:(UIView *)baseView
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

        
        toastLabel.font = [UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(16)];
        toastLabel.textAlignment = NSTextAlignmentCenter;
        toastLabel.numberOfLines = 0;
//        toastLabel.lineBreakMode = NSLineBreakByWordWrapping;
        
        CGSize tempStringSize = [SdkUtil calculateSizeOfLabel:toastLabel];
        CGFloat _width = tempStringSize.width + 60;
        CGFloat _height = tempStringSize.height + 20;
        CGFloat _tempHeight = tempStringSize.height;
        if(insertStr.length > 26){
            _height = tempStringSize.height + 20 * 2;
            _tempHeight = tempStringSize.height*3;
        }
        
        [aler setFrame:CGRectMake(0, 0, _width, _height)];
        
        CGPoint b_c = baseView.center;
        aler.center = CGPointMake( b_c.x,b_c.y + b_c.y / 2);
        
        [toastLabel setFrame:CGRectMake( 0, 0, tempStringSize.width *2 , _tempHeight)];
        toastLabel.center = CGPointMake(_width/2, _height/2);
        
        [aler addSubview:toastLabel];
        
       
        toastLabel = nil;
        
        // animation
        [UIView animateWithDuration:1.5f
                         animations:^{
                             aler.alpha = 1.0f;
                         } completion:^(BOOL finished) {
                             [aler removeFromSuperview];
                             
                         }];
        
    });
}


+ (void)showLoadingAtView:(UIView *)baseView
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

+ (void)stopLoadingAtView:(UIView *)baseView
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


//#pragma mark 保存免注册账号密码至相册
//+ (void)gama_saveGuestAccountToPhoto:(UIView *)curView
//{
//    // to do
//    NSLog(@"保存guest账号密码截图到相册");
//    // create image
//    UIGraphicsBeginImageContext(CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height));
//    [curView.layer renderInContext:UIGraphicsGetCurrentContext()];
//    UIImage *extractImage = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    NSData *imageData = UIImagePNGRepresentation(extractImage);
//    UIImage *img = [UIImage imageWithData:imageData];
//    
//    // 根据英文版本审核时通常因为相册问题被拒绝
////    [GamaAlertView showAlertWithMessage:GetString(@"TXT_GUEST_SAVE_IMAGE_OR_NOT")
////                           completion:^(NSInteger clickedBtnIndex) {
////                               if (clickedBtnIndex == 1) {
////                                   // save img to photo
//                                   UIImageWriteToSavedPhotosAlbum(img, self, @selector(_image:didFinishSavingWithError:contextInfo:), NULL);
////                               }
////                           } andButtonTitles:GetString(@"BTN_TITLE_TXT_CANCEL"),GetString(@"BTN_TITLE_TXT_COMFIRM"), nil];
//    
//    // save img to photo
//    //    UIImageWriteToSavedPhotosAlbum(img, self, @selector(_image:didFinishSavingWithError:contextInfo:), NULL);
//}

+ (void)gama_getGuestAccount:(NSString **)userName andPassword:(NSString **)password
{
//    if (password) {
//        *password = [[GamaLoginFuncionPort getLastLoginUserInfo] objectForKey:@"gamaGuestUserPassword"];
//    }
//    if (userName) {
//        *userName = [[GamaLoginFuncionPort getLastLoginUserInfo] objectForKey:@"gamaGuestUserName"];
//    }
}
//
//+ (void)gama_saveGuestEncryptedUserInfoToUserDefaultWith:(NSString *)userName
//                                           andPassword:(NSString *)password
//{
//    //紀錄本次登陸的用戶信息
//    NSDictionary * thisUserInfoDic=[NSDictionary dictionaryWithObjectsAndKeys:
//                                    userName,@"gamaGuestUserName",
//                                    password,@"gamaGuestUserPassword",
//                                    nil];
//    NSMutableDictionary * encryptDic=[[NSMutableDictionary alloc]init];
//    for (NSString * oneKey in thisUserInfoDic.allKeys)
//    {
//        NSString * valueStr=[thisUserInfoDic objectForKey:oneKey];
//        NSString * encryptKey = [self _loginEncryptFromString:oneKey];
//        NSString * encryptValue = [self _loginEncryptFromString:valueStr];
//        [encryptDic addEntriesFromDictionary:@{encryptKey:encryptValue}];
//    }
//    [self _updataLastLoginUserInfoWithNewInfo:encryptDic];
//}


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
        msg = GetString(@"ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_FAIL") ;
    }else{
        msg = GetString(@"ALERT_MSG_SAVE_ACCOUNT_AND_PASSWORD_TO_PHOTO_SUCCESS") ;
    }
    
    [SdkUtil toastMsg:msg];
    
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
//    [userInfodic release];
}

@end
