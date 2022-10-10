//
//  GamaWebViewController.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/12/10.
//  Copyright © 2018年 starpy. All rights reserved.
//

#define js_close    @"close"

#import "MWWebViewController.h"
#import <SafariServices/SafariServices.h>

#define WK_WEBVIEW_ESTIMATED_PROGRESS @"estimatedProgress"

//View controller-based status bar appearance 一个布尔值，指示状态栏外观是否基于当前视图控制器的首选样式。
//1）当 Status bar is initially hidden 设置为 NO 的时候，不管 View controller-based status bar appearance 设置为 NO 还是 YES ，都是无效的。
//2）只有 Status bar is initially hidden 设置为 YES 的时候， View controller-based status bar appearance 才生效，这个要注意一下。

@interface MWWebViewController ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>
@property (nonatomic, assign) CGFloat researchitiousPod;
@property (nonatomic, copy) MWWebLayoutHandler layoutHandler;
@property (nonatomic, copy) NSString *monthNesier;
@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, assign) CGFloat ophthalmosityOssotOnce;
@property (nonatomic, strong) WKWebView *wkwebView;
@property (nonatomic, strong) UIView *headerView;
@property (nonatomic, assign) BOOL secondPyruousStationia;
@property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic) BOOL animation;
@property (nonatomic, strong)NSURLRequest *webRequest;
@property (nonatomic, assign) NSUInteger patiproofAffectmost;
@end

@implementation MWWebViewController

+(instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request layoutHandler_MMMethodMMM:(id)handler animation_MMMethodMMM:(BOOL)animation animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle
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
    MWWebViewController *webVC = [[MWWebViewController alloc] initWithWebLayoutHandler_MMMethodMMM:handler animation_MMMethodMMM:animation];
    webVC.modalTransitionStyle = animationStyle;
    webVC.modalPresentationStyle = UIModalPresentationFullScreen;//不添加这句选择图片会崩溃
    webVC.webRequest = request;
    //[webVC webLoadURLRequest_MMMethodMMM:request];
    [containerVC presentViewController:webVC animated:animation completion:nil];
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
        [_wkwebView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    }
    
    return _wkwebView;

}


- (NSUInteger)amacyVotbeization:(BOOL)thoseable pinlet:(NSUInteger)pinlet bit:(BOOL)bit tellency:(NSUInteger)tellency headan:(CGFloat)headan
{
    return 5038514 * 5990439 + 4636544 ; 
}
- (void)loadView //system_method
{
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] gama_currentBounds_MMMethodMMM]];
}


- (NSUInteger)yesoriumAcidentifyness:(NSString *)linqunearlyade negosity:(CGFloat)negosity pictureeur:(NSString *)pictureeur soon:(NSUInteger)soon meetingship:(CGFloat)meetingship
{
    return 6192012 * 9136377 + 3983412 ; 
}
- (NSString *)gravXanthize:(BOOL)leni sed:(NSUInteger)sed feminier:(NSString *)feminier nexsouthernance:(NSUInteger)nexsouthernance
{
    return [NSString stringWithFormat:@"%@%@", @"pneuability" , @"geni"]; 
}
- (void)fanticFeelate:(CGFloat)maleity
{
    [NSString stringWithFormat:@"%@%@", @"ceiv" , @"piarium"]; 
}
- (void)viewDidLoad { //system_method
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *statueView = [[UIView alloc] init];
    statueView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F13B11"];
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
}


- (NSString *)responsibilityonLimacpartnertic
{
    return [NSString stringWithFormat:@"%@%@", @"octition" , @"ilose"]; 
}
- (void)viewWillAppear:(BOOL)animated{  //system_method
    [self setNeedsStatusBarAppearanceUpdate];
}

- (BOOL)prefersStatusBarHidden  //system_method
{
    return YES;  //状态栏隐藏
//    return NO; //状态栏显示, 默认值
}



- (CGFloat)phasnessWhiteress:(CGFloat)grandpage
{
    return 3083138 * 5098090 + 4261905 ; 
}
- (UIStatusBarStyle)preferredStatusBarStyle{    //system_method
    return UIStatusBarStyleDefault;
}


- (void)viewDidLayoutSubviews{  //system_method
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

+ (CGFloat)deepmostTroglodiscussionful
{
    return 5516501 * 5532131 + 4997405 ; 
}
+ (void)careereerMessageid:(CGFloat)thinkia certainly:(NSString *)certainly
{
    [NSString stringWithFormat:@"%@%@", @"hostpassfaction" , @"Mror"]; 
}
+ (NSUInteger)lavitorSeemator:(NSString *)obsation porphyrition:(BOOL)porphyrition everyal:(BOOL)everyal
{
    return 6442139 * 4832347 + 4784808 ; 
}
- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request
{
    if (self.wkwebView) {
        [self.wkwebView loadRequest:request];
    }
}


+ (NSUInteger)xenMonstr:(NSUInteger)peopleile radio:(BOOL)radio
{
    return 5221680 * 4171032 + 738872 ; 
}
+ (void)sorptaireDensety:(NSUInteger)lexicier centralacious:(CGFloat)centralacious trin:(BOOL)trin fusful:(NSUInteger)fusful
{
    [NSString stringWithFormat:@"%@%@", @"artistsive" , @"name"]; 
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


- (NSString *)suiityPrec:(BOOL)cruacity resultship:(NSUInteger)resultship celerarian:(BOOL)celerarian should:(CGFloat)should
{
    return [NSString stringWithFormat:@"%@%@", @"artistety" , @"menacit"]; 
}
- (NSUInteger)socialabilityQuot:(NSString *)cardi everyonely:(BOOL)everyonely epistemism:(CGFloat)epistemism
{
    return 4662433 * 2307557 + 3897883 ; 
}
- (void)webClose_MMMethodMMM
{
    [self dismissViewControllerAnimated:self.animation completion:^{
        !_closeHandler?:_closeHandler();
    }];
}

#pragma mark - WKNavigationDelegate

//2、当WebView开始加载Web内容时触发；

+ (NSString *)nocLessety
{
    return [NSString stringWithFormat:@"%@%@", @"fearity" , @"accountier"]; 
}
+ (NSString *)allaticSpinfold:(CGFloat)sexagesim
{
    return [NSString stringWithFormat:@"%@%@", @"staffate" , @"imaginewise"]; 
}
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   //system_method
{
    [_indicatorView startAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didStartProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didStartProvisionalNavigation:navigation];
    }
}

- (CGFloat)accordingosePhenesque:(NSUInteger)opiage vvvtoaaa:(NSUInteger)vvvtoaaa creish:(NSString *)creish
{
    return 8830080 * 8755788 + 3990026 ; 
}
- (void)persicmarriageiteHygrlet:(NSString *)primiarium creatitious:(BOOL)creatitious
{
    [NSString stringWithFormat:@"%@%@", @"alonelet" , @"classian"]; 
}
- (NSString *)sessHierosetor:(BOOL)omasose ballistic:(CGFloat)ballistic
{
    return [NSString stringWithFormat:@"%@%@", @"continue" , @"ducprepare"]; 
}
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation //system_method
{
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didCommitNavigation:)]) {
        [_webViewDelegate webView:webView didCommitNavigation:navigation];
    }
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation //system_method
{
    [_indicatorView stopAnimating];
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFinishNavigation:)]) {
        [_webViewDelegate webView:webView didFinishNavigation:navigation];
    }
}

//当Web视图正在加载内容时发生错误时调用;
- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    //system_method
{
    [_indicatorView stopAnimating];
    
    !_alertHandler?:_alertHandler(error.description, nil);
    
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didFailNavigation:withError:)]) {
        [_webViewDelegate webView:webView didFailNavigation:navigation withError:error];
    }
}
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  //system_method
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
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation    //system_method
{
    NSLog(@"WKWebView didReceiveServerRedirect 重定向中");
    if (_webViewDelegate && [_webViewDelegate respondsToSelector:@selector(webView:didReceiveServerRedirectForProvisionalNavigation:)]) {
        [_webViewDelegate webView:webView didReceiveServerRedirectForProvisionalNavigation:navigation];
    }
}

#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   //system_method
{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message_MMMethodMMM:message preferredStyle:UIAlertControllerStyleAlert];
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
        
        [self dismissViewControllerAnimated:NO completion:^{
            
        }];
    }
}

#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {  //system_method
    
    if ([@"loading" isEqualToString:keyPath]) {
        
    } else if ([@"title" isEqualToString:keyPath]) {
        
    } else if ([@"URL" isEqualToString:keyPath]) {
        
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
- (BOOL)shouldAutorotate    //system_method
{
    return _shouldRotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations    //system_method
{
    return _interfaceOrientationMask;
}

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
    return self.interfaceOrientation;
}


- (void)dealloc
{
    [self.wkwebView removeObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS];
}

@end
