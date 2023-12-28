

#import "MWWebView.h"
#import "MWSDK.h"

#define js_close    wwwww_tag_wwwww_close
#define js_onPayFinish    wwwww_tag_wwwww_onPayFinish
#define js_trackEvent    wwwww_tag_wwwww_trackEvent
#define WK_WEBVIEW_ESTIMATED_PROGRESS wwwww_tag_wwwww_estimatedProgress

@interface MWWebView ()<WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate>

@property (nonatomic, strong) UIView *backgroundView_MMMPRO;

@property (nonatomic, strong) UIProgressView *progressView_MMMPRO;

@end

@implementation MWWebView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        SDK_LOG(wwwww_tag_wwwww_initWithFrame);
        [self addView_MMMethodMMM];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        SDK_LOG(wwwww_tag_wwwww_initWithCoder);
        [self addView_MMMethodMMM];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        SDK_LOG(wwwww_tag_wwwww_init);
        [self addView_MMMethodMMM];
    }
    return self;
}


-(void)loadRequest_MMMethodMMM:(NSString *)mUrl{
    mUrl = [SDKRequest createSdkUrl_MMMethodMMM:mUrl otherDic_MMMethodMMM:nil];
    [self.wkwebView_MMMPRO loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:mUrl]]];
}

-(void)addView_MMMethodMMM{
    
    self.backgroundView_MMMPRO = [[UIView alloc] init];
    [self addSubview:self.backgroundView_MMMPRO];
    [self.backgroundView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
    }];
    
    [self.backgroundView_MMMPRO addSubview:self.wkwebView_MMMPRO];
    [self.wkwebView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.backgroundView_MMMPRO);
    }];
    
    self.progressView_MMMPRO = [[UIProgressView alloc] init];
    self.progressView_MMMPRO.progressViewStyle = UIProgressViewStyleDefault;
    self.progressView_MMMPRO.progress = 0.0;
    
    [self.wkwebView_MMMPRO addSubview:_progressView_MMMPRO];
    [_progressView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.trailing.mas_equalTo(self.wkwebView_MMMPRO);
        make.height.equalTo(@(3));
    }];
    
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
        
        _wkwebView_MMMPRO = [[WKWebView alloc] initWithFrame:self.frame configuration:configuration];
        
        _wkwebView_MMMPRO.navigationDelegate = self;
        _wkwebView_MMMPRO.UIDelegate = self;
        [_wkwebView_MMMPRO addObserver:self forKeyPath:WK_WEBVIEW_ESTIMATED_PROGRESS options:NSKeyValueObservingOptionNew context:nil];
        [_wkwebView_MMMPRO addObserver:self forKeyPath:wwwww_tag_wwwww_title options:NSKeyValueObservingOptionNew context:NULL];

    }
    
    return _wkwebView_MMMPRO;
    
}


#pragma mark - WKNavigationDelegate

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation   
{
    SDK_LOG(wwwww_tag_wwwww_raiseie_communityal);
    
}
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation 
{
    SDK_LOG(wwwww_tag_wwwww_avi_revealfier);
}
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation 
{
    SDK_LOG(wwwww_tag_wwwww_awayency_nonelike);
    
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error    
{
    SDK_LOG(wwwww_tag_wwwww_webView_didFailNavigation_withError);
    
}

-(void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler  
{
    SDK_LOG(wwwww_tag_wwwww_webView_decidePolicyForNavigationAction_decisionHandler);
    if (_webViewDelegate_MMMPRO && [_webViewDelegate_MMMPRO respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:)]) {
        [_webViewDelegate_MMMPRO webView:webView decidePolicyForNavigationAction:navigationAction decisionHandler:decisionHandler];
    } else {
        if (navigationAction.targetFrame == nil) {
            [webView loadRequest:navigationAction.request];
        }
        decisionHandler(WKNavigationActionPolicyAllow);
    }
}

- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation    
{
    SDK_LOG(wwwww_tag_wwwww_emea_taining);
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    SDK_LOG(wwwww_tag_wwwww_pictoify_anyone, ((NSHTTPURLResponse *)navigationResponse.response).statusCode);
    if (((NSHTTPURLResponse *)navigationResponse.response).statusCode == 200) {
        decisionHandler (WKNavigationResponsePolicyAllow);
    }else {
        decisionHandler(WKNavigationResponsePolicyAllow);
    }
}

#pragma mark - WKUIDelegate
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler   
{
    SDK_LOG(wwwww_tag_wwwww_completionHandler_runJavaScriptAlertPanelWithMessage);
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completionHandler();
    }]];
    
    [appTopViewController presentViewController:alert animated:YES completion:NULL];
    
}

- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler  
{
    SDK_LOG(wwwww_tag_wwwww_completionHandler_runJavaScriptAlertPanelWithMessage);
}


-(WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures  
{
    SDK_LOG(wwwww_tag_wwwww_completionHandler_createWebViewWithConfiguration_windowFeatures);
    WKFrameInfo *frameInfo = navigationAction.targetFrame;
    if (![frameInfo isMainFrame]) {
        [webView loadRequest:navigationAction.request];
    }
    return nil;
}

#pragma mark - WKUserContentController
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message   
{
    SDK_LOG(wwwww_tag_wwwww_gemperiodain_crepitical, message.name);
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if ([message.name isEqualToString:js_close]) {
            
            if(self.webCallBack_MMMPRO){
                self.webCallBack_MMMPRO(wwwww_tag_wwwww_close, TAG_CLOSE, nil);
            }
            
        }else if ([message.name isEqualToString:js_onPayFinish]) {
            
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
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change  context:(void *)context {  
    
    if ([wwwww_tag_wwwww_loading isEqualToString:keyPath]) {
        
    } else if (object == self.wkwebView_MMMPRO && [wwwww_tag_wwwww_title isEqualToString:keyPath]) {
        
        
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


- (void)releaseAll_MMMethodMMM {
    SDK_LOG(wwwww_tag_wwwww_MWWebView_releaseAll);
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
    SDK_LOG(wwwww_tag_wwwww_MWWebView_dealloc);
}

@end
