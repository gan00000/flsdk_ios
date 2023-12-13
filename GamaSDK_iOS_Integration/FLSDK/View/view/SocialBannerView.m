

#import "SocialBannerView.h"
#import "SDKRequest.h"
#import "MWWebViewController.h"

@interface SocialBannerView ()<WKNavigationDelegate>
@property (copy,nonatomic) void (^completer)(void);

@property (copy, nonatomic) NSString *reqWebURL;
@end


@implementation SocialBannerView


- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
    self = [self init];
    if (self) {
        self.completer = completer;
    }
    return self;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor = UIColor.clearColor;
        
        UIView *contentView = [[UIView alloc] init];
        contentView.backgroundColor = UIColor.blackColor;
        contentView.layer.cornerRadius = 10;
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            if(IS_PORTRAIT){
                make.width.mas_equalTo(VW(334));
                make.height.mas_equalTo(VH(625));
            }else{
                make.width.mas_equalTo(VW(625));
                make.height.mas_equalTo(VH(334));
            }
           
            make.center.mas_equalTo(self);
        }];
        
        
        NSString *resultURL = GetConfigString(@"sdk_social_banner_url");
        if ([StringUtil isNotEmpty_MMMethodMMM:resultURL]) {
            
            resultURL = [NSString stringWithFormat:resultURL, [GAME_CODE stringByReplacingOccurrencesOfString:@"ios" withString:@""]];
            
            resultURL = [SDKRequest createSdkUrl_MMMethodMMM:resultURL otherDic_MMMethodMMM:nil];
            
            SDK_LOG(@"showSocialView url=%@",resultURL);
            self.reqWebURL = resultURL;
            MWWebViewController *webVC = [MWWebViewController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:NO animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
          
            webVC.webViewDelegate = self;
            [contentView addSubview:webVC.view];
            [webVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.leading.mas_equalTo(contentView).offset(10);
                make.trailing.bottom.mas_equalTo(contentView).offset(-10);
            }];
        }else{
            SDK_LOG(@"showSocialView url is empty");
        }
        
        UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_social highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
        [self addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(contentView).offset(VH(-12));
            make.trailing.mas_equalTo(contentView).offset(VH(12));
            make.width.height.mas_equalTo(VH(25));
        }];
        
        
    }
    return self;
}

- (void)btnClickAction_MMMethodMMM:(UIButton *)sender
{
   
    switch (sender.tag) {
        case 11://點擊服務條款
            break;
        case TAG_CLOSE:
            [self removeFromGameView];
            if (self.completer) {
                self.completer();
            }
            break;
            
        default:
            break;
    }
    
}

#pragma mark - WKNavigationDelegate
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    if(self.reqWebURL && [self.reqWebURL isEqualToString:navigationAction.request.URL.relativeString]){
        decisionHandler(WKNavigationActionPolicyAllow);
        return;
    }
    [[UIApplication sharedApplication] openURL:navigationAction.request.URL options:@{} completionHandler:nil];
    
    decisionHandler(WKNavigationActionPolicyCancel);
}


@end
