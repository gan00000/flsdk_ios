

#import "JustScorelyView.h"
#import "StinityAsterature.h"
#import "UIColor+LacrimisticJunior.h"
#import "SdkHeader.h"
#import "HospitalastLepidmanagementileButton.h"
#import "KineelChildetteView.h"

@interface JustScorelyView ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation JustScorelyView
{
    
    WKWebView *nWebView;
    
}

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
        
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}


- (void)landspaceView_MMMethodMMM {
   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
    contentView.backgroundColor = color;
    contentView.layer.cornerRadius = 5; 
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        
        if (IS_PORTRAIT) {
            make.width.mas_equalTo(VW(330));
            make.height.mas_equalTo(VH(512));
        }else{
            
            make.width.mas_equalTo(VW(498));
            make.height.mas_equalTo(VH(288));
            
        }
       
        
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
    titleView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12];
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top);
        make.leading.mas_equalTo(contentView);
        make.trailing.mas_equalTo(contentView);
        make.height.mas_equalTo(VH(36));
    }];
    
    UILabel *titleLabel = [LeukastBetweenate initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_title_notice.localx fontSize_MMMethodMMM:FS(16) textColor_MMMethodMMM:[UIColor whiteColor]];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(titleView);
    }];
    
    UIButton *closeBtn = [LeukastBetweenate initBtnWithNormalImage_MMMethodMMM:icon_close_4 highlightedImage_MMMethodMMM:icon_close_4 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    
    [titleView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(titleView).mas_offset(VW(-8));;
        make.centerY.mas_equalTo(titleView);
        make.width.mas_equalTo(VH(22));
        make.height.mas_equalTo(VH(22));
    }];
    
    
    UIButton *leftBtn = [LeukastBetweenate initBtnWithNormalImage_MMMethodMMM:mw_arr_left highlightedImage_MMMethodMMM:mw_arr_left tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
    [titleView addSubview:leftBtn];
    [leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleLabel.mas_trailing).mas_offset(VW(20));;
        make.centerY.mas_equalTo(titleLabel);
        make.width.mas_equalTo(VH(36));
        make.height.mas_equalTo(VH(14));
    }];
    
    
    UIButton *rightBtn = [LeukastBetweenate initBtnWithNormalImage_MMMethodMMM:mw_arr_right highlightedImage_MMMethodMMM:mw_arr_right tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
    [titleView addSubview:rightBtn];
    [rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(titleLabel.mas_leading).mas_offset(-VW(20));;
        make.centerY.mas_equalTo(titleLabel);
        make.width.mas_equalTo(VH(36));
        make.height.mas_equalTo(VH(14));
    }];
    
    UIView *xView = [[UIView alloc] init];
    
    [contentView addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView);
        make.trailing.mas_equalTo(contentView);
        make.top.mas_equalTo(titleView.mas_bottom);
        make.bottom.mas_equalTo(contentView);
    }];

    
    
    nWebView = [[WKWebView alloc] init];
    [nWebView.scrollView setBounces:YES];
    [nWebView.scrollView setScrollEnabled:YES];
    [xView addSubview:nWebView];
    [nWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VH(10));
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VH(10));
    }];
    
    NSString * url = SDK_DATA.urls_MMMPRO.noticeUrl;
    SDK_LOG(wwwww_tag_wwwww_sarcage_stigmat,url);
    if(url){
        [nWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
    }
    
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

@end
