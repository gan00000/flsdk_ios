

#define js_close    wwwww_tag_wwwww_close
#define js_onPayFinish    wwwww_tag_wwwww_onPayFinish
#define js_trackEvent    wwwww_tag_wwwww_trackEvent

#import "MWWebViewController.h"
#import <SafariServices/SafariServices.h>
#import "MWSDK.h"

#define WK_WEBVIEW_ESTIMATED_PROGRESS wwwww_tag_wwwww_estimatedProgress


@interface MWWebViewController ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) WKWebView *wkwebView;
@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIProgressView *progressView;

@property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *backBtn;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIButton *defalutCloseBtn;

@end

@implementation MWWebViewController

+(instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request
                                             isShowTitle_MMMethodMMM:(BOOL)isShowTitle
                                               animation_MMMethodMMM:(BOOL)animation animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle
{
    
    
    
    
    
    
    
    
    MWWebViewController *webVC = [[MWWebViewController alloc] initWithWebLayoutIsShowTitle_MMMethodMMM:isShowTitle animation_MMMethodMMM:animation];
    webVC.modalTransitionStyle = animationStyle;
    webVC.modalPresentationStyle = UIModalPresentationFullScreen;
    webVC.webRequest = request;
    
    
    return webVC;
}
- (instancetype)initWithWebLayoutIsShowTitle_MMMethodMMM:(BOOL)isShowTitle animation_MMMethodMMM:(BOOL)animation
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        
        self.isShowTitle = isShowTitle;
        
        self.shouldRotate = NO;
        self.interfaceOrientationMask = UIInterfaceOrientationMaskAll;
        self.interfaceOrientation = UIInterfaceOrientationPortrait;
    }
    return self;
}


- (WKWebView*)wkwebView{
    
    if (!_wkwebView) {
        
        kWeakSelf
        __weak id<WKScriptMessageHandler> scriptDelegate = weakSelf;
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = [[WKUserContentController alloc] init];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:js_close];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:js_onPayFinish];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:js_trackEvent];
        [configuration.userContentController addScriptMessageHandler:scriptDelegate name:wwwww_tag_wwwww_openSysBrowser];
        
        _wkwebView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:configuration];
        
        _wkwebView.navigationDelegate = self;
        _wkwebView.UIDelegate = self;
        [_wkwebView addObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS options:NSKeyValueObservingOptionNew context:nil];
        [_wkwebView addObserver:self forKeyPath:wwwww_tag_wwwww_title options:NSKeyValueObservingOptionNew context:NULL];

    }
    
    return _wkwebView;
    
}


- (void)viewDidLoad { 
    [super viewDidLoad];
    
    SDK_LOG(@"MWWebViewController viewDidLoad");
    self.backgroundView = [[UIView alloc] init];
    [self.view addSubview:self.backgroundView];
    
    [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (@available(iOS 11.0, *)) {
            make.leading.trailing.mas_equalTo(self.view);
            make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
            make.bottom.mas_equalTo(self.view);
            
        } else {
            
            make.edges.mas_equalTo(self.view);
        }
    }];
    
    
    
    
    if(self.isShowTitle){
        self.view.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F13B11];
        
        self.headerView = [[UIView alloc] init];
        self.headerView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F13B11];
        [self.backgroundView addSubview:self.headerView];
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.leading.trailing.mas_equalTo(self.backgroundView);
            make.height.mas_equalTo(VH(46));
        }];
        
        self.backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_back_webview highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_WEB_VIEW_BACK selector:@selector(webGoBack_MMMethodMMM) target_MMMethodMMM:self];
        [self.headerView addSubview:self.backBtn];
        [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self.headerView);
            make.leading.mas_equalTo(self.headerView).mas_offset(VW(20));
            make.height.width.mas_equalTo(VH(22));
        }];
        
        self.closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_white highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
        [self.headerView addSubview:self.closeBtn];
        [self.closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(self.headerView);
            make.trailing.mas_equalTo(self.headerView).mas_offset(VW(-20));
            make.height.width.mas_equalTo(VH(22));
        }];
        
        self.titleLabel = [UIUtil initLabelWithText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(18) textColor_MMMethodMMM:UIColor.whiteColor];
        [self.headerView addSubview:self.titleLabel];
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self.headerView);
        }];
        
    }
    
    
    
    [self.backgroundView addSubview:self.wkwebView];
    [self.wkwebView mas_makeConstraints:^(MASConstraintMaker *make) {
        if(self.headerView){
            make.top.mas_equalTo(self.headerView.mas_bottom);
            make.trailing.leading.bottom.mas_equalTo(self.backgroundView);
        }else{
            make.edges.mas_equalTo(self.backgroundView);
        }
    }];
    
    self.progressView = [[UIProgressView alloc] init];
    self.progressView.progressViewStyle = UIProgressViewStyleDefault;
    self.progressView.progress = 0.0;
    
    [self.wkwebView addSubview:_progressView];
    [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.trailing.mas_equalTo(self.wkwebView);
        make.height.equalTo(@(3));
    }];
    
    
    [self webLoadURLRequest_MMMethodMMM:self.webRequest];
    
    if(self.isShowDefulatCloseBtn){
        
        self.defalutCloseBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
        self.defalutCloseBtn.hidden = YES;
        [self.backgroundView addSubview:self.defalutCloseBtn];
        [self.defalutCloseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self.backgroundView);
            make.centerY.mas_equalTo(self.wkwebView).mas_offset(20);
            make.height.width.mas_equalTo(VH(30));
        }];
            
    }
    
    
    
    
    if(self.viewDidLoadCompletion){
        self.viewDidLoadCompletion(@"",0, nil);
    }
}

- (void)viewWillAppear:(BOOL)animated{  
    [self setNeedsStatusBarAppearanceUpdate];
}


- (BOOL)prefersStatusBarHidden  
{
    return YES;  
    
}


- (UIStatusBarStyle)preferredStatusBarStyle{    
    return UIStatusBarStyleDefault;
}


- (void)viewDidLayoutSubviews{  
    [super viewDidLayoutSubviews];
    NSLog(wwwww_tag_wwwww_viewDidLayoutSubviews);
    
    if (@available(iOS 11.0, *)) {
        
        [self.backgroundView mas_updateConstraints:^(MASConstraintMaker *make) {
            
            make.leading.trailing.mas_equalTo(self.view);
            make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
            make.bottom.mas_equalTo(self.view);
            
        }];
    }
    
    
}

#pragma mark - WebView Operator
- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request
{
    if (self.wkwebView) {
        [self.wkwebView loadRequest:request];
    }
}

- (void)webGoBack_MMMethodMMM
{
    if ([self.wkwebView canGoBack]) {
        [self.wkwebView goBack];
    }
}

- (void)webGoForward_MMMethodMMM
{
    if ([self.wkwebView canGoForward]) {
        [self.wkwebView goForward];
    }
}

- (void)webReload_MMMethodMMM
{
    [self.wkwebView reload];
}

- (void)webClose_MMMethodMMM
{
    
    if(self.willDismissCallback){
        self.willDismissCallback(@"",0, nil);
    }
    [self dismissViewControllerAnimated:NO completion:^{
        SDK_LOG(@"userContentController dismissViewControllerAnimated");
        !_didDismissCallback ?: _didDismissCallback();
    }];
    [self releaseAll_MMMethodMMM];
}

#pragma mark - WKNavigationDelegate

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   
{
    SDK_LOG(@"页面开始加载webView didStartProvisionalNavigation");
    [_indicatorView startAnimating];
    
}
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation 
{
    SDK_LOG(@"页面开始返回webView didCommitNavigation");
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation 
{
    SDK_LOG(@"页面完成加载webView didFinishNavigation");
    [_indicatorView stopAnimating];
    
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    
{
    SDK_LOG(@"webView didFailNavigation withError");
    [_indicatorView stopAnimating];
    
}

-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  
{
    SDK_LOG(@"webView decidePolicyForNavigationAction decisionHandler");
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:)]) {
        [_webViewDelegate webView:webView decidePolicyForNavigationAction:navigationAction decisionHandler:decisionHandler];
    } else {
        if (navigationAction.targetFrame == nil) {
            [webView loadRequest:navigationAction.request];
        }
        decisionHandler(WKNavigationActionPolicyAllow);
    }
}

- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation    
{
    SDK_LOG(@"didReceiveServerRedirectForProvisionalNavigation");
    NSLog(@"WKWebView didReceiveServerRedirect 重定向中");
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    SDK_LOG(@"webView decidePolicyForNavigationResponse statusCode = %d", ((NSHTTPURLResponse *)navigationResponse.response).statusCode);
    if (((NSHTTPURLResponse *)navigationResponse.response).statusCode == 200) {
        decisionHandler (WKNavigationResponsePolicyAllow);
        if(self.defalutCloseBtn && self.isShowDefulatCloseBtn){
            self.defalutCloseBtn.hidden = YES;
        }
    }else {
        decisionHandler(WKNavigationResponsePolicyAllow);
        if(self.defalutCloseBtn && self.isShowDefulatCloseBtn){
            self.defalutCloseBtn.hidden = NO;
        }
    }
}

#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   
{
    SDK_LOG(@"completionHandler runJavaScriptAlertPanelWithMessage");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completionHandler();
    }]];
    
    [self presentViewController:alert animated:YES completion:NULL];
    
}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler  
{
    SDK_LOG(@"completionHandler runJavaScriptAlertPanelWithMessage");
}


-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures  
{
    SDK_LOG(@"completionHandler createWebViewWithConfiguration windowFeatures");
    WKFrameInfo *frameInfo = navigationAction.targetFrame;
    if (![frameInfo isMainFrame]) {
        [webView loadRequest:navigationAction.request];
    }
    return nil;
}

#pragma mark - WKUserContentController
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message   
{
    SDK_LOG(@"userContentController message=%@", message.name);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if ([message.name isEqualToString:js_close]) {
        
            [self webClose_MMMethodMMM];
        }else if ([message.name isEqualToString:js_onPayFinish]) {
            
            
        }else if ([message.name isEqualToString:js_trackEvent]) {
            
            NSString *eventName = [NSString stringWithFormat:@"%@", message.body];
            if([StringUtil isNotEmpty_MMMethodMMM:eventName]){
                [[MWSDK share] trackEventWithEventName:eventName];
            }
        }else if ([message.name isEqualToString:wwwww_tag_wwwww_openSysBrowser]){
            
            NSString *xurl = [NSString stringWithFormat:@"%@", message.body];
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:xurl] options:@{} completionHandler:^(BOOL success) {
                
            }];
        }
        
    });
    
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {  
    
    if ([wwwww_tag_wwwww_loading isEqualToString:keyPath]) {
        
    } else if (object == self.wkwebView && [wwwww_tag_wwwww_title isEqualToString:keyPath]) {
        
        self.titleLabel.text = self.wkwebView.title;
        
    } else if ([wwwww_tag_wwwww_URL isEqualToString:keyPath]) {
        
    } else if (object == self.wkwebView && [WK_WEBVIEW_ESTIMATED_PROGRESS isEqualToString:keyPath]) {
        _progressView.progress = self.wkwebView.estimatedProgress;
        
        CGFloat newProgress = [change[NSKeyValueChangeNewKey] doubleValue];
        if (newProgress == 1) {
            _progressView.hidden = YES;
            [_progressView setProgress:0 animated:NO];
        } else {
            _progressView.hidden = NO;
            [_progressView setProgress:newProgress animated:YES];
        }
    }
}

#pragma mark - Orientation Override



- (BOOL)shouldAutorotate    
{
    SDK_LOG(@"shouldAutorotate");
    return _shouldRotate;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations    
{
    SDK_LOG(@"supportedInterfaceOrientations");
    return _interfaceOrientationMask;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation  
{
    
    
    
    
    
    
    
    
    
    
    
    SDK_LOG(@"preferredInterfaceOrientationForPresentation");
    return self.interfaceOrientation;
    ;
}


- (void)releaseAll_MMMethodMMM {
    SDK_LOG(@"MWWebViewController releaseAll");
    @try {
        
        [self.wkwebView.configuration.userContentController removeScriptMessageHandlerForName:js_close];
        [self.wkwebView.configuration.userContentController removeScriptMessageHandlerForName:js_onPayFinish];
        [self.wkwebView.configuration.userContentController removeScriptMessageHandlerForName:js_trackEvent];
        [self.wkwebView.configuration.userContentController removeScriptMessageHandlerForName:wwwww_tag_wwwww_openSysBrowser];
        [self.wkwebView removeObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS];
        [self.wkwebView removeObserver:self forKeyPath:wwwww_tag_wwwww_title];
        
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
}

- (void)dealloc
{
    SDK_LOG(@"MWWebViewController dealloc");
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
