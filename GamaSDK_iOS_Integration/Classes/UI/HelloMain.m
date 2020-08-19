//
//  HelloMain.m
//  GamaSDK_iOS_KR
//
//  Created by Sunny on 17/2/7.
//  Copyright © 2017年 gama. All rights reserved.
//

#import "HelloMain.h"
#import "HelloHeader.h"
#import "GamaBaseSDK.h"
#import "UIButton+Gradient.h"
#import "GamaTimer.h"
#import "GamaThirdFunctionPort.h"
#if __has_include("GamaAppleLogin.h")
#import "GamaAppleLogin.h"
#endif
#import <objc/runtime.h>
#import <objc/message.h>
#import "GamaThirdFunctionPort.h"


static NSInteger s_gameCenterLoginCancelTimes = 0;
@interface HelloMain ()
@property (nonatomic,retain) GamaAppleLogin *gamaAppleLogin;

@end

@implementation HelloMain
{
    CGFloat rate ; // 校对比值
    CGFloat curWidth ;
    CGFloat curHeight ;
    CGFloat oriBgImgWidth ;
    CGFloat oriBgImgHeight ;
    CGFloat originBgWidthOfHeight;// 背景图片宽高比
    CGFloat loginBtnWidthOfBgWidth;
    CGFloat loginBtnHeightOfBgHeight;
    CGFloat seperatelineWidthOfBgWidth;
    CGFloat seperatelineHeightOfBgHeight;
    CGFloat topPadding;
    CGFloat leftPadding;
    CGFloat gapPadding;
    CGFloat lineTopPadding;
    
    UIImageView *mainBg;
    
    // for space
    UIView *ssView;
    
    NSString *m_curLoginType;
    NSString *m_curLoginName;
    
    HelloMainMode m_mode;
    
    CGFloat onCalWidth;
    CGFloat onCalHeight;
    
    BOOL orientation;
    
    CGFloat bgWidth;
    CGFloat bgHeight;
}

- (void)dealloc
{
    [mainBg release]; mainBg = nil;
    [ssView release]; ssView = nil;
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

- (instancetype)initWithMode:(HelloMainMode)mode
{
    self = [super init];
    if (self) {
        m_mode = mode;
        
//        [self basePropertyInit];
        [self _newBasePropertyInit];
        [self customInit];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:HELLO_NOTI_LOGIN_BACK object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:NOTE_hello_login_success object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_THIRD_LOGIN_SUCCESS object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_THIRD_LOGIN_FAIL object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:@"GAMA_FACEBOOK_LOGIN_FAIL" object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:_GAMA_NOTIFICATION_SUCCESS object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:HELLO_NOTI_REGISTER_BACK object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:OPEN_BIND_PHONE_VIEW object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:IS_GUEST_BIND_ACCOUNT object:nil];


    }
    return self;
}

- (void)customInit
{
    self.view.userInteractionEnabled = YES;
//    self.view.backgroundColor = [UIColor clearColor];
    self.view.backgroundColor = [UIColor colorWithRed:1/255.f green:1/255.f blue:1/255.f alpha:0.8];
    [self _xmUiItemInit];
}

- (void)_mySpaceShip
{

    CGFloat onCalWidth = rate*curWidth;
//    CGFloat onCalHeight = rate*curWidth*0.8;
    loginBtnHeightOfBgHeight = 200/1130.0f;
    
    // bg
    ssView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, rate*curWidth, rate*curWidth*0.8)];
    ssView.userInteractionEnabled = YES;
    UIColor *color = [UIColor whiteColor];
    ssView.backgroundColor = [color colorWithAlphaComponent:kBgAlpha];// 底图透明，控件不透明
    [self.view addSubview:ssView];
    [ssView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(rate*curWidth));
        make.height.equalTo(@(rate*curWidth*0.8));
    }];
    [ssView.layer setCornerRadius:kSPCornerRadius];
    
    // title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, onCalWidth, ssView.frame.size.height*loginBtnHeightOfBgHeight)];
    title.text = SDKConReaderGetLocalizedString(@"LB_TITLE_ACCOUNT_LOGIN");
    title.textAlignment = NSTextAlignmentCenter;
    [ssView addSubview:title];
    
       
    // 3 btns sp fb guest
    UIButton *fbBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_FACEBOOK_LOGIN") tag:kMainFbLoginBtnTag selector:@selector(loginBtnsAction:) target:self];
    [ssView addSubview:fbBtn];
    [fbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(-ssView.frame.size.height*loginBtnHeightOfBgHeight));
        make.width.equalTo(@(ssView.frame.size.width*0.8));
        make.height.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight));
    }];
    fbBtn.layer.cornerRadius = kSPCornerRadius;
    
    UIButton *spBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_ACCOUNT_LOGIN") tag:kMainLoginBtnTag selector:@selector(loginBtnsAction:) target:self];
    [ssView addSubview:spBtn];
    [spBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(10));
        make.width.equalTo(@(ssView.frame.size.width*0.8));
        make.height.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight));
    }];
    spBtn.layer.cornerRadius = kSPCornerRadius;
    
    UIButton *guestBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GUEST_LOGIN") tag:kMainGuestLoginBtnTag selector:@selector(loginBtnsAction:) target:self];
    [ssView addSubview:guestBtn];
    [guestBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight+10+10));
        make.width.equalTo(@(ssView.frame.size.width*0.8));
        make.height.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight));
    }];
    guestBtn.layer.cornerRadius = kSPCornerRadius;
}

#pragma mark - New UI

// 新UI的尺寸比例初始化
- (void)_newBasePropertyInit
{
    orientation = Device_Is_Landscape;
    
    rate = 0.8f; // 校对比值
    curWidth = orientation ? winWidth : winHeight;
    curHeight = orientation ? winHeight : winWidth;
    
    oriBgImgWidth = orientation ? bgOriginWidth:bgOriginHeight;
    oriBgImgHeight = orientation ? bgOriginHeight:bgOriginWidth;
    
    CGFloat realWidthHeightRate = curWidth/curHeight;
    
    originBgWidthOfHeight = oriBgImgHeight/oriBgImgWidth; // 原图宽高比
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {
        curHeight = curWidth * originBgWidthOfHeight;
    } else {
        curWidth = curHeight / originBgWidthOfHeight;
    }
    
    loginBtnWidthOfBgWidth = 660/oriBgImgWidth;
    loginBtnHeightOfBgHeight = 397/oriBgImgHeight;
    topPadding = 156/1130.0f;
    leftPadding = 78/1070.0f;
    gapPadding = 50/1130.0f;
    lineTopPadding = (156+172*4+50*3+70)/1130.0f;
    
    if (!orientation) {
        loginBtnWidthOfBgWidth = 773/oriBgImgWidth;
        topPadding = 24/oriBgImgHeight;
        gapPadding = 30/oriBgImgHeight;
        leftPadding = 60/oriBgImgWidth;
    }
    
    m_curLoginType = nil;
    m_curLoginName = nil;
    
    onCalWidth = rate * curWidth;
    onCalHeight = rate * curHeight;
    if (device_is_iPhoneX) {
        onCalHeight = rate * curHeight * rate;
        onCalWidth = onCalHeight / originBgWidthOfHeight ;
    }
}

#pragma mark - Gama UI
/**
 * Gama的 UI
 */
- (void)_xmUiItemInit
{

    CGFloat baseW = 441.0f;
    CGFloat baseH = 397.0f;
    bgWidth = baseW/oriBgImgWidth*onCalWidth*3;
    bgHeight = baseH/oriBgImgHeight*onCalHeight*2;

    loginBtnWidthOfBgWidth = baseW/oriBgImgWidth;
    loginBtnHeightOfBgHeight = baseH/oriBgImgHeight;
    
    // bg
    ssView = [[UIView alloc] init];
    ssView.userInteractionEnabled = YES;
    ssView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:ssView];
    [ssView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(orientation ? bgWidth : bgHeight));
        make.height.equalTo(@(orientation ? bgHeight : bgWidth*0.9));
    }];

    if (orientation) {  //横屏
        if (SDKConReaderGetBool(GAMA_GMAE_mLanguge) && ![[GamaFunction getPreferredLanguage] containsString:@"zh-"]) {
            UIButton *gcBtn = [GamaUtils initBtnWithNormalImage:xm_apple_login_normal highlightedImage:xm_apple_login_normal tag:kMainGameAppleLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
            [ssView addSubview:gcBtn];
            [gcBtn gradientButtonWithSize:CGSizeMake(loginBtnWidthOfBgWidth*onCalWidth,bgHeight/2) colorArray:@[(id)RGB(255, 255, 255)] percentageArray:@[@(1)] gradientType:GradientFromLeftToRight];

            [gcBtn.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.center.equalTo(gcBtn);
                make.height.equalTo(@(loginBtnWidthOfBgWidth *onCalWidth *0.8));
                make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth));
            }];
            
            [gcBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@(0));
                make.left.equalTo(@(0));
                make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth));
                orientation ? make.height.equalTo(@(bgHeight)) : make.height.equalTo(@(bgHeight/2));
            }];
        }else{
            UIButton *gcBtn = [GamaUtils initBtnWithNormalImage:xm_apple_login_normal highlightedImage:xm_apple_login_normal tag:kMainGameAppleLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
            [ssView addSubview:gcBtn];

            [gcBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@(0));
                make.left.equalTo(@(0));
                make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth));
                make.height.equalTo(@(loginBtnHeightOfBgHeight * onCalHeight));
            }];
            
            UIButton *mainBtn = [GamaUtils initBtnWithNormalImage:xm_member_login_normal highlightedImage:nil tag:kMainLoginBtnTag selector:@selector(loginBtnsAction:) target:self];
            [ssView addSubview:mainBtn];
            [mainBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@(loginBtnHeightOfBgHeight*onCalHeight));
                make.left.equalTo(@(0));
                make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth));
                make.height.equalTo(@(loginBtnHeightOfBgHeight * onCalHeight));
            }];

        }
        
        // fb login
        UIButton *fbBtn = [GamaUtils initBtnWithNormalImage:@"gama_fb_login.png" highlightedImage:@"gama_fb_login.png" tag:kMainFbLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
        [fbBtn gradientButtonWithSize:CGSizeMake(loginBtnWidthOfBgWidth*onCalWidth,bgHeight/2) colorArray:@[(id)RGB(46, 78, 144)] percentageArray:@[@(1)] gradientType:GradientFromLeftToRight];

        [fbBtn.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(fbBtn);
            make.height.equalTo(@(loginBtnWidthOfBgWidth *onCalWidth *0.62));
            make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth * 0.42));
        }];
        [ssView addSubview:fbBtn];

        [fbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth));
            make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth));
            orientation ? make.height.equalTo(@(bgHeight)) : make.height.equalTo(@(bgHeight/2));
        }];
        
        // guest login
        UIButton *guestBtn = [GamaUtils initBtnWithNormalImage:@"gama_guest_login.png" highlightedImage:@"gama_guest_login.png" tag:kMainGuestLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
        [guestBtn gradientButtonWithSize:CGSizeMake(bgHeight/2,loginBtnWidthOfBgWidth*onCalWidth) colorArray:@[(id)RGB(221, 168, 43)] percentageArray:@[@(1)] gradientType:GradientFromLeftToRight];
        [guestBtn.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(guestBtn);
            make.height.equalTo(@(loginBtnWidthOfBgWidth *onCalWidth *0.62));
            make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth * 0.42));
        }];

        [ssView addSubview:guestBtn];
        [guestBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            orientation ? make.top.equalTo(@(0)) : make.top.equalTo(@(loginBtnHeightOfBgHeight*onCalHeight));
            orientation ? make.left.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*2)) : make.left.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            orientation ? make.height.equalTo(@(bgHeight)) : make.height.equalTo(@(bgHeight/2));
        }];

    } else {    //竖屏
        // gamecenter
        UIButton *gamaBtn = nil;
        if (SDKConReaderGetBool(GAMA_GMAE_mLanguge) && ![[GamaFunction getPreferredLanguage] containsString:@"zh-"]) {
            gamaBtn = [GamaUtils initBtnWithNormalImage:xm_apple_login_normal highlightedImage:xm_apple_login_normal tag:kMainGameAppleLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
            [ssView addSubview:gamaBtn];
            [gamaBtn gradientButtonWithSize:CGSizeMake(loginBtnWidthOfBgWidth*onCalWidth,bgHeight/2) colorArray:@[(id)RGB(255, 255, 255)] percentageArray:@[@(1)] gradientType:GradientFromLeftToRight];
            [gamaBtn.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.center.equalTo(gamaBtn);
                make.height.equalTo(@(loginBtnWidthOfBgWidth *onCalWidth));
//                make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth));
                make.width.equalTo(gamaBtn).dividedBy(2);

            }];
            UIView *leftine = [[UIView alloc] init];
            leftine.backgroundColor = [UIColor whiteColor];
            [gamaBtn.imageView addSubview:leftine];
            [leftine mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@(0));
                make.left.equalTo(@(0));
                make.width.equalTo(@(2));
                make.height.equalTo(gamaBtn.imageView);

            }];
            
            [gamaBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@(0));
                make.left.equalTo(@(0));
                make.width.equalTo(ssView);
                make.height.equalTo(ssView).dividedBy(3);
            }];

        }else{
            gamaBtn = [GamaUtils initBtnWithNormalImage:xm_member_login_normal highlightedImage:xm_member_login_normal tag:kMainLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
            [ssView addSubview:gamaBtn];
            [gamaBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@(0));
                make.left.equalTo(@(0));
                make.width.equalTo(ssView).dividedBy(2);
                make.height.equalTo(ssView).dividedBy(3);
            }];
            
            //login
            UIButton *appleBtn = [GamaUtils initBtnWithNormalImage:xm_apple_login_normal highlightedImage:xm_apple_login_normal tag:kMainGameAppleLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
            [ssView addSubview:appleBtn];
            [appleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(@(0));
                make.right.equalTo(@(0));
                make.width.equalTo(ssView).dividedBy(2);
                make.height.equalTo(ssView).dividedBy(3);
            }];
        }
        
        
        //fb login
        UIButton *fbBtn = [GamaUtils initBtnWithNormalImage:@"gama_fb_login.png" highlightedImage:@"gama_fb_login.png" tag:kMainFbLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
        [fbBtn gradientButtonWithSize:CGSizeMake(loginBtnWidthOfBgWidth*onCalWidth,bgHeight/2) colorArray:@[(id)RGB(46, 78, 144)] percentageArray:@[@(1)] gradientType:GradientFromLeftToRight];
        [fbBtn.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(fbBtn);
            make.height.equalTo(@(loginBtnWidthOfBgWidth *onCalWidth *0.57));
            make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth * 0.4));
        }];
        [ssView addSubview:fbBtn];
        [fbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(gamaBtn.mas_bottom);
            make.left.equalTo(@(0));
            make.width.equalTo(ssView);
            make.height.equalTo(ssView).dividedBy(3);
        }];
        
        //免注册 login
        UIButton *guestBtn = [GamaUtils initBtnWithNormalImage:@"gama_guest_login.png" highlightedImage:@"gama_guest_login.png" tag:kMainGuestLoginBtnTag  selector:@selector(loginBtnsAction:) target:self];
        [guestBtn gradientButtonWithSize:CGSizeMake(bgHeight/2,loginBtnWidthOfBgWidth*onCalWidth) colorArray:@[(id)RGB(221, 168, 43)] percentageArray:@[@(1)] gradientType:GradientFromLeftToRight];
        [guestBtn.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(guestBtn);
            make.height.equalTo(@(loginBtnWidthOfBgWidth *onCalWidth *0.57));
            make.width.equalTo(@(loginBtnWidthOfBgWidth * onCalWidth * 0.4));
        }];

        [ssView addSubview:guestBtn];
        [guestBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(@(0));
            make.left.equalTo(@(0));
            make.width.equalTo(ssView);
            make.height.equalTo(ssView).dividedBy(3);
        }];
    }
}

#pragma mark - BtnAction

- (void)loginBtnsAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kMainLoginBtnTag:
        {
            NSLog(@"account login view");
            switch (m_mode) {
                case HelloMain_FromLogout:
                {
                    NSString *loginType = nil;
                    NSString *userNameID = nil;
                    [GamaUtils getStateLoginWithType:&loginType andUserName:&userNameID];
                    
                    if (loginType.length > 0 && userNameID.length > 0) {
                        
                        if ([loginType isEqualToString:_SDK_PLAT_SELF]) {
                            
                            NSString *lastAccount = nil;
                            NSString *lastPwd = nil;
                            [GamaUtils getUserInfo:&lastAccount andPassword:&lastPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];

                            if (lastAccount.length > 0 && lastPwd.length > 0) {

                                [GamaNetEngine loginUsingUsername:lastAccount password:lastPwd];
                            } else {
                                HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithFrame:mainBg.frame];
                                [self.view addSubview:accountLoginView];
                                [UIView animateWithDuration:0.1f animations:^{
                                    mainBg.alpha = 0.0f;
                                }];
                            }
                            
                        }
                        else if ([loginType isEqualToString:_SDK_PLAT_MAC]){
//                            [self _guestLoginShow];
                        }
                        else if ([loginType isEqualToString:_SDK_PLAT_GC]) {
                            
                        }
                        else if ([loginType isEqualToString:_SDK_PLAT_FB]) {
                            [GamaNetEngine loginUsingThirdPlatform:Gama_Facebook handler:nil];
                        }
                        
                    }else{
                        HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_HadLogin];
                        [self.view addSubview:accountLoginView];
                        [UIView animateWithDuration:0.3f animations:^{
                            mainBg.alpha = 0.0f;
                        }];
                    }
                }
                    break;
                case HelloMain_MySpace:
                {
                    HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_HadLogin];
//                    accountLoginView.alpha = 0.0f;
                    self.view.backgroundColor = [UIColor clearColor];
                    [self.view addSubview:accountLoginView];
//                    [UIView animateWithDuration:0.3f animations:^{
                        ssView.alpha = 0.0f;
//                        accountLoginView.alpha = 1.0;
//                    }];
                }
                    break;
                default:
                {
                    HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_Default];
                    accountLoginView.alpha = 0.0f;
                    [self.view addSubview:accountLoginView];
                    [UIView animateWithDuration:0.3f animations:^{
//                        mainBg.alpha = 0.0f;
                        ssView.alpha = 0.0f;
                        accountLoginView.alpha = 1.0;
                    }];
                }
                    break;
            }
        }
            break;
            
        case kMainFbLoginBtnTag:
        {
            m_curLoginType = _SDK_PLAT_FB;
            m_curLoginName = @"Facebook";
            [GamaNetEngine loginUsingThirdPlatform:Gama_Facebook handler:nil];
            
            [GamaUtils gamaStarLoadingAtView:self.view];
        }
            break;
            // Gamecenter
        case kMainGameCenterLoginBtnTag:
        {
            m_curLoginType = _SDK_PLAT_GC;
            m_curLoginName = @"Gamecenter";
            [GamaNetEngine loginUsingThirdPlatform:Gama_GameCenter handler:nil];
            
            // 如果用户多次调用gamecenter，但是又取消登录，苹果就会认为用户取消登录，后续就无法正常登录了。
            if (s_gameCenterLoginCancelTimes >= 1 ) {

                [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"TXT_LOGIN_IN_GAMECENTER")
                                       completion:^(NSInteger clickedBtnIndex) {
                                           if (clickedBtnIndex == 0) {
                                               [GamaUtils gamaStarLoadingAtView:self.view];
                                               [[UIApplication sharedApplication]openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
                                           }
                                       } andButtonTitles:SDKConReaderGetLocalizedString(@"BTN_TITLE_TXT_SETTINGS"),SDKConReaderGetLocalizedString(@"BTN_TITLE_TXT_CANCEL"), nil];
            } else {
                [GamaUtils gamaStarLoadingAtView:self.view];
            }
            
        }
            break;
        case kMainGameAppleLoginBtnTag:
        {
            if(@available(iOS 13.0, *)){
                m_curLoginType = _SDK_PLAT_APPLE;
                m_curLoginName = @"Apple";
                [self gama_appleLoginRequestWithThirdPlate:@"apple"];
                [GamaUtils gamaStarLoadingAtView:self.view];
            }else{
                [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
            }
        }
            break;
        case kMainGuestLoginBtnTag:
        {
            // 直接登錄
            [GamaUtils gamaStarLoadingAtView:self.view];
            [GamaNetEngine guestLogin];
        }
            break;
        case kMainFbBindBtnTag:
        {
            HelloRigisterView *bindView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_Bind];
            bindView.alpha = 0.0f;
            bindView.parenView = self.view;            
            [UIView animateWithDuration:0.3f animations:^{
                [self.view addSubview:bindView];
                ssView.alpha = 0.0f;
                bindView.alpha = 1.0f;
            }];
        }
            break;
        case kLoginSignInBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_Normal];
            accountLoginView.parenView = self.view;
            [UIView animateWithDuration:0.3f animations:^{
                [self.view addSubview:accountLoginView];
                ssView.alpha = 0.0f;
            }];
        }
            break;
            
        default:
            break;
    }
}


#pragma mark - Noti

- (void)_noteLisetner:(NSNotification *)note
{
    [GamaUtils gamaStopLoadingAtView:self.view];
    
    NSString *noteName = note.name;
    
    if ([noteName isEqualToString:NOTE_hello_login_success]) {
        
        [self.view removeFromSuperview];
        
    } else if ([noteName isEqualToString:_GAMA_NOTIFICATION_FAIL]) {
        
//        NSLog(@"-- 登录失败 --");
        
    } else if ([noteName isEqualToString:HELLO_NOTI_LOGIN_BACK]) {
        
        if (!ssView) {
            // re init
            m_mode = HelloMain_MySpace;
            [[HelloMain alloc] initWithMode:m_mode];
        } else {
            ssView.alpha = 1.0f;
        }
        
    }
    else if ([noteName isEqualToString:@"GAMA_FACEBOOK_LOGIN_FAIL"]) {
        
//        NSLog(@"Facebook登录失败，未进行授权");
        
    }
    else if ([noteName isEqualToString:GAMA_THIRD_LOGIN_FAIL]) {
        [GamaUtils gamaStopLoadingAtView:self.view];
//        NSLog(@"第三方登录失败");
        if ([m_curLoginType isEqualToString: _SDK_PLAT_GC]) {
//            NSLog(@"GameCenter 登录失败");
            s_gameCenterLoginCancelTimes++;
        }
        
    } else if ([noteName isEqualToString:GAMA_THIRD_LOGIN_SUCCESS]) {
        [GamaUtils gamaStopLoadingAtView:self.view];
        /**
         * 第三方登录中，guest 登录的机制是客户端传一个 uniqueID 给服务端，服务端根据这个 uniqueID 分配一个账号和密码
         * 该账号密码是正式系统的账号和密码，无需再进行绑定操作的
         * 目前暂无绑定功能，后期有绑定功能时再考虑它的逻辑是不再给他绑定，还是直接提供修改密码功能。
         * 还需要和服务端商讨
         */
//        accessToken = d0896804ca81935c1545494e20ea91df;
//        code = 1001;
//        freeRegisterName = f5atfni4bppywiemd1;
//        freeRegisterPwd = 1487746027492;
//        message = "\U8a3b\U518a\U6210\U529f";
//        timestamp = 1487746027499;
//        userId = 36;
        
        NSDictionary *dict = note.userInfo;
        
        NSString *freeAccount = dict[@"freeRegisterName"];
        NSString *freePwd = dict[@"freeRegisterPwd"];
        
        if (freeAccount.length > 0 && freePwd.length > 0) { // guest login
            
            [GamaUtils recordStateLoginWithType:_SDK_PLAT_MAC andUserName:freeAccount];
            
            // 保存guest登錄的账号和密码，判断是否已经保存有，如果有则不再执行保存
            NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
            NSString *path = [paths objectAtIndex:0];
            NSString *filename = [path stringByAppendingPathComponent:GAMA_SAVE_Guest_USER_FILE_NAME];
            if (![[NSFileManager defaultManager] fileExistsAtPath:filename]) {
                [GamaUtils saveUserInfo:freeAccount andPassword:freePwd toFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            }            
            
            // 是否第一次使用guest login
            if (![GamaUtils gama_hadEverGuestLogin] && [SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) { // YES
                [GamaUtils gama_guestLoginSign];
            
                // 截图
                HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_GuestScreenShot];
                ssView.alpha = 0.0f;
                [self.view addSubview:accountLoginView];                
                
                [GamaUtils gama_saveGuestAccountToPhoto:self.view];
            
            } else {
//                NSLog(@"不是第一次使用 guest 登录了");
            }        
        }
        else
        {
            if (m_curLoginType.length > 0 && m_curLoginName.length >0) {
                [GamaUtils recordStateLoginWithType:m_curLoginType andUserName:m_curLoginName];
            }
        }
        
//        NSLog(@"第三方登录成功");
        
        [self.view removeFromSuperview];
        s_gameCenterLoginCancelTimes = 0;
        
    } else if ([noteName isEqualToString:_GAMA_NOTIFICATION_SUCCESS]) {
        
        [self.view removeFromSuperview];
        
    } else if ([noteName isEqualToString:HELLO_NOTI_REGISTER_BACK]) {
        
        NSDictionary *userInfo = note.userInfo;
        if ([self.view isEqual:userInfo[@"superView"]]) {
            ssView.alpha = 1.0f;
        }
        
    } else if ([noteName isEqualToString:OPEN_BIND_PHONE_VIEW]){
        m_curLoginType = nil;
        m_curLoginName = nil;
        HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Bind_Phone];
        accountLoginView.parenView = self.view;
        [UIView animateWithDuration:0.3f animations:^{
            [self.view addSubview:accountLoginView];
            ssView.alpha = 0.0f;
        }];
    } else if ([noteName isEqualToString:IS_GUEST_BIND_ACCOUNT]){
        HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_GuestBindAccount];
        self.view.backgroundColor = [UIColor clearColor];
        [self.view addSubview:accountLoginView];
        [UIView animateWithDuration:0.3f animations:^{
            mainBg.alpha = 0.0f;
        }];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:IS_GUEST_BIND_ACCOUNT object:nil];

    }
}

#pragma mark - UI

- (HelloTextField *)customTextfieldWidgetWithLeftView:(NSString *)imageName rightView:(UIView *)right placeholder:(NSString *)placeholder
{
    UIImageView *icon = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    [icon setFrame:CGRectMake(0, 0, 43/1070.0f * rate * curWidth*1.2, 43/1070.0f * rate * curWidth)];// 要用比例
    HelloTextField *resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:icon rightView:right];
    [icon release];
    [resultText setBackground:GetImage(textfield_bg)];
    resultText.initDistance = (182+30)/1070.0f * rate * curWidth*1.13;
    resultText.leftViewDistance = 112/1070.0f * rate * curWidth;
    resultText.rightViewDistance = 80/1070.0f * rate * curWidth;
    resultText.placeholder = placeholder;
    resultText.clearButtonMode = UITextFieldViewModeAlways;
    resultText.delegate = self;
    
    return [resultText autorelease];
}

- (UIButton *)_pwdRightViewWithImage:(NSString *)image tag:(NSUInteger)tag selector:(SEL)selector target:(id)targer
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:GetImage(image) forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(0, 0, 55/1070.0f * rate * curWidth, 55/1070.0f * rate * curWidth)];// 要用比例
    btn.tag = tag;
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

//登入
- (void)gama_appleLoginRequestWithThirdPlate:(NSString *)thirdPlate {
      self.gamaAppleLogin = [GamaAppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
        NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
        NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
        [tempMutableDic removeObjectForKey:@"appleThirdID"];
        [GamaThirdFunctionPort thirdLoginWithThirdId:appleID
                                      andThirdPlate:thirdPlate
                                            andApps:@""
                                   andBusinessToken:nil
                             andThirdAdditionParams:tempMutableDic
                                      andDomainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
                                      andOtherBlock:^{
                                          //gama2 Server register success
                                      }];
    } andErrorBlock:^(NSError * _Nullable error) {
        [GamaUtils gamaStopLoadingAtView:self.view];
        //        [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(error?GAMA_TEXT_NO_NET:GAMA_TEXT_SERVER_RETURN_NULL)];
    }];
    [self.gamaAppleLogin handleAuthrization:nil];
}

@end
