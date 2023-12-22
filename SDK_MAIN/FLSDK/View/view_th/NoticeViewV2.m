//
//  TermsView.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "NoticeViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"

@interface NoticeViewV2 ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation NoticeViewV2
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
        
//        UIColor *color = [UIColor whiteColor];
//        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
//        self.layer.cornerRadius = 10; //设置圆角
//        self.layer.masksToBounds = YES;
        self.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.15];
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}


- (void)landspaceView_MMMethodMMM {
   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
    contentView.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
    contentView.layer.cornerRadius = 5; //设置圆角
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
//        make.width.mas_equalTo(self);
        make.height.mas_equalTo(VH(36));
    }];
    
    UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_title_notice.localx fontSize_MMMethodMMM:FS(16) textColor_MMMethodMMM:[UIColor whiteColor]];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(titleView);
//        make.leading.mas_equalTo(titleView).mas_offset(6);
//        make.trailing.mas_equalTo(titleView);
//        make.top.mas_equalTo(titleView);
//        make.bottom.mas_equalTo(titleView);
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_4 highlightedImage_MMMethodMMM:icon_close_4 tag_MMMethodMMM:TAG_CLOSE selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:self];
    
//    closeBtn.layer.cornerRadius = VH(32) / 2;
//    closeBtn.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor].CGColor;
//    closeBtn.layer.borderWidth = 0.5;
    
    [titleView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(titleView);
        make.trailing.mas_equalTo(titleView).mas_offset(VW(-8));;
        make.centerY.mas_equalTo(titleView);
        make.width.mas_equalTo(VH(22));
        make.height.mas_equalTo(VH(22));
    }];
    
    
    UIButton *leftBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_arr_left highlightedImage_MMMethodMMM:mw_arr_left tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
    [titleView addSubview:leftBtn];
    [leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(titleLabel.mas_trailing).mas_offset(VW(20));;
        make.centerY.mas_equalTo(titleLabel);
        make.width.mas_equalTo(VH(36));
        make.height.mas_equalTo(VH(14));
    }];
    
    
    UIButton *rightBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_arr_right highlightedImage_MMMethodMMM:mw_arr_right tag_MMMethodMMM:0 selector:@selector(btnClickAction_MMMethodMMM:) target_MMMethodMMM:nil];
    [titleView addSubview:rightBtn];
    [rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(titleLabel.mas_leading).mas_offset(-VW(20));;
        make.centerY.mas_equalTo(titleLabel);
        make.width.mas_equalTo(VH(36));
        make.height.mas_equalTo(VH(14));
    }];
    
    UIView *xView = [[UIView alloc] init];
    //xView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_E4E4E4];
//    xView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_DEDEDE].CGColor;
//    xView.layer.borderWidth = 0.6;
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
//    [provisionWebView setUserInteractionEnabled:YES];
    [xView addSubview:nWebView];
    [nWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VH(10));
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VH(10));
    }];
    
    NSString * url = SDK_DATA.urls_MMMPRO.noticeUrl;
    SDK_LOG(@"notice Url=%@",url);
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
