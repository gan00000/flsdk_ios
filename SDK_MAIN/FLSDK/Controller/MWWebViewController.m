//
//  GamaWebViewController.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/12/10.
//  Copyright © 2018年 starpy. All rights reserved.
//

#define js_close    wwwww_tag_wwwww_close
#define js_onPayFinish    wwwww_tag_wwwww_onPayFinish
#define js_trackEvent    wwwww_tag_wwwww_trackEvent

#import "MWWebViewController.h"
#import <SafariServices/SafariServices.h>
#import "MWSDK.h"

#define WK_WEBVIEW_ESTIMATED_PROGRESS wwwww_tag_wwwww_estimatedProgress

//View controller-based status bar appearance 一个布尔值，指示状态栏外观是否基于当前视图控制器的首选样式。
//1）当 Status bar is initially hidden 设置为 NO 的时候，不管 View controller-based status bar appearance 设置为 NO 还是 YES ，都是无效的。
//2）只有 Status bar is initially hidden 设置为 YES 的时候， View controller-based status bar appearance 才生效，这个要注意一下。

@interface MWWebViewController ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>
//@property (nonatomic, copy) MWWebLayoutHandler layoutHandler;
@property (nonatomic, strong) UIView *backgroundView_MMMPRO;
@property (nonatomic, strong) WKWebView *wkwebView_MMMPRO;
@property (nonatomic, strong) UIView *headerView_MMMPRO;
//@property (nonatomic, strong) UIView *footView;
//@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIProgressView *progressView_MMMPRO;
//@property (nonatomic) BOOL animation;

@property (nonatomic, strong) UIButton *closeBtn_MMMPRO;
@property (nonatomic, strong) UIButton *backBtn_MMMPRO;
@property (nonatomic, strong) UILabel *titleLabel_MMMPRO;

@property (nonatomic, strong) UIButton *defalutCloseBtn_MMMPRO;

@end

@implementation MWWebViewController

+(instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request
                                             isShowTitle_MMMethodMMM:(BOOL)isShowTitle
                                               animation_MMMethodMMM:(BOOL)animation animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle
{
    //    if(device_is_iPhoneX){
    //        SDK_LOG(wwwww_tag_wwwww_device_is_iPhoneX);
    //        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:request.URL];
    ////        safariVC.modalPresentationStyle = UIModalPresentationFullScreen;
    //        [containerVC presentViewController:safariVC animated:animation completion:handler];
    //        return nil;
    //    }
    //    SDK_LOG(wwwww_tag_wwwww_not_device_is_iPhoneX);
    MWWebViewController *webVC = [[MWWebViewController alloc] initWithWebLayoutIsShowTitle_MMMethodMMM:isShowTitle animation_MMMethodMMM:animation];
    webVC.modalTransitionStyle = animationStyle;
    webVC.modalPresentationStyle = UIModalPresentationFullScreen;//不添加这句选择图片会崩溃
    webVC.webRequest_MMMPRO = request;
    //[webVC webLoadURLRequest_MMMethodMMM:request];
    
    return webVC;
}
- (instancetype)initWithWebLayoutIsShowTitle_MMMethodMMM:(BOOL)isShowTitle animation_MMMethodMMM:(BOOL)animation
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        
        self.isShowTitle_MMMPRO = isShowTitle;
        
        self.shouldRotate_MMMPRO = NO;
        self.interfaceOrientationMask_MMMPRO = UIInterfaceOrientationMaskAll;// 设备支持方向
        self.interfaceOrientation_MMMPRO = UIInterfaceOrientationPortrait;
    }
    return self;
}


- (WKWebView*)wkwebView_MMMPRO{
    
    if (!_wkwebView_MMMPRO) {
        
        kWeakSelf
        __weak id<WKScriptMessageHandler> scriptDelegate = weakSelf;
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = [[WKUserContentController alloc] init];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:js_close];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:js_onPayFinish];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:js_trackEvent];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:wwwww_tag_wwwww_openSysBrowser];
        
        _wkwebView_MMMPRO = [[WKWebView alloc] initWithFrame:self.view.frame configuration:configuration];
        
        _wkwebView_MMMPRO.navigationDelegate = self;
        _wkwebView_MMMPRO.UIDelegate = self;
        [_wkwebView_MMMPRO addObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS options:NSKeyValueObservingOptionNew context:nil];
        [_wkwebView_MMMPRO addObserver:self forKeyPath:wwwww_tag_wwwww_title options:NSKeyValueObservingOptionNew context:NULL];

    }
    
    return _wkwebView_MMMPRO;
    
}


- (void)viewDidLoad { //system_method
    [super viewDidLoad];
    
    SDK_LOG(wwwww_tag_wwwww_MWWebViewController_viewDidLoad);
    self.backgroundView_MMMPRO = [[UIView alloc] init];
    [self.view addSubview:self.backgroundView_MMMPRO];
    
    [self.backgroundView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (@available(iOS 11.0, *)) {
            make.leading.trailing.mas_equalTo(self.view);
            make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
            make.bottom.mas_equalTo(self.view);
            //                make.edges.mas_equalTo(self.view);
        } else {
            // Fallback on earlier versions
            make.edges.mas_equalTo(self.view);
        }
    }];
    
    
    //=============顶部标题=========
    
    if(self.isShowTitle_MMMPRO){
        self.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F13B11];
        
        self.headerView_MMMPRO = [[UIView alloc] init];
        self.headerView_MMMPRO.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F13B11];
        [self.backgroundView_MMMPRO addSubview:self.headerView_MMMPRO];
        [self.headerView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.leading.trailing.mas_equalTo(self.backgroundView_MMMPRO);
            make.height.mas_equalTo(VH(46));
        }];
        
        self.backBtn_MMMPRO = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_back_webview highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_WEB_VIEW_BACK selector:@selector(webGoBack_MMMethodMMM) target_MMMethodMMM:self];
        [self.headerView_MMMPRO addSubview:self.backBtn_MMMPRO];
        [self.backBtn_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self.headerView_MMMPRO);
            make.leading.mas_equalTo(self.headerView_MMMPRO).mas_offset(VW(20));
            make.height.width.mas_equalTo(VH(22));
        }];
        
        self.closeBtn_MMMPRO = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_white highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
        [self.headerView_MMMPRO addSubview:self.closeBtn_MMMPRO];
        [self.closeBtn_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self.headerView_MMMPRO);
            make.trailing.mas_equalTo(self.headerView_MMMPRO).mas_offset(VW(-20));
            make.height.width.mas_equalTo(VH(22));
        }];
        
        self.titleLabel_MMMPRO = [UIUtil initLabelWithText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(18) textColor_MMMethodMMM:UIColor.whiteColor];
        [self.headerView_MMMPRO addSubview:self.titleLabel_MMMPRO];
        [self.titleLabel_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self.headerView_MMMPRO);
        }];
        
    }
    //==============
    
    
    [self.backgroundView_MMMPRO addSubview:self.wkwebView_MMMPRO];
    [self.wkwebView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        if(self.headerView_MMMPRO){
            make.top.mas_equalTo(self.headerView_MMMPRO.mas_bottom);
            make.trailing.leading.bottom.mas_equalTo(self.backgroundView_MMMPRO);
        }else{
            make.edges.mas_equalTo(self.backgroundView_MMMPRO);
        }
    }];
    
    self.progressView_MMMPRO = [[UIProgressView alloc] init];
    self.progressView_MMMPRO.progressViewStyle = UIProgressViewStyleDefault;
    self.progressView_MMMPRO.progress = 0.0;
    
    [self.wkwebView_MMMPRO addSubview:_progressView_MMMPRO];
    [_progressView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.trailing.mas_equalTo(self.wkwebView_MMMPRO);
        make.height.equalTo(@(3));
    }];
    
    
    [self webLoadURLRequest_MMMethodMMM:self.webRequest_MMMPRO];
    
    if(self.isShowDefulatCloseBtn_MMMPRO){
        
        self.defalutCloseBtn_MMMPRO = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
        self.defalutCloseBtn_MMMPRO.hidden = YES;
        [self.backgroundView_MMMPRO addSubview:self.defalutCloseBtn_MMMPRO];
        [self.defalutCloseBtn_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self.backgroundView_MMMPRO);
            make.centerY.mas_equalTo(self.wkwebView_MMMPRO).mas_offset(20);
            make.height.width.mas_equalTo(VH(30));
        }];
            
    }
    
    //设置状态栏是否隐藏
    //    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    if(self.viewDidLoadCompletion_MMMPRO){
        self.viewDidLoadCompletion_MMMPRO(@"",0, nil);
    }
}

- (void)viewWillAppear:(BOOL)animated{  //system_method
    [self setNeedsStatusBarAppearanceUpdate];
}


- (BOOL)prefersStatusBarHidden  //system_method
{
    return YES;  //状态栏隐藏
    //    return NO; //状态栏显示, 默认值
}


- (UIStatusBarStyle)preferredStatusBarStyle{    //system_method
    return UIStatusBarStyleDefault;
}


- (void)viewDidLayoutSubviews{  //system_method
    [super viewDidLayoutSubviews];
    NSLog(wwwww_tag_wwwww_viewDidLayoutSubviews);
    
    if (@available(iOS 11.0, *)) {
        //获取到安全区域，更新安全区域
        [self.backgroundView_MMMPRO mas_updateConstraints:^(MASConstraintMaker *make) {
            
            make.leading.trailing.mas_equalTo(self.view);
            make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
            make.bottom.mas_equalTo(self.view);
            
        }];
    }
    
    
}

#pragma mark - WebView Operator
- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request
{
    if (self.wkwebView_MMMPRO) {
        [self.wkwebView_MMMPRO loadRequest:request];
    }
}

- (void)webGoBack_MMMethodMMM
{
    if ([self.wkwebView_MMMPRO canGoBack]) {
        [self.wkwebView_MMMPRO goBack];
    }
}

- (void)webGoForward_MMMethodMMM
{
    if ([self.wkwebView_MMMPRO canGoForward]) {
        [self.wkwebView_MMMPRO goForward];
    }
}

- (void)webReload_MMMethodMMM
{
    [self.wkwebView_MMMPRO reload];
}

- (void)webClose_MMMethodMMM
{
    
    if(self.willDismissCallback_MMMPRO){
        self.willDismissCallback_MMMPRO(@"",0, nil);
    }
    [self dismissViewControllerAnimated:NO completion:^{
        SDK_LOG(wwwww_tag_wwwww_userContentController_dismissViewControllerAnimated);
        !_didDismissCallback_MMMPRO ?: _didDismissCallback_MMMPRO();
    }];
    [self releaseAll_MMMethodMMM];
}

#pragma mark - WKNavigationDelegate

//页面开始加载时调用
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   //system_method
{
    SDK_LOG(wwwww_tag_wwwww_state_furc);
//    [_indicatorView startAnimating];
    
}

// 页面加载失败时调用        (请求返回的是403、404时，webView不认为这是请求失败，不调用此代理方法)
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    SDK_LOG(wwwww_tag_wwwww_word_fanior);
}

// 当内容开始返回时调用
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation //system_method
{
    SDK_LOG(wwwww_tag_wwwww_avi_revealfier);
}
// 页面加载完成之后调用
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation //system_method
{
    SDK_LOG(wwwww_tag_wwwww_awayency_nonelike);
//    [_indicatorView stopAnimating];
    
}

//提交发生错误时调用
- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    //system_method
{
    SDK_LOG(wwwww_tag_wwwww_herbibility_largistic);
//    [_indicatorView stopAnimating];
    
}

//根据WebView对于即将跳转的HTTP请求头信息和相关信息来决定是否跳转
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  //system_method
{
    SDK_LOG(wwwww_tag_wwwww_parti_coldsure);
    if (_webViewDelegate_MMMPRO && [_webViewDelegate_MMMPRO respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:)]) {
        [_webViewDelegate_MMMPRO webView:webView decidePolicyForNavigationAction:navigationAction decisionHandler:decisionHandler];
    } else {
        if (navigationAction.targetFrame == nil) {
            [webView loadRequest:navigationAction.request];
        }
        decisionHandler(WKNavigationActionPolicyAllow);
    }
}

//1、当Web视图收到服务器重定向时调用
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation    //system_method
{
    SDK_LOG(wwwww_tag_wwwww_sten_edgeian);
}

//根据客户端受到的服务器响应头以及response相关信息来决定是否可以跳转
//服务器返回200以外的状态码时，都调用请求失败的方法。 在收到响应后，决定是否跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    SDK_LOG(wwwww_tag_wwwww_pictoify_anyone, ((NSHTTPURLResponse *)navigationResponse.response).statusCode);
    if (((NSHTTPURLResponse *)navigationResponse.response).statusCode == 200) { //200以外的状态码时，都调用请求失败的方法
        decisionHandler (WKNavigationResponsePolicyAllow);
        if(self.defalutCloseBtn_MMMPRO && self.isShowDefulatCloseBtn_MMMPRO){
            self.defalutCloseBtn_MMMPRO.hidden = YES;
        }
    }else {
        decisionHandler(WKNavigationResponsePolicyAllow);
        if(self.defalutCloseBtn_MMMPRO && self.isShowDefulatCloseBtn_MMMPRO){
            self.defalutCloseBtn_MMMPRO.hidden = NO;
        }
    }
}

#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   //system_method
{
    SDK_LOG(wwwww_tag_wwwww_completionHandler_runJavaScriptAlertPanelWithMessage);
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completionHandler();
    }]];
    //
    [self presentViewController:alert animated:YES completion:NULL];
    
}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler  //system_method
{
    SDK_LOG(wwwww_tag_wwwww_completionHandler_runJavaScriptAlertPanelWithMessage);
}


-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures  //system_method
{
    SDK_LOG(wwwww_tag_wwwww_completionHandler_createWebViewWithConfiguration_windowFeatures);
    WKFrameInfo *frameInfo = navigationAction.targetFrame;
    if (![frameInfo isMainFrame]) {
        [webView loadRequest:navigationAction.request];
    }
    return nil;
}

#pragma mark - WKUserContentController
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message   //system_method
{
    SDK_LOG(wwwww_tag_wwwww_gemperiodain_crepitical, message.name);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if ([message.name isEqualToString:js_close]) {
        
            [self webClose_MMMethodMMM];
        }else if ([message.name isEqualToString:js_onPayFinish]) {
            
            //        [self webClose_MMMethodMMM];
        }else if ([message.name isEqualToString:js_trackEvent]) {
            
            NSString *eventName = [NSString stringWithFormat:@"%@", message.body];
            if([StringUtil isNotEmpty_MMMethodMMM:eventName]){
                [[MWSDK share] dyTrackWithEventName:eventName];
            }
        }else if ([message.name isEqualToString:wwwww_tag_wwwww_openSysBrowser]){
            
            NSString *xurl = [NSString stringWithFormat:@"%@", message.body];
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:xurl] options:@{} completionHandler:^(BOOL success) {
                
            }];
        }
        
    });
    
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {  //system_method
    
    if ([wwwww_tag_wwwww_loading isEqualToString:keyPath]) {
        
    } else if (object == self.wkwebView_MMMPRO && [wwwww_tag_wwwww_title isEqualToString:keyPath]) {
        
        self.titleLabel_MMMPRO.text = self.wkwebView_MMMPRO.title;
        
    } else if ([wwwww_tag_wwwww_URL isEqualToString:keyPath]) {
        
    } else if (object == self.wkwebView_MMMPRO && [WK_WEBVIEW_ESTIMATED_PROGRESS isEqualToString:keyPath]) {
        _progressView_MMMPRO.progress = self.wkwebView_MMMPRO.estimatedProgress;
        
        CGFloat newProgress = [change[NSKeyValueChangeNewKey] doubleValue];
        if (newProgress == 1) {
            _progressView_MMMPRO.hidden = YES;
            [_progressView_MMMPRO setProgress:0 animated:NO];
        } else {
            _progressView_MMMPRO.hidden = NO;
            [_progressView_MMMPRO setProgress:newProgress animated:YES];
        }
    }
}

#pragma mark - Orientation Override

//决定界面最后支持的屏幕方向的是 target&plist ∩ AppDeleagte中window设置 ∩ 视图控制器设置 这三个位置的交集。如果这个交集为空，就会抛出UIApplicationInvalidInterfaceOrientation异常崩溃


//设置决定当前页面是否可以自动旋转，YES为支持旋转，NO为不支持旋转；如果返回NO,则其他转屏相关方法将不会再被调用。
//如果将shouldAutorotate设置为YES,setStatusBarOrientation方法设置无效，只有shouldAutorotate设置为NO,才会起作用
- (BOOL)shouldAutorotate    //system_method
{
    SDK_LOG(wwwww_tag_wwwww_shouldAutorotate);
    return _shouldRotate_MMMPRO;
}
//设置页面支持的旋转方向。
//iPhone上默认返回UIInterfaceOrientationMaskAllButUpsideDown；
//iPad上默认返回UIInterfaceOrientationMaskAll；
- (UIInterfaceOrientationMask)supportedInterfaceOrientations    //system_method
{
    SDK_LOG(wwwww_tag_wwwww_supportedInterfaceOrientations);
    return _interfaceOrientationMask_MMMPRO;
}

//设置进入页面时默认显示的方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation  //system_method
{
    //    if (_interfaceOrientation == UIInterfaceOrientationUnknown) {
    //        UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    //
    //        if (UIInterfaceOrientationIsLandscape(orientation)) {
    //            return orientation;
    //        } else {
    //            return UIInterfaceOrientationPortrait;
    //        }
    //    } else {
    //        return _interfaceOrientation;
    //    }
    SDK_LOG(wwwww_tag_wwwww_preferredInterfaceOrientationForPresentation);
    return self.interfaceOrientation_MMMPRO;
    ;
}


- (void)releaseAll_MMMethodMMM {
    SDK_LOG(wwwww_tag_wwwww_MWWebViewController_releaseAll);
    @try {
        
        [self.wkwebView_MMMPRO.configuration.userContentController removeScriptMessageHandlerForName:js_close];
        [self.wkwebView_MMMPRO.configuration.userContentController removeScriptMessageHandlerForName:js_onPayFinish];
        [self.wkwebView_MMMPRO.configuration.userContentController removeScriptMessageHandlerForName:js_trackEvent];
        [self.wkwebView_MMMPRO.configuration.userContentController removeScriptMessageHandlerForName:wwwww_tag_wwwww_openSysBrowser];
        [self.wkwebView_MMMPRO removeObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS];
        [self.wkwebView_MMMPRO removeObserver:self forKeyPath:wwwww_tag_wwwww_title];
        
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
}

- (void)dealloc
{
    SDK_LOG(wwwww_tag_wwwww_MWWebViewController_dealloc);
//    [self releaseAll];
}

- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{
    
    switch (sender.tag) {
        case TAG_CLOSE:
            [self webClose_MMMethodMMM];
            break;
            
        default:
            break;
    }
    
}
@end
