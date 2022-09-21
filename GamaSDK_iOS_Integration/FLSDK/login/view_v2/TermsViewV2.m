//
//  TermsView.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "TermsViewV2.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"
#import "ViewUtil.h"

#define SDK_PROVISIONS_FIRST_ENBLE @"sdk_provisions_first_enble"
@interface TermsViewV2 ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation TermsViewV2
{
//    UIButton *serverTermsBtn;
//    UIButton *privacyPolicyBtn;
//    UIButton *agreeBtn;

//    UIButton *agreeBtn2;
    
    WKWebView *provisionWebView;
//    BOOL isAgree;
    
}

- (instancetype)initWithCompleter:(void (^)(void))completer
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
        
        self.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.1];
        
        [self landspaceView];
        
        
    }
    return self;
}


- (void)landspaceView {
   
    
    UIView *contentView = [[UIView alloc] init];
    
    UIColor *color = [UIColor whiteColor];
    contentView.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
    contentView.layer.cornerRadius = 10; //设置圆角
    contentView.layer.masksToBounds = YES;
    
    [self addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.width.mas_equalTo(VW(330));
        make.height.mas_equalTo(VH(300));
    }];
    
    
    UIView *titleView = [[UIView alloc] init];
    [contentView addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(contentView.mas_top).mas_offset(VH(10));
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));
        make.trailing.mas_equalTo(contentView).mas_offset(VW(-15));
//        make.width.mas_equalTo(self);
//        make.height.mas_equalTo(VH(40));
    }];
    
    UIView *tagView = [[UIView alloc] init];
    tagView.backgroundColor = [UIColor colorWithHexString:BaseColor];
    [titleView addSubview:tagView];
    [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(titleView);
        make.leading.mas_equalTo(titleView);
        make.width.mas_equalTo(VW(4));
        make.height.mas_equalTo(VH(14));
//        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    
    
    UILabel *titleLabel = [UIUtil initLabelWithText:@"sdk_terms_title".localx fontSize:FS(15) textColor:[UIColor colorWithHexString:@"#2A2A2A"]];
    titleLabel.font = [UIFont boldSystemFontOfSize:FS(15)];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(titleView);
        make.leading.mas_equalTo(titleView).mas_offset(6);
        make.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(titleView);
        make.bottom.mas_equalTo(titleView);
    }];
    
    UIButton *closeBtn = [UIUtil initBtnWithTitleText:@"text_close".localx fontSize:FS(15) textColor:[UIColor colorWithHexString:BaseColor] tag:TAG_CLOSE selector:@selector(action:) target:self];
    
    closeBtn.layer.cornerRadius = VH(32) / 2;
    closeBtn.layer.borderColor = [UIColor colorWithHexString:BaseColor].CGColor;
    closeBtn.layer.borderWidth = 0.5;
    
    [contentView addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(titleView);
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
        make.bottom.mas_equalTo(contentView.mas_bottom).mas_offset(-VH(10));
        make.width.mas_equalTo(VW(94));
        make.height.mas_equalTo(VH(32));
    }];
    
    UIButton *okBtn = [UIUtil initBtnWithTitleText:@"text_agree_read_tips".localx fontSize:FS(15) textColor:[UIColor whiteColor] tag:kAgreeTermsCheckBoxBtnTag selector:@selector(action:) target:self];
    
    okBtn.layer.cornerRadius = VH(32) / 2;
    okBtn.backgroundColor = [UIColor colorWithHexString:BaseColor];
//    okBtn.layer.borderColor = [UIColor colorWithHexString:BaseColor].CGColor;
//    okBtn.layer.borderWidth = 0.5;
    
    [contentView addSubview:okBtn];
    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(titleView);
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
        make.bottom.mas_equalTo(closeBtn.mas_bottom);
        make.width.mas_equalTo(VW(190));
        make.height.mas_equalTo(VH(32));
    }];
    
    CAGradientLayer *gl = [ViewUtil createGradientLayerWithRadius:VH(16)];
    [okBtn.layer addSublayer:gl];
    
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        gl.frame = okBtn.bounds;
    }];
    
    UIView *xView = [[UIView alloc] init];
    //xView.backgroundColor = [UIColor colorWithHexString:@"#E4E4E4"];
    xView.layer.borderColor = [UIColor colorWithHexString:@"#DEDEDE"].CGColor;
    xView.layer.borderWidth = 0.6;
    [contentView addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(contentView).mas_offset(VW(15));;
        make.trailing.mas_equalTo(contentView).mas_offset(-VW(15));
        make.top.mas_equalTo(titleView.mas_bottom).mas_offset(VW(10));
        make.bottom.mas_equalTo(closeBtn.mas_top).mas_offset(-VW(10));
    }];


//    UIView *contentView = [[UIView alloc] init];
//    contentView.backgroundColor = [UIColor whiteColor];
//    contentView.layer.borderColor = [UIColor colorWithHexString:@"#545454"].CGColor;
//    contentView.layer.borderWidth = 0.8;
//    [xView addSubview:contentView];
//    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.mas_equalTo(xView);
//    }];

    //        https://member.flyfungame.com/sdk/archive.html   服務條款
    //        https://member.flyfungame.com/sdk/privacy.html   隱私政策
    
    NSString * url = SDK_DATA.urls.agreementUrl;
    if (!url || [@"" isEqualToString:url]) {
        url = [NSString stringWithFormat:TERMS_SERVICE_URL,GAME_CODE];
    }
    
    SDK_LOG(@"termsUrl=%@",url);
    provisionWebView = [[WKWebView alloc] init];
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: url]]];
    [provisionWebView.scrollView setBounces:YES];
    [provisionWebView.scrollView setScrollEnabled:YES];
//    [provisionWebView setUserInteractionEnabled:YES];
    [xView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.leading.mas_equalTo(xView).mas_offset(VW(8));
        make.bottom.trailing.mas_equalTo(xView).mas_offset(-VW(8));
    }];
    
}

- (void)action:(UIButton *)sender
{
   
    switch (sender.tag) {
        case 11://點擊服務條款
            break;
        case TAG_CLOSE:
            [self removeFromSuperview];
            break;
            
        case kAgreeTermsCheckBoxBtnTag:
            
            if (self.completer) {
                self.completer();
            }
            
            [self removeFromSuperview];
            
            break;
            
        default:
            break;
    }
    
}

+ (void)saveAgreenProvisionState:(BOOL)agreen
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    [saveDefault setBool:agreen forKey:SDK_PROVISIONS_FIRST_ENBLE];
    [saveDefault synchronize];
}

+ (BOOL)openProvision{
    
    return ![TermsViewV2 isAgreenProvision];
}

+(BOOL)isAgreenProvision
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
