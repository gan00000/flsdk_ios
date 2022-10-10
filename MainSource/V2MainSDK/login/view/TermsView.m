//
//  TermsView.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/8/1.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "TermsView.h"
#import "SdkUtil.h"
#import "UIColor+HexStringToColorTW.h"
#import "SdkHeader.h"
#import "LoginButton.h"
#import "LoginTitleView.h"

#define SDK_PROVISIONS_FIRST_ENBLE @"sdk_provisions_first_enble"
@interface TermsView ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation TermsView
{
//    UIButton *serverTermsBtn;
//    UIButton *privacyPolicyBtn;
//    UIButton *agreeBtn;
//
//    UIButton *agreeBtn2;
    
    WKWebView *provisionWebView;
//    BOOL isAgree;
    
    LoginTitleView *mLoginTitleView;
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
//        UIColor *color = [UIColor colorWithHexString_MMMethodMMM:ContentViewBgColor];
//        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
//        self.layer.cornerRadius = 10; //设置圆角
//        self.layer.masksToBounds = YES;
        
        [self landspaceView_MMMethodMMM];
        
        
    }
    return self;
}



+ (NSUInteger)reneticPreterier:(NSUInteger)enneament mulsate:(BOOL)mulsate
{
    return 2845417 * 1208907 + 4922833 ; 
}
- (void)landspaceView_MMMethodMMM {
   
    //title
    mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(@"sdk_terms_title") hander_MMMethodMMM:^(NSInteger param) {
        
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
//        make.width.mas_equalTo(self);
        make.height.mas_equalTo(VH(40));
    }];
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#848484"];
    [self addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(17));
        make.leading.mas_equalTo(self).mas_offset(VW(40));
        make.trailing.mas_equalTo(self).mas_offset(-VW(40));
        make.height.mas_equalTo(1);
    }];
    
    UIView *xView = [[UIView alloc] init];
    //xView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#E4E4E4"];
    [self addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(lineView.mas_bottom).mas_offset(VH(12));
        make.leading.mas_equalTo(lineView);
        make.trailing.mas_equalTo(lineView);
        make.bottom.mas_equalTo(self);
    }];
    
    UIView *contentView = [[UIView alloc] init];
//    contentView.backgroundColor = [UIColor whiteColor];
//    contentView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"#545454"].CGColor;
//    contentView.layer.borderWidth = 0.8;
    [xView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(xView);
    }];
    
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
    [contentView addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.mas_equalTo(contentView);
        make.top.mas_equalTo(contentView);
        make.trailing.mas_equalTo(contentView);
        
        make.height.mas_equalTo(provisionWebView.mas_width);
    }];
    
//   NSString *xtext = GetString(@"GAMA_PROVISIONS_PROTRAIT_TEXT");
//
//    UILabel *rememberLable = [[UILabel alloc] init];
//    [xView addSubview:rememberLable];
////    rememberLable.text = GetString(@"GAMA_PROVISIONS_PROTRAIT_TEXT");
//    rememberLable.font = [UIFont systemFontOfSize:VH(20)];
//    rememberLable.textAlignment = NSTextAlignmentLeft;
//    rememberLable.backgroundColor = [UIColor clearColor];
//    rememberLable.numberOfLines = 1;
//    rememberLable.textColor = [UIColor blackColor];
//
//    // 下划线
//     NSDictionary *attribtDic = @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle],
//                                  NSFontAttributeName: [UIFont systemFontOfSize:VH(20)]
//     };
//     NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
//    [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length-5, 5)];
//     //赋值
//    rememberLable.attributedText = attribtStr;
//
//    [xView addSubview:rememberLable];
//    [rememberLable mas_makeConstraints:^(MASConstraintMaker *make) {
//       make.bottom.mas_equalTo(xView.mas_bottom).mas_offset(-4);
//        make.centerX.mas_equalTo(xView.mas_centerX).mas_offset(VW(20));
//        //make.leading.mas_equalTo(xView.mas_centerX).mas_offset(-VW(20));
//        //make.trailing.mas_equalTo(xView.mas_trailing).mas_offset(-VW(20));
//        make.width.mas_equalTo(contentView).multipliedBy(0.5);
//        make.height.mas_equalTo(VH(40));
//    }];
//
//        //同意按鈕
//        agreeBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:@"btn_checkbox_uncheck.png" highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:13 selector:@selector(action:) target_MMMethodMMM:self];
//        agreeBtn.layer.borderColor = [UIColor blackColor].CGColor;
//        agreeBtn.layer.borderWidth = 0.5;
//        [xView addSubview:agreeBtn];
//        [agreeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.mas_equalTo(rememberLable);
//            make.trailing.mas_equalTo(rememberLable.mas_leading).mas_offset(-VH(10));
//            make.width.mas_equalTo(VH(20));
//            make.height.mas_equalTo(VH(20));
//        }];
//
//    //確認登入遊戲
//    UIButton *okButton = [LoginButton initBtnWithType_MMMethodMMM:(BUTTON_TYPE_OK) tag_MMMethodMMM:kAccountLoginActTag selector:@selector(action:)  target_MMMethodMMM:self];
//    [self addSubview:okButton];
//
//    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self.mas_bottom).mas_offset(-VH(29));
//        make.height.mas_equalTo(VH(64));
//        make.centerX.mas_offset(@(0));
//        make.width.mas_equalTo(self.mas_width).mas_offset(-VW(80));
//    }];
//
//    isAgree = NO;
}


- (NSString *)phosibilitySomebodyization:(NSUInteger)lyzindustry matration:(BOOL)matration alongress:(BOOL)alongress grandpage:(BOOL)grandpage
{
    return [NSString stringWithFormat:@"%@%@", @"foodless" , @"cupile"]; 
}
- (BOOL)measureizeLaps
{
    return 9690965 * 9007546 + 3786189 ; 
}
- (CGFloat)manageacyHadr:(BOOL)mynatural
{
    return 9685809 * 7210009 + 8968893 ; 
}
- (void)action:(UIButton *)sender
{
   
    switch (sender.tag) {
        case 11://點擊服務條款
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
    
    return ![TermsView isAgreenProvision_MMMethodMMM];
}

+(BOOL)isAgreenProvision_MMMethodMMM
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
