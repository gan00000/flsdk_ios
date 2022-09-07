//
//  GamaWebViewController.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/12/10.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "MWWebViewController.h"
#import <SafariServices/SafariServices.h>

#define WK_WEBVIEW_ESTIMATED_PROGRESS @"estimatedProgress"

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
@property (nonatomic, strong)NSURLRequest *webRequest;
@end

@implementation MWWebViewController

+(instancetype)webViewControllerPresentingWithURLRequest:(NSURLRequest *)request layoutHandler:(id)handler animation:(BOOL)animation animationStyle:(UIModalTransitionStyle)animationStyle
{
    UIViewController *containerVC = appTopViewController;
//    if(device_is_iPhoneX){
//        SDK_LOG(@"device_is_iPhoneX");
//        SFSafariViewController *safariVC = [[SFSafariViewController alloc] initWithURL:request.URL];
////        safariVC.modalPresentationStyle = UIModalPresentationFullScreen;
//        [containerVC presentViewController:safariVC animated:animation completion:handler];
//        return nil;
//    }
//    SDK_LOG(@"not device_is_iPhoneX");
    MWWebViewController *webVC = [[MWWebViewController alloc] initWithWebLayoutHandler:handler animation:animation];
    webVC.modalTransitionStyle = animationStyle;
    webVC.modalPresentationStyle = UIModalPresentationFullScreen;//不添加这句选择图片会崩溃
    webVC.webRequest = request;
    //[webVC webLoadURLRequest:request];
    [containerVC presentViewController:webVC animated:animation completion:nil];
    return webVC;
}
- (instancetype)initWithWebLayoutHandler:(MWWebLayoutHandler)handler animation:(BOOL)animation
{
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.layoutHandler = handler;
        self.animation = animation;
        self.backgroundView = [[UIView alloc] init];
        self.headerView = [[UIView alloc] init];
        self.wkwebView = [[WKWebView alloc] init];
        self.wkwebView.navigationDelegate = self;
        self.wkwebView.UIDelegate = self;
        [self.wkwebView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
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

- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] gama_currentBounds]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *statueView = [[UIView alloc] init];
    statueView.backgroundColor = [UIColor colorWithHexString:@"#F13B11"];
    [self.view addSubview:statueView];
    [statueView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.leading.trailing.mas_equalTo(self.view);
        make.height.mas_equalTo(60);
    }];
    
    self.backgroundView = [[UIView alloc] init];
    
    [self.view addSubview:self.backgroundView];
//    self.backgroundView.frame = self.view.bounds;
    
    //backgroundView add subviews
//    [self.backgroundView addSubview:self.headerView];
    
    [self.backgroundView addSubview:self.wkwebView];
//    [self.backgroundView addSubview:self.footView];
    
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
        
//        UIBarButtonItem *closeBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(webClose)];
//        UIBarButtonItem *reloadBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(webReload)];
//        UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//        UIBarButtonItem *backBtn = [[UIBarButtonItem alloc] initWithTitle:@"<" style:UIBarButtonItemStylePlain target:self action:@selector(webGoBack)];
//        UIBarButtonItem *forwardBtn = [[UIBarButtonItem alloc] initWithTitle:@">" style:UIBarButtonItemStylePlain target:self action:@selector(webGoForward)];
//        UIBarButtonItem *fixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
//        CGFloat screenWidth = [[UIScreen mainScreen] gama_currentBounds].size.width;
//        fixedSpace.width = screenWidth * 0.05;
//
//        UIToolbar *toolBar = [[UIToolbar alloc] init];
//        [toolBar setItems:@[backBtn,fixedSpace,forwardBtn,space,reloadBtn,fixedSpace,closeBtn] animated:YES];
//        [self.headerView addSubview:toolBar];
//        [toolBar mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.edges.equalTo(self.headerView);
//        }];
        
        [_wkwebView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.backgroundView);
        }];
    }
    
    if (_wkwebView && _progressView) {
        [_wkwebView addSubview:_progressView];
        [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.leading.trailing.mas_equalTo(_wkwebView);
            make.height.equalTo(@(3));
        }];
    }
    [self webLoadURLRequest:self.webRequest];
    
    //设置状态栏是否隐藏
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
}

- (void)viewWillAppear:(BOOL)animated{
    [self setNeedsStatusBarAppearanceUpdate];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;  //状态栏隐藏
//    return NO; //状态栏显示, 默认值
}


- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleDefault;
}


- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");
    
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
- (void)webLoadURLRequest:(NSURLRequest *)request
{
    if (_wkwebView) {
        [_wkwebView loadRequest:request];
    }
}

- (void)webGoBack
{
    if ([self.wkwebView canGoBack]) {
        [self.wkwebView goBack];
    }
}

- (void)webGoForward
{
    if ([self.wkwebView canGoForward]) {
        [self.wkwebView goForward];
    }
}

- (void)webReload
{
    [self.wkwebView reload];
}

- (void)webClose
{
    [self dismissViewControllerAnimated:self.animation completion:^{
        !_closeHandler?:_closeHandler();
    }];
}

#pragma mark - WKNavigationDelegate

//2、当WebView开始加载Web内容时触发；
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
    [_indicatorView stopAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFinishNavigation:)]) {
        [_webViewDelegate webView:webView didFinishNavigation:navigation];
    }
}

//当Web视图正在加载内容时发生错误时调用;
- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error
{
    [_indicatorView stopAnimating];
    
    !_alertHandler?:_alertHandler(error.description, nil);
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFailNavigation:withError:)]) {
        [_webViewDelegate webView:webView didFailNavigation:navigation withError:error];
    }
}
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
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
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation
{
    NSLog(@"WKWebView didReceiveServerRedirect 重定向中");
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didReceiveServerRedirectForProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didReceiveServerRedirectForProvisionalNavigation:navigation];
    }
}

#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler
{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:message preferredStyle:UIAlertControllerStyleAlert];
//    [alert addAction:[UIAlertAction actionWithTitle:@"確定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        completionHandler();
//    }]];
//
//    [self presentViewController:alert animated:YES completion:NULL];
//    !_alertHandler?:_alertHandler(message, nil);
////    completionHandler();
    !_alertHandler?:_alertHandler(message, nil);
    completionHandler();

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
#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    if ([@"loading" isEqualToString:keyPath]) {
        
    } else if ([@"title" isEqualToString:keyPath]) {
        
    } else if ([@"URL" isEqualToString:keyPath]) {
        
    } else if (object == _wkwebView && [WK_WEBVIEW_ESTIMATED_PROGRESS isEqualToString:keyPath]) {
        _progressView.progress = _wkwebView.estimatedProgress;
        
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
    return _shouldRotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return _interfaceOrientationMask;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
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
    return self.interfaceOrientation;
}


- (void)dealloc
{
    [_wkwebView removeObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS];
}

@end
