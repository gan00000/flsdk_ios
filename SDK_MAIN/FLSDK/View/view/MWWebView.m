//
//  MWWebView.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2023/10/26.
//  Copyright © 2023 Gama. All rights reserved.
//

#import "MWWebView.h"
#import "MWSDK.h"

#define js_close    wwwww_tag_wwwww_close
#define js_onPayFinish    wwwww_tag_wwwww_onPayFinish
#define js_trackEvent    wwwww_tag_wwwww_trackEvent
#define WK_WEBVIEW_ESTIMATED_PROGRESS wwwww_tag_wwwww_estimatedProgress

@interface MWWebView ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>

@property (nonatomic, strong) UIView *backgroundView;

@property (nonatomic, strong) UIProgressView *progressView;

@end

@implementation MWWebView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        SDK_LOG(@"initWithFrame");
        [self addView_MMMethodMMM];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        SDK_LOG(@"initWithCoder");
        [self addView_MMMethodMMM];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        SDK_LOG(@"init");
        [self addView_MMMethodMMM];
    }
    return self;
}


-(void)loadRequest_MMMethodMMM:(NSString *)mUrl{
    mUrl = [SDKRequest createSdkUrl_MMMethodMMM:mUrl otherDic_MMMethodMMM:nil];
    [self.wkwebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:mUrl]]];
}

-(void)addView_MMMethodMMM{
    
    self.backgroundView = [[UIView alloc] init];
    [self addSubview:self.backgroundView];
//    self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F13B11];
    [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
    }];
    
    [self.backgroundView addSubview:self.wkwebView];
    [self.wkwebView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.backgroundView);
    }];
    
    self.progressView = [[UIProgressView alloc] init];
    self.progressView.progressViewStyle = UIProgressViewStyleDefault;
    self.progressView.progress = 0.0;
    
    [self.wkwebView addSubview:_progressView];
    [_progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.trailing.mas_equalTo(self.wkwebView);
        make.height.equalTo(@(3));
    }];
    
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
        
        _wkwebView = [[WKWebView alloc] initWithFrame:self.frame configuration:configuration];
        
        _wkwebView.navigationDelegate = self;
        _wkwebView.UIDelegate = self;
        [_wkwebView addObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS options:NSKeyValueObservingOptionNew context:nil];
        [_wkwebView addObserver:self forKeyPath:wwwww_tag_wwwww_title options:NSKeyValueObservingOptionNew context:NULL];

    }
    
    return _wkwebView;
    
}


#pragma mark - WKNavigationDelegate

//2、当WebView开始加载Web内容时触发；
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   //system_method
{
    SDK_LOG(@"页面开始加载webView didStartProvisionalNavigation");
    
}
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation //system_method
{
    SDK_LOG(@"页面开始返回webView didCommitNavigation");
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation //system_method
{
    SDK_LOG(@"页面完成加载webView didFinishNavigation");
    
}

//当Web视图正在加载内容时发生错误时调用;
- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    //system_method
{
    SDK_LOG(@"webView didFailNavigation withError");
    
}

//在发送请求之前，决定是否跳转
-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  //system_method
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

//1、当Web视图收到服务器重定向时调用；
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation    //system_method
{
    SDK_LOG(@"服务器重定向 didReceiveServerRedirectForProvisionalNavigation");
}

//服务器返回200以外的状态码时，都调用请求失败的方法。 在收到响应后，决定是否跳转
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    SDK_LOG(@"webView decidePolicyForNavigationResponse statusCode = %d", ((NSHTTPURLResponse *)navigationResponse.response).statusCode);
    if (((NSHTTPURLResponse *)navigationResponse.response).statusCode == 200) {
        decisionHandler (WKNavigationResponsePolicyAllow);
    }else {
        decisionHandler(WKNavigationResponsePolicyAllow);
    }
}

#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   //system_method
{
    SDK_LOG(@"completionHandler runJavaScriptAlertPanelWithMessage");
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completionHandler();
    }]];
    //
    [appTopViewController presentViewController:alert animated:YES completion:NULL];
    
}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler  //system_method
{
    SDK_LOG(@"completionHandler runJavaScriptAlertPanelWithMessage");
}


-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures  //system_method
{
    SDK_LOG(@"completionHandler createWebViewWithConfiguration windowFeatures");
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
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if ([message.name isEqualToString:js_close]) {
            
            if(self.webCallBack){
                self.webCallBack(@"close", TAG_CLOSE, nil);
            }
            
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
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {  //system_method
    
    if ([wwwww_tag_wwwww_loading isEqualToString:keyPath]) {
        
    } else if (object == self.wkwebView && [wwwww_tag_wwwww_title isEqualToString:keyPath]) {
        
//        self.titleLabel.text = self.wkwebView.title;
        
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


- (void)releaseAll_MMMethodMMM {
    SDK_LOG(@"MWWebView releaseAll");
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
    SDK_LOG(@"MWWebView dealloc");
//    [self releaseAll];
}

@end
