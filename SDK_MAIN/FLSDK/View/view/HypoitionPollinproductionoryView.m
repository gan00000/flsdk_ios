

#import "HypoitionPollinproductionoryView.h"
#import "AnxiariumVehwindature.h"
#import "TownsterPlyateController.h"

@interface HypoitionPollinproductionoryView ()<WKNavigationDelegate>
@property (copy,nonatomic) void (^completer)(void);
@end


@implementation HypoitionPollinproductionoryView


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
        
        
        NSString *resultURL = GetConfigString(wwwww_tag_wwwww_sdk_social_banner_url);
        if ([VentlongonDifficult isNotEmpty_MMMethodMMM:resultURL]) {
            
            resultURL = [NSString stringWithFormat:resultURL, GAME_CODE];
            
            resultURL = [AnxiariumVehwindature createSdkUrl_MMMethodMMM:resultURL otherDic_MMMethodMMM:nil];
            
            SDK_LOG(wwwww_tag_wwwww_dichfollow_cultureorium,resultURL);
            TownsterPlyateController *webVC = [TownsterPlyateController webViewControllerPresentingWithURLRequest_MMMethodMMM:[NSURLRequest requestWithURL:[NSURL URLWithString:resultURL]] isShowTitle_MMMethodMMM:NO animation_MMMethodMMM:NO animationStyle_MMMethodMMM:UIModalTransitionStyleCoverVertical];
          
            webVC.webViewDelegate_MMMPRO = self;
            [contentView addSubview:webVC.view];
            [webVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.leading.mas_equalTo(contentView).offset(10);
                make.trailing.bottom.mas_equalTo(contentView).offset(-10);
            }];
        }else{
            SDK_LOG(wwwww_tag_wwwww_showSocialView_url_is_empty);
        }
        
        UIButton *closeBtn = [LeukastBetweenate initBtnWithNormalImage_MMMethodMMM:icon_close_social highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
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
            [self removeFromGameView_MMMethodMMM];
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
    
    [[UIApplication sharedApplication] openURL:navigationAction.request.URL options:@{} completionHandler:nil];
    
    decisionHandler(WKNavigationActionPolicyCancel);
}


@end
