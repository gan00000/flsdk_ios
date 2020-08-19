//
//  HelloLoginView.m
//  GamaSDK_iOS_KR
//
//  Created by Sunny on 17/2/8.
//  Copyright © 2017年 Gama. All rights reserved.
//

#import "HelloLoginView.h"
#import "HelloHeader.h"
#import "GamaBaseSDK.h"
//#import "KRLoginViewController.h"
#import "GamaTimer.h"
#import "UIImageView+WebCache.h"
#import "GamaLoginViewModel.h"
#import "GamaAppleLogin.h"

#define tPlaceholder_account    PlaceHolderAccount
#define tPlaceholder_pwd        PlaceHolderPwd
#define kTVRightBtnTag                  110
#define kSPRegisterBtnTag               111
#define kSPFBBindBtnTag                 112
#define kSPFindPwdBtnTag                113
#define kSPResetPwdBtnTag               114
#define kSPRememberAccountTag           115
#define kSPGuestBindBtnTag              116
#define kSPGameCenterBindBtnTag         117
#define kSPMemberManagerBtnTag          118
#define kSPMemberTwitterBindBtnTag      119
#define KSPMemberAppleBindBtnTag        120

#define kTitleImageViewTag              121
#define kRmbTxtViewTag                  122
#define kLinkMemberCenterTitleTag       123

#define strAccount                  SDKConReaderGetLocalizedString(@"TXT_ACCOUNT")
#define strPassword                 SDKConReaderGetLocalizedString(@"TXT_PASSWORD")
#define strAccountLogin             SDKConReaderGetLocalizedString(@"LB_TITLE_ACCOUNT_LOGIN")
#define strLogin                    SDKConReaderGetLocalizedString(@"BTN_TITLE_LOGIN")
#define strAccountRule              SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")
#define strPasswordRule             SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")
#define strRegisterAccount          SDKConReaderGetLocalizedString(@"BTN_TITLE_REGISTER_ACCOUNT")
#define strFindPassword             SDKConReaderGetLocalizedString(@"BTN_TITLE_FIND_PASSWORD")
#define strResetPassword            SDKConReaderGetLocalizedString(@"BTN_TITLE_RESET_PASSWORD")
#define strComfirm                  SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM")
#define strFBAccountBind            SDKConReaderGetLocalizedString(@"BTN_TITLE_FB_ACCOUNT_BIND")
#define strGuestAccountBind         SDKConReaderGetLocalizedString(@"BTN_TITLE_GUEST_ACCOUNT_BIND")
#define strGameCenterAccountBind    SDKConReaderGetLocalizedString(@"BTN_TITLE_GAMECENTER_ACCOUNT_BIND")
#define strMemberManager            SDKConReaderGetLocalizedString(@"BTN_TITLE_MEMBER_MANAGER")


@implementation HelloLoginView
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
    
    CGFloat bgHeight;
    CGFloat bgWidth;
    
    CGFloat hiddenBtnWidthAndHeight;
    
    CGFloat titleTopPadding;
    CGFloat titleWidthOfBgWidth;
    CGFloat titleHeightOfBgHeight;
    
    // checkbox
    CGFloat checkboxWidthOfBgWidth;
    CGFloat checkboxHeightOfBgHeight;
    
    CGFloat backBtnWidthOfBgWidth;
    CGFloat backBtnHeightOfBgHeight;
    
    
    CGFloat keyboarHeight;
    CGFloat animatedDistance;
    
    UIImageView *mainBg;
    // for space
    UIView *ssView;
    
    UIButton *gama_getVfBtn;
    UIButton *bindPhoneBtn;

    UIButton *loginComfirmBtn;
    
    UIButton *backBtn;
    
    UIImageView *captchaImageView;
    
    HelloTextField *nameTF;
    HelloTextField *pwdTF;
    
    HelloTextField *vfTF;
    UIView *vfView;
    
    BOOL pwdEntity;
    UIButton *eyesBtn;
    UIButton *rmbCheckbox;
    CGFloat onCalWidth;
    CGFloat onCalHeight;
    
    HelloLoginMode m_mode;
    
    // UFO
    NSInteger m_ufo_pwd_count;
    BOOL      m_ufo_ready;
    
    BOOL orientation;
    
    // CN items
    UIButton * userListBtn;
    // user list data source
    NSArray *listModelArr;
    
    // user list View
    UIView *userListView;
    UITableView *uList;
    
    BOOL userListShow;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

- (instancetype)initWithMode:(HelloLoginMode)mode
{
    self = [super init];
    if (self) {
        m_mode = mode;
        [self propertyPrapare];
        [self helloInit];
        [self _regNotification];
    }
    
    return self;
}

- (void)_regNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_loginNoteLisetner:) name:HELLO_NOTI_REGISTER_BACK object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_loginNoteLisetner:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_loginNoteLisetner:) name:GAMA_NOTIFICATION_SUCCESS_LOGIN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_loginNoteLisetner:) name:GAMA_LOGIN_FAIL_IN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_loginNoteLisetner:) name:GAMA_RESET_PASSWORD_SUCCESS_IN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_loginNoteLisetner:) name:GAMA_BIND_SUCCESS_BACK object:nil];
}

- (void)propertyPrapare
{
    orientation = Device_Is_Landscape;
    
    rate = 0.8f; // 校对比值
    curWidth = orientation ? winWidth : winHeight;
    curHeight = orientation ? winHeight : winWidth;
    
    oriBgImgWidth = orientation ? bgOriginWidth:bgOriginHeight;
    oriBgImgHeight = orientation ? bgOriginHeight:bgOriginWidth;

    
    CGFloat realWidthHeightRate = curWidth/curHeight;
    
    originBgWidthOfHeight = oriBgImgHeight/oriBgImgWidth;//1070/1130.0f; // 原图宽高比
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {//若真机宽高比大于原图，则以高度为基准重新计算宽度
        curHeight = curWidth * originBgWidthOfHeight;
    } else { //若真机宽高比小于原图，则以宽度为基准重新计算高度
        curWidth = curHeight / originBgWidthOfHeight;
    }
    
    //============= 以下是原来横版的数值
    
    loginBtnWidthOfBgWidth = 773/1330.0f;
    loginBtnHeightOfBgHeight = 172/1330.0f;
    
    findPwdBtnWidthOfBgWidth = 300/1330.0f;
    findPwdBtnHeightOfBgHeight = 62/1130.0f;
    
    textFieldHeightOfBgHeight = 94/803.0f;
    
    topPadding = 26/803.0f;//1130.0f;
    leftPadding = 42/1330.0f;//1070.0f;
    anotherLeftPadding = 130/1330.0f;
    findBtnLeftPadding = (78+80)/1130.0f;
    gapPadding = 30/1130.0f;
    anotherGapPadding = 50/1130.0f;// origin 80
    thirdGapPadding = 64/1130.0f; // origin 34
    lineTopPadding = (156+172*4+50*3+70)/1130.0f;
    
    backBtnWidthAndHeight = 64.0f/oriBgImgWidth;//62*46
    
    hiddenBtnWidthAndHeight = 100/oriBgImgWidth;
    
    titleTopPadding = 100/oriBgImgHeight;
    titleWidthOfBgWidth = 492/oriBgImgWidth;
    titleHeightOfBgHeight = 46/oriBgImgHeight;
    
    checkboxWidthOfBgWidth = 42/oriBgImgWidth;//42*35
    checkboxHeightOfBgHeight = 35/oriBgImgHeight;
    
    backBtnWidthOfBgWidth = 62/oriBgImgWidth;
    backBtnHeightOfBgHeight = 46/oriBgImgHeight;
    
    pwdEntity = YES;
    
    
    // ==== 竖屏的数值
    if (!orientation) {
        loginBtnWidthOfBgWidth = 773/oriBgImgWidth;
        textFieldHeightOfBgHeight = 94/oriBgImgHeight;
        topPadding = 24/oriBgImgHeight;
        gapPadding = 30/oriBgImgHeight;
        titleTopPadding = 100/oriBgImgHeight;
        titleWidthOfBgWidth = 492/oriBgImgWidth;
        titleHeightOfBgHeight = 46/oriBgImgHeight;
        backBtnWidthAndHeight = 64.0f/oriBgImgWidth;
        backBtnWidthOfBgWidth = 62/oriBgImgWidth;
        backBtnHeightOfBgHeight = 46/oriBgImgHeight;
        checkboxWidthOfBgWidth = 42/oriBgImgWidth;//42*35
        checkboxHeightOfBgHeight = 35/oriBgImgHeight;
    }
    
    onCalWidth = rate * curWidth;
    onCalHeight = rate * curHeight;
    if (device_is_iPhoneX) {
        onCalHeight = rate * curHeight * rate;
        onCalWidth = onCalHeight / originBgWidthOfHeight ;
    }
    
    m_ufo_pwd_count = 0;
    m_ufo_ready = NO;
    keyboarHeight = orientation? 200.0f : 250.0f;
    
    CGFloat baseW = 441.0f;
    CGFloat baseH = 397.0f;
    bgHeight = baseW/oriBgImgWidth*onCalWidth*3;
    bgWidth = baseH/oriBgImgHeight*onCalHeight*2;

    if (!orientation) {
        onCalWidth = onCalWidth * 0.9;
        onCalHeight = onCalHeight * 1.2;
    }

}

- (void)helloInit
{
    self.userInteractionEnabled = YES;
    
    [self bgViewInit];
    [self catchMyWidget];
}

- (void)bgViewInit
{
    // bg
    self.backgroundColor = [UIColor colorWithRed:1/255.f green:1/255.f blue:1/255.f alpha:0.8];
    [self setFrame:CGRectMake(0, 0, winWidth, winHeight)]; 
    mainBg = [[UIImageView alloc] initWithImage:GetImage(kBgImageName)];
    mainBg.userInteractionEnabled = YES;
    [mainBg setFrame:CGRectMake(0, 0, orientation ? onCalWidth : bgWidth, orientation ? onCalHeight : bgHeight *0.9 )];
    [self addSubview:mainBg];
    mainBg.center = self.center;
}

- (void)clickBtnRfresh
{
    [captchaImageView sd_cancelCurrentImageLoad];
    NSString *timeStamp = [GamaFunction getTimeStamp];
    NSString *uniqueId = [[GamaFunction getGamaUUID] lowercaseString];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@/%@?operatingSystem=ios&uniqueId=%@&timestamp=%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(GAMA_LOGIN_CAPTCHA_IMAGE),uniqueId,timeStamp];
    NSURL *imageUrl = [NSURL URLWithString:urlStr];
    [captchaImageView sd_setImageWithURL:imageUrl placeholderImage:nil options:SDWebImageRefreshCached];
}

- (void)catchMyWidget
{
    if(orientation){
        CGFloat tmpTopPadding = 0.0f;
        // back btn
        backBtn = [GamaUtils initBtnWithNormalImage:backBtn_normal highlightedImage:backBtn_highlighted tag:kLoginBackBtnTag selector:@selector(loginViewBtnAction:) target:self];
        [mainBg addSubview:backBtn];
        [backBtn setUserInteractionEnabled:YES];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding*onCalHeight));
            make.left.equalTo(@(leftPadding*onCalWidth));
            make.width.equalTo(@(backBtnWidthAndHeight * onCalWidth)); // 64*64
            make.height.equalTo(@(backBtnWidthAndHeight * onCalWidth));
        }];
        
        CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_PAGE_ACCOUNT_LOGIN") minStr:nil];
        // title
        UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_PAGE_ACCOUNT_LOGIN") minTitle:nil];
        [titleView setBackgroundColor:[UIColor clearColor]];
        titleView.tag = kTitleImageViewTag;
        [mainBg addSubview:titleView];
        tmpTopPadding = titleTopPadding;

        // if use xm ui
        [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(titleWidth));//titleWidthOfBgWidth*onCalWidth
            make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
        }];
        
        // user name
        tmpTopPadding =  titleTopPadding+titleHeightOfBgHeight+gapPadding*2 ;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*1;
        }
        nameTF = [self customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:tPlaceholder_account];
        nameTF.returnKeyType = UIReturnKeyNext;
        [mainBg addSubview:nameTF];
        [nameTF mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        
        // password
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*4;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*2;
        }
        pwdTF = [self customTextfieldWidgetWithLeftView:textfield_pwd_left rightView:nil placeholder:tPlaceholder_pwd];
        pwdTF.returnKeyType = UIReturnKeyDone;
        [mainBg addSubview:pwdTF];
        [pwdTF mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        // no been see
        [pwdTF setSecureTextEntry:pwdEntity];
        [pwdTF setClearButtonMode:UITextFieldViewModeNever];
        // eyes btn
        eyesBtn = [self _pwdRightViewWithImage:eyeBtn_on tag:kTVRightBtnTag selector:@selector(loginViewBtnAction:) target:self];
        [pwdTF addSubview:eyesBtn];
        [eyesBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(@(-10));
            make.centerY.equalTo(@(0));
            make.width.equalTo(@(eyesBtn.frame.size.width *0.8));
            make.height.equalTo(@(eyesBtn.frame.size.height*0.8));
        }];
        
        if(GamaLoginViewModel.model.vfConfig == YES){
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*5;
            if (!orientation) {
                tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*2.5;
            }
            vfView = [[UIView alloc] init];
            vfView.userInteractionEnabled = YES;
            [mainBg addSubview:vfView];
            [vfView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(pwdTF).multipliedBy(0.8);
                make.height.equalTo(pwdTF).multipliedBy(0.78);
                make.centerX.equalTo(mainBg);
                make.top.equalTo(@(tmpTopPadding*onCalHeight));
            }];
            
            UIButton *captchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //        captchBtn.userInteractionEnabled = YES;
            [captchBtn addTarget:self action:@selector(clickBtnRfresh) forControlEvents:UIControlEventTouchUpInside];
        
            NSString *timeStamp = [GamaFunction getTimeStamp];
            NSString *uniqueId = [[GamaFunction getGamaUUID] lowercaseString];
            NSString *urlStr = [NSString stringWithFormat:@"%@/%@?operatingSystem=ios&uniqueId=%@&timestamp=%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(GAMA_LOGIN_CAPTCHA_IMAGE),uniqueId,timeStamp];
            NSURL *imageUrl = [NSURL URLWithString:urlStr];
            
            captchaImageView = [[UIImageView alloc] init];
            captchaImageView.userInteractionEnabled = YES;
        //    [captchaImage sd_setImageWithURL:imageUrl placeholderImage:];
            [captchaImageView sd_setImageWithURL:imageUrl placeholderImage:nil options:SDWebImageRefreshCached];
            [vfView addSubview:captchaImageView];
            [captchaImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(vfView).multipliedBy(0.37);
                make.height.equalTo(vfView);
                make.left.equalTo(vfView);
                make.top.equalTo(vfView);
            }];
            vfTF = [self customTextfieldWidgetWithLeftView:nil rightView:nil placeholder:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
            vfTF.layer.borderWidth = 2;
            vfTF.layer.borderColor = RGB(157, 157, 157).CGColor;
            [vfView addSubview:vfTF];
            [vfTF mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(vfView);
                make.width.equalTo(vfView).multipliedBy(0.58);
                make.height.equalTo(vfView);
                make.right.equalTo(vfView);
            }];
            [captchaImageView addSubview:captchBtn];

            [captchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.height.left.right.equalTo(captchaImageView);
            }];
        
            textFieldHeightOfBgHeight = textFieldHeightOfBgHeight * 1.3;
        }
        
        // 记住账号--目前版本放在居中位置
        rmbCheckbox = [GamaUtils initBtnWithNormalImage:checkbox_checked highlightedImage:nil tag:kSPRememberAccountTag selector:@selector(loginViewBtnAction:) target:self];
        [mainBg addSubview:rmbCheckbox];
        tmpTopPadding = GamaLoginViewModel.model.vfConfig == YES ?titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*6.5:titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*6;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;
        }
        // 文字--目前版本放在居中位置
        // 使用文字
        UILabel *rmbLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        rmbLabel.tag = kRmbTxtViewTag;
        rmbLabel.text = SDKConReaderGetLocalizedString(@"LB_TITLE_REMEBER_ACCOUNT");
        [rmbLabel setTextColor:RGB(32, 45, 57)];
        [rmbLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:FONTSIZE(10)]];
        [mainBg addSubview:rmbLabel];
        CGSize lbSize = [GamaUtils calculateSizeOfLabel:rmbLabel];
        [rmbLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(mainBg);
    //        make.left.equalTo(rmbCheckbox.mas_right);
            make.width.equalTo(@(ceil(lbSize.width)+1));
            make.height.equalTo(@(ceil(lbSize.height)+1));
        }];
        [rmbCheckbox mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.right.equalTo(rmbLabel.mas_left);
            make.width.equalTo(@(checkboxWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(checkboxWidthOfBgWidth*onCalWidth));
        }];

        // login btn
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+checkboxWidthOfBgWidth+gapPadding*8;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+checkboxWidthOfBgWidth+gapPadding*3;
        }
        loginComfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_BTN_ACCOUNT_LOGIN_TITLE") backgroundImage:nil tag:kLoginComfirmBtnTag selector:@selector(loginViewBtnAction:) target:self];
        
        [mainBg addSubview:loginComfirmBtn];
        [loginComfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(605/oriBgImgWidth*onCalWidth));//605*77
            make.height.equalTo(@(77/oriBgImgHeight*onCalHeight));
        }];
        
        // 账号密码自动填充
        if (m_mode == HelloLogin_HadLogin) {
            // get accout and pwd
            NSString *loginName = nil;
            NSString *loginPwd = nil;
            [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];
            
            if (loginName.length <= 0 && loginPwd <= 0 ) {
                [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            }
            
            // 密码解密
            loginPwd = [GamaUtils loginDecryptFromString:loginPwd];
            
            nameTF.text = loginName;
            pwdTF.text = loginPwd;
        }
        
        if (m_mode == HelloLogin_GuestScreenShot) {
            NSString *loginName = nil;
            NSString *loginPwd = nil;
            [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            loginPwd = [GamaUtils loginDecryptFromString:loginPwd];// 解密
            nameTF.text = loginName;
            pwdTF.text = loginPwd;
            pwdTF.secureTextEntry = NO;
        }
        
        
        CGFloat m_leftPadding = 0.0f;
        CGFloat m_fontSize = IS_IPAD ? 18 : 11 ;
        CGSize  m_btnTitleSize = CGSizeZero;

        CGFloat m_bottomPadding = GamaLoginViewModel.model.vfConfig == YES ? -100/oriBgImgHeight*onCalHeight * 0.7 :-100/oriBgImgHeight*onCalHeight;
        CGFloat m_btnSpacing = 40.0f;

        NSArray *buttonTitle = @[strFindPassword,strRegisterAccount,strMemberManager,strResetPassword];
        NSArray *buttonTag = @[@kSPFindPwdBtnTag,@kLoginSignInBtnTag,@kSPMemberManagerBtnTag,@kSPResetPwdBtnTag];
        [self bottomButtonCentereManagerWithTitleAry:buttonTitle tag:buttonTag];
    }else{
        
        CGFloat tmpTopPadding = 0.0f;
        // back btn
        backBtn = [GamaUtils initBtnWithNormalImage:backBtn_normal highlightedImage:backBtn_highlighted tag:kLoginBackBtnTag selector:@selector(loginViewBtnAction:) target:self];
        [mainBg addSubview:backBtn];
        [backBtn setUserInteractionEnabled:YES];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding*onCalHeight));
            make.left.equalTo(@(leftPadding*onCalWidth));
            make.width.equalTo(@(backBtnWidthAndHeight * onCalWidth)); // 64*64
            make.height.equalTo(@(backBtnWidthAndHeight * onCalWidth));
        }];
        
        CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_PAGE_ACCOUNT_LOGIN") minStr:nil];
        // title
        UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_PAGE_ACCOUNT_LOGIN") minTitle:nil];
        [titleView setBackgroundColor:[UIColor clearColor]];
        titleView.tag = kTitleImageViewTag;
        [mainBg addSubview:titleView];
        tmpTopPadding = titleTopPadding;

        // if use xm ui
        [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mainBg.mas_top).mas_offset(bgHeight * 0.16);
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(titleWidth));//titleWidthOfBgWidth*onCalWidth
            make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
        }];
        
        // user name
        tmpTopPadding =  titleTopPadding+titleHeightOfBgHeight+gapPadding*2 ;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*1;
        }
        NSString *nameStr = [SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"] ?SDKConReaderGetLocalizedString(@"GAMA_LOGIN_RESET_PWD_PLACHEOLDER"):tPlaceholder_account;
        nameTF = [self customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:nameStr];
        nameTF.returnKeyType = UIReturnKeyNext;
        [mainBg addSubview:nameTF];
        [nameTF mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(titleView.mas_bottom).offset(bgHeight * 0.036);
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        
        // password
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*4;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*2;
        }
        NSString *pwdStr = [SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"] ?SDKConReaderGetLocalizedString(@"GAMA_LOGIN_TEXT_PWD_PLACHEILDER"):tPlaceholder_pwd;

        pwdTF = [self customTextfieldWidgetWithLeftView:textfield_pwd_left rightView:nil placeholder:pwdStr];
        pwdTF.returnKeyType = UIReturnKeyDone;
        [mainBg addSubview:pwdTF];
        [pwdTF mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(nameTF.mas_bottom).offset(bgHeight * 0.054);
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(bgWidth*0.88));
            make.height.equalTo(@(bgHeight*0.084));
        }];
        // no been see
        [pwdTF setSecureTextEntry:pwdEntity];
        [pwdTF setClearButtonMode:UITextFieldViewModeNever];
        // eyes btn
        eyesBtn = [self _pwdRightViewWithImage:eyeBtn_on tag:kTVRightBtnTag selector:@selector(loginViewBtnAction:) target:self];
        [pwdTF addSubview:eyesBtn];
        [eyesBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(@(-10));
            make.centerY.equalTo(@(0));
            make.width.equalTo(@(bgWidth*0.11));
            make.height.equalTo(@(bgHeight*0.047));
        }];
        
        if(GamaLoginViewModel.model.vfConfig == YES){
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*5;
            if (!orientation) {
                tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*2.5;
            }
            vfView = [[UIView alloc] init];
            vfView.userInteractionEnabled = YES;
            [mainBg addSubview:vfView];
            [vfView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(@(bgWidth*0.88));
                make.height.equalTo(@(bgHeight*0.043));
                make.centerX.equalTo(mainBg);
                make.top.equalTo(pwdTF.mas_bottom).offset(bgHeight * 0.046);
            }];
            
            UIButton *captchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //        captchBtn.userInteractionEnabled = YES;
            [captchBtn addTarget:self action:@selector(clickBtnRfresh) forControlEvents:UIControlEventTouchUpInside];
        
            NSString *timeStamp = [GamaFunction getTimeStamp];
            NSString *uniqueId = [[GamaFunction getGamaUUID] lowercaseString];
            NSString *urlStr = [NSString stringWithFormat:@"%@/%@?operatingSystem=ios&uniqueId=%@&timestamp=%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(GAMA_LOGIN_CAPTCHA_IMAGE),uniqueId,timeStamp];
            NSURL *imageUrl = [NSURL URLWithString:urlStr];
            
            captchaImageView = [[UIImageView alloc] init];
            captchaImageView.userInteractionEnabled = YES;
        //    [captchaImage sd_setImageWithURL:imageUrl placeholderImage:];
            [captchaImageView sd_setImageWithURL:imageUrl placeholderImage:nil options:SDWebImageRefreshCached];
            [vfView addSubview:captchaImageView];
            [captchaImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.equalTo(vfView).multipliedBy(0.33);
                make.height.equalTo(vfView);
                make.left.equalTo(vfView);
                make.top.equalTo(vfView);
            }];
            vfTF = [self customTextfieldWidgetWithLeftView:nil rightView:nil placeholder:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
            vfTF.layer.borderWidth = 1;
            vfTF.layer.borderColor = RGB(157, 157, 157).CGColor;
            vfTF.font = [UIFont fontWithName:@"Helvetica" size:FONTSIZE(9)];
            [vfTF setBackgroundColor:[UIColor whiteColor]];
            [vfView addSubview:vfTF];
            [vfTF mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(vfView);
                make.width.equalTo(vfView).multipliedBy(0.64);
                make.height.equalTo(vfView);
                make.right.equalTo(vfView);
            }];
            [captchaImageView addSubview:captchBtn];

            [captchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.height.left.right.equalTo(captchaImageView);
            }];
        
            textFieldHeightOfBgHeight = textFieldHeightOfBgHeight * 1.3;
        }
        
        // 记住账号--目前版本放在居中位置
        rmbCheckbox = [GamaUtils initBtnWithNormalImage:checkbox_checked highlightedImage:nil tag:kSPRememberAccountTag selector:@selector(loginViewBtnAction:) target:self];
        [mainBg addSubview:rmbCheckbox];
        tmpTopPadding = GamaLoginViewModel.model.vfConfig == YES ?titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*6.5:titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*6;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*4;
        }
        
        // 文字--目前版本放在居中位置
        // 使用文字
        UILabel *rmbLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        rmbLabel.tag = kRmbTxtViewTag;
        rmbLabel.text = SDKConReaderGetLocalizedString(@"LB_TITLE_REMEBER_ACCOUNT");
        [rmbLabel setTextColor:RGB(32, 45, 57)];
        [rmbLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:FONTSIZE(10)]];
        [mainBg addSubview:rmbLabel];
        CGSize lbSize = [GamaUtils calculateSizeOfLabel:rmbLabel];
        [rmbLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding* mainBg.frame.size.height));
            make.centerX.equalTo(mainBg);
            make.width.equalTo(@(ceil(lbSize.width)+1));
            make.height.equalTo(@(ceil(lbSize.height)+1));
        }];
        [rmbCheckbox mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*mainBg.frame.size.height));
            make.right.equalTo(rmbLabel.mas_left);
            make.width.equalTo(@(checkboxHeightOfBgHeight*onCalHeight));
            make.height.equalTo(@(checkboxHeightOfBgHeight*onCalHeight));
        }];

        // login btn
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+checkboxWidthOfBgWidth+gapPadding*8;
        if (!orientation) {
            tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+checkboxWidthOfBgWidth+gapPadding*3;
        }
        loginComfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_BTN_ACCOUNT_LOGIN_TITLE") backgroundImage:nil tag:kLoginComfirmBtnTag selector:@selector(loginViewBtnAction:) target:self];
        
        [mainBg addSubview:loginComfirmBtn];
        [loginComfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(rmbCheckbox.mas_bottom).offset(bgHeight * 0.043);
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(bgWidth*0.67));//605*77
            make.height.equalTo(@(77/oriBgImgHeight*onCalHeight));
        }];
        
        // 账号密码自动填充
        if (m_mode == HelloLogin_HadLogin) {
            // get accout and pwd
            NSString *loginName = nil;
            NSString *loginPwd = nil;
            [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];
            
            if (loginName.length <= 0 && loginPwd <= 0 ) {
                [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            }
            
            // 密码解密
            loginPwd = [GamaUtils loginDecryptFromString:loginPwd];
            
            nameTF.text = loginName;
            pwdTF.text = loginPwd;
        }
        
        if (m_mode == HelloLogin_GuestScreenShot) {
            NSString *loginName = nil;
            NSString *loginPwd = nil;
            [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            loginPwd = [GamaUtils loginDecryptFromString:loginPwd];// 解密
            nameTF.text = loginName;
            pwdTF.text = loginPwd;
            pwdTF.secureTextEntry = NO;
        }
                
        NSArray *buttonTitle = @[strFindPassword,strRegisterAccount,strMemberManager,strResetPassword];
        NSArray *buttonTag = @[@kSPFindPwdBtnTag,@kLoginSignInBtnTag,@kSPMemberManagerBtnTag,@kSPResetPwdBtnTag];
        [self bottomButtonCentereManagerWithTitleAry:buttonTitle tag:buttonTag];
    }
    if(m_mode == HelloLogin_GuestBindAccount)
    {
        HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:mainBg.frame viewMode:Hello_Register_Guest_Bind];
        accountLoginView.parenView = self;
        [UIView animateWithDuration:0.3f animations:^{
            [self addSubview:accountLoginView];
            ssView.alpha = 0.0f;
        }];
    }
}

- (void)bottomButtonCentereManagerWithTitleAry:(NSArray *)titleAry tag:(NSArray *)tag{
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
        [self enCreateUserMemberCeneterWithTitleAry:titleAry tag:tag];
    }else{
        [self createUserMemberCenterWithTitleAry:titleAry tag:tag];
    }
}

- (void)createUserMemberCenterWithTitleAry:(NSArray *)titleAry tag:(NSArray *)tag{
    UIView *memberCenter = [[UIView alloc] init];
    [mainBg addSubview:memberCenter];
    CGFloat m_bottomPadding = GamaLoginViewModel.model.vfConfig == YES ? -100/oriBgImgHeight*onCalHeight * 0.7 :-100/oriBgImgHeight*onCalHeight;
    CGFloat m_pBottomPadding = GamaLoginViewModel.model.vfConfig == YES ? -180/oriBgImgHeight*onCalHeight * 0.7 :-180/oriBgImgHeight*onCalHeight;
    int length = titleAry.count + (titleAry.count - 1);

    for (int i = 0; i < titleAry.count; i++) {
        
        CGFloat m_fontSize = IS_IPAD ? 18 : 11 ;
        UIButton *signInBtn = [GamaUtils initBtnWithTitle:titleAry[i] tag:[tag[i] intValue] selector:@selector(loginViewBtnAction:) target:self];
        [signInBtn.layer setBorderWidth:0.0f];
        [signInBtn.layer setBorderColor:[UIColor clearColor].CGColor];
        [signInBtn.layer setCornerRadius:0.0f];
        [signInBtn setTitleColor:RGB(7, 23, 38) forState:0];// color
        UIFont *cmTitleFont = orientation ? [UIFont fontWithName:@"Helvetica-Bold" size:m_fontSize]:[UIFont fontWithName:@"Helvetica" size:m_fontSize];
        [signInBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:m_fontSize]];
        
        CGSize m_btnTitleSize = [GamaUtils calculateSizeOfLabel:signInBtn.titleLabel];
        [memberCenter mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(@(orientation ? m_btnTitleSize.width *length :m_btnTitleSize.width *length * 0.76));
            make.bottom.equalTo(@(orientation?m_bottomPadding:m_pBottomPadding));
            make.centerX.equalTo(mainBg);
            make.height.equalTo(@(m_btnTitleSize.height));
        }];
        [memberCenter addSubview:signInBtn];
        CGFloat buttonPadding = orientation ? m_btnTitleSize.width *(i * 2) : m_btnTitleSize.width *(i * 2) *0.76;
        [signInBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(@(buttonPadding));
            make.bottom.equalTo(memberCenter);
            make.width.equalTo(@(m_btnTitleSize.width));
            make.height.equalTo(@(m_btnTitleSize.height));
        }];
    }
}

- (void)enCreateUserMemberCeneterWithTitleAry:(NSArray *)titleAry tag:(NSArray *)tag{
    UIView *memberCenter = [[UIView alloc] init];
    CGFloat btnDistance = mainBg.frame.size.width *0.07;
    CGFloat m_fontSize = IS_IPAD ? 18 : IS_IPHONE_5 ? 10 : 11 ;
        
    [mainBg addSubview:memberCenter];
    CGFloat memberCenterWidth = 0;
    for(int i = 0; i < titleAry.count; i++){
        NSArray *arr = [titleAry[i] componentsSeparatedByString:@" "];
        NSString *tempStr = [NSString string];
        if(arr.count > 2){
            tempStr = [NSString stringWithFormat:@"%@%@",arr[1],arr[2]];
        }else{
            tempStr = arr[1];
        }

        CGSize titleSize = [GamaUtils sizeWithText:tempStr font:[UIFont fontWithName:@"Helvetica" size:m_fontSize] maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
        
        UIButton *signInBtn = [GamaUtils initBtnWithTitle:titleAry[i] tag:[tag[i] intValue] selector:@selector(loginViewBtnAction:) target:self];
        [signInBtn.layer setBorderWidth:0.0f];
        [signInBtn.layer setBorderColor:[UIColor clearColor].CGColor];
        [signInBtn.layer setCornerRadius:0.0f];
        signInBtn.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
        signInBtn.titleLabel.textAlignment = UITextAlignmentCenter;
        [signInBtn setTitleColor:RGB(7, 23, 38) forState:0];// color
        [signInBtn.titleLabel setFont:[UIFont fontWithName:@"Helvetica" size:m_fontSize]];

        [memberCenter addSubview:signInBtn];
        [signInBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(@(memberCenterWidth + (i*btnDistance)));
            make.centerY.equalTo(memberCenter);
            make.width.equalTo(@(titleSize.width * 1.2));
            make.height.equalTo(@(mainBg.frame.size.height * 0.07));
        }];
        memberCenterWidth += titleSize.width;
    }
    [memberCenter mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(memberCenterWidth + (btnDistance *titleAry.count - 1)));
        make.top.equalTo(loginComfirmBtn.mas_bottom).offset(mainBg.frame.size.height * 0.046);
        make.centerX.equalTo(mainBg);
        make.height.equalTo(@(mainBg.frame.size.height * 0.07));
    }];
}

#pragma mark - Btn Actions

- (void)loginViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kLoginBackBtnTag:
        {
            UIImageView *titleView = (UIImageView *)[mainBg viewWithTag:kTitleImageViewTag];
            if (titleView.hidden) {
                
                [self _makeMemberManagerWidgetHidden];
                [self _makeWidgetShow];
                
            } else {
                [self removeFromSuperview];
                if ([appTopViewController.view viewWithTag:kMainLoginViewTag]) {
                    [[appTopViewController.view viewWithTag:kMainLoginViewTag] removeFromSuperview];
                }else if([appTopViewController.view viewWithTag:kFirstLoginViewTag]){
                    [[appTopViewController.view viewWithTag:kFirstLoginViewTag] removeFromSuperview];
                }
                if (m_mode == HelloLogin_HadLogin || m_mode == HelloLogin_GuestBindAccount) {
//                    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]) {
//                        UIViewController *presentedVC = [[KRLoginViewController alloc] initWithMode:KRLoginMain_MySpace];
//                        UIViewController *mainView = [UIApplication sharedApplication].keyWindow.rootViewController;
//                        [presentedVC.view setTag:kMainLoginViewTag];
//                        [mainView.view addSubview:presentedVC.view];
//                        return;
//                    }
                    UIViewController * presentedVC = [[HelloMain alloc] initWithMode:HelloMain_MySpace];
                    UIViewController *mainView = [UIApplication sharedApplication].keyWindow.rootViewController;
                    [presentedVC.view setTag:kMainLoginBtnTag];
                    [mainView.view addSubview:presentedVC.view];
                } else {
                    [[NSNotificationCenter defaultCenter] postNotificationName:HELLO_NOTI_LOGIN_BACK object:nil];
                }
            }
        }
            break;
        case kLoginComfirmBtnTag:
        {
            if (![GamaUtils validUserName:nameTF.text]) {
                [GamaUtils gamaToastWithMsg:strAccountRule];
                return;
            }
            
            if (![GamaUtils validUserName: pwdTF.text]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_PROMT_RULE")];
                return;
            }
            if (GamaLoginViewModel.model.vfConfig == YES){
                if(vfTF.text.length<1){
                    [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
                    return;
                }
            }
            
            NSString *verfication = [GamaUtils triString:vfTF.text];
            NSString *name = [GamaUtils triString:nameTF.text];
            NSString *pwd = [GamaUtils triString:pwdTF.text];
            
            [GamaNetEngine loginUsingUsername:name password:pwd otherDic:@{@"captcha":verfication?:@""}];
            [backBtn setUserInteractionEnabled:NO];
            // loading
            [GamaUtils gamaStarLoadingAtView:self];
        }
            break;
        case kLoginSignInBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:mainBg.frame viewMode:Hello_Register_Normal];
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                mainBg.alpha = 0.0f;
            }]; 
        }
            break;
        case kLoginForgetPwdBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:mainBg.frame viewMode:Hello_Register_ResetPwd];
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                mainBg.alpha = 0.0f;
            }];
        }
            break;
        case kLoginFindPwdBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:mainBg.frame viewMode:Hello_Register_FindPwd];
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                mainBg.alpha = 0.0f;
            }];
        }
            break;
        case kTVRightBtnTag:
        {
            pwdTF.secureTextEntry = !pwdEntity;
            pwdEntity = !pwdEntity;
            if (pwdEntity) {
                [eyesBtn setImage:GetImage(eyeBtn_on) forState:0];
            } else {
                [eyesBtn setImage:GetImage(eyeBtn_off) forState:0];
            }
        }
            break;
        case kSPRememberAccountTag:
        {
            BOOL curStatus = sender.selected;
            if (!curStatus) {
                [rmbCheckbox setImage:GetImage(checkbox_unChecked) forState:0];
            } else {
                [rmbCheckbox setImage:GetImage(checkbox_checked) forState:0];
            }
            [sender setSelected:!curStatus];
            
        }
            break;
            
        case kSPRegisterBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_Space];
            accountLoginView.alpha = 0.0f;
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                ssView.alpha = 0.0f;
                accountLoginView.alpha = 1.0f;
            }];
        }
            break;
        
        case kSPGameCenterBindBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_GameCenter_Bind];
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                ssView.alpha = 0.0f;
            }];
        }
            break;
        case kSPGuestBindBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_Guest_Bind];
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                ssView.alpha = 0.0f;
            }];
        }
            break;
        case kSPFBBindBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_Bind];
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                ssView.alpha = 0.0f;
            }];
        }
            break;
        case kSPMemberTwitterBindBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_Twitter_Bind];
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                ssView.alpha = 0.0f;
            }];
        }
            break;
        case KSPMemberAppleBindBtnTag:
        {
            if (@available(iOS 13, *)) {
                HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_Apple_Bind];
                accountLoginView.parenView = self;
                [UIView animateWithDuration:0.3f animations:^{
                    [self addSubview:accountLoginView];
                    ssView.alpha = 0.0f;
                }];
            }else{
                [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
            }
        }
            break;

        case kSPFindPwdBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:ssView.frame viewMode:Hello_Register_FindPwd];
//            accountLoginView.alpha = 0.0f;
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                ssView.alpha = 0.0f;
//                accountLoginView.alpha = 1.0f;
            }];
        }
            break;
        case kSPResetPwdBtnTag:
        {
            HelloRigisterView *accountLoginView = [[HelloRigisterView alloc] initWithFrame:mainBg.frame viewMode:Hello_Register_ResetPwd];
            accountLoginView.parenView = self;
            [UIView animateWithDuration:0.3f animations:^{
                [self addSubview:accountLoginView];
                mainBg.alpha = 0.0f;
            }];
        }
            break;
        
        case kSPMemberManagerBtnTag:
        {
            [self _openMemberManagerView];
        }
            break;
            
        default:
            break;
    }
}


#pragma mark - Member Manager

- (void)_makeWidgetHidden
{
    // titleview
    [(UIImageView *)[mainBg viewWithTag:kTitleImageViewTag] setHidden:YES];
    // nametf
    [nameTF setHidden:YES];
    // pwdtf
    [pwdTF setHidden:YES];
    //vfView
    [vfView setHidden:YES];
    // comfirm btn
    [loginComfirmBtn setHidden:YES];
    // forget btn
    [(UIButton *)[mainBg viewWithTag:kSPFindPwdBtnTag] setHidden:YES];
    // register btn
    [(UIButton *)[mainBg viewWithTag:kLoginSignInBtnTag] setHidden:YES];
    // member btn
    [(UIButton *)[mainBg viewWithTag:kSPMemberManagerBtnTag] setHidden:YES];
    // resetPwd
    [(UIButton *)[mainBg viewWithTag:kSPResetPwdBtnTag] setHidden:YES];

    // rmb btn
    [rmbCheckbox setHidden:YES];
    [(UILabel *)[mainBg viewWithTag:kRmbTxtViewTag] setHidden:YES];
}

- (void)_makeWidgetShow
{
    // titleview
    [(UIImageView *)[mainBg viewWithTag:kTitleImageViewTag] setHidden:NO];
    // nametf
    [nameTF setHidden:NO];
    // pwdtf
    [pwdTF setHidden:NO];
    //vfView
    [vfView setHidden:NO];
    // comfirm btn
    [loginComfirmBtn setHidden:NO];
    // forget btn
    [(UIButton *)[mainBg viewWithTag:kSPFindPwdBtnTag] setHidden:NO];
    // register btn
    [(UIButton *)[mainBg viewWithTag:kLoginSignInBtnTag] setHidden:NO];
    // member btn
    [(UIButton *)[mainBg viewWithTag:kSPMemberManagerBtnTag] setHidden:NO];
    // resetPwd
    [(UIButton *)[mainBg viewWithTag:kSPResetPwdBtnTag] setHidden:NO];

    // rmb btn
    [rmbCheckbox setHidden:NO];
    [(UILabel *)[mainBg viewWithTag:kRmbTxtViewTag] setHidden:NO];
}

#pragma mark 返回以及操作成功之后清空<会员中心>按钮
- (void)_makeMemberManagerWidgetHidden
{
//    [(UIButton *)[mainBg viewWithTag:kSPResetPwdBtnTag] removeFromSuperview];
    [(UIButton *)[mainBg viewWithTag:kSPGuestBindBtnTag] removeFromSuperview];
    [(UIButton *)[mainBg viewWithTag:kSPFBBindBtnTag] removeFromSuperview];
    [(UIButton *)[mainBg viewWithTag:kSPGameCenterBindBtnTag] removeFromSuperview];
    [(UIButton *)[mainBg viewWithTag:kSPMemberTwitterBindBtnTag] removeFromSuperview];
    [(UIButton *)[mainBg viewWithTag:KSPMemberAppleBindBtnTag] removeFromSuperview];
    [(UIButton *)[mainBg viewWithTag:kLinkMemberCenterTitleTag] removeFromSuperview];

}

#pragma mark 会员账号管理界面（绑定等）
- (void)_openMemberManagerView
{
    // hidden items
    [self _makeWidgetHidden];
    
    // redect
    CGFloat tmpTopPadding = 0.0f;
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]) {
        tmpTopPadding = titleTopPadding+gapPadding*1;
    }else{
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*1;
    }
    
    CGFloat memberBtnHeight = textFieldHeightOfBgHeight * 0.8;
//    NSString *openMemberStr = [SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"] ? SDKConReaderGetLocalizedString(@"GAMA_BIND_ACCOUNT_REG") :SDKConReaderGetLocalizedString(@"GAMA_LOGIN_PAGE_ACCOUNT_LOGIN");
    CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"GAMA_BIND_ACCOUNT_REG") minStr:nil];
    // title
    UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"GAMA_BIND_ACCOUNT_REG") minTitle:nil];
    [titleView setBackgroundColor:[UIColor clearColor]];
    titleView.tag = kLinkMemberCenterTitleTag;
    [mainBg addSubview:titleView];
    tmpTopPadding = titleTopPadding;

    // if use xm ui
    CGFloat tmptitleTopPadding = orientation ? bgHeight * 0.08 :bgHeight * 0.16;
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(mainBg.mas_top).mas_offset(tmptitleTopPadding);
        
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(titleWidth));//titleWidthOfBgWidth*onCalWidth
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];

    tmpTopPadding =  titleTopPadding+titleHeightOfBgHeight+gapPadding*2;
    if (!orientation) {
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*3;
    }

    CGFloat btnWidth = [SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"] ? bgWidth *0.66 :loginBtnWidthOfBgWidth*onCalWidth;
    CGFloat btnHeight = [SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"] ? bgHeight *0.06 :GamaLoginViewModel.model.vfConfig == YES ? memberBtnHeight*onCalHeight*0.9: memberBtnHeight*onCalHeight*1.1;
    // guest bind
    UIButton *guestBindBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GUEST_ACCOUNT_BIND") backgroundImage:btn_bg tag:kSPGuestBindBtnTag selector:@selector(loginViewBtnAction:) target:self];
    [mainBg addSubview:guestBindBtn];
    [guestBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(btnWidth));
        make.height.equalTo(@(btnHeight));
    }];
    
    tmpTopPadding += textFieldHeightOfBgHeight+gapPadding;
    if (!orientation) {
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding *7;
    }
    // facebook bind
    UIButton *facebookBindBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_FB_ACCOUNT_BIND") backgroundImage:btn_bg tag:kSPFBBindBtnTag selector:@selector(loginViewBtnAction:) target:self];
    [mainBg addSubview:facebookBindBtn];
    [facebookBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(btnWidth));
        make.height.equalTo(@(btnHeight));
    }];
    
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"]) {
        tmpTopPadding += textFieldHeightOfBgHeight+gapPadding;
        // twitter bind
        UIButton *twitterBindBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_TWITTER_ACCOUNT_BIND") backgroundImage:btn_bg tag:kSPMemberTwitterBindBtnTag selector:@selector(loginViewBtnAction:) target:self];
        [mainBg addSubview:twitterBindBtn];
        [twitterBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(memberBtnHeight*onCalHeight));
        }];
    }
    
    tmpTopPadding += textFieldHeightOfBgHeight+gapPadding;
    if (!orientation) {
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding *11;
    }

    if(GetImage(xm_apple_login_normal) != nil){
        // twitter bind
        UIButton *appleBindBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_APPLE_ACCOUNT_BIND") backgroundImage:btn_bg tag:KSPMemberAppleBindBtnTag selector:@selector(loginViewBtnAction:) target:self];
        [mainBg addSubview:appleBindBtn];
        [appleBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(btnWidth));
            make.height.equalTo(@(btnHeight));
        }];
    }
}

#pragma mark - UI widget

- (HelloTextField *)customTextfieldWidgetWithLeftView:(NSString *)imageName rightView:(UIView *)right placeholder:(NSString *)placeholder
{
    HelloTextField *resultText;
    if (imageName.length >0) {
        CGFloat width = 93/oriBgImgWidth * rate * curWidth*1.2;
        UIImageView *icon = [[UIImageView alloc] initWithImage:GetImage(imageName)];
        [icon setFrame:CGRectMake(0, 0, width, 58/oriBgImgHeight * rate * curHeight)];// 要用比例 93*58
        resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:icon rightView:right];
        [icon release];
        resultText.initDistance = (140)/oriBgImgWidth * rate * curWidth*1.13;
        if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
            [icon setFrame:CGRectMake(0, 0, width*1.3, 58/oriBgImgHeight * rate * curHeight)];// 要用比例 93*58
            resultText.initDistance = (140)/oriBgImgWidth * rate * curWidth*1.3;
        }
        [resultText setBackground:GetImage(textfield_bg)];
    }else{
        resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:nil rightView:right];
        resultText.initDistance = (140)/oriBgImgWidth * rate * curWidth*0.08;
    }
    
    resultText.leftViewDistance = 27/oriBgImgWidth * rate * curWidth;
    resultText.placeholder = placeholder;
    resultText.clearButtonMode = UITextFieldViewModeAlways;
    resultText.delegate = self;

    // font size and color
    UIFont *fontType;
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ja-JP"] || [SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"ko-KR"]) {
        fontType = [UIFont systemFontOfSize:9];
    }else{
        fontType = [UIFont systemFontOfSize:12];
    }
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
        fontType = [UIFont systemFontOfSize:FONTSIZE(9)];
    }
    NSMutableParagraphStyle *style = [resultText.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
    style.minimumLineHeight = resultText.font.lineHeight - (resultText.font.lineHeight - fontType.lineHeight) / 2.0;
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSFontAttributeName:fontType,NSParagraphStyleAttributeName:style}];
    if (@available(iOS 13.0, *)) {
        UIUserInterfaceStyle mode = UITraitCollection.currentTraitCollection.userInterfaceStyle;
        if (mode == UIUserInterfaceStyleDark) { //深色模式
            attrStr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName:[UIColor systemGrayColor],NSFontAttributeName:fontType,NSParagraphStyleAttributeName:style}];
        } else if (mode == UIUserInterfaceStyleLight) {//浅色模式
            NSLog(@"浅色");
        } else {
            NSLog(@"未知模式");
        }
    }
    [style release];
    [resultText setAttributedPlaceholder:attrStr];
    [attrStr release];
    
    return [resultText autorelease];
}

- (HelloTextField *)gama_customTextfieldWidgetWithLeftView:(NSString *)imageName rightView:(UIView *)right placeholder:(NSString *)placeholder
{
    UIImageView *icon = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    [icon setFrame:CGRectMake(0, 0, 43/1070.0f * rate * curWidth, 43/1070.0f * rate * curWidth)];// 要用比例
    HelloTextField *resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:icon rightView:right];
    [icon release];
//    [resultText setBackground:GetImage(textfield_bg)];
    resultText.initDistance = 30/1070.0f * rate * curWidth;
//    resultText.leftViewDistance = 112/1070.0f * rate * curWidth;
//    resultText.rightViewDistance = 50/1070.0f * rate * curWidth;
    resultText.placeholder = placeholder;
    resultText.clearButtonMode = UITextFieldViewModeAlways;
    resultText.delegate = self;
    
    [resultText.layer setCornerRadius:7.0f];
    [resultText.layer setBorderColor:[UIColor grayColor].CGColor];
    [resultText.layer setBorderWidth:1.0f];
    [resultText.layer setMasksToBounds:YES];
    
    // font size and color
    [resultText setValue:[UIFont systemFontOfSize:14] forKeyPath:@"_placeholderLabel.font"];
    [resultText setValue:[UIColor lightGrayColor] forKeyPath:@"_placeholderLabel.textColor"];
    
    return [resultText autorelease];
}


- (UIButton *)_pwdRightViewWithImage:(NSString *)image tag:(NSUInteger)tag selector:(SEL)selector target:(id)targer
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:GetImage(image) forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(0, 0, 65/1070.0f * rate * curWidth, 42/1070.0f * rate * curWidth)];// 要用比例
    btn.tag = tag;
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

#pragma mark - Touches
// keybord down
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self _textFieldResignFirstResponer];
}

- (void)_textFieldResignFirstResponer
{
    [nameTF resignFirstResponder];
    [pwdTF resignFirstResponder];
    [vfTF resignFirstResponder];
}

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.returnKeyType == UIReturnKeyNext) {
        [textField resignFirstResponder];
        if ([textField isEqual:nameTF]) {
            [pwdTF becomeFirstResponder];
        }
        if ([textField isEqual:pwdTF]) {
            [vfTF becomeFirstResponder];
        }
    }
    
    if (textField.returnKeyType == UIReturnKeyDone) {
        [textField resignFirstResponder];
        // comfirm btn down
        [self loginViewBtnAction:loginComfirmBtn];
    }
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    CGFloat midline = textField.frame.origin.y + 0.5 * textField.frame.size.height;
    CGRect viewRect = self.frame;
    CGFloat heightFraction = (midline - viewRect.origin.y) / viewRect.size.height;
    
    if (heightFraction < 0.0) {
        heightFraction = 0.0;
    } else if (heightFraction > 1.0) {
        heightFraction = 1.0;
    }
    if (heightFraction < 0.1) {//驗證碼輸入框
        heightFraction = 0.5;
    }
    
    animatedDistance = floor(keyboarHeight * heightFraction);
    
    CGRect viewFrame = self.frame;
    viewFrame.origin.y -= animatedDistance;
    [self _animationWithView:self frame:viewFrame duration:0.3f];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    CGRect viewFrame = self.frame;
    viewFrame.origin.y += animatedDistance;
    [self _animationWithView:self frame:viewFrame duration:0.3f];
}

- (void)_animationWithView:(UIView *)view frame:(CGRect)viewFrame duration:(NSTimeInterval)duration
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:duration];
    [view setFrame:viewFrame];
    [UIView commitAnimations];
}

#pragma mark - Noti

- (void)_loginNoteLisetner:(NSNotification *)note
{
    [GamaUtils gamaStopLoadingAtView:self];
    NSString *noteName = note.name;
    NSDictionary *userInfo = note.userInfo;

    if ([noteName isEqualToString:GAMA_NOTIFICATION_SUCCESS_LOGIN]) {
        
        [[NSNotificationCenter defaultCenter] postNotificationName:NOTE_hello_login_success object:note.userInfo];
        
        if ([[note.userInfo objectForKey:@"loginTypeStr"] isEqualToString:_SDK_PLAT_SELF]) {
            
            if ([[note.userInfo objectForKey:@"loginState"] isEqualToString:@"register"]) {
                
                NSString *lastAccount = nil;
                NSString *lastPwd = nil;

                [GamaUtils getUserInfo:&lastAccount andPassword:&lastPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];
                
                // reset last accout
                [GamaUtils recordStateLoginWithType:_SDK_PLAT_SELF andUserName:lastAccount];
                
            } else {
                
                NSString *loginType = nil;
                NSString *useNameID = nil;
                [GamaUtils getStateLoginWithType:&loginType andUserName:&useNameID];

                nameTF.text = !nameTF.text ? useNameID : nameTF.text;
                
                [GamaUtils recordStateLoginWithType:_SDK_PLAT_SELF andUserName:nameTF.text];
                
                if (![loginType isEqualToString:_SDK_PLAT_MAC]) {
                    NSString *guestAccountName = nil;
                    NSString *guestAccountPwd = nil;
                    [GamaUtils getUserInfo:&guestAccountName andPassword:&guestAccountPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
                    guestAccountPwd = [GamaUtils loginDecryptFromString:guestAccountPwd];
                    
                    NSString *curSpAccount = nil;
                    NSString *curSpPwd = nil;
                    [GamaUtils getUserInfo:&curSpAccount andPassword:&curSpPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];
                    curSpPwd = [GamaUtils loginDecryptFromString:curSpPwd];
                    
                    // 修改密码时也要重新保存
                    BOOL nameCondition = ![nameTF.text isEqualToString:guestAccountName] &&
                                           ![nameTF.text isEqualToString:curSpAccount];
                    BOOL changePwdCondition = ([nameTF.text isEqualToString:guestAccountName] && ![pwdTF.text isEqualToString:guestAccountPwd]) || ([nameTF.text isEqualToString:curSpAccount] && ![pwdTF.text isEqualToString:curSpPwd]);
                    if (nameCondition || changePwdCondition) {
                        [GamaUtils saveUserInfo:nameTF.text andPassword:pwdTF.text toFile:GAMA_SAVE_LAST_USER_FILE_NAME];
                    }
                }
            }
            
            // 去掉通知 GAMA_NOTIFICATION_SUCCESS_LOGIN 监听，避免多次执行
            [[NSNotificationCenter defaultCenter] removeObserver:self name:GAMA_NOTIFICATION_SUCCESS_LOGIN object:nil];
            [self removeFromSuperview];
        }
        
    }
    else if ([noteName isEqualToString:GAMA_LOGIN_SUCCESS_IN]) {
        [backBtn setUserInteractionEnabled:YES];
        [[NSNotificationCenter defaultCenter] removeObserver:self name:GAMA_LOGIN_SUCCESS_IN object:nil];
        
        [self removeFromSuperview];
    
    }
    else if ([noteName isEqualToString:GAMA_LOGIN_FAIL_IN]) {
//        NSLog(@"-- e o --");
        // alert inside had handle
        [backBtn setUserInteractionEnabled:YES];
    } else if ([noteName isEqualToString:UIKeyboardWillShowNotification]) {
        NSDictionary *userInfo = note.userInfo;
        NSValue *aValue = userInfo[UIKeyboardFrameEndUserInfoKey];
        CGRect keyboardRect = [aValue CGRectValue];
        keyboarHeight = keyboardRect.size.height;
    }
    else if ([noteName isEqualToString:HELLO_NOTI_REGISTER_BACK]) {
//        NSString *name = userInfo[@"userName"]?:nil;
//        NSString *pwd = userInfo[@"userPassword"]?:nil;
//        nameTF.text = name;
//        pwdTF.text = pwd;
//        ssView.alpha = 1.0f;
        if ([note.userInfo[@"superView"] isEqual:self]) {
            mainBg.alpha = 1.0f;
        }
    }
    else if ([noteName isEqualToString:GAMA_THIRD_BINDING_SUCCESS]) {
        
//        NSLog(@"userInfo = %@",userInfo);
        // 更新登录时的账号密码，然后登录
        NSString *name = userInfo[@"userName"];
        NSString *pwd = userInfo[@"userPwd"];
        nameTF.text = name;
        pwdTF.text = pwd;
    }
    else if ([noteName isEqualToString:GAMA_RESET_PASSWORD_SUCCESS_IN]) {
//        NSLog(@"修改密码完成，清空密码框");
        nameTF.text = userInfo[@"userName"];
        pwdTF.text = userInfo[@"userPassword"];
        
        [self _makeMemberManagerWidgetHidden];
        [self _makeWidgetShow];
    }else if ([noteName isEqualToString:GAMA_BIND_SUCCESS_BACK]){
        NSString *name = userInfo[@"userName"];
        NSString *pwd = userInfo[@"userPwd"];
        nameTF.text = name;
        pwdTF.text = pwd;
        [self _makeMemberManagerWidgetHidden];
        [self _makeWidgetShow];
    }
}

@end
