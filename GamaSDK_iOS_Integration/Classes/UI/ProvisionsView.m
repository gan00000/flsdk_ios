//
//  ProvisionsView.m
//  GamaSDK_iOS
//
//  Created by coke on 2018/11/30.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "ProvisionsView.h"
#import "HelloHeader.h"
#import "UIImage+Gradient.h"
#import "GamaUtils.h"
#import <WebKit/WebKit.h>

#define GAMA_PROVISIONS_LANDSCAPE_TAG 13001

#define GAMA_PROVISIONS_PROTRAIT_LEFT_TAG 12004
#define GAMA_PROVISIONS_PROTRAIT_RIGHT_TAG 12005

#define GAMA_PROVISIONS_FIRST_ENBLE @"gama_provisions_first_enble"

@interface ProvisionsView ()
@property (copy,nonatomic) void (^completer)(void);
@end

@implementation ProvisionsView
{
    UIImageView *mainBg;
    
    BOOL orientation;
    CGFloat rate ; // 校对比值
    CGFloat curWidth ;
    CGFloat curHeight ;
    CGFloat oriBgImgWidth ;
    CGFloat oriBgImgHeight ;
    
    CGFloat onCalWidth;
    CGFloat onCalHeight;
    
    CGFloat originBgWidthOfHeight;// 背景图片宽高比

    WKWebView *provisionWebView;
    
    UIButton *leftBtn;
    UIButton *rightBtn;
    BOOL agreenLogin;
    
    BOOL protraitLeftProvision;
    BOOL protraitRightProvision;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

/**
 1.判断用户是否为第一次登录；
 2.用户第一次登录则打开协议页面；
 3.用户同意协议，才保存登录判断条件；
 */

- (instancetype)initWithCompleter:(void (^)(void))completer
{
    if(self = [super init]){
        [self propertyPrapare];
        [self provisionsView];
    }
    self.completer = completer;
    return self;
}

- (void)propertyPrapare
{
    agreenLogin = NO;
    protraitLeftProvision = NO;
    protraitRightProvision = NO;

    orientation = Device_Is_Landscape;
    
    rate = 0.8f; // 校对比值
    curWidth = winWidth;
    curHeight = winHeight;
    oriBgImgWidth = bgOriginWidth;
    oriBgImgHeight = bgOriginHeight;

    CGFloat realWidthHeightRate = curWidth/curHeight;

    originBgWidthOfHeight = oriBgImgHeight/oriBgImgWidth;//1070/1130.0f; // 原图宽高比
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {//若真机宽高比大于原图，则以高度为基准重新计算宽度
        curHeight = curWidth * originBgWidthOfHeight;
    } else { //若真机宽高比小于原图，则以宽度为基准重新计算高度
        curWidth = curHeight / originBgWidthOfHeight;
    }
    onCalWidth = rate * curWidth;
    onCalHeight = rate * curHeight;
    if (device_is_iPhoneX) {
        onCalHeight = rate * curHeight * rate;
        onCalWidth = onCalHeight / originBgWidthOfHeight ;
    }
}

- (void)provisionsView
{
    [self setFrame:CGRectMake(0, 0, winWidth, winHeight)];
    self.backgroundColor = [UIColor colorWithRed:1/255.f green:1/255.f blue:1/255.f alpha:0.7];;
    mainBg = [[UIImageView alloc] init];
    UIImage *backImage = [[UIImage alloc] createImageWithSize:CGSizeMake(onCalWidth, orientation ? onCalHeight : onCalHeight*portraitBgRate)
                                               gradientColors:@[(id)RGB(54, 54, 54),(id)RGB(0, 0, 0)]
                                                   percentage:@[@(0.1),@(1)]
                                                 gradientType:GradientFromTopToBottom];
    [mainBg setImage:backImage];
    [mainBg setUserInteractionEnabled:YES];
    [self addSubview:mainBg];
    
    [mainBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(@(onCalWidth));
        make.height.equalTo(@(orientation ? onCalHeight : onCalHeight*portraitBgRate));
    }];
//    [backImage release];  //这个release就崩溃
    
    //横版
    if (orientation) {
        [self protraitV];
    }else{
        [self landscape];
    }
}

- (void)protraitV
{
    UILabel *proLabel = [[UILabel alloc] init];
//    [proLabel setText:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_USER_TERM")];
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_USER_TERM") attributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
    [proLabel setAttributedText:attrStr];
    [proLabel setBackgroundColor:[UIColor whiteColor]];
    [proLabel setFont:[UIFont systemFontOfSize:16.0f]];
    [proLabel setTextAlignment:NSTextAlignmentCenter];
    [mainBg addSubview:proLabel];
//    [proLabel release];
    [proLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(mainBg.mas_height).multipliedBy(0.09);
        make.width.equalTo(mainBg.mas_width).multipliedBy(0.5);
        make.centerX.equalTo(mainBg.mas_centerX);
        make.top.equalTo(mainBg.mas_top).offset(5);
    }];
    
    UIView *leftProvision = [self provisionsAndBtnWithUrl:[NSString stringWithFormat:@"%@member/archivemb.html",SDKConReaderGetString(@"gama_Member_URL")]
                                            provisionText:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_PROTRAIT_TEXT") tag:GAMA_PROVISIONS_PROTRAIT_LEFT_TAG];
    [mainBg addSubview:leftProvision];
    
    UIView *rightProvision = [self provisionsAndBtnWithUrl:[NSString stringWithFormat:@"%@member/privacymb.html",SDKConReaderGetString(@"gama_Member_URL")]
                                             provisionText:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_PROTRAIT_TEXT") tag:GAMA_PROVISIONS_PROTRAIT_RIGHT_TAG];
    [mainBg addSubview:rightProvision];
    
    UIButton *loginGameBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_AGREENT_LOGIN_GAME") backgroundColor:@"FFBB00" tag:10001 selector:@selector(login) target:self];
    [loginGameBtn.layer setBorderWidth:0.0f];
    [loginGameBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [mainBg addSubview:loginGameBtn];
    
    [leftProvision mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(mainBg.mas_width).multipliedBy(0.46);
        make.top.equalTo(proLabel.mas_bottom).offset(5);
        make.bottom.equalTo(loginGameBtn.mas_top);
        make.left.mas_equalTo(10);
    }];
    
    [rightProvision mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(mainBg.mas_width).multipliedBy(0.46);
        make.top.bottom.equalTo(leftProvision);
        make.right.mas_equalTo(-10);
    }];
    
    [loginGameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(mainBg.mas_width).multipliedBy(0.25);
        make.height.equalTo(proLabel.mas_height);
        make.centerX.equalTo(mainBg);
        make.bottom.equalTo(mainBg).offset((-5));
    }];
}

- (void)landscape
{
    leftBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_SERVICE") backgroundColor:nil tag:12001 selector:@selector(selectLeftServiceBtn:) target:self];
    [leftBtn setBackgroundColor:RGB(251, 229, 150)];
    [leftBtn.layer setBorderWidth:0.0f];
    [leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [mainBg addSubview:leftBtn];
    [leftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(mainBg).multipliedBy(0.1);
        make.width.equalTo(mainBg).multipliedBy(0.47);
        make.left.equalTo(@(onCalWidth * 0.02));
        make.top.equalTo(@(onCalHeight * 0.01));
    }];
    
    rightBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_PRIVACY") backgroundColor:nil tag:12002 selector:@selector(selectLeftServiceBtn:) target:self];
    [rightBtn setBackgroundColor:[UIColor whiteColor]];
    [rightBtn.layer setBorderWidth:0.0f];
    if([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]){
        [rightBtn.titleLabel setFont:[UIFont systemFontOfSize:9.0]];
    }
    [rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [mainBg addSubview:rightBtn];
    [rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(leftBtn);
        make.right.equalTo(@(onCalWidth * -0.02));
        make.top.equalTo(leftBtn);
    }];

    UIView *provisionContentV = [self provisionsAndBtnWithUrl:[NSString stringWithFormat:@"%@member/archivemb.html",SDKConReaderGetString(@"gama_Member_URL")]
                                                provisionText:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_LANDSCAPE_TEXT") tag:GAMA_PROVISIONS_LANDSCAPE_TAG];
    [mainBg addSubview:provisionContentV];

    UIButton *loginGameBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_AGREENT_LOGIN_GAME") backgroundColor:@"FFBB00" tag:12003 selector:@selector(login) target:self];
    [loginGameBtn.layer setBorderWidth:0.0f];
    [loginGameBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [mainBg addSubview:loginGameBtn];
    [loginGameBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(mainBg.mas_width).multipliedBy(0.4);
        make.height.equalTo(leftBtn);
        make.centerX.equalTo(mainBg);
        make.bottom.equalTo(mainBg).offset((-5));
    }];
    
    [provisionContentV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(leftBtn.mas_bottom).offset(10);
        make.left.equalTo(leftBtn);
        make.bottom.equalTo(loginGameBtn.mas_top).offset(-10);
        make.right.equalTo(rightBtn);
    }];
}

- (void)checkProvision:(UIButton *)btn
{
    btn.selected = !btn.selected;
    
    if (btn.selected) {
        [btn setImage:GetImage(@"gama_btn_provisions_checked.png") forState:0];
    } else {
        [btn setImage:GetImage(@"gama_btn_provisions_uncheck.png") forState:0];
    }
    switch (btn.tag) {
        case GAMA_PROVISIONS_LANDSCAPE_TAG:
        {
            agreenLogin = btn.selected;
        }
            break;
        case GAMA_PROVISIONS_PROTRAIT_LEFT_TAG:
        {
            protraitLeftProvision = btn.selected;
        }
            break;
        case GAMA_PROVISIONS_PROTRAIT_RIGHT_TAG:
        {
            protraitRightProvision = btn.selected;
        }
            break;
    }
}

- (void)selectLeftServiceBtn:(UIButton *)btn
{
    switch (btn.tag) {
        case 12001://服務
        {
            [btn setBackgroundColor:RGB(251, 229, 150)];
            [rightBtn setBackgroundColor:[UIColor whiteColor]];
            [provisionWebView reload];
            [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[self openRequestWithLine:[NSString stringWithFormat:@"%@member/archivemb.html",SDKConReaderGetString(@"gama_Member_URL")]]] ]];
        }
            break;
        case 12002://隱私
        {
            [btn setBackgroundColor:RGB(251, 229, 150)];
            [leftBtn setBackgroundColor:[UIColor whiteColor]];
            [provisionWebView reload];
            [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[self openRequestWithLine:[NSString stringWithFormat:@"%@member/privacymb.html",SDKConReaderGetString(@"gama_Member_URL")]]]]];
        }
            break;
    }
}

- (NSString *)openRequestWithLine:(NSString *)url{
    NSString *lastUrl = url;
    if(SDKConReaderGetBool(GAMA_GMAE_mLanguge)){
        NSString *language = [GamaFunction getServerLanguage]? : @"";
        lastUrl = [NSString stringWithFormat:@"%@?gameLanguage=%@",lastUrl,language];
    }
    return lastUrl;
}

- (UIView *)provisionsAndBtnWithUrl:(NSString *)url provisionText:(NSString *)ptext tag:(NSUInteger)tag
{
    UIView *provisionsV = [[UIView alloc] init];
    [provisionsV setUserInteractionEnabled:YES];
    
        
    provisionWebView = [[WKWebView alloc] init];
    [provisionWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[self openRequestWithLine:url]]]];
    [provisionWebView.scrollView setBounces:YES];
    [provisionWebView.scrollView setScrollEnabled:YES];
    [provisionWebView setUserInteractionEnabled:YES];
    [provisionsV addSubview:provisionWebView];
    [provisionWebView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(provisionsV);
        make.height.equalTo(provisionsV.mas_height).multipliedBy(0.87);
        make.top.equalTo(provisionsV);
        make.left.equalTo(provisionsV);
    }];

    UIButton *rmbCheckbox = [UIButton buttonWithType:UIButtonTypeCustom];
    [rmbCheckbox setImage:GetImage(@"gama_btn_provisions_uncheck.png") forState:UIControlStateNormal];
    [rmbCheckbox addTarget:self action:@selector(checkProvision:) forControlEvents:UIControlEventTouchUpInside];
    [rmbCheckbox setContentMode:UIViewContentModeScaleAspectFit];
    [rmbCheckbox setTag:tag];
    [provisionsV addSubview:rmbCheckbox];
    [rmbCheckbox mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(provisionWebView);
        make.width.height.equalTo(provisionsV.mas_height).multipliedBy(0.1);
        make.top.equalTo(provisionWebView.mas_bottom).offset(5);
    }];
    // 文字--目前版本放在居中位置
    // 使用文字
    UILabel *rmbLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    rmbLabel.text = ptext;
    [rmbLabel setTextColor:[UIColor whiteColor]];
    CGFloat FontSize = 0.0;
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"zh-Hant"]) {
        FontSize = FONTSIZE(14.0f);
    }else if([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ko-KR"]){
        FontSize = FONTSIZE(10.0f);
    }else{
        FontSize = FONTSIZE(9.0f);
    }

    if(SDKConReaderGetBool(GAMA_GMAE_mLanguge) && [[GamaFunction getPreferredLanguage] isEqualToString:@"en"]){
        FontSize = FONTSIZE(12.0f);
    }

    [rmbLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:FontSize]];
    [provisionsV addSubview:rmbLabel];
    rmbLabel.numberOfLines = 0;
//    [rmbLabel release];
    
    CGSize lbSize = [GamaUtils calculateSizeOfLabel:rmbLabel];
    [rmbLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(rmbCheckbox);
        make.left.equalTo(rmbCheckbox.mas_right);
        make.width.equalTo(@(ceil(lbSize.width)+1));
        make.height.equalTo(@(ceil(lbSize.height)+1));
    }];
    return provisionsV;
}

- (void)login
{
    if (protraitLeftProvision && protraitRightProvision) {
        agreenLogin = YES;
    }
    
    if (agreenLogin) {
        [self saveFirstAgreenProvisionState];
        self.completer();
        [self removeFromSuperview];//移除自己
    }else {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_PROVISIONS_AGREENT_TERM")];
    }
}

- (void)saveFirstAgreenProvisionState
{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    [saveDefault setObject:@"yes" forKey:GAMA_PROVISIONS_FIRST_ENBLE];
    [saveDefault synchronize];
}

+ (BOOL)openProvision{
    NSUserDefaults *saveDefault = [NSUserDefaults standardUserDefaults];
    NSString *state = [saveDefault objectForKey:GAMA_PROVISIONS_FIRST_ENBLE];
    if (state.length > 1 && [state isEqualToString:@"yes"]) {
        return NO;
    }
    return YES;
}
//
//- (void)dealloc
//{
//    [mainBg release]; mainBg = nil;
//    [leftBtn release]; leftBtn = nil;
//    [rightBtn release]; rightBtn = nil;
//    [provisionWebView release]; provisionWebView = nil;
//    [super dealloc];
//}
@end

