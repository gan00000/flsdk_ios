

#define js_close    wwwww_tag_wwwww_close

#import "MWWebViewController.h"
#import <SafariServices/SafariServices.h>

#define WK_WEBVIEW_ESTIMATED_PROGRESS wwwww_tag_wwwww_estimatedProgress


@interface MWWebViewController ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>
@property (nonatomic, copy) MWWebLayoutHandler layoutHandler;
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) WKWebView *wkwebView;
@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic) BOOL animation;
@property (nonatomic, strong) UIButton *closeBtn;

@end

@implementation MWWebViewController

+(instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request layoutHandler_MMMethodMMM:(id)handler animation_MMMethodMMM:(BOOL)animation animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle
{
    MWWebViewController *webVC = [[MWWebViewController alloc] initWithWebLayoutHandler_MMMethodMMM:handler animation_MMMethodMMM:animation];
    webVC.modalTransitionStyle = animationStyle;
    webVC.modalPresentationStyle = UIModalPresentationFullScreen;
    webVC.webRequest = request;
    
   
    return webVC;
}
- (instancetype)initWithWebLayoutHandler_MMMethodMMM:(MWWebLayoutHandler)handler animation_MMMethodMMM:(BOOL)animation
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.layoutHandler = handler;
        self.animation = animation;
        self.backgroundView = [[UIView alloc] init];
        self.headerView = [[UIView alloc] init];
        
        
        self.progressView = [[UIProgressView alloc] init];
        self.progressView.progressViewStyle = UIProgressViewStyleDefault;
        self.progressView.progress = 0.0;

        self.footView = [[UIView alloc] init];
        
        self.shouldRotate = NO;
        
        self.interfaceOrientationMask = UIInterfaceOrientationMaskAll;
        self.interfaceOrientation = UIInterfaceOrientationPortrait;
    }
    return self;
}

- (WKWebView*)wkwebView{
    
    if (!_wkwebView) {
        
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = [[WKUserContentController alloc] init];
        [configuration.userContentController addScriptMessageHandler:self name:js_close];

        _wkwebView = [[WKWebView alloc] initWithFrame:self.view.frame configuration:configuration];
        
        
        _wkwebView.navigationDelegate = self;
        _wkwebView.UIDelegate = self;
        [_wkwebView addObserver:self forKeyPath:wwwww_tag_wwwww_estimatedProgress options:NSKeyValueObservingOptionNew context:nil];
    }
    
    return _wkwebView;

}

- (void)loadView 
{
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] gama_currentBounds_MMMethodMMM]];
}

- (void)viewDidLoad { 
    [super viewDidLoad];
    
    SDK_LOG(@"MWWebViewController viewDidLoad");
    
    self.backgroundView = [[UIView alloc] init];
    
    [self.view addSubview:self.backgroundView];
    
    
    
    [self.backgroundView addSubview:self.wkwebView];
    
    _closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    [self.view addSubview:_closeBtn];
    [_closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.top.mas_equalTo(self.view).mas_offset(VH(25));
        make.trailing.mas_equalTo(self.view).mas_offset(-VH(30));
        make.width.mas_equalTo(VH(30));
        make.height.mas_equalTo(VH(30));
    }];
    
    self.view.backgroundColor = UIColor.clearColor;
    
    if (_layoutHandler) {
        _layoutHandler(self.backgroundView, self.headerView, self.wkwebView, self.footView);
    } else {
        [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            if (@available(iOS 11.0, *)) {
                make.leading.trailing.mas_equalTo(self.view);
                make.top.mas_equalTo(self.view).mas_offset(self.view.safeAreaInsets.top);
                make.bottom.mas_equalTo(self.view);
            } else {
                
                make.edges.mas_equalTo(self.view);
            }
        }];
        
        
        
        [self.wkwebView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.backgroundView);
        }];
    }
    
    if (self.wkwebView && _progressView) {
        [self.wkwebView addSubview:_progressView];
        [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.leading.trailing.mas_equalTo(self.wkwebView);
            make.height.equalTo(@(3));
        }];
    }
    [self webLoadURLRequest_MMMethodMMM:self.webRequest];
    
    
    
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
}

#pragma mark - WKNavigationDelegate

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   
{
    [_indicatorView startAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didStartProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didStartProvisionalNavigation:navigation];
    }
}
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation 
{
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didCommitNavigation:)]) {
        [_webViewDelegate webView:webView didCommitNavigation:navigation];
    }
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation 
{
    SDK_LOG(@"didFinishNavigation");
    [_indicatorView stopAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFinishNavigation:)]) {
        [_webViewDelegate webView:webView didFinishNavigation:navigation];
    }
    _closeBtn.hidden = YES;
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    
{
    SDK_LOG(@"didFailNavigation withError");
    [_indicatorView stopAnimating];
    
    !_alertHandler?:_alertHandler(error.description, nil);
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFailNavigation:withError:)]) {
        [_webViewDelegate webView:webView didFailNavigation:navigation withError:error];
    }
}
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  
{
    SDK_LOG(@"decidePolicyForNavigationAction decisionHandler");
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
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didReceiveServerRedirectForProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didReceiveServerRedirectForProvisionalNavigation:navigation];
    }
}


#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completionHandler();
    }]];
    [self presentViewController:alert animated:YES completion:NULL];

}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler  
{
    !_alertHandler?:_alertHandler(message, ^(BOOL confirmResult) {
        !completionHandler?:completionHandler(confirmResult);
    });
}


-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures  
{
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
    if ([message.name isEqualToString:js_close]) {
        
        [self webClose_MMMethodMMM];
    }
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {  
    
    if ([wwwww_tag_wwwww_loading isEqualToString:keyPath]) {
        
    } else if ([wwwww_tag_wwwww_title isEqualToString:keyPath]) {
        
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


- (void)dealloc
{
    [self.wkwebView removeObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS];
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
