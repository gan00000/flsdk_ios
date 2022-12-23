
#import "MCoolFishHeaderView.h"
#import "MCoolFishEventFile.h"
#import "MCoolFishWithWith.h"
#import "SdkHeader.h"
#import "MCoolFishKeychainButton.h"
#import "MCoolFishFiledGestureView.h"

#define SDK_PROVISIONS_FIRST_ENBLE wwwww_tag_wwwww_sdk_provisions_first_enble
@interface MCoolFishHeaderView ()

@property(nonatomic, assign)int  handerFlag;
@property(nonatomic, assign)double  touchOffset;
@property(nonatomic, assign)long  textMark;


@property (copy,nonatomic) void (^completer)(void);
@end

@implementation MCoolFishHeaderView
{
    
    WKWebView *provisionWebView;
    
    MCoolFishFiledGestureView *mLoginTitleView;
}

- (instancetype)initWithCompleter_MMMethodMMM:(void (^)(void))completer
{
   self.handerFlag = 7336;

   self.touchOffset = 3351.0;

   self.textMark = 6660;

   self.function_flag = 1761;

   self.main_p = 4510;

   self.layout_space = 4491.0;

   self.commonPadding = 6296.0;

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
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}


- (void)landspaceView_MMMethodMMM {
   
    
    mLoginTitleView = [[MCoolFishFiledGestureView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_sdk_terms_title) hander_MMMethodMMM:^(NSInteger param) {
        
        if (self.fromPage == CURRENT_PAGE_TYPE_MAIN_HOME) {
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_TEARMS) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME)];
        }else if (self.fromPage == CURRENT_PAGE_TYPE_LOGIN_WITH_REG){
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_TEARMS) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
        }
        
        
    }];
    [self addSubview:mLoginTitleView];
    [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
        make.leading.trailing.mas_equalTo(self);
        make.height.mas_equalTo(VH(40));
    }];
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484];
    [self addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(17));
        make.leading.mas_equalTo(self).mas_offset(VW(40));
        make.trailing.mas_equalTo(self).mas_offset(-VW(40));
        make.height.mas_equalTo(1);
    }];
    
    UIView *xView = [[UIView alloc] init];
    
    [self addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(lineView.mas_bottom).mas_offset(VH(12));
        make.leading.mas_equalTo(lineView);
        make.trailing.mas_equalTo(lineView);
        make.bottom.mas_equalTo(self);
    }];
    
    UIView *contentView = [[UIView alloc] init];
    [xView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(xView);
    }];
    
    
    
    
    NSString * url = SDK_DATA.urls.agreementUrl;
    if (!url || [@"" isEqualToString:url]) {
        url = [NSString stringWithFormat:TERMS_SERVICE_URL,GAME_CODE];
    }
    
    SDK_LOG(@"termsUrl=%@",url);
    provisionWebView = [[WKWebView alloc] init];
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
    [provisionWebView.scrollView setBounces:YES];
    [provisionWebView.scrollView setScrollEnabled:YES];
    [contentView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.mas_equalTo(contentView);
        make.top.mas_equalTo(contentView);
        make.trailing.mas_equalTo(contentView);
        
        make.height.mas_equalTo(provisionWebView.mas_width);
    }];
    
}

- (void)action:(UIButton *)sender
{
   
    switch (sender.tag) {
        case 11:
            break;
        default:
            break;
    }
    
}

+ (void)saveAgreenProvisionState_MMMethodMMM:(BOOL)agreen
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    [saveDefault setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
    [saveDefault synchronize];
}

+ (BOOL)openProvision_MMMethodMMM{
    
    return ![MCoolFishHeaderView isAgreenProvision_MMMethodMMM];
}

+(BOOL)isAgreenProvision_MMMethodMMM
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
