//
//  AutoLoginVIew.m
//  
//
//  Created by sunn on 2017/3/11.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import "AutoLoginView.h"
#import "HelloHeader.h"
#import "GamaBaseSDK.h"
#import "GamaFacebookPort.h"
//#import "KRTwitterLogin.h"

#import "GamaTimer.h"
//#import "KRLoginViewController.h"
#import "GamaAppleLogin.h"
#import "GamaUtils.h"

#define gama_rate         0.5f

static BOOL isCancelLogining = NO;

@implementation AutoLoginView
{
    CGFloat rate ; // 校对比值
    CGFloat curWidth ;
    CGFloat curHeight ;
    CGFloat oriBgImgWidth ;
    CGFloat oriBgImgHeight ;
    CGFloat originBgWidthOfHeight;// 背景图片宽高比
    CGFloat loginBtnWidthOfBgWidth;
    CGFloat loginBtnHeightOfBgHeight;
    CGFloat findPwdBtnWidthOfBgWidth;
    CGFloat findPwdBtnHeightOfBgHeight;
    CGFloat textFieldHeightOfBgHeight;
    CGFloat topPadding;
    CGFloat leftPadding;
    CGFloat findBtnLeftPadding;
    CGFloat anotherLeftPadding;
    CGFloat gapPadding;
    CGFloat anotherGapPadding;
    CGFloat thirdGapPadding;
    CGFloat lineTopPadding;
    CGFloat backBtnWidthAndHeight;
    
    CGFloat keyboarHeight;
    CGFloat animatedDistance;
    
    UIImageView *mainBg;
    // for space
    // UIView *ssView;
    UIImageView *ssView;
    
    UIButton *loginComfirmBtn;
    
    BOOL pwdEntity;
    UIButton *eyesBtn;    
    
    AutoLoginType m_type;
    
    // auto login account pwd
    NSString *m_account;
    NSString *m_pwd;
    NSString *m_thirdId;

    CGFloat onCalWidth;
    CGFloat onCalHeight;
    
}

- (instancetype)initwithType:(AutoLoginType)type
{
    self = [super init];
    if (self) {
        m_type = type;
        [self _dataPrepare];
        [self _propertyPrapare];
//        [self _bgViewInit];
        [self _newBgViewInit];
        [self _contentViewInit];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(_noteListener:)
                                                     name:GAMA_NOTIFICATION_SUCCESS_LOGIN
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(_noteListener:)
                                                     name:GAMA_NOTIFICATION_FAIL_LOGIN
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteListener:) name:GAMA_LOGIN_FAIL_IN object:nil];
//        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteListener:) name:OPEN_BIND_PHONE_VIEW object:nil];
    }
    
    return self;
}

- (void)_dataPrepare
{
    isCancelLogining = NO;
    switch (m_type) {
        case AutoLogin_Gama:
        {
            // get accout and pwd
            NSString *loginName = nil;
            NSString *loginPwd = nil;
            [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];
            
            if (!loginName || [loginName isEqualToString:@""]) {
                [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            }
            
            // 密码需要解密
            loginPwd = [GamaUtils loginDecryptFromString:loginPwd];
            
            m_account = loginName.copy;
            m_pwd = loginPwd.copy;
        }
            break;
        case AutoLogin_Mac:
        {
            NSString *loginName = nil;
            NSString *loginPwd = nil;
            [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            loginPwd = [GamaUtils loginDecryptFromString:loginPwd];
            
            m_account = loginName.copy;
            m_pwd = loginPwd.copy;
        }
            break;
        
        case AutoLogin_FB:
        {
            m_account = [[NSString alloc] initWithFormat:@"FB"];
        }
            break;
        case AutoLogin_Apple:
        {
            m_account = [[NSString alloc] initWithFormat:@"Apple"];
        }
            break;

        case AutoLogin_GC:
        {
            m_account = [[NSString alloc] initWithFormat:@"GameCenter"];
        }
            break;
        case AutoLogin_Twitter:
        {
            m_account = [[NSString alloc] initWithFormat:@"Twitter"];
        }
        default:
            break;
    }
    
}

- (void)_propertyPrapare
{
    rate = 0.8f; // 校对比值
    curWidth = winWidth;
    curHeight = winHeight;
    oriBgImgWidth = bgOriginWidth;
    oriBgImgHeight = bgOriginHeight;
    
    CGFloat realWidthHeightRate = curWidth/curHeight;
    
    originBgWidthOfHeight = oriBgImgHeight/oriBgImgWidth;//1070/1130.0f; // 原图宽高比  803/1330.0f;//
    
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {
        curHeight = curWidth * originBgWidthOfHeight;
    } else {
        curWidth = curHeight / originBgWidthOfHeight;
    }
    
    loginBtnWidthOfBgWidth = 914/1070.0f;
    loginBtnHeightOfBgHeight = 172/1130.0f;
    findPwdBtnWidthOfBgWidth = 300/1070.0f;
    findPwdBtnHeightOfBgHeight = 80/1130.0f;
    textFieldHeightOfBgHeight = 166/1130.0f;
    topPadding = 24/1130.0f;
    leftPadding = 24/1070.0f;
    anotherLeftPadding = 78/1130.0f;
    findBtnLeftPadding = (78+80)/1130.0f;
    gapPadding = 30/1130.0f;
    anotherGapPadding = 50/1130.0f; // origin 80
    thirdGapPadding = 64/1130.0f; // origin 34
    lineTopPadding = (156+172*4+50*3+70)/1130.0f;
    backBtnWidthAndHeight = 100.0f/1130.0f;
    
    if (!Device_Is_Landscape) {
        loginBtnWidthOfBgWidth = 773/oriBgImgWidth;
        textFieldHeightOfBgHeight = 94/oriBgImgHeight;
        topPadding = 24/oriBgImgHeight;
        gapPadding = 30/oriBgImgHeight;
        backBtnWidthAndHeight = 64.0f/oriBgImgWidth;
    }
    
    pwdEntity = YES;
    
    onCalWidth = rate * curWidth;
    onCalHeight = rate * curHeight;
    if (device_is_iPhoneX) {
        onCalHeight = rate * curHeight * rate;
        onCalWidth = onCalHeight / originBgWidthOfHeight;
    }
}

- (void)_bgViewInit
{
    [self setFrame:CGRectMake(0, 0, winWidth, winHeight)];
    [self setBackgroundColor:[UIColor clearColor]];
    
    // bg
    ssView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, rate*curWidth, rate*curWidth*gama_rate)];
    ssView.userInteractionEnabled = YES;
    UIColor *color = [UIColor whiteColor];
    ssView.backgroundColor = [color colorWithAlphaComponent:kBgAlpha];// 底图透明，控件不透明
    [self addSubview:ssView];
    [ssView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(rate*curWidth));
        make.height.equalTo(@(rate*curWidth*gama_rate));
    }];
    [ssView.layer setCornerRadius:5.0f];
    ssView.center = self.center;
}

- (void)_newBgViewInit
{
    [self setFrame:CGRectMake(0, 0, winWidth, winHeight)];
//    [self setBackgroundColor:[UIColor clearColor]];
    self.backgroundColor = [UIColor colorWithRed:1/255.f green:1/255.f blue:1/255.f alpha:0.8];

    // bg
    ssView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, rate*curWidth, rate*curWidth*gama_rate)];
    ssView.userInteractionEnabled = YES;
    ssView.image = GetImage(@"bg_all.png");
    
    [self addSubview:ssView];
    [ssView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
//        make.width.equalTo(@(rate*curWidth));
//        make.height.equalTo(@(rate*curWidth*sp_rate));
        make.width.equalTo(@(onCalWidth));
        if(Device_Is_Landscape){
            make.height.equalTo(@(onCalWidth*gama_rate));
        }else{
            make.height.equalTo(@(onCalWidth*0.9));
        }
    }];
    ssView.center = self.center;
}

- (void)_contentViewInit
{
    // 賬號 xxx 正在登錄
    NSString *hintText = nil;
    if (m_type == AutoLogin_FB) {
        hintText = SDKConReaderGetLocalizedString(@"TXT_FACEBOOK_LOGINING");
    }
    else {
        hintText = [NSString stringWithFormat:SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_XXX_LOGINING"),m_account];
    }
    
    UILabel *loadingLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]) {
        loadingLabel.font = [UIFont systemFontOfSize:12.0f];
    }
    //    loadingLabel.text = hintText;
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:hintText attributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
    loadingLabel.attributedText = attrStr;
    loadingLabel.textAlignment = NSTextAlignmentCenter;
    [ssView addSubview:loadingLabel];
    [loadingLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(-findPwdBtnHeightOfBgHeight*rate*curWidth-5));
        make.width.equalTo(@(ssView.frame.size.width));
        make.height.equalTo(@(findPwdBtnHeightOfBgHeight*rate*curWidth));
    }];
    loadingLabel.adjustsFontSizeToFitWidth = YES;
    
    // 倒計時 3s
    UILabel *countingLabel = [self _startWithTime:3
                                            title:@""
                                   countDownTitle:@""
                                        mainColor:[UIColor clearColor]
                                       countColor:[UIColor clearColor]];
    countingLabel.textAlignment = NSTextAlignmentCenter;
    [ssView addSubview:countingLabel];
    [countingLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(findPwdBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(findPwdBtnHeightOfBgHeight*rate*curWidth));
    }];
    
    // 切換賬號按鈕
    UIButton *changeBtn;
    if([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"zh-Hans"]){
        changeBtn = [GamaUtils initBtnWithNormalImage:btn_auto_login_change_account highlightedImage:nil tag:95588 selector:@selector(_btnActions:) target:self];
    }else{
        changeBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_CHANGE_LOGIN_TYPE") backgroundImage:btn_bg tag:95588 selector:@selector(_btnActions:) target:self];
        changeBtn.titleLabel.font = [UIFont systemFontOfSize:FONTSIZE(12.0f)];
    }
    [ssView addSubview:changeBtn];

    // 1331*803
    findPwdBtnWidthOfBgWidth = 341/oriBgImgWidth;
    findPwdBtnHeightOfBgHeight = 77/oriBgImgHeight;
    [changeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(findPwdBtnHeightOfBgHeight*rate*curWidth+20));
        make.width.equalTo(@(findPwdBtnWidthOfBgWidth*onCalWidth));// 341*77
        make.height.equalTo(@(findPwdBtnHeightOfBgHeight*onCalHeight));
    }];
    
//    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
//        [changeBtn setImage:GetEnImage(btn_auto_login_change_account) forState:0];
//    }
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"zh-Hans"]) {
        [changeBtn setImage:GetCnImage(btn_auto_login_change_account) forState:0];
    }
}

#pragma mark - Counting Label
- (UILabel *)_startWithTime:(NSInteger)timeLine
                      title:(NSString *)title
             countDownTitle:(NSString *)subTitle
                  mainColor:(UIColor *)mColor
                 countColor:(UIColor *)color
{
    __block UILabel *label = [[UILabel alloc] init];
    //倒计时时间
    __block NSInteger timeOut = timeLine;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    //每秒执行一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        //倒计时结束，关闭
        if (timeOut <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                label.backgroundColor = mColor;
                [label setText:@""];
                
                [self _gotoLogin];
            });
        } else {
            int allTime = (int)timeLine + 1;
            int seconds = timeOut % allTime;
            NSString *timeStr = [NSString stringWithFormat:@"( %.1ds )", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                label.backgroundColor = color;
//                [label setText:[NSString stringWithFormat:@"%@%@",timeStr,subTitle]];
                NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@%@",timeStr,subTitle] attributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
                [label setAttributedText:attrStr];
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
    
    return label;
}

#pragma mark - BtnAction

- (void)_btnActions:(UIButton *)sender
{
    [GamaTimer reportExitEvent:GamaExitEventSourceChangeAccount];
    // 計時器取消
    isCancelLogining = YES;
    if (m_type == AutoLogin_FB) {
        [GamaFacebookPort logout];
    }else if(m_type == AutoLogin_Twitter){
//        [KRTwitterLogin twitterLogout];
    }else if (m_type ==AutoLogin_Apple) {
        
    }
    // 取消當當前頁面
    [self removeFromSuperview];
    // 回到登錄界面
    NSString *loginName = nil;
    NSString *loginPwd = nil;
    [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];
    
    if (!loginName || [loginName isEqualToString:@""]) {
        [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
    }
    if (loginName && (SDKConReaderGetBool(GAMA_GMAE_mLanguge) && [[GamaFunction getPreferredLanguage] containsString:@"zh-"])) {
        HelloLoginView *loginView = [[HelloLoginView alloc] initWithMode:HelloLogin_HadLogin];
        [loginView setTag:kFirstLoginViewTag];
        [appTopViewController.view addSubview:loginView];
        [loginView release];
    }else{
//        if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]) {
//            UIViewController *presentedVC = [[KRLoginViewController alloc] initWithMode:KRLoginMain_MySpace];
//            [presentedVC.view setTag:kMainLoginViewTag];
//            [appTopViewController.view addSubview:presentedVC.view];
//            return;
//        }
//        UIViewController *presentedVC = [[HelloMain alloc] initWithMode:HelloMain_MySpace];
//        [presentedVC.view setTag:kMainLoginViewTag];
//        [appTopViewController.view addSubview:presentedVC.view];
    }
}

- (void)_gotoLogin
{
    //  根据计时器取消与否的标识进行是否登录
    if (isCancelLogining) {
        isCancelLogining = NO; // 重置标识
        return;
    }
    
    // loading
    [GamaUtils gamaStarLoadingAtView:self];
    
    switch (m_type) {
        case AutoLogin_Gama:{
            [GamaNetEngine loginUsingUsername:m_account password:m_pwd];
        }
            break;
        case AutoLogin_Mac: {
            [GamaNetEngine guestLogin];
        }
            break;
        case AutoLogin_FB: {
            [GamaNetEngine loginUsingThirdPlatform:Gama_Facebook handler:nil];
        }
            break;
        case AutoLogin_GC: {
            [GamaNetEngine loginUsingThirdPlatform:Gama_GameCenter handler:nil];
        }
            break;
        case AutoLogin_Twitter:{
            [GamaNetEngine loginUsingThirdPlatform:Gama_Twitter handler:nil];
        }
        case AutoLogin_Apple:{
            GamaAppleLogin *appleLogin = [[GamaAppleLogin alloc] init];
            [appleLogin autoLoginAppleAccountWithInformation];
        }
        default:
            break;
    }
}

#pragma mark - Noti

- (void)_noteListener:(NSNotification *)note
{
    [GamaUtils gamaStopLoadingAtView:self];
    
    if ([note.name isEqualToString:GAMA_NOTIFICATION_SUCCESS_LOGIN]) {
        [self removeFromSuperview];
    }
    else if ([note.name isEqualToString:GAMA_NOTIFICATION_FAIL_LOGIN]) {
        
    }else if([note.name isEqualToString:GAMA_LOGIN_FAIL_IN]){
        [GamaUtils gamaStopLoadingAtView:self];
    }
//    else if([note.name isEqualToString:OPEN_BIND_PHONE_VIEW]){
//        
//    }
}

- (void)dealloc
{
    [ssView release]; ssView = nil;
    [mainBg release]; mainBg = nil;
    [loginComfirmBtn release]; loginComfirmBtn = nil;
    [m_account release]; m_account = nil;
    [m_pwd release]; m_pwd = nil;
    [super dealloc];
}

@end
