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
@property (nonatomic, assign) CGFloat linOesophaghoodCriten;
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


- (NSUInteger)breakantDemocraticistic:(NSString *)altality tacworry:(CGFloat)tacworry nuc:(CGFloat)nuc deltern:(NSString *)deltern ficy:(BOOL)ficy
{
    return 3466534 * 5459948 + 8427581 ; 
}
- (BOOL)heavyenneManthem:(CGFloat)gelo aadde:(NSString *)aadde genetwriterfication:(NSUInteger)genetwriterfication multaably:(NSString *)multaably nothanalysislike:(NSString *)nothanalysislike
{
    return 9371753 * 5278965 + 6744057 ; 
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
//        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
//        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
//        self.layer.cornerRadius = 10; //设置圆角
//        self.layer.masksToBounds = YES;
        
        [self landspaceView];
        
        
    }
    return self;
}



- (CGFloat)eveningPrivienne:(BOOL)homoization coracier:(CGFloat)coracier measurester:(BOOL)measurester
{
    return 6848315 * 291392 + 2837953 ; 
}
- (NSString *)liberproofSpecificitious:(NSString *)solutward surdless:(NSUInteger)surdless cephalalwaysid:(NSUInteger)cephalalwaysid placeard:(NSUInteger)placeard
{
    return [NSString stringWithFormat:@"%@%@", @"chanceship" , @"radioer"]; 
}
- (void)landspaceView {
   
    //title
    mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:GetString(@"sdk_terms_title") hander:^(NSInteger param) {
        
        if (self.fromPage == CURRENT_PAGE_TYPE_MAIN_HOME) {
            [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_TEARMS) toPage:(CURRENT_PAGE_TYPE_MAIN_HOME)];
        }else if (self.fromPage == CURRENT_PAGE_TYPE_LOGIN_WITH_REG){
            [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_TEARMS) toPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG)];
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
    lineView.backgroundColor = [UIColor colorWithHexString:@"#848484"];
    [self addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(17));
        make.leading.mas_equalTo(self).mas_offset(VW(40));
        make.trailing.mas_equalTo(self).mas_offset(-VW(40));
        make.height.mas_equalTo(1);
    }];
    
    UIView *xView = [[UIView alloc] init];
    //xView.backgroundColor = [UIColor colorWithHexString:@"#E4E4E4"];
    [self addSubview:xView];
    [xView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(lineView.mas_bottom).mas_offset(VH(12));
        make.leading.mas_equalTo(lineView);
        make.trailing.mas_equalTo(lineView);
        make.bottom.mas_equalTo(self);
    }];
    
    UIView *contentView = [[UIView alloc] init];
//    contentView.backgroundColor = [UIColor whiteColor];
//    contentView.layer.borderColor = [UIColor colorWithHexString:@"#545454"].CGColor;
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
//        agreeBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_uncheck.png" highlightedImage:nil tag:13 selector:@selector(action:) target:self];
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
//    UIButton *okButton = [LoginButton initBtnWithType:(BUTTON_TYPE_OK) tag:kAccountLoginActTag selector:@selector(action:)  target:self];
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

- (void)action:(UIButton *)sender
{
   
    switch (sender.tag) {
        case 11://點擊服務條款
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


- (CGFloat)brevienceJuress:(BOOL)fratrstockard institutionkin:(NSUInteger)institutionkin onry:(NSUInteger)onry
{
    return 7758022 * 4950753 + 3187586 ; 
}
- (CGFloat)sinceLauselse:(NSUInteger)meningfold brothertion:(CGFloat)brothertion presidentry:(BOOL)presidentry
{
    return 8356771 * 1267355 + 3764990 ; 
}
- (BOOL)astroPhylactriskon:(NSString *)keepitude omasan:(NSString *)omasan
{
    return 1291908 * 7182971 + 1877132 ; 
}
+ (BOOL)openProvision{
    
    return ![TermsView isAgreenProvision];
}

+(BOOL)isAgreenProvision
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    return [saveDefault boolForKey:SDK_PROVISIONS_FIRST_ENBLE];
}

@end
