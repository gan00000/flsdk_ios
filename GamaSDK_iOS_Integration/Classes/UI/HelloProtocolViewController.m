//
//  HelloProtocol.m
//
//  Created by Sunny on 17/2/6.
//

#import "HelloProtocolViewController.h"
#import "GamaInterfaceSDK.h"
#import <WebKit/WebKit.h>

@interface HelloProtocolViewController () <WKUIDelegate,WKNavigationDelegate>
@end

@implementation HelloProtocolViewController
{
    HelloProtocolMode m_mode;
    
    CGFloat rate ; // 校对比值
    CGFloat curWidth ;
    CGFloat curHeight ;
    CGFloat originBgWidthOfHeight;// 背景图片宽高比
    CGFloat oriBgImgWidth ;
    CGFloat oriBgImgHeight ;
    
    
    CGFloat boxWidthOfBgWidth;
    CGFloat boxHeightOfBgHeight;
    
    CGFloat titleLabelWidthOfBgWidth;
    CGFloat titleLebelHeightOfBgHeight;
    
    CGFloat noteLabelWidthOfBgWidth;
    CGFloat noteLebelHeightOfBgHeight;
    
    CGFloat checkBoxWithOfBgWidth;
    CGFloat checkBoxHeightOfBgHeight;
    
    CGFloat titleTopPadding;
    CGFloat titleAndBoxGapPadding;
    CGFloat boxGapPadding;
    CGFloat boxAndNotePadding;
    CGFloat leftPadding;
    CGFloat titleLeftPadding;
    CGFloat noteLeftPadding;
    
    CGFloat checkboxBottomPadding;
    CGFloat checkboxRightPadding;
    CGFloat backBtnWidthAndHeight;
    
    CGFloat onCalWidth;
    CGFloat onCalHeight;
    
    BOOL isLandscape;
    BOOL checkBoxOneCheckedStatus;
    BOOL checkBoxTwoCheckedStatus;
    BOOL adwallCheckBoxStatus;
    
    UIImageView *mainBg;
    
    NSString *m_webviewURL;
    NSString *m_webviewURL_addition;
    //#ifdef __IPHONE_8_0
    //    WKWebView *m_webview;
    //    WKWebView *m_webview_addition;
    //    WKWebView *ad_webview_01;
    //    WKWebView *ad_webview_02;
    //    WKWebView *ad_webview_03;
    //#else
    WKWebView *m_webview;
    WKWebView *m_webview_addition;
    WKWebView *ad_webview_01;
    WKWebView *ad_webview_02;
    WKWebView *ad_webview_03;
    WKWebView *customWebView;

    //#endif
    UIActivityIndicatorView *m_indicator;
    UIActivityIndicatorView *m_indicator_addition;
    
    NSArray *m_adwallUrls;
    NSMutableArray *m_adWallWebArr;
    UIView *m_webviewBg;
    NSString *m_customUrl;
    
    
    NSDictionary *m_specialDict;
    
    UIView *bgView;
    
    // webview上的前一页后一页
    UIButton *prePageBtn;
    UIButton *nextPageBtn;
}

- (instancetype)initWithProtocolMode:(HelloProtocolMode)mode optionUrl:(NSString *)optionUrl
{
    self = [super init];
    if (self) {
        m_mode = mode;
        m_customUrl = optionUrl;
        [self _baseValueInit];
        [self customInit];
        
    }
    return self;
}

- (instancetype)initWithProtocolMode:(HelloProtocolMode)mode optionParams:(NSDictionary *)optionDic
{
    self = [super init];
    if (self) {
        m_mode = mode;
        m_specialDict = optionDic.copy;
        [self _baseValueInit];
        [self customInit];
        
    }
    return self;
}

- (void)_baseValueInit
{
    curWidth = winWidth;
    curHeight = winHeight;
    
    oriBgImgWidth = bgOriginWidth;
    oriBgImgHeight = bgOriginHeight;
    
    isLandscape = curWidth > curHeight ? YES : NO;
    checkBoxOneCheckedStatus = checkBoxTwoCheckedStatus = adwallCheckBoxStatus = NO;
    
    CGFloat oriBgWidth = isLandscape ? 2208.0f : 1242.0f;
    CGFloat oriBgHeight = isLandscape ? 1242.0f : 2208.0f;
    
    originBgWidthOfHeight = oriBgWidth/oriBgHeight; // 原图宽高比
    
    rate = 1;  // 校对比值
    
    boxWidthOfBgWidth = isLandscape ? 937.0f/oriBgWidth : 1031.0f/oriBgWidth;
    boxHeightOfBgHeight = isLandscape ? 700.0f/oriBgHeight : 660.0f/oriBgHeight;
    
    titleLabelWidthOfBgWidth = isLandscape ? 992.0f/oriBgWidth : 1019.0f/oriBgWidth;
    titleLebelHeightOfBgHeight = isLandscape ? 78.0f/oriBgHeight : 81.0f/oriBgHeight;
    
    noteLabelWidthOfBgWidth = isLandscape ? 1273.0f/oriBgWidth : 1024.0f/oriBgWidth ;
    noteLebelHeightOfBgHeight = isLandscape ? 59.0f/oriBgHeight : 48.0f/oriBgHeight;
    
    //    checkBoxWithOfBgWidth = 88.0f/oriBgWidth;
    checkBoxHeightOfBgHeight = 100.0f/oriBgHeight;
    backBtnWidthAndHeight = 100.0f/oriBgWidth;
    
    onCalWidth = rate * curWidth;
    onCalHeight = rate * curHeight;
    
    titleTopPadding = isLandscape ? 110.0f/oriBgHeight : 270.0f/oriBgHeight;
    titleLeftPadding = isLandscape ? 608.0f/oriBgWidth : 106.0f/oriBgWidth;
    noteLeftPadding = isLandscape ? 466.0f/oriBgWidth : 106.0f/oriBgWidth;
    titleAndBoxGapPadding = isLandscape ? 84.0f/oriBgHeight : 128.0f/oriBgHeight;
    boxGapPadding = isLandscape ? 78.0f/oriBgWidth : 62.0f/oriBgHeight;
    
    boxAndNotePadding = isLandscape ? 76.0f/oriBgHeight : 138.0f/oriBgHeight;
    leftPadding = isLandscape ? 128.0f/oriBgWidth : 106.0f/oriBgWidth;
    
    checkboxBottomPadding = 24.0f/oriBgHeight;
    switch (m_mode) {
        case HelloProtocol_Adwalls:
            checkboxRightPadding = 50.0f/oriBgWidth;
            break;
        default:
            checkboxRightPadding = 24.0f/oriBgWidth;
            break;
    }
    
    
//    m_webviewURL = @"";
//    m_webviewURL_addition = @"";
    
//    m_indicator = [self _crateIndicator];
//    m_indicator_addition = [self _crateIndicator];
    
    m_adwallUrls = [[NSArray alloc] init];
    if (m_mode == HelloProtocol_Adwalls) {
        NSArray *resultArr = [m_customUrl componentsSeparatedByString:@","];
        m_adwallUrls = [[NSArray alloc] initWithArray:resultArr];
    }
    m_adWallWebArr = [[NSMutableArray alloc] init];
  
}

- (void)customInit
{
    self.view.userInteractionEnabled = YES;
    self.view.backgroundColor = [UIColor whiteColor];

    switch (m_mode) {
        // 协议
        case HelloProtocol_SpaceMode:
        {
            [self _spaceModeInit];
        }
            break;
        
        // 第三方充值界面
        case HelloProtocol_Space_Special:
        {
            [self _spaceSpecialInit];
            return;
        }
            break;
        
        // web invite
        case HelloProtocol_Space_Webview:
        {
            [self _spaceWebviewInit];
        }
            break;
            
        default:
            break;
    }

    [[UIApplication sharedApplication].windows[0] addSubview:self.view];
    
}

#pragma mark - web invite
- (void)_spaceWebviewInit
{
    UIViewController *windowView = [[UIApplication sharedApplication] keyWindow].rootViewController;
    [windowView.view addSubview:self.view];
    
    UIImageView *topBar = [[UIImageView alloc] initWithImage:GetImage(bottom_bg)];
    [topBar setUserInteractionEnabled:YES];
    [topBar setBackgroundColor:[UIColor clearColor]];
    
    [self.view addSubview:topBar];
    [topBar release];
    [topBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(@(0));
        make.left.equalTo(@(0));
        make.height.equalTo(@(topItemHeight));
        make.right.equalTo(@(0));
    }];
    
    // colse btn
    UIButton *closeBtn = [GamaUtils initBtnWithNormalImage:btn_close highlightedImage:nil tag:kProtocolCloseBtnTag selector:@selector(btnsAction:) target:self];
    [topBar addSubview:closeBtn];
    CGFloat closeBtnRate = IS_IPAD ? 0.6 : 0.8;
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
        make.height.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
        if (device_is_iPhoneX) {
            make.right.equalTo(@(-44));
        } else {
            make.right.equalTo(@(-10));
        }
    }];
    
    // 前一页
    prePageBtn = [GamaUtils initBtnWithNormalImage:btn_web_pre_gray highlightedImage:btn_web_pre_lighted tag:kProtocolPrePageBtnTag selector:@selector(btnsAction:) target:self];
    [topBar addSubview:prePageBtn];
    [prePageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        if (device_is_iPhoneX) {
            make.left.equalTo(@(30/oriBgImgWidth * onCalWidth + 44));
        } else {
            make.left.equalTo(@(30/oriBgImgWidth * onCalWidth));
        }
        make.width.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
        make.height.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
    }];
    
    // 后一页
    nextPageBtn = [GamaUtils initBtnWithNormalImage:btn_web_next_gray highlightedImage:btn_web_next_lighted tag:kProtocolNextPageBtnTag selector:@selector(btnsAction:) target:self];
    [topBar addSubview:nextPageBtn];
    [nextPageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        if (device_is_iPhoneX) {
            make.left.equalTo(@(180/oriBgImgWidth * onCalWidth + 44));
        } else {
            make.left.equalTo(@(230/oriBgImgWidth * onCalWidth));
        }
        make.width.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
        make.height.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
    }];
    // reload
    UIButton *reloadBtn = [GamaUtils initBtnWithNormalImage:btn_web_reload_normal highlightedImage:btn_web_reload_lighted tag:kProtocolReloadBtnTag selector:@selector(btnsAction:) target:self];
    [topBar addSubview:reloadBtn];
    [reloadBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        if (device_is_iPhoneX) {
            make.left.equalTo(@(330/oriBgImgWidth * onCalWidth + 44));
        } else {
            make.left.equalTo(@(430/oriBgImgWidth * onCalWidth));
        }
        make.width.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
        make.height.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
    }];
    
    
    /********* web **********/
    
    UIView *baseView = [[UIView alloc] init];
    [self.view addSubview:baseView];
    [baseView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(0));
        make.left.equalTo(@(0));
        make.bottom.equalTo(@(-topItemHeight));
        make.right.equalTo(@(0));
    }];
    
    NSString *reqUrl =  [self _getSpWebUrl];
    
    [self _webviewAddedToBaseView:[baseView autorelease] URL:reqUrl];
}

- (NSString *)_getSpWebUrl
{
    NSMutableString *gamaUrlStr = [[NSMutableString alloc] init];
    NSString *timeStamp = [GamaFunction getTimeStamp];
    NSString *signature = [GamaFunction getMD5StrFromString:[NSString stringWithFormat:@"%@%@%@%@%@",
                                                           SDKConReaderGetString(GAMA_GAME_KEY),
                                                           [NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                                                           [SdkUserInfoModel shareInfoModel].userId,
                                                           [SdkUserInfoModel shareInfoModel].roleID,
                                                           timeStamp
                                                           ]];
    
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
    
    NSString *finalStr = [appendStr substringToIndex:appendStr.length - 1];
    [appendStr release];

    // domain and proj Name
    NSString *cdnDomain = SDKConReaderGetString(@"S_ACT_Pre_Url");
    NSString *cdnProjName = SDKConReaderGetString(@"S_ACT_Proj_Name");
    NSString *domainName = [NSString stringWithFormat:@"%@%@?",cdnDomain,cdnProjName];
    
    [gamaUrlStr appendFormat:@"%@%@",domainName,finalStr];
    
    return [gamaUrlStr autorelease];
}

#pragma mark - Small Widget

- (void)_webviewAddedToBaseView:(UIView *)baseView URL:(NSString *)url
{
    m_webview = [self _createWKWebViewAndAddToParentViewWithRect:baseView.frame urlStirng:url cornerRadius:7];
    [baseView addSubview:m_webview];
    [m_webview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(0));
        make.bottom.equalTo(@(0));
        if (device_is_iPhoneX) {
            make.left.equalTo(@(iphoneX_landscape_left));
            make.right.equalTo(@(-iphoneX_landscape_right));
        } else {
            make.left.equalTo(@(0));
            make.right.equalTo(@(0));
        }
    }];
    //  ----- ios 11 ------
    if (@available(iOS 11.0, *)) {
        m_webview.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    m_webview.scrollView.bounces = NO;
}

#pragma mark - SpaceMode
- (void)_spaceModeInit
{
    UIImageView *topBar = [[UIImageView alloc] initWithImage:GetImage(bottom_bg)];
    [topBar setUserInteractionEnabled:YES];
    [topBar setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:topBar];
    
    [topBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(device_is_iPhoneX?(Device_Is_Landscape?0:iphoneX_landscape_left): 0));
        make.left.equalTo(@(0));
        make.height.equalTo(@(topItemHeight));
        make.right.equalTo(@(0));
    }];
    
    // title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    title.text = SDKConReaderGetLocalizedString(@"LB_TITLE_USERTERM_AND_RULES");
    [title setTextColor:[UIColor whiteColor]];
    title.textAlignment = NSTextAlignmentCenter;
    [topBar addSubview:title];
    [title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(0));
        make.left.equalTo(@(0));
        make.bottom.equalTo(@(0));
        make.right.equalTo(@(0));
    }];
    
    // close btn
    // 使用图片，居右
    UIButton *closeBtn = [GamaUtils initBtnWithNormalImage:btn_close highlightedImage:nil tag:kSpaceProtocolBackBtnTag selector:@selector(btnsAction:) target:self];
    [topBar addSubview:closeBtn];
    CGFloat closeBtnRate = IS_IPAD ? 0.6 : 0.8;
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
        make.height.equalTo(@(64/oriBgImgWidth * rate * curWidth * closeBtnRate));
        make.right.equalTo(@(device_is_iPhoneX?( Device_Is_Landscape ? -iphoneX_landscape_left:-10) : -10));
    }];
    
    // webview
    WKWebView *aWebview = [[WKWebView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:aWebview];
    [aWebview mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (device_is_iPhoneX) {
            make.top.equalTo(@(Device_Is_Landscape ? topItemHeight : topItemHeight+iphoneX_landscape_left));
            make.left.equalTo(@(Device_Is_Landscape ? iphoneX_landscape_left : 0));
            make.right.equalTo(@(Device_Is_Landscape ? -iphoneX_landscape_right : 0));
            make.bottom.equalTo(@(Device_Is_Landscape ? 0 : -iphoneX_landscape_bottom));
        } else {
            make.top.equalTo(@(topItemHeight));
            make.left.equalTo(@(0));
            make.right.equalTo(@(0));
            make.bottom.equalTo(@(0));
        }
    }];
    //  ----- ios 11 ------
    if (@available(iOS 11.0, *)) {
        aWebview.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    aWebview.scrollView.bounces = NO;
    
    
    // local html file
//    NSString *resName = [NSString stringWithFormat:@"protocol_content_%@_xm",[GamaFunction getServerLocaleStrWithGameLanguage:SDKConReaderGetString(GAMA_GAME_LANGUAGE)]];
//
    
    NSString *urlStr = SDKConReaderGetString(@"userterm_url");
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr] cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:30.0f];
    [aWebview loadRequest:req];

//    NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:@"GamaResources" withExtension:@"bundle"];
//    NSString *filePath = [[NSBundle bundleWithURL:bundleURL] pathForResource:@"userterm_url" ofType:@"html"];
//    NSString *fileContent = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
//    [aWebview loadHTMLString:fileContent baseURL:[NSURL URLWithString:filePath]];
}

#pragma mark - 网页充值
- (void)_spaceSpecialInit
{
    bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, winWidth, winHeight)];
    [bgView setBackgroundColor:[UIColor clearColor]];
    bgView.userInteractionEnabled = YES;
    UIView *windowView = [[UIApplication sharedApplication] keyWindow];
    [windowView addSubview:bgView];
    
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectZero];
    [bgView addSubview:baseView];
    [baseView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(winWidth*0.8));
        make.height.equalTo(@(winHeight*0.8));
    }];
    
    // make url
    NSString *urlStr = [self _getMySpecialUrl];
    
    WKWebView *aview = [self _createWKWebViewAndAddToParentViewWithRect:baseView.frame urlStirng:urlStr cornerRadius:10];
    [baseView addSubview:aview];
    [aview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(0));
        make.left.equalTo(@(0));
        make.bottom.equalTo(@(0));
        make.right.equalTo(@(0));
    }];
    aview.scrollView.bounces = NO;
    
    // colse btn
    UIButton *closeBtn = [GamaUtils initBtnWithNormalImage:special_webview_closeBtnName highlightedImage:special_webview_closeBtnName tag:kProtocolCloseBtnTag selector:@selector(btnsAction:) target:self];
    [bgView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(winHeight*0.2f/2-15));
        make.right.equalTo(@(-(winWidth*0.2/2-15)));
        make.height.equalTo(@(30));// 58(w)x58(h)
        make.width.equalTo(@(30));
    }];
}
#pragma mark - Url 系统公告、webView打开网页等；
#pragma mark - 网页充值
- (void)openWebPage:(NSString *)pageUrl
{
    if (pageUrl.length < 1) {
        NSLog(@"未配置webPage：URL");
        return ;
    }
    bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, winWidth, winHeight)];
    [bgView setBackgroundColor:[UIColor clearColor]];
    bgView.userInteractionEnabled = YES;
    UIView *windowView = [[UIApplication sharedApplication] keyWindow];
    [windowView addSubview:bgView];
    
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectZero];
    [bgView addSubview:baseView];
    [baseView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(winWidth*0.8));
        make.height.equalTo(@(winHeight*0.8));
    }];
    
    // make url
//    NSString *urlStr = [self _getMySpecialUrl];

    WKWebView *aview = [self _createWKWebViewAndAddToParentViewWithRect:baseView.frame urlStirng:pageUrl cornerRadius:10];
    [baseView addSubview:aview];
    [aview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(0));
        make.left.equalTo(@(0));
        make.bottom.equalTo(@(0));
        make.right.equalTo(@(0));
    }];
    aview.scrollView.bounces = NO;
    
    // colse btn
    UIButton *closeBtn = [GamaUtils initBtnWithNormalImage:special_webview_closeBtnName highlightedImage:special_webview_closeBtnName tag:kWebViewCloseBtnTag selector:@selector(btnsAction:) target:self];
    [bgView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(winHeight*0.2f/2-15));
        make.right.equalTo(@(-(winWidth*0.2/2-15)));
        make.height.equalTo(@(30));// 58(w)x58(h)
        make.width.equalTo(@(30));
    }];
}

#pragma mark - Url 拼接、获取

/**
 需要先登錄，才能拿到一些數據
 */
- (NSString *)_getMySpecialUrl
{
    return [GamaUtils spliceSpecialString];
}

- (WKWebView *)_createWKWebViewAndAddToParentViewWithRect:(CGRect)rect urlStirng:(NSString *)urlString cornerRadius:(CGFloat)radius
{
    WKWebView *resultWebView;
    resultWebView = [[WKWebView alloc] initWithFrame:rect];
    resultWebView.UIDelegate = self;
    resultWebView.navigationDelegate = self;
//    resultWebView.scalesPageToFit = YES;
//    resultWebView.delegate = self;
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:urlString]];
    [resultWebView loadRequest:request];
    [request release];
    return [resultWebView autorelease];
}

#pragma mark - Btn Actions
- (void)btnsAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kProtocolCloseBtnTag:
        {
            if (HelloProtocol_Space_Special == m_mode) {
                [bgView removeFromSuperview];
                break;
            }

            [self.view removeFromSuperview];
        }
            break;
            
        case kSpaceProtocolBackBtnTag:
        {
            [self.view removeFromSuperview];
        }
            break;
        
        // webview 操作
        case kProtocolPrePageBtnTag:
        {
            if (m_webview.canGoBack) {
                [m_webview goBack];
            }
            break;
        }
        case kProtocolNextPageBtnTag:
        {
            if (m_webview.canGoForward) {
                [m_webview goForward];
            }
            break;
        }
        case kProtocolReloadBtnTag:
        {
            [m_webview reload];
            break;
        }
        case kWebViewCloseBtnTag:
        {
            //关闭公告
            [[NSNotificationCenter defaultCenter] postNotificationName:@"GAMA_NOTICE_CLOSE" object:nil userInfo:nil];
            [bgView removeFromSuperview];
        }
            break;
        default:
            break;
    }
}

#pragma mark -- WKWebView Delegate
// 页面开始加载时调用
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation
{
    [GamaUtils gamaStarLoadingAtView:webView];
}

// 当内容开始返回时调用
-(void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation
{
    
}

// 页面加载完成之后调用
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    [GamaUtils gamaStopLoadingAtView:webView];
}

// 页面加载失败时调用
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation
{
    [GamaUtils gamaStopLoadingAtView:webView];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
//    if (navigationAction.targetFrame ==nil) {
//        [webView loadRequest:navigationAction.request];
//    }
    // btn status
    if (webView.canGoBack) {
        [prePageBtn setImage:GetImage( btn_web_pre_normal) forState:0];
        prePageBtn.userInteractionEnabled = YES;
    } else {
        [prePageBtn setImage:GetImage( btn_web_pre_gray) forState:0];
        prePageBtn.userInteractionEnabled = NO;
    }
    
    if (webView.canGoForward) {
        [nextPageBtn setImage:GetImage( btn_web_next_normal) forState:0];
        nextPageBtn.userInteractionEnabled = YES;
    } else {
        [nextPageBtn setImage:GetImage( btn_web_next_gray) forState:0];
        nextPageBtn.userInteractionEnabled = NO;
    }
   // 没有这一句页面就不会显示
    decisionHandler(WKNavigationActionPolicyAllow);
}

-(void)dealloc
{
    [bgView release];bgView = nil;
    [super dealloc];
}
@end
