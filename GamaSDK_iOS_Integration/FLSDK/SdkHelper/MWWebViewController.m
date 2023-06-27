//
//  GamaWebViewController.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/12/10.
//  Copyright © 2018年 starpy. All rights reserved.
//

#define js_close    wwwww_tag_wwwww_close

#import "MWWebViewController.h"
#import <SafariServices/SafariServices.h>

#define WK_WEBVIEW_ESTIMATED_PROGRESS wwwww_tag_wwwww_estimatedProgress

//View controller-based status bar appearance 一个布尔值，指示状态栏外观是否基于当前视图控制器的首选样式。
//1）当 Status bar is initially hidden 设置为 NO 的时候，不管 View controller-based status bar appearance 设置为 NO 还是 YES ，都是无效的。
//2）只有 Status bar is initially hidden 设置为 YES 的时候， View controller-based status bar appearance 才生效，这个要注意一下。

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
//    if(device_is_iPhoneX){
//        SDK_LOG(wwwww_tag_wwwww_device_is_iPhoneX);
//        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:request.URL];
////        safariVC.modalPresentationStyle = UIModalPresentationFullScreen;
//        [containerVC presentViewController:safariVC animated:animation completion:handler];
//        return nil;
//    }
//    SDK_LOG(@"not device_is_iPhoneX");
    MWWebViewController *webVC = [[MWWebViewController alloc] initWithWebLayoutHandler_MMMethodMMM:handler animation_MMMethodMMM:animation];
    webVC.modalTransitionStyle = animationStyle;
    webVC.modalPresentationStyle = UIModalPresentationFullScreen;//不添加这句选择图片会崩溃
    webVC.webRequest = request;
    //[webVC webLoadURLRequest_MMMethodMMM:request];
   
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
        
        self.interfaceOrientationMask = UIInterfaceOrientationMaskAll;// 设备支持方向
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
        
//        _wkwebView = [[WKWebView alloc] init];
        
//        _wkwebView.configuration = configuration;
        _wkwebView.navigationDelegate = self;
        _wkwebView.UIDelegate = self;
        [_wkwebView addObserver:self forKeyPath:wwwww_tag_wwwww_estimatedProgress options:NSKeyValueObservingOptionNew context:nil];
    }
    
    return _wkwebView;

}

- (void)loadView //system_method
{
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] gama_currentBounds_MMMethodMMM]];
}

- (void)viewDidLoad { //system_method
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SDK_LOG(@"MWWebViewController viewDidLoad");
//    UIView *statueView = [[UIView alloc] init];
//    statueView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F13B11];
//    [self.view addSubview:statueView];
//    [statueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        make.top.leading.trailing.mas_equalTo(self.view);
//        make.height.mas_equalTo(60);
//    }];
    
    self.backgroundView = [[UIView alloc] init];
    
    [self.view addSubview:self.backgroundView];
//    self.backgroundView.frame = self.view.bounds;
    
    //backgroundView add subviews
//    [self.backgroundView addSubview:self.headerView];
    
    [self.backgroundView addSubview:self.wkwebView];
//    [self.backgroundView addSubview:self.footView];
    
    _closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
//    _closeBtn.hidden = YES;
    [self.view addSubview:_closeBtn];
    [_closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.center.mas_equalTo(titleView);
        
        make.top.mas_equalTo(self.view).mas_offset(VH(25));
        make.trailing.mas_equalTo(self.view).mas_offset(-VH(30));
        make.width.mas_equalTo(VH(30));
        make.height.mas_equalTo(VH(30));
    }];
    
    self.view.backgroundColor = UIColor.clearColor;
    //custom layout or not
    if (_layoutHandler) {
        _layoutHandler(self.backgroundView, self.headerView, self.wkwebView, self.footView);
    } else {
        [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
            
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
        
//        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.leading.trailing.mas_equalTo(self.backgroundView);
//            make.height.mas_equalTo(self.backgroundView).multipliedBy(0.08);
//        }];
        
//        UIBarButtonItem *closeBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target_MMMethodMMM:self action:@selector(webClose)];
//        UIBarButtonItem *reloadBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target_MMMethodMMM:self action:@selector(webReload)];
//        UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target_MMMethodMMM:nil action:nil];
//        UIBarButtonItem *backBtn = [[UIBarButtonItem alloc] initWithTitle:@"<" style:UIBarButtonItemStylePlain target_MMMethodMMM:self action:@selector(webGoBack)];
//        UIBarButtonItem *forwardBtn = [[UIBarButtonItem alloc] initWithTitle:@">" style:UIBarButtonItemStylePlain target_MMMethodMMM:self action:@selector(webGoForward)];
//        UIBarButtonItem *fixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target_MMMethodMMM:nil action:nil];
//        CGFloat screenWidth = [[UIScreen mainScreen] gama_currentBounds_MMMethodMMM].size.width;
//        fixedSpace.width = screenWidth * 0.05;
//
//        UIToolbar *toolBar = [[UIToolbar alloc] init];
//        [toolBar setItems:@[backBtn,fixedSpace,forwardBtn,space,reloadBtn,fixedSpace,closeBtn] animated:YES];
//        [self.headerView addSubview:toolBar];
//        [toolBar mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.edges.equalTo(self.headerView);
//        }];
        
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
    
    //设置状态栏是否隐藏
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    if(self.viewDidLoadCompletion){
        self.viewDidLoadCompletion(@"",0, nil);
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

//2、当WebView开始加载Web内容时触发；
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   //system_method
{
    [_indicatorView startAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didStartProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didStartProvisionalNavigation:navigation];
    }
}
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation //system_method
{
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didCommitNavigation:)]) {
        [_webViewDelegate webView:webView didCommitNavigation:navigation];
    }
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation //system_method
{
    SDK_LOG(@"didFinishNavigation");
    [_indicatorView stopAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFinishNavigation:)]) {
        [_webViewDelegate webView:webView didFinishNavigation:navigation];
    }
    _closeBtn.hidden = YES;
}

//当Web视图正在加载内容时发生错误时调用;
- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    //system_method
{
    SDK_LOG(@"didFailNavigation withError");
    [_indicatorView stopAnimating];
    
    !_alertHandler?:_alertHandler(error.description, nil);
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFailNavigation:withError:)]) {
        [_webViewDelegate webView:webView didFailNavigation:navigation withError:error];
    }
    _closeBtn.hidden = NO;
}
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  //system_method
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

//1、当Web视图收到服务器重定向时调用；
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation    //system_method
{
    SDK_LOG(@"didReceiveServerRedirectForProvisionalNavigation");
    NSLog(@"WKWebView didReceiveServerRedirect 重定向中");
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didReceiveServerRedirectForProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didReceiveServerRedirectForProvisionalNavigation:navigation];
    }
}

//服务器返回200以外的状态码时，都调用请求失败的方法。
//- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
//
//    if (((NSHTTPURLResponse *)navigationResponse.response).statusCode == 200) {
//        decisionHandler (WKNavigationResponsePolicyAllow);
//    }else {
//        decisionHandler(WKNavigationResponsePolicyCancel);
//    }
//}

#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   //system_method
{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:wwwww_tag_wwwww_diplive_clinoful message_MMMethodMMM:message preferredStyle:UIAlertControllerStyleAlert];
//    [alert addAction:[UIAlertAction actionWithTitle:wwwww_tag_wwwww_matraeur_ampl style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        completionHandler();
//    }]];
//
//    [self presentViewController:alert animated:YES completion:NULL];
//    !_alertHandler?:_alertHandler(message, nil);
////    completionHandler();
    !_alertHandler?:_alertHandler(message, nil);
    completionHandler();

}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler  //system_method
{
    !_alertHandler?:_alertHandler(message, ^(BOOL confirmResult) {
        !completionHandler?:completionHandler(confirmResult);
    });
}


-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures  //system_method
{
    WKFrameInfo *frameInfo = navigationAction.targetFrame;
    if (![frameInfo isMainFrame]) {
        [webView loadRequest:navigationAction.request];
    }
    return nil;
}

#pragma mark - WKUserContentController
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message   //system_method
{
    SDK_LOG(@"userContentController message=%@", message.name);
    if ([message.name isEqualToString:js_close]) {
        
        [self webClose_MMMethodMMM];
    }
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {  //system_method
    
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

//决定界面最后支持的屏幕方向的是 target&plist ∩ AppDeleagte中window设置 ∩ 视图控制器设置 这三个位置的交集。如果这个交集为空，就会抛出UIApplicationInvalidInterfaceOrientation异常崩溃


//设置决定当前页面是否可以自动旋转，YES为支持旋转，NO为不支持旋转；如果返回NO,则其他转屏相关方法将不会再被调用。
//如果将shouldAutorotate设置为YES,setStatusBarOrientation方法设置无效，只有shouldAutorotate设置为NO,才会起作用
- (BOOL)shouldAutorotate    //system_method
{
    SDK_LOG(@"shouldAutorotate");
    return _shouldRotate;
}
//设置页面支持的旋转方向。
//iPhone上默认返回UIInterfaceOrientationMaskAllButUpsideDown；
//iPad上默认返回UIInterfaceOrientationMaskAll；
- (UIInterfaceOrientationMask)supportedInterfaceOrientations    //system_method
{
    SDK_LOG(@"supportedInterfaceOrientations");
    return _interfaceOrientationMask;
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
