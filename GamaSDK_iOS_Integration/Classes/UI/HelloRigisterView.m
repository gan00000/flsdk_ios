//
//  HelloRigisterView.m
//  GAMASDK_iOS_KR
//
//  Created by Sunny on 17/2/8.
//  Copyright © 2017年 GAMA. All rights reserved.
//

#import "HelloRigisterView.h"
#import "HelloHeader.h"
#import "GamaPhoneModel.h"
#import "GamaAppleLogin.h"
#import "GamaThirdFunctionPort.h"
#import "GamaLoginViewModel.h"

#define kTextFieldTag_name          10001
#define kTextFieldTag_pwd           10002
#define kTextFieldTag_pwd_comfirm   10003
#define kTextFieldTag_email         10004
#define kTextFieldTag_old_ped       10005

#define kCheckBoxBtnTag             10006
#define kshowProtocolBtnTag         10007
#define kEyesBtnTag                 10008

#define ResetEyeOldBtnTag           10009
#define ResetEyeNewBtnTag           100091

#define kSPMemberFBBindBtnTag                 10010
#define kSPMemberResetPwdBtnTag               10011
#define kSPMemberGuestBindBtnTag              10012
#define kSPMemberGameCenterBindBtnTag         10013
#define kSPMemberTwitterBindBtnTag            10014
#define kSPMemberAppleBindBtnTag              10015
#define GAMA_THIRD_BINDING_APPLE_CANCEL      @"GamaThirdBindingAppleCancel"
#define IS_ON_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


@interface HelloRigisterView () <UITextFieldDelegate,UITextViewDelegate,GamaPhoneModelDelegate>
@property (nonatomic,retain) HelloTextField *name_tf;
@property (nonatomic,retain) HelloTextField *pwd_tf;
@property (nonatomic,retain) HelloTextField *oldPwd_tf;
@property (nonatomic,retain) HelloTextField *pwd_cf_tf;

//HelloTextField *oldPwd_tf;
//HelloTextField *pwd_cf_tf;


@property (nonatomic,retain) HelloTextField *mobile_phone_tf;
@property (nonatomic,retain) HelloTextField *mobile_area_tf;
@property (nonatomic,retain) HelloTextField *verfication_tf;

@property (nonatomic, strong) GamaPhoneModel *phoneModel;
@property (nonatomic, strong) GamaAppleLogin *appleLogin;

@property (nonatomic, assign) NSInteger phoneCountdown;
@property (nonatomic, strong) NSTimer *phoneTimer;

@end

@implementation HelloRigisterView
{
    CGFloat rate ; // 校对比值
    CGFloat curWidth ;
    CGFloat curHeight ;
    CGFloat oriBgImgWidth ;
    CGFloat oriBgImgHeight ;
    CGFloat originBgWidthOfHeight;// 背景图片宽高比
    CGFloat loginBtnWidthOfBgWidth;
    CGFloat loginBtnHeightOfBgHeight;
    CGFloat textFieldHeightOfBgHeight;
    CGFloat topPadding;
    CGFloat leftPadding;
    CGFloat backBtnPadding;
    CGFloat gapPadding;
    CGFloat secondGapPadding;
    CGFloat backBtnWidthAndHeight;
    
    CGFloat tfCursorPadding;
    
    CGFloat keyboarHeight;
    CGFloat animatedDistance;
    
    CGFloat bgHeight;
    CGFloat bgWidth;
    
    UIImageView *mainBg;
    // for space
    UIView *ssView;
    
    HelloTextField *email_tf;
    
//    HelloTextField *verfication_tf;
//
//    HelloTextField *mobile_area_tf;
//    HelloTextField *mobile_phone_tf;
    
    NSArray *tfPlaceHolderTexts;
    NSArray *tfTags;
    
    
    HelloRigisterMode viewMode;
    UIButton *m_comfirmBtn;
    UIButton *gama_getVfBtn;
    UIButton *checkBoxBtn;
    UIButton *showProtocolBtn;
    
    BOOL checkboxStatus;
    BOOL pwdEntity;
    
    UIButton *eyesBtn;
    UIButton *newBtn;
    
    // new ui
    CGFloat titleTopPadding;
    CGFloat titleWidthOfBgWidth;
    CGFloat titleHeightOfBgHeight;
    CGFloat backBtnWidthOfBgWidth;
    CGFloat backBtnHeightOfBgHeight;
    CGFloat onCalWidth;
    CGFloat onCalHeight;
    CGFloat checkboxWidthOfBgWidth;
    CGFloat checkboxHeightOfBgHeight;
    CGFloat showProtocolBtnWidthOfBgWidth;
    CGFloat showProtocolBtnHeightOfBgHeight;
    CGFloat comfirmBtnWidthOfBgWidth;
    CGFloat comfirmBtnHeightOfBgHeight;

    BOOL orientation;

}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [_name_tf release];_name_tf = nil;
    [_pwd_tf release]; _pwd_tf = nil;
    [_parenView release]; _parenView = nil;
    [self.phoneTimer invalidate];self.phoneTimer = nil;

    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame viewMode:(HelloRigisterMode)mode
{
    self = [super initWithFrame:frame];
    if (self) {
        viewMode = mode;
//        [self propertyPrapare];
        [self _newUIpropertyPrapare];
        [self helloInit];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:UIKeyboardWillShowNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_REGISTER_SUCCESS_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_REGISTER_FAIL_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_REGET_PASSWORD_FAIL_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_REGET_PASSWORD_SUCCESS_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_RESET_PASSWORD_FAIL_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_RESET_PASSWORD_SUCCESS_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_FREE_BIND_FAIL_IN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_FREE_BIND_SUCCESS_IN object:nil];
        
        // 监听绑定失败通知，loading 消失
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_THIRD_BINDING_FAIL object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_THIRD_BINDING_SUCCESS object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_THIRD_BINDING_APPLE_CANCEL object:nil];
        
        //手机绑定
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_PHONE_BIND_SUCCESS object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_PHONE_BIND_FAIL object:nil];
//        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_RESET_PASSWORD_SUCCESS_IN object:nil];

    }
    return self;
}

- (void)_newUIpropertyPrapare
{
    orientation = Device_Is_Landscape;
    
    rate = 0.8f; // 校对比值
    curWidth = winWidth;
    curHeight = winHeight;
    
    oriBgImgWidth = bgOriginWidth;
    oriBgImgHeight = bgOriginHeight;
    
    CGFloat realWidthHeightRate = curWidth/curHeight;
    
    originBgWidthOfHeight = oriBgImgHeight/oriBgImgWidth; // 原图宽高比
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {
        curHeight = curWidth * originBgWidthOfHeight;
    } else {
        curWidth = curHeight / originBgWidthOfHeight;
    }
    
    loginBtnWidthOfBgWidth = 773/oriBgImgWidth;
    textFieldHeightOfBgHeight = 94/oriBgImgHeight;
    
    topPadding = 24/oriBgImgHeight;
    
    backBtnPadding = 26/oriBgImgHeight;
    leftPadding = 42/oriBgImgWidth;
    
    gapPadding = 30/oriBgImgHeight;
    
    //    tfCursorPadding = 80/1070.f * rate * curWidth;
    
    checkboxStatus = YES;
    pwdEntity = YES;
    
    titleTopPadding = 100/oriBgImgHeight;    //标题高度，或高或低《影响整体布局》
    titleWidthOfBgWidth = 492/oriBgImgWidth;
    titleHeightOfBgHeight = 46/oriBgImgHeight;
    
    backBtnWidthAndHeight = 64.0f/oriBgImgWidth;
    
    backBtnWidthOfBgWidth = 62/oriBgImgWidth;
    backBtnHeightOfBgHeight = 46/oriBgImgHeight;
    
    checkboxWidthOfBgWidth = 42/oriBgImgWidth;//42*35
    checkboxHeightOfBgHeight = 35/oriBgImgHeight;
    
    showProtocolBtnWidthOfBgWidth = 517/oriBgImgWidth;
    showProtocolBtnHeightOfBgHeight = 36/oriBgImgHeight;
    
    comfirmBtnWidthOfBgWidth = 605/oriBgImgWidth;
    comfirmBtnHeightOfBgHeight = 77/oriBgImgHeight;
    
    onCalWidth = rate * curWidth;
    onCalHeight = rate * curHeight;
    if (device_is_iPhoneX) {
        onCalHeight = rate * curHeight * rate;
        onCalWidth = onCalHeight / originBgWidthOfHeight;
    }
    
    
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
//    [self catchMyWidget];
    if (viewMode == Hello_Bind_Phone_Fetch_Reward) {
        [self byBindPhoneNumberFetchReward];
        return;
    }
    [self _newUI_catchMyWidget];
}

- (void)bgViewInit
{
    self.phoneModel = [[GamaPhoneModel alloc] init];
    self.phoneModel.delegate = self;

    // bg
    [self setFrame:CGRectMake(0, 0, winWidth, winHeight)];
    mainBg = [[UIImageView alloc] initWithImage:GetImage(kBgImageName)];
    mainBg.userInteractionEnabled = YES;
    [mainBg setFrame:CGRectMake(0, 0, orientation ? onCalWidth :bgWidth, orientation ? onCalHeight : bgHeight*0.9)];
    [self addSubview:mainBg];
    mainBg.center = self.center;
    if (viewMode == Hello_Bind_Phone_Fetch_Reward) {
        UIButton *backBtn = [GamaUtils initBtnWithNormalImage:backBtn_normal highlightedImage:nil tag:kBindPhoneBackBtnTag selector:@selector(registerViewBtnAction:) target:self];
        [mainBg addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding * onCalHeight));
            make.left.equalTo(@(leftPadding * onCalWidth));
            make.width.equalTo(@(backBtnWidthAndHeight * onCalWidth));//64*64
            make.height.equalTo(@(backBtnWidthAndHeight * onCalWidth));
        }];
    }
}

- (void)_newUI_catchMyWidget
{
    // back btn
    UIButton *backBtn = [GamaUtils initBtnWithNormalImage:backBtn_normal highlightedImage:nil tag:kRegisterBackBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [mainBg addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding * onCalHeight));
        make.left.equalTo(@(leftPadding * onCalWidth));
        make.width.equalTo(@(backBtnWidthAndHeight * onCalWidth));//64*64
        make.height.equalTo(@(backBtnWidthAndHeight * onCalWidth));
    }];

    switch (viewMode) {
        case Hello_Register_ResetPwd:
            [self _newUI_resetPwdMode];
            break;
        case Hello_Register_FindPwd:
            [self _newUI_findPwdMode];
            break;
        case Hello_Register_Normal:
            [self _defalutMode:kRegisterComfirmBtnTag];
            [self checkForFire];
            break;
        case Hello_Register_Bind:   //帐号绑定
        case Hello_Register_Guest_Bind:
        case Hello_Register_GameCenter_Bind:
        case Hello_Register_Twitter_Bind:
        case Hello_Register_Apple_Bind:
            [self _newUI_bindMode];
            [self checkForFire];

            break;
//        case Hello_Register_Space: //注册界面
//            [self _spaceModeInit];
//            break;
        
        case Hello_Register_Member_Manager:
            [self _newUI_Member_Manager_Mode];
            break;
        case Hello_Bind_Phone:{
            [self userBindPushView];
        }
            break;
        default:
            break;
    }
}

#pragma mark - new UI
- (void)_newUI_resetPwdMode
{
    CGFloat tmpTopPadding = 0.0f;
    CGFloat titleTopPadding = orientation ? 100/oriBgImgHeight : 150/oriBgImgHeight;    //标题高度，或高或低《影响整体布局》

    // title
    CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"BTN_TITLE_RESET_PASSWORD") minStr:nil];
    UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_RESET_PASSWORD") minTitle:nil];
    [mainBg addSubview:titleView];
    [titleView release];
    tmpTopPadding = titleTopPadding;

    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(titleWidth));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];
    
    // user name
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*1;
    self.name_tf = [self customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_RESET_PWD_PLACHEOLDER")];
    self.name_tf.returnKeyType = UIReturnKeyNext;
    [mainBg addSubview:self.name_tf];
    [self.name_tf release];
    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    // old password
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*2;
    self.oldPwd_tf = [self customTextfieldWidgetWithLeftView:textField_old_pwd rightView:nil placeholder:SDKConReaderGetLocalizedString(@"GAMA_RESET_TEXT_PLACHEOLDER_OLD_PWD")];
    self.oldPwd_tf.returnKeyType = UIReturnKeyNext;
    [self.oldPwd_tf setSecureTextEntry:pwdEntity];
    [self.oldPwd_tf setClearButtonMode:UITextFieldViewModeNever];
    // eyes btn
    eyesBtn = [self _pwdRightViewWithImage:eyeBtn_on tag:ResetEyeOldBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [self.oldPwd_tf addSubview:eyesBtn];
    [eyesBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-10));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(orientation?eyesBtn.frame.size.width *0.8 :eyesBtn.frame.size.width));
        make.height.equalTo(@(orientation?eyesBtn.frame.size.height *0.8:eyesBtn.frame.size.height));
    }];

    [mainBg addSubview:self.oldPwd_tf];
    [self.oldPwd_tf release];
    [self.oldPwd_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    // new pwd
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;
    self.pwd_cf_tf = [self customTextfieldWidgetWithLeftView:textField_new_pwd rightView:nil placeholder:SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")];
    self.pwd_cf_tf.returnKeyType = UIReturnKeyDone;
//    [pwd_cf_tf.leftView mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.left.top.equalTo(@(0));
//        make.width.equalTo(@(93/oriBgImgWidth * rate * curWidth*1.5));
//        make.height.equalTo(@(58/oriBgImgHeight * rate * curHeight));
//    }];
    [self.pwd_cf_tf setSecureTextEntry:pwdEntity];
    [self.pwd_cf_tf setClearButtonMode:UITextFieldViewModeNever];
    // eyes btn
    newBtn = [self _pwdRightViewWithImage:eyeBtn_on tag:ResetEyeNewBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [self.pwd_cf_tf addSubview:newBtn];
    [newBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-10));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(orientation?eyesBtn.frame.size.width *0.8 :eyesBtn.frame.size.width));
        make.height.equalTo(@(orientation?eyesBtn.frame.size.height *0.8:eyesBtn.frame.size.height));
    }];

    [mainBg addSubview:self.pwd_cf_tf];
    [self.pwd_cf_tf release];
    [self.pwd_cf_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    // 确定按钮
    m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") backgroundImage:btn_bg tag:kRegisterResetComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [mainBg addSubview:m_comfirmBtn];
    [m_comfirmBtn release];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
            make.top.equalTo(self.pwd_cf_tf.mas_bottom).offset(bgHeight*0.073);
        }else{
            make.bottom.equalTo(@(-136/oriBgImgHeight * onCalHeight));
        }
        make.width.equalTo(@(comfirmBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
    }];
    
    // 账号自动填充,使用记住的账号
    // get accout and pwd
    NSString *loginName = nil;
    NSString *loginPwd = nil;
    [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_LAST_USER_FILE_NAME];
    
    if (loginName.length <= 0 && loginPwd <= 0 ) {
        [GamaUtils getUserInfo:&loginName andPassword:&loginPwd fromFile:GAMA_SAVE_Guest_USER_FILE_NAME];
    }
    
    self.name_tf.text = loginName;
}

- (void)_newUI_findPwdMode
{
    CGFloat tmpTopPadding = 0.0f;
    CGFloat titleTopPadding = orientation ? 100/oriBgImgHeight : 150/oriBgImgHeight;    //标题高度，或高或低《影响整体布局》

    // title
    CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"BTN_TITLE_FIND_PASSWORD") minStr:nil];
    UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_FIND_PASSWORD") minTitle:nil];
    [mainBg addSubview:titleView];
    tmpTopPadding = titleTopPadding;
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(titleWidth+6));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];
    // user name
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*1;
    self.name_tf = [self customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_NAME")];
    self.name_tf.returnKeyType = UIReturnKeyNext;
    [mainBg addSubview:self.name_tf];
    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
        // email
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*2;
        email_tf = [self customTextfieldWidgetWithLeftView:textfield_email_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_EMAIL")];
        email_tf.returnKeyType = UIReturnKeyDone;
        email_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mainBg addSubview:email_tf];
        [email_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        
        // 确定按钮
//        m_comfirmBtn = [GamaUtils initBtnWithNormalImage:btn_comfirm highlightedImage:nil tag:kRegisterFindComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
        m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") backgroundImage:btn_bg tag:kRegisterFindComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];

        [mainBg addSubview:m_comfirmBtn];
        [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(@(0));
//            make.bottom.equalTo(@(-136/oriBgImgHeight * onCalHeight));
            make.top.equalTo(email_tf.mas_bottom).offset(bgHeight*0.073);
            make.width.equalTo(@(comfirmBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
        }];
        
    }else{
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*2;
        UIView *mobileView = [[UIView alloc] init];
        [mainBg addSubview:mobileView];
        [mobileView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];

        self.mobile_area_tf = [self customTextfieldWidgetWithLeftView:textfield_mobile rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_AREA_CODE")];
        //    mobile_area_tf.userInteractionEnabled = NO;
        self.mobile_area_tf.enabled = NO;
        [self.mobile_area_tf setBackground:GetImage(textfield_area_left)];
        self.mobile_area_tf.returnKeyType = UIReturnKeyDone;
        self.mobile_area_tf.keyboardType = UIKeyboardTypeEmailAddress;
        self.mobile_area_tf.clearButtonMode = UITextFieldViewModeNever;
        [mobileView addSubview:self.mobile_area_tf];
        [_mobile_area_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mobileView);
            make.left.equalTo(mobileView);
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        self.mobile_area_tf.text = self.phoneModel.selectedAreaCodeValue;
        UIButton *areaPromptBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [mainBg addSubview:areaPromptBtn];
        [areaPromptBtn addTarget:self action:@selector(pushAreaTable:) forControlEvents:UIControlEventTouchUpInside];
        [areaPromptBtn setTag:kRegisterGetAreaCodeBtnTag];
        [areaPromptBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.equalTo(self.mobile_area_tf);
            make.center.equalTo(self.mobile_area_tf);
        }];
        
        UIImageView *areaPromptImage = [[UIImageView alloc] initWithImage:GetImage(textfield_area_prompt)];
        [areaPromptBtn addSubview:areaPromptImage];
        [areaPromptImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(_mobile_area_tf);
            make.right.equalTo(_mobile_area_tf.mas_right).equalTo(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.03)));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.05));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight*0.25));
        }];
        
        self.mobile_phone_tf = [self customTextfieldWidgetWithLeftView:nil rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_CODE")];
        [self.mobile_phone_tf setBackground:GetImage(textfield_area_right)];
        self.mobile_phone_tf.returnKeyType = UIReturnKeyDone;
        self.mobile_phone_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mobileView addSubview:self.mobile_phone_tf];
        [self.mobile_phone_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mobileView);
            make.right.equalTo(mobileView);
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        
        m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") backgroundImage:btn_bg tag:kRegisterFindComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
        [mainBg addSubview:m_comfirmBtn];
        [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(@(0));
            make.bottom.equalTo(@(-136/oriBgImgHeight * onCalHeight));
            make.width.equalTo(@(comfirmBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
        }];
    }
}

- (void)_newUI_bindMode
{
    CGFloat tmpTopPadding = 0.0f;
    CGFloat titleTopPadding = orientation ? 60/oriBgImgHeight : 150/oriBgImgHeight;    //标题高度，或高或低《影响整体布局》

    // if xm ui
    CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"GAMA_BIND_ACCOUNT_REG") minStr:nil];
    UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"GAMA_BIND_ACCOUNT_REG") minTitle:nil];
    [mainBg addSubview:titleView];
    tmpTopPadding = titleTopPadding;
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(titleWidth));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];
    // placehoder
    NSString *regPlaceHolder = SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_RULE");
    
    // user name
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*1;
    self.name_tf = [self customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:regPlaceHolder];
    self.name_tf.returnKeyType = UIReturnKeyNext;
    [mainBg addSubview:self.name_tf];
    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    // password
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*2;
    self.pwd_tf = [self customTextfieldWidgetWithLeftView:textfield_pwd_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")];
    self.pwd_tf.returnKeyType = UIReturnKeyNext;
    [mainBg addSubview:self.pwd_tf];
    [self.pwd_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    // no been see
    [self.pwd_tf setSecureTextEntry:pwdEntity];
    [self.pwd_tf setClearButtonMode:UITextFieldViewModeNever];
    // eyes btn
    eyesBtn = [self _pwdRightViewWithImage:eyeBtn_on tag:kEyesBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [self.pwd_tf addSubview:eyesBtn];
    [eyesBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-10));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(orientation?eyesBtn.frame.size.width *0.8 :eyesBtn.frame.size.width));
        make.height.equalTo(@(orientation?eyesBtn.frame.size.height *0.8:eyesBtn.frame.size.height));
    }];
    
    
    if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;
        UIView *mobileView = [[UIView alloc] init];
        [mainBg addSubview:mobileView];
        [mobileView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
            
        self.mobile_area_tf = [self customTextfieldWidgetWithLeftView:textfield_mobile rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_AREA_CODE")];
        self.mobile_area_tf.enabled = NO;
        [self.mobile_area_tf setBackground:GetImage(textfield_area_left)];
        self.mobile_area_tf.returnKeyType = UIReturnKeyDone;
        self.mobile_area_tf.keyboardType = UIKeyboardTypeEmailAddress;
        self.mobile_area_tf.clearButtonMode = UITextFieldViewModeNever;
        [mobileView addSubview:self.mobile_area_tf];
        [_mobile_area_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mobileView);
            make.left.equalTo(mobileView);
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        self.mobile_area_tf.text = self.phoneModel.selectedAreaCodeValue;

        
        
        UIButton *areaPromptBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [mainBg addSubview:areaPromptBtn];
        [areaPromptBtn addTarget:self action:@selector(pushAreaTable:) forControlEvents:UIControlEventTouchUpInside];
        [areaPromptBtn setTag:kRegisterGetAreaCodeBtnTag];
        [areaPromptBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.equalTo(self.mobile_area_tf);
            make.center.equalTo(self.mobile_area_tf);
        }];
        
        UIImageView *areaPromptImage = [[UIImageView alloc] initWithImage:GetImage(textfield_area_prompt)];
        [areaPromptBtn addSubview:areaPromptImage];
        [areaPromptImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(_mobile_area_tf);
            make.right.equalTo(_mobile_area_tf.mas_right).equalTo(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.03)));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.05));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight*0.25));
        }];

        //
        self.mobile_phone_tf = [self customTextfieldWidgetWithLeftView:nil rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_CODE")];
        [self.mobile_phone_tf setBackground:GetImage(textfield_area_right)];
        self.mobile_phone_tf.returnKeyType = UIReturnKeyDone;
        self.mobile_phone_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mobileView addSubview:self.mobile_phone_tf];
        [self.mobile_phone_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mobileView);
            make.right.equalTo(mobileView);
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];

        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*3+gapPadding*4;
        self.verfication_tf = [self customTextfieldWidgetWithLeftView:textfield_verfication rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_VF_CODE")];
        self.verfication_tf.returnKeyType = UIReturnKeyDone;
        self.verfication_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mainBg addSubview:self.verfication_tf];
        [self.verfication_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        
        CGFloat btnWidth = loginBtnWidthOfBgWidth*onCalWidth*0.45;
        gama_getVfBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_GET_VERFICATION_TEXT") backgroundImage:btn_bg tag:kRegisterBindGetVfCodeBtnTag selector:@selector(registerViewBtnAction:) target:self];

        [mainBg addSubview:gama_getVfBtn];
        [gama_getVfBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(_verfication_tf.mas_left).mas_offset(@(loginBtnWidthOfBgWidth*onCalWidth*0.02));
            make.bottom.equalTo(@(-97/oriBgImgHeight * onCalHeight));
            make.width.equalTo(@(btnWidth));
            make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
        }];

        UILabel *warninLable = [[UILabel alloc] init];
        NSMutableString *tempStr = [[NSMutableString alloc] initWithString:[GamaLoginViewModel model].bindViewPrompt.length> 1 ? [GamaLoginViewModel model].bindViewPrompt:SDKConReaderGetLocalizedString(@"GAMA_GET_VERFICATION_PROMPT")];
        if (!orientation) {
            if (tempStr.length > 10) {
                [tempStr insertString:@"\n" atIndex:10];
            }
            warninLable.numberOfLines = 0;
        }
        warninLable.text = tempStr;
        [warninLable setFont:[UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(9)]];
        [warninLable setTextColor: RGB(210, 49, 46)];
        CGSize lableSize = [GamaUtils calculateSizeOfLabel:warninLable];
        [mainBg addSubview:warninLable];
        [warninLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(gama_getVfBtn);
            make.top.equalTo(gama_getVfBtn.mas_bottom).mas_offset(@(loginBtnWidthOfBgWidth*onCalWidth*0.02));
            make.width.equalTo(@(lableSize.width));
            make.height.equalTo(@(!orientation?lableSize.height*2:lableSize.height));
        }];
        
        // 确定按钮
//            m_comfirmBtn = [GamaUtils initBtnWithNormalImage:btn_comfirm highlightedImage:nil tag:kRegisterBindComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
        m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_REGISTER_BIND_CONFIRM_TEXT")  backgroundImage:btn_bg tag:kRegisterBindComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
        [mainBg addSubview:m_comfirmBtn];
        [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(_verfication_tf.mas_right).mas_offset(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.02)));
            make.bottom.equalTo(@(-97/oriBgImgHeight * onCalHeight));
            make.width.equalTo(@(btnWidth));
            make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
        }];
    }else{
        // email
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;
        email_tf = [self customTextfieldWidgetWithLeftView:textfield_email_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_EMAIL")];
        email_tf.returnKeyType = UIReturnKeyDone;
        email_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mainBg addSubview:email_tf];
        [email_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        
        // 确定按钮
        m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_REGISTER_BIND_CONFIRM_TEXT") backgroundImage:btn_bg tag:kRegisterBindComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
        [mainBg addSubview:m_comfirmBtn];
        [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(@(0));
//            make.bottom.equalTo(@(-136/oriBgImgHeight * onCalHeight));
            make.top.equalTo(email_tf.mas_bottom).offset(bgHeight*0.073);
            make.width.equalTo(@(comfirmBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
        }];
    }
}

#pragma mark -

- (void)_resetPwdMode
{
   
    // title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ssView.frame.size.width, textFieldHeightOfBgHeight*rate*curWidth)];
    
    NSString *titleText = SDKConReaderGetLocalizedString(@"BTN_TITLE_RESET_PASSWORD");
    title.text = titleText;
    title.textAlignment = NSTextAlignmentCenter;
    [ssView addSubview:title];
    [title release];
    
    //    loginBtnWidthOfBgWidth = 914/1070.0f;
    textFieldHeightOfBgHeight = 145/1130.0f;
    CGFloat anotherLeftPadding = 78/1130.0f;
    gapPadding = 40/1130.0f;
    
    // name tf
    self.name_tf = [self gama_customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_NAME")];
    self.name_tf.returnKeyType = UIReturnKeyNext;
    [ssView addSubview:self.name_tf];
    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
    //    [self.name_tf setValue:[UIFont systemFontOfSize:16] forKey:@"_placeholderLabel.font"];
    
    // pwd tf
    self.oldPwd_tf = [self gama_customTextfieldWidgetWithLeftView:textfield_pwd_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_OLD_PWD")];
    self.oldPwd_tf.returnKeyType = UIReturnKeyNext;
    [ssView addSubview:self.oldPwd_tf];
    [self.oldPwd_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*2+textFieldHeightOfBgHeight)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
    [self.oldPwd_tf setSecureTextEntry:pwdEntity];//修改密码时两个密码框都显示明码
    [self.oldPwd_tf setClearButtonMode:UITextFieldViewModeNever];

  
    self.pwd_cf_tf = [self gama_customTextfieldWidgetWithLeftView:textfield_pwd_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_NEW_PWD")];
    self.pwd_cf_tf.returnKeyType = UIReturnKeyDone;
    [ssView addSubview:self.pwd_cf_tf];
    [self.pwd_cf_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*3+textFieldHeightOfBgHeight*2)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
    [self.pwd_cf_tf setSecureTextEntry:pwdEntity];//修改密码时两个密码框都显示明码
    [self.pwd_cf_tf setClearButtonMode:UITextFieldViewModeNever];

    
    
    // comfirm btn
    NSUInteger myTag = kRegisterResetComfirmBtnTag;
    
    m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") tag:myTag selector:@selector(registerViewBtnAction:) target:self];
    [m_comfirmBtn setBackgroundColor:[UIColor lightGrayColor]];
    [ssView addSubview:m_comfirmBtn];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*3+textFieldHeightOfBgHeight*2)*rate*curHeight+40));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
}

- (void)_findPwdMode
{
//    NSUInteger index_ = 0;
//    self.name_tf = [self _textfieldWidgetWithPlaceholder:tfPlaceHolderTexts[index_] tag:[tfTags[index_] integerValue] cursorDistance:tfCursorPadding];
//    [mainBg addSubview:self.name_tf];
//    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding+textFieldHeightOfBgHeight*index_+secondGapPadding*index_)*rate*curHeight));
//        make.left.equalTo(@(leftPadding*rate*curWidth));
//        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
//        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
//    }];
//    index_ = 3;
//    email_tf = [self _textfieldWidgetWithPlaceholder:tfPlaceHolderTexts[index_] tag:[tfTags[index_] integerValue] cursorDistance:tfCursorPadding];
//    [mainBg addSubview:email_tf];
//    [email_tf mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding+textFieldHeightOfBgHeight*1+secondGapPadding*1)*rate*curHeight));
//        make.left.equalTo(@(leftPadding*rate*curWidth));
//        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
//        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
//    }];
//    
//    m_comfirmBtn = [self _comfirmBtnWithTag:kRegisterFindComfirmBtnTag topPadding:(topPadding+backBtnWidthAndHeight+gapPadding+textFieldHeightOfBgHeight*2+secondGapPadding*2)*rate*curHeight];
    
    // back btn
//    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeSystem];
//    [backBtn setTitle:@"<" forState:0];
//    [backBtn setTag:kRegisterBackBtnTag];
//    [backBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:UIControlEventTouchUpInside];
//    [ssView addSubview:backBtn];
//    // bind 时crash，注册就没问题
//    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@(0));
//        make.left.equalTo(@(0));
//        make.width.equalTo(@(40));
//        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
//    }];
    
    // title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ssView.frame.size.width, textFieldHeightOfBgHeight*rate*curWidth)];
    
    NSString *titleText = SDKConReaderGetLocalizedString(@"BTN_TITLE_FIND_PASSWORD");
    
    title.text = titleText;
    title.textAlignment = NSTextAlignmentCenter;
    [ssView addSubview:title];
    [title release];
    
    //    loginBtnWidthOfBgWidth = 914/1070.0f;
    textFieldHeightOfBgHeight = 145/1130.0f;
    CGFloat anotherLeftPadding = 78/1130.0f;
    gapPadding = 40/1130.0f;
    
    // name tf
    self.name_tf = [self gama_customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_NAME")];
    self.name_tf.returnKeyType = UIReturnKeyNext;
    [ssView addSubview:self.name_tf];
    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
    //    [self.name_tf setValue:[UIFont systemFontOfSize:16] forKey:@"_placeholderLabel.font"];
    
    // email tf
    email_tf = [self gama_customTextfieldWidgetWithLeftView:textfield_email_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_EMAIL")];
    email_tf.returnKeyType = UIReturnKeyDone;
    email_tf.keyboardType = UIKeyboardTypeEmailAddress;
    [ssView addSubview:email_tf];
    [email_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*2+textFieldHeightOfBgHeight)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
    [email_tf setClearButtonMode:UITextFieldViewModeNever];
   
    
    // comfirm btn
    NSUInteger myTag = kRegisterFindComfirmBtnTag;

    m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") tag:myTag selector:@selector(registerViewBtnAction:) target:self];
//    [m_comfirmBtn setBackgroundColor:[UIColor lightGrayColor]];
    [ssView addSubview:m_comfirmBtn];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*3+textFieldHeightOfBgHeight*2)*rate*curHeight+40));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
}

#pragma mark 注册页面
- (void)_defalutMode:(NSUInteger)comfirmBtnTag
{
    CGFloat tmpTopPadding = 0.0f;
    CGFloat titleTopPadding = orientation ? 60/oriBgImgHeight : 150/oriBgImgHeight;    //标题高度，或高或低《影响整体布局》
    
    // if xm ui
    CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_PAGE_ACCOUNT_REG") minStr:nil];
    UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_PAGE_ACCOUNT_REG") minTitle:nil];
    [mainBg addSubview:titleView];
    tmpTopPadding = titleTopPadding;
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(titleWidth));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];
    // placehoder
    NSString *regPlaceHolder = SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_RULE");
    
    // user name
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+gapPadding*1;
    self.name_tf = [self customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:regPlaceHolder];
    self.name_tf.returnKeyType = UIReturnKeyNext;
    [mainBg addSubview:self.name_tf];
    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    // password
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding*2;
    self.pwd_tf = [self customTextfieldWidgetWithLeftView:textfield_pwd_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")];
    self.pwd_tf.returnKeyType = UIReturnKeyNext;
    [mainBg addSubview:self.pwd_tf];
    [self.pwd_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    // no been see
    [self.pwd_tf setSecureTextEntry:pwdEntity];
    [self.pwd_tf setClearButtonMode:UITextFieldViewModeNever];
    // eyes btn
    eyesBtn = [self _pwdRightViewWithImage:eyeBtn_on tag:kEyesBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [self.pwd_tf addSubview:eyesBtn];
    [eyesBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-10));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(orientation?eyesBtn.frame.size.width *0.8 :eyesBtn.frame.size.width));
        make.height.equalTo(@(orientation?eyesBtn.frame.size.height *0.8:eyesBtn.frame.size.height));
    }];
    
    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;

//    UIImageView *areaPromptImag = [[UIImageView alloc] initWithImage:[UIImage imageNamed:textfield_area_prompt]];
//    UIButton *areaPromptBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [areaPromptBtn setBackgroundColor:[UIColor redColor]];
//    [areaPromptBtn setImage:[UIImage imageNamed:textfield_area_prompt] forState:UIControlStateNormal];
//    [areaPromptBtn setBackgroundImage:[UIImage imageNamed:textfield_area_prompt] forState:UIControlStateNormal];
    
    if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
        UIView *mobileView = [[UIView alloc] init];
        [mainBg addSubview:mobileView];
        [mobileView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];

        self.mobile_area_tf = [self customTextfieldWidgetWithLeftView:textfield_mobile rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_AREA_CODE")];
        self.mobile_area_tf.enabled = NO;
        [self.mobile_area_tf setBackground:GetImage(textfield_area_left)];
        self.mobile_area_tf.returnKeyType = UIReturnKeyDone;
        self.mobile_area_tf.keyboardType = UIKeyboardTypeEmailAddress;
        self.mobile_area_tf.clearButtonMode = UITextFieldViewModeNever;
        [mobileView addSubview:self.mobile_area_tf];
        [_mobile_area_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mobileView);
            make.left.equalTo(mobileView);
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        self.mobile_area_tf.text = self.phoneModel.selectedAreaCodeValue;

        UIButton *areaPromptBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [mainBg addSubview:areaPromptBtn];
        [areaPromptBtn addTarget:self action:@selector(pushAreaTable:) forControlEvents:UIControlEventTouchUpInside];
        [areaPromptBtn setTag:kRegisterGetAreaCodeBtnTag];
        [areaPromptBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.equalTo(self.mobile_area_tf);
            make.center.equalTo(self.mobile_area_tf);
        }];
        
        UIImageView *areaPromptImage = [[UIImageView alloc] initWithImage:GetImage(textfield_area_prompt)];
        [areaPromptBtn addSubview:areaPromptImage];
        [areaPromptImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(_mobile_area_tf);
            make.right.equalTo(_mobile_area_tf.mas_right).equalTo(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.03)));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.05));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight*0.25));
        }];


        
        self.mobile_phone_tf = [self customTextfieldWidgetWithLeftView:nil rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_CODE")];
        [self.mobile_phone_tf setBackground:GetImage(textfield_area_right)];
        self.mobile_phone_tf.returnKeyType = UIReturnKeyDone;
        self.mobile_phone_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mobileView addSubview:self.mobile_phone_tf];
        [self.mobile_phone_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(mobileView);
            make.right.equalTo(mobileView);
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];

        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*3+gapPadding*4;
        self.verfication_tf = [self customTextfieldWidgetWithLeftView:textfield_verfication rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_VF_CODE")];
        self.verfication_tf.returnKeyType = UIReturnKeyDone;
        self.verfication_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mainBg addSubview:self.verfication_tf];
        [self.verfication_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        
        CGFloat btnWidth = loginBtnWidthOfBgWidth*onCalWidth*0.45;
        gama_getVfBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_GET_VERFICATION_TEXT") backgroundImage:btn_bg tag:kRegisterGetVerficationBtnTag selector:@selector(registerViewBtnAction:) target:self];

        [mainBg addSubview:gama_getVfBtn];
        [gama_getVfBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(_verfication_tf.mas_left).mas_offset(@(loginBtnWidthOfBgWidth*onCalWidth*0.02));
            make.bottom.equalTo(@(-97/oriBgImgHeight * onCalHeight));
            make.width.equalTo(@(btnWidth));
            make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
        }];

        UILabel *warninLable = [[UILabel alloc] init];
        NSMutableString *tempStr = [[NSMutableString alloc] initWithString:[GamaLoginViewModel model].bindViewPrompt.length> 1 ? [GamaLoginViewModel model].bindViewPrompt:SDKConReaderGetLocalizedString(@"GAMA_GET_VERFICATION_PROMPT")];
        if (!orientation) {
            if (tempStr.length > 10) {
                [tempStr insertString:@"\n" atIndex:10];
            }
            warninLable.numberOfLines = 0;
        }
        warninLable.text = tempStr;
        [warninLable setFont:[UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(9)]];
        [warninLable setTextColor: RGB(210, 49, 46)];
        CGSize lableSize = [GamaUtils calculateSizeOfLabel:warninLable];
        [mainBg addSubview:warninLable];
        [warninLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(gama_getVfBtn);
            make.top.equalTo(gama_getVfBtn.mas_bottom).mas_offset(@(loginBtnWidthOfBgWidth*onCalWidth*0.02));
            make.width.equalTo(@(lableSize.width));
            make.height.equalTo(@(!orientation?lableSize.height*2:lableSize.height));
        }];
        
        // 确定按钮
        m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_REGISTER_MEMBER_TEXT") backgroundImage:btn_bg tag:kRegisterComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
        [mainBg addSubview:m_comfirmBtn];
        [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(_verfication_tf.mas_right).mas_offset(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.02)));
            make.bottom.equalTo(@(-97/oriBgImgHeight * onCalHeight));
            make.width.equalTo(@(btnWidth));
            make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
        }];
    }else{
        // email
        tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;
        email_tf = [self customTextfieldWidgetWithLeftView:textfield_email_left rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_EMAIL_OPTIONAL")];
        email_tf.returnKeyType = UIReturnKeyDone;
        email_tf.keyboardType = UIKeyboardTypeEmailAddress;
        [mainBg addSubview:email_tf];
        [email_tf mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(tmpTopPadding*onCalHeight));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
            make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
        }];
        // 确定按钮
        m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_REGISTER_MEMBER_EN_TEXT") backgroundImage:btn_bg tag:kRegisterComfirmBtnTag selector:@selector(registerViewBtnAction:) target:self];
        [mainBg addSubview:m_comfirmBtn];
        [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(mainBg);
            make.top.equalTo(email_tf.mas_bottom).offset(bgHeight*0.073);
            make.width.equalTo(@(mainBg.frame.size.width * 0.38));
            make.height.equalTo(@(mainBg.frame.size.height * 0.065));
        }];
    }
}

- (void)pushAreaTable:(UIButton *)sender{
    [self.phoneModel gamaShowAreaCodesActionSheetFromView:sender];
}

-(void)showSelectedAreaCodeValue:(NSString *)selectedAreaCodeValue{
    self.mobile_area_tf.text = selectedAreaCodeValue;
//    [self.mobile_area_tf setTitle:selectedAreaCodeValue forState:UIControlStateNormal];
}


- (UIButton *)_comfirmBtnWithTag:(NSInteger)tag topPadding:(CGFloat)padding
{
    // login btn
    UIButton *comfirmBtn = [GamaUtils initBtnWithNormalImage:comfirmBtn_normal highlightedImage:comfirmBtn_highlighted tag:tag selector:@selector(registerViewBtnAction:) target:self];
    [mainBg addSubview:comfirmBtn];
    [comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(padding));
        make.left.equalTo(@(leftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(loginBtnHeightOfBgHeight*rate*curWidth));
    }];
    return comfirmBtn;
}

#pragma mark - Space Mode

- (void)_spaceModeInit
{
    // title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ssView.frame.size.width, textFieldHeightOfBgHeight*rate*curWidth)];
    
    NSString *titleText = SDKConReaderGetLocalizedString(@"BTN_TITLE_REGISTER_ACCOUNT");
    if (viewMode == Hello_Register_Bind) {
        titleText = SDKConReaderGetLocalizedString(@"BTN_TITLE_BIND_ACCOUNT");;
    }
    title.text = titleText;
    title.textAlignment = NSTextAlignmentCenter;
    [ssView addSubview:title];
    [title release];
    
    //    loginBtnWidthOfBgWidth = 914/1070.0f;
    textFieldHeightOfBgHeight = 145/1130.0f;
    CGFloat anotherLeftPadding = 78/1130.0f;
    gapPadding = 40/1130.0f;
    
    NSString *regPlaceHolder = SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_RULE");//@"6~18字符，僅限字母或數字";
    
    // name tf
    self.name_tf = [self gama_customTextfieldWidgetWithLeftView:textfield_account_left rightView:nil placeholder:regPlaceHolder];
    self.name_tf.returnKeyType = UIReturnKeyNext;
    [ssView addSubview:self.name_tf];
    [self.name_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
//    [self.name_tf setValue:[UIFont systemFontOfSize:16] forKey:@"_placeholderLabel.font"];

    // pwd tf
    self.pwd_tf = [self gama_customTextfieldWidgetWithLeftView:textfield_pwd_left rightView:nil placeholder:regPlaceHolder];
    self.pwd_tf.returnKeyType = UIReturnKeyDone;
    [ssView addSubview:self.pwd_tf];
    [self.pwd_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*2+textFieldHeightOfBgHeight)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
    [self.pwd_tf setSecureTextEntry:pwdEntity];//注册，绑定时默认明码
    [self.pwd_tf setClearButtonMode:UITextFieldViewModeNever];
//    [self.pwd_tf setValue:[UIFont systemFontOfSize:16] forKey:@"_placeholderLabel.font"];
    
    // eyes btn
    eyesBtn = [self _pwdRightViewWithImage:eyeBtn_on tag:kEyesBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [self.pwd_tf addSubview:eyesBtn];
    [eyesBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(-10));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(orientation?eyesBtn.frame.size.width *0.8 :eyesBtn.frame.size.width));
        make.height.equalTo(@(orientation?eyesBtn.frame.size.height *0.8:eyesBtn.frame.size.height));
    }];
    
    
    // 條款
    // checkbox
    checkBoxBtn = [GamaUtils initBtnWithNormalImage:termBtn_check highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [ssView addSubview:checkBoxBtn];
    [checkBoxBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*3+textFieldHeightOfBgHeight*2)*rate*curHeight));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(30));//loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(30));//textFieldHeightOfBgHeight*rate*curWidth));
    }];
    // protocol btn
    CGFloat gamaFontSize = IS_ON_IPAD ? 14 : 9;
    
   
    // 同意条款---使用富文本显示 label 无法实现点击事件，textview 就可以
    UITextView *showProtocolLabel = [[UITextView alloc] init];
    showProtocolLabel.textAlignment = NSTextAlignmentLeft;
    showProtocolLabel.editable = NO;
    showProtocolLabel.delegate = self;
    showProtocolLabel.scrollEnabled = NO;
    
    NSMutableAttributedString *textStr = [[NSMutableAttributedString alloc] initWithString:SDKConReaderGetLocalizedString(@"BTN_TITLE_I_HAD_READ_AND_COMFIRM_USERTERM")];
    [textStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:gamaFontSize] range:NSMakeRange(0, textStr.length)];
    
    // 區分英文版和繁體版，英文版所有文字都做跳轉
    if ([SDKConReaderGetString(@"current_Select_Region") isEqualToString:@"server_GL"]) {
        [textStr addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, textStr.length)];
        [textStr addAttribute:NSLinkAttributeName value:@"" range:NSMakeRange(0, textStr.length)];
    } else {
        [textStr addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(7, textStr.length-7)];
        [textStr addAttribute:NSLinkAttributeName value:@"" range:NSMakeRange(7, textStr.length-7)];
    }
    
    
    showProtocolLabel.attributedText = textStr;
    [textStr release];
    
    [ssView addSubview:showProtocolLabel];
    [showProtocolLabel release];
    [showProtocolLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*3+textFieldHeightOfBgHeight*2)*rate*curHeight))        ;
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth+35));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth - 40));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
    
    
    
    // comfirm btn
    NSUInteger myTag = kRegisterComfirmBtnTag;
    if (viewMode == Hello_Register_Bind) {
        myTag = kRegisterBindComfirmBtnTag;
    }
    m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") tag:myTag selector:@selector(registerViewBtnAction:) target:self];
//    [m_comfirmBtn setBackgroundColor:[UIColor lightGrayColor]];
    [ssView addSubview:m_comfirmBtn];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@((topPadding+backBtnWidthAndHeight+gapPadding*3+textFieldHeightOfBgHeight*2)*rate*curHeight+40));
        make.left.equalTo(@(anotherLeftPadding*rate*curWidth));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*rate*curWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*rate*curWidth));
    }];
}

- (HelloTextField *)gama_customTextfieldWidgetWithLeftView:(NSString *)imageName rightView:(UIView *)right placeholder:(NSString *)placeholder
{
    UIImageView *icon = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    [icon setFrame:CGRectMake(0, 0, 43/1070.0f * rate * curWidth, 43/1070.0f * rate * curWidth)];// 要用比例
    HelloTextField *resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:icon rightView:right];
    [icon release];
    //    [resultText setBackground:GetImage(textfield_bg)];
    resultText.initDistance = 90/1070.0f * rate * curWidth;
        resultText.leftViewDistance = 30/1070.0f * rate * curWidth;
    //    resultText.rightViewDistance = 50/1070.0f * rate * curWidth;
    resultText.placeholder = placeholder;
    resultText.clearButtonMode = UITextFieldViewModeAlways;
    resultText.delegate = self;
    resultText.adjustsFontSizeToFitWidth = YES;
    
    [resultText.layer setCornerRadius:7.0f];
    [resultText.layer setBorderColor:[UIColor grayColor].CGColor];
    [resultText.layer setBorderWidth:1.0f];
    [resultText.layer setMasksToBounds:YES];
    
    // font size and color
//    [resultText setValue:[UIFont systemFontOfSize:14] forKeyPath:@"_placeholderLabel.font"];
//    [resultText setValue:[UIColor lightGrayColor] forKeyPath:@"_placeholderLabel.textColor"];
    
    // 设置placeholder文字大小和居中显示
    NSMutableParagraphStyle *style = [resultText.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
    style.minimumLineHeight = resultText.font.lineHeight - (resultText.font.lineHeight - [UIFont systemFontOfSize:14.0].lineHeight) / 2.0;
    NSAttributedString *attrStr = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSParagraphStyleAttributeName:style}];
    [style release];
    [resultText setAttributedPlaceholder:attrStr];
    [attrStr release];
    
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

#pragma mark - make text view

- (HelloTextField *)customTextfieldWidgetWithLeftView:(NSString *)imageName rightView:(UIView *)right placeholder:(NSString *)placeholder
{
    HelloTextField *resultText;
    if (imageName.length >0) {
        CGFloat width = 93/oriBgImgWidth * rate * curWidth*1.2;
        CGFloat initDistanceValue = (140)/oriBgImgWidth * rate * curWidth*1.13;
        if([imageName isEqualToString:textField_old_pwd] || [imageName isEqualToString:textField_new_pwd]){
            width = 93/oriBgImgWidth * rate * curWidth*1.5;
            initDistanceValue = (140)/oriBgImgWidth * rate * curWidth*1.3;
        }
        if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {

            width = width*1.3;
            initDistanceValue = (140)/oriBgImgWidth * rate * curWidth*1.3;
            if ([imageName isEqualToString:textfield_pwd_left]) {
//                width = 93/oriBgImgWidth * rate * curWidth*1.2*1.4;
            }
            if([imageName isEqualToString:textField_old_pwd] || [imageName isEqualToString:textField_new_pwd]){
                width = 93/oriBgImgWidth * rate * curWidth*1.5;
                initDistanceValue = (140)/oriBgImgWidth * rate * curWidth*1.4;
            }

        }
        
        UIImageView *icon = [[UIImageView alloc] initWithImage:GetImage(imageName)];
        [icon setFrame:CGRectMake(0, 0, width, 58/oriBgImgHeight * rate * curHeight)];// 要用比例 93*58
        resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:icon rightView:right];
        resultText.initDistance = initDistanceValue;
        [icon release];
        [resultText setBackground:GetImage(textfield_bg)];
    }else{
        resultText = [[HelloTextField alloc] initWithFrame:CGRectZero leftView:nil rightView:right];
        resultText.initDistance = (140)/oriBgImgWidth * rate * curWidth*0.08;
    }
    
    resultText.leftViewDistance = 27/oriBgImgWidth * rate * curWidth;
    //    resultText.rightViewDistance = 50/1070.0f * rate * curWidth;
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
    if ([placeholder isEqualToString:SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")]) {
        fontType = [UIFont systemFontOfSize:FONTSIZE(8)];
    }
    NSMutableParagraphStyle *style = [resultText.defaultTextAttributes[NSParagraphStyleAttributeName] mutableCopy];
    style.minimumLineHeight = resultText.font.lineHeight - (resultText.font.lineHeight - fontType.lineHeight) / 2.0;
    style.lineBreakMode = NSLineBreakByWordWrapping;
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


- (void)registerViewBtnAction:(UIButton *)sender
{
    [self _textFieldResignFirstResponer];
    
    switch (sender.tag) {
        case kRegisterBackBtnTag:
        {
            [self removeFromSuperview];
            NSDictionary *dic = @{@"superView":self.parenView};
            [[NSNotificationCenter defaultCenter] postNotificationName:HELLO_NOTI_REGISTER_BACK object:nil userInfo:dic];
        }
            break;
        case kRegisterResetComfirmBtnTag:
        {
            [self _resetUserPassword];
        }
            break;
        case kRegisterFindComfirmBtnTag:
        {
            [self _findUserPassword];
        }
            break;
        case kRegisterComfirmBtnTag:
        case kRegisterBindComfirmBtnTag:
        {
            [self _registerNewUser];
        }
            break;
        case kCheckBoxBtnTag:
        {
            checkboxStatus = !checkboxStatus;
            [self _changeBoxImage];
        }
            break;
        case kshowProtocolBtnTag:
        {
            // go to protocol view
            [[HelloProtocolViewController alloc] initWithProtocolMode:HelloProtocol_SpaceMode optionUrl:nil];
        }
            break;
        case kEyesBtnTag:
        {            
            self.pwd_tf.secureTextEntry = !pwdEntity;
            pwdEntity = !pwdEntity;
            if (pwdEntity) {
                [eyesBtn setImage:GetImage(eyeBtn_on) forState:0];
            } else {
                [eyesBtn setImage:GetImage(eyeBtn_off) forState:0];
            }
        }
            break;
        case ResetEyeOldBtnTag:{
            self.oldPwd_tf.secureTextEntry = !pwdEntity;
            pwdEntity = !pwdEntity;
            if (pwdEntity) {
                [eyesBtn setImage:GetImage(eyeBtn_on) forState:0];
            } else {
                [eyesBtn setImage:GetImage(eyeBtn_off) forState:0];
            }
        }
            break;
        case ResetEyeNewBtnTag:{
            self.pwd_cf_tf.secureTextEntry = !pwdEntity;
            pwdEntity = !pwdEntity;
            if (pwdEntity) {
                [newBtn setImage:GetImage(eyeBtn_on) forState:0];
            } else {
                [newBtn setImage:GetImage(eyeBtn_off) forState:0];
            }
        }
            break;
        case kRegisterGetVerficationBtnTag:
        {//注册获取验证码
            
            if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
                if ([GamaUtils validPhone:self.mobile_phone_tf.text phoneRegex:self.phoneModel.selectedRegularExpression]) {
                    [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PHONE_RULE")];
                    return;
                }
            }
            [self requestPhoneVerficationWithPhoneArea:self.mobile_area_tf.text phoneNumber:self.mobile_phone_tf.text code:@"1" send:sender];
        }
            break;
        case kRegisterBindGetVfCodeBtnTag:{//绑定获取验证码
            if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
                if ([GamaUtils validPhone:self.mobile_phone_tf.text phoneRegex:self.phoneModel.selectedRegularExpression]) {
                    [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PHONE_RULE")];
                    return;
                }
            }
            [self requestPhoneVerficationWithPhoneArea:self.mobile_area_tf.text phoneNumber:self.mobile_phone_tf.text code:@"2" send:sender];
        }
            break;
        case kRegisterBindThirdVfCodeBtnTag:{//绑定获取验证码
            if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
                if ([GamaUtils validPhone:self.mobile_phone_tf.text phoneRegex:self.phoneModel.selectedRegularExpression]) {
                    [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PHONE_RULE")];
                    return;
                }
            }
            [self requestPhoneVerficationWithPhoneArea:self.mobile_area_tf.text phoneNumber:self.mobile_phone_tf.text code:@"3" send:sender];
        }
            break;
        case kRegisterBindPhoneVfCodeBtnTag:{
            if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
                if ([GamaUtils validPhone:self.mobile_phone_tf.text phoneRegex:self.phoneModel.selectedRegularExpression]) {
                    [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PHONE_RULE")];
                    return;
                }
            }
            [self requestPhoneVerficationWithPhoneArea:self.mobile_area_tf.text phoneNumber:self.mobile_phone_tf.text code:@"3" send:sender];
        }
            break;
        case kRegisterNeedBindBtnTag:{
            [self _bindPhoneValidUser];
        }break;
        case kBindPhoneBackBtnTag:{
            NSDictionary *dic = @{@"code":@"1020",@"message":@"用戶取消綁定"};
            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_BIND_PHONE_RESULT object:nil userInfo:dic];
            [self removeFromSuperview];
        }break;
        default:
            break;
    }
}


- (void)checkForFire{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSDate *lastPhoneTimeGetVerificationCodeDate = [userDefaults objectForKey:@"GAMA_VF_CODE_TIME"];
    if (lastPhoneTimeGetVerificationCodeDate && [[NSDate date] timeIntervalSinceDate:lastPhoneTimeGetVerificationCodeDate] < 60)
    {
        self.phoneCountdown = 60 - [[NSDate date] timeIntervalSinceDate:lastPhoneTimeGetVerificationCodeDate];
        gama_getVfBtn.userInteractionEnabled = NO;
        [gama_getVfBtn setTitle:[NSString stringWithFormat:@"%lds",(long)_phoneCountdown] forState:UIControlStateNormal];
        gama_getVfBtn.backgroundColor  = RGB(211, 211, 211);
        gama_getVfBtn.layer.cornerRadius = 5.0f;
        gama_getVfBtn.layer.masksToBounds = YES;
        gama_getVfBtn.titleLabel.adjustsFontSizeToFitWidth = YES;
        self.phoneTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                      target:self
                                                    selector:@selector(phoneFireTimer)
                                                    userInfo:nil
                                                     repeats:YES];
    }
}

- (void)phoneFireTimer {
    if (self.phoneCountdown > 0) {
        _phoneCountdown--;
        gama_getVfBtn.titleLabel.text = [NSString stringWithFormat:@"%ldS", (long)_phoneCountdown];
    }else {
        gama_getVfBtn.userInteractionEnabled = YES;
        [gama_getVfBtn setTitle:SDKConReaderGetLocalizedString(@"GAMA_PHONE_BIND_FETCH_CODE_TEXT") forState:UIControlStateNormal];
        gama_getVfBtn.titleLabel.text = SDKConReaderGetLocalizedString(@"GAMA_PHONE_BIND_FETCH_CODE_TEXT");
        gama_getVfBtn.backgroundColor = RGB(88, 133, 239);
        [self.phoneTimer invalidate];
        self.phoneTimer = nil;
    }
}


- (void)requestPhoneVerficationWithPhoneArea:(NSString *)phoneArea phoneNumber:(NSString *)phoneN code:(NSString *)code send:(UIButton *)send{
    self.phoneCountdown = 60;
    gama_getVfBtn.userInteractionEnabled = NO;
    [gama_getVfBtn setTitle:[NSString stringWithFormat:@"%lds",(long)_phoneCountdown] forState:UIControlStateNormal];
    gama_getVfBtn.backgroundColor  = RGB(211, 211, 211);
    gama_getVfBtn.layer.cornerRadius = 5.0f;
    gama_getVfBtn.layer.masksToBounds = YES;
    gama_getVfBtn.titleLabel.adjustsFontSizeToFitWidth = YES;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:[NSDate date] forKey:@"GAMA_VF_CODE_TIME"];
    [userDefaults synchronize];
    self.phoneTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                       target:self
                                                     selector:@selector(phoneFireTimer)
                                                     userInfo:nil
                                                      repeats:YES];

    NSString *timeStamp = [GamaFunction getTimeStamp];
    NSMutableString * md5str=[[NSMutableString alloc]init];
    [md5str appendFormat:@"%@",SDKConReaderGetString(GAMA_GAME_KEY)]; //AppKey
    [md5str appendFormat:@"%@",timeStamp]; //时间戳
    [md5str appendFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)];//gamecode
    [md5str appendFormat:@"%@",phoneN]; //手机号
    NSString * md5SignStr=[GamaFunction getMD5StrFromString:md5str];

    NSDictionary *dic = @{@"phone":phoneN,
                          @"phoneAreaCode":phoneArea,
                          @"interfaces":code,
                          @"gameCode":[NSString stringWithFormat:@"%@",SDKConReaderGetString(SDK_GAME_CODE)],
                          @"timestamp":timeStamp,
                          @"signature":md5SignStr
    };

    NSString *mainDomain = [NSString stringWithFormat:@"%@%@",SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME),SDKConReaderGetString(GAMA_LOGIN_ACQUIRE_PHONE_VERTIFY_CODE)];
    [GamaRequestor requestGetWithRequestDomain:mainDomain
                                     andParams:dic
                                isAddCommonDic:YES
                             ComplitionHandler:^(NSURLResponse *response, NSDictionary *resultJsonDic, NSError *jsonParseErr, NSString *resultStr, NSData *resultRawData, NSError *error) {
        if (!error && !jsonParseErr)
        {
            NSString * codeStr= [NSString stringWithFormat:@"%@",resultJsonDic[@"code"]];
            if (codeStr.intValue == 1000) {
                [GamaAlertView showAlertWithMessage:resultJsonDic[@"message"]];
            }else if(codeStr.length==4){
                [GamaAlertView showAlertWithMessage:resultJsonDic[@"message"]];
            }
        }
    }];
}

- (void)_registerNewUser
{
    // 同意條款
//    if (!checkboxStatus) {
//        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_AGREEMENT_RULE")];
//        return;
//    }
    if (![GamaUtils validUserName:self.name_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    if (![GamaUtils validPwd:self.pwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_PROMT_RULE")];
        return;
    }
    if ([self.name_tf.text isEqualToString:self.pwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_AND_PWD_RULE")];
        return;
    }
    if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
        if ([GamaUtils validPhone:self.mobile_phone_tf.text phoneRegex:self.phoneModel.selectedRegularExpression]) {
            [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PHONE_RULE")];
            return;
        }
        if (self.verfication_tf.text.length < 1) {
            [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_VF_CODE")];
            return;
        }
    }
    
    // 如果邮箱存在，检查邮箱格式
    if (email_tf.text.length > 1 && ![GamaUtils validEmail:email_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_EMAIL_RULE")];
        return;
    }
    
    [self _requestWithMode:viewMode];
    
    return;

}

- (void)_findUserPassword
{
    // check
    if (![GamaUtils validUserName:self.name_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if (![SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
            if ([GamaUtils validPhone:self.mobile_phone_tf.text phoneRegex:self.phoneModel.selectedRegularExpression]) {
            [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PHONE_RULE")];
            return;
        }
    }else{
        if (![GamaUtils validEmail:email_tf.text]) {
            [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_EMAIL_RULE")];
            return;
        }
    }
    // request
    [self _requestWithMode:viewMode];
}

- (void)_resetUserPassword
{
    // check
    if (![GamaUtils validUserName:self.name_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    // old pwd
    if (![GamaUtils validUserName:self.oldPwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_PROMT_RULE")];
        return;
    }
    // new pwd
    if (![GamaUtils validPwd:self.pwd_cf_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_PROMT_RULE")];
        return;
    }
    if ([self.oldPwd_tf.text isEqualToString:self.pwd_cf_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_OLD_PWD_AND_NEW_PWD_RULE")];
        return;
    }
    
    // request
    [self _requestWithMode:viewMode];
}

- (void)_bindPhoneValidUser
{
    if ([GamaUtils validPhone:self.mobile_phone_tf.text phoneRegex:self.phoneModel.selectedRegularExpression]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PHONE_RULE")];
        return;
    }
    if (self.verfication_tf.text.length < 1) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_VF_CODE")];
        return;
    }

    // request
    [self _requestWithMode:viewMode];
}
- (void)_changeBoxImage
{
    if (checkboxStatus) {
        [checkBoxBtn setImage:GetImage(termBtn_check) forState:0];
    } else {
        [checkBoxBtn setImage:GetImage(termBtn_uncheck) forState:0];
    }
}

#pragma mark - Request

- (void)_requestWithMode:(HelloRigisterMode)mode
{
    [GamaUtils gamaStarLoadingAtView:self];
    switch (mode) {
        case Hello_Register_Normal:
        {
            NSString *finalName = [GamaUtils triString:self.name_tf.text];
            NSString *finalPwd = [GamaUtils triString:self.pwd_tf.text];
            NSString *finalEmail = [GamaUtils triString:email_tf.text].length >0 ? [GamaUtils triString:email_tf.text] :@"";
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";
            NSString *verfication = [GamaUtils triString:self.verfication_tf.text].length >0 ? [GamaUtils triString:self.verfication_tf.text] :@"";

            [GamaNetEngine registerAccountWithUserName:finalName
                                              password:finalPwd
                                              otherDic:@{@"phoneAreaCode":areaCode,
                                                         @"phone":phone,
                                                         @"vfCode":verfication,
                                                         @"email":finalEmail,
                                                         @"interfaces":@"1"}];
        }
            break;
        case Hello_Register_ResetPwd:
        {
            NSString *finalName = [GamaUtils triString:self.name_tf.text];
            NSString *oldPwd = [GamaUtils triString:self.oldPwd_tf.text];
            NSString *newPwd = [GamaUtils triString:self.pwd_cf_tf.text];
            [GamaNetEngine resetPasswordWithUserName:finalName oldPassword:oldPwd newPassword:newPwd];
        }
            break;
        case Hello_Register_FindPwd:
        {
            NSString *userName = [GamaUtils triString:self.name_tf.text];
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *finalEmail = [GamaUtils triString:email_tf.text].length >0 ? [GamaUtils triString:email_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";

            [GamaNetEngine findPasswordWithUserName:userName
                                           otherDic:@{@"phoneAreaCode":areaCode?areaCode:@"",
                                                      @"email":finalEmail,
                                                      @"phone":phone}];
        }
            break;
        case Hello_Register_Bind:
        {
            NSString *finalName = [GamaUtils triString:self.name_tf.text];
            NSString *finalPwd = [GamaUtils triString:self.pwd_tf.text];
            NSString *finalEmail = [GamaUtils triString:email_tf.text].length >0 ? [GamaUtils triString:email_tf.text] :@"";
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";
            NSString *verfication = [GamaUtils triString:self.verfication_tf.text].length >0 ? [GamaUtils triString:self.verfication_tf.text] :@"";

            [GamaNetEngine bindingUserName:finalName
                                  password:finalPwd
                                  otherDic:@{@"phoneAreaCode":areaCode,
                                             @"phone":phone,
                                             @"vfCode":verfication,
                                             @"email":finalEmail,
                                             @"interfaces":@"2"
                                  }
                         withThirdPlatform:Gama_Facebook];
            [GamaUtils gamaStopLoadingAtView:self];

        }
            break;
        case Hello_Register_Guest_Bind:
        {
            
            NSString *finalName = [GamaUtils triString:self.name_tf.text];
            NSString *finalPwd = [GamaUtils triString:self.pwd_tf.text];
            NSString *finalEmail = [GamaUtils triString:email_tf.text].length >0 ? [GamaUtils triString:email_tf.text] :@"";
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";
            NSString *verfication = [GamaUtils triString:self.verfication_tf.text].length >0 ? [GamaUtils triString:self.verfication_tf.text] :@"";
            [GamaNetEngine bindingGuestAccountWithUserName:finalName
                                                password:finalPwd
                                                  otherDic:@{@"phoneAreaCode":areaCode,
                                                             @"phone":phone,
                                                             @"vfCode":verfication,
                                                             @"email":finalEmail,
                                                              @"interfaces":@"2"
                                                   }];
        }
            break;
        case Hello_Register_GameCenter_Bind:
        {
            NSString *finalName = [GamaUtils triString:self.name_tf.text];
            NSString *finalPwd = [GamaUtils triString:self.pwd_tf.text];
            NSString *finalEmail = [GamaUtils triString:email_tf.text].length >0 ? [GamaUtils triString:email_tf.text] :@"";
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";
            NSString *verfication = [GamaUtils triString:self.verfication_tf.text].length >0 ? [GamaUtils triString:self.verfication_tf.text] :@"";

            [GamaNetEngine bindingUserName:finalName
                                  password:finalPwd
                                  otherDic:@{@"phoneAreaCode":areaCode,
                                             @"phone":phone,
                                             @"vfCode":verfication,
                                             @"email":finalEmail,
                                             @"interfaces":@"2"
                                  }
                         withThirdPlatform:Gama_GameCenter];
        }
            break;
        case Hello_Register_Twitter_Bind:
        {
            NSString *finalName = [GamaUtils triString:self.name_tf.text];
            NSString *finalPwd = [GamaUtils triString:self.pwd_tf.text];
            NSString *finalEmail = [GamaUtils triString:email_tf.text].length >0 ? [GamaUtils triString:email_tf.text] :@"";
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";
            NSString *verfication = [GamaUtils triString:self.verfication_tf.text].length >0 ? [GamaUtils triString:self.verfication_tf.text] :@"";
            [GamaNetEngine bindingUserName:finalName
                                  password:finalPwd
                                  otherDic:@{@"phoneAreaCode":areaCode,
                                             @"phone":phone,
                                             @"vfCode":verfication,
                                             @"email":finalEmail,
                                             @"interfaces":@"2"
                                  }
                         withThirdPlatform:Gama_Twitter];
        }
            break;
        case Hello_Register_Space:
        {
            NSString *account = [GamaUtils triString:self.name_tf.text];
            NSString *pwd = [GamaUtils triString:self.pwd_tf.text];
            [GamaNetEngine registerAccountWithUserName:account password:pwd email:@""];
        }
            break;
        case Hello_Register_Apple_Bind:
        {
            NSString *finalName = [GamaUtils triString:self.name_tf.text];
            NSString *finalPwd = [GamaUtils triString:self.pwd_tf.text];
            NSString *finalEmail = [GamaUtils triString:email_tf.text].length >0 ? [GamaUtils triString:email_tf.text] :@"";
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";
            NSString *verfication = [GamaUtils triString:self.verfication_tf.text].length >0 ? [GamaUtils triString:self.verfication_tf.text] :@"";
            
            [self gama_AppleBindRequestWithUserName:finalName password:finalPwd otherDic:@{@"phoneAreaCode":areaCode,
                                                                                           @"phone":phone,
                                                                                           @"vfCode":verfication,
                                                                                           @"email":finalEmail,
                                                                                           @"interfaces":@"2"
            }];
        }break;
        case Hello_Bind_Phone:
        case Hello_Bind_Phone_Fetch_Reward:
        {
            NSString *areaCode = [GamaUtils triString:self.mobile_area_tf.text].length >0 ? [GamaUtils triString:self.mobile_area_tf.text] :@"";
            NSString *phone = [GamaUtils triString:self.mobile_phone_tf.text].length >0 ? [GamaUtils triString:self.mobile_phone_tf.text] :@"";
            NSString *verfication = [GamaUtils triString:self.verfication_tf.text].length >0 ? [GamaUtils triString:self.verfication_tf.text] :@"";
            NSString *thirdID = [[SdkUserInfoModel shareInfoModel] thirdId] ? :@"";
            [GamaNetEngine thirdBindPhoneWithInformation:@{@"phoneAreaCode":areaCode,
                                                           @"phone":phone,
                                                           @"vfCode":verfication,
                                                           @"thirdPlatId":[thirdID lowercaseString]}];
        }
            break;
        default:
            break;
    }
}

#pragma mark - Widget

- (HelloTextField *)_textfieldWidgetWithPlaceholder:(NSString *)placeholder
                                                tag:(NSUInteger)tag
                                        cursorDistance:(CGFloat)cursorDistance
{
    HelloTextField *resultText = [[HelloTextField alloc] init];
    resultText.initDistance = cursorDistance;
    [resultText setBackground:GetImage(textfield_bg)];
    resultText.placeholder = placeholder;
    resultText.clearButtonMode = UITextFieldViewModeAlways;
    resultText.delegate = self;
    switch (viewMode) {
        case Hello_Register_Normal:
        {
            if (tag != kTextFieldTag_email) {
                resultText.returnKeyType = UIReturnKeyNext;
            } else {
                resultText.returnKeyType = UIReturnKeyDone;
            }
        }
            break;
        case Hello_Register_ResetPwd:
        {
            if (tag != kTextFieldTag_pwd_comfirm) {
                resultText.returnKeyType = UIReturnKeyNext;
            } else {
                resultText.returnKeyType = UIReturnKeyDone;
            }
        }
            break;
        case Hello_Register_FindPwd:
        {
            if (tag != kTextFieldTag_email) {
                resultText.returnKeyType = UIReturnKeyNext;
            } else {
                resultText.returnKeyType = UIReturnKeyDone;
            }
        }
            break;
        default:
            break;
    }
    
    return resultText;
}

#pragma mark - Touches
// keybord down
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self _textFieldResignFirstResponer];
}

- (void)_textFieldResignFirstResponer
{
    [self.name_tf resignFirstResponder];
    [self.pwd_tf resignFirstResponder];
    [self.mobile_phone_tf resignFirstResponder];
    [self.verfication_tf resignFirstResponder];
    [self.pwd_cf_tf resignFirstResponder];
    [email_tf resignFirstResponder];
    [self.oldPwd_tf resignFirstResponder];
}

#pragma mark - UITextField Delegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.returnKeyType == UIReturnKeyNext) {
        [textField resignFirstResponder];
        switch (viewMode) {
            case Hello_Register_Bind:
            case Hello_Register_Normal:
            {
                if ([textField isEqual:self.name_tf]) {
                    [self.pwd_tf becomeFirstResponder];
                }
                if ([textField isEqual:self.pwd_tf]) {
                    [self.mobile_phone_tf becomeFirstResponder];
                }
                if ([textField isEqual:self.mobile_phone_tf]) {
                    [self.verfication_tf becomeFirstResponder];
                }
            }
                break;
            case Hello_Register_ResetPwd:
            {
                if ([textField isEqual:self.name_tf]) {
                    [self.oldPwd_tf becomeFirstResponder];
                }
                if ([textField isEqual:self.oldPwd_tf]) {
                    [self.pwd_cf_tf becomeFirstResponder];
                }
            }
                break;
            case Hello_Register_FindPwd:
            {
                if ([textField isEqual:self.name_tf]) {
                    [email_tf becomeFirstResponder];
                }
            }
                break;
            case Hello_Register_Space:
            {
                if ([textField isEqual:self.name_tf]) {
                    [self.pwd_tf becomeFirstResponder];
                }
            }
                break;
            
            default:
                break;
        }
    }
    
    if (textField.returnKeyType == UIReturnKeyDone) {
        [textField resignFirstResponder];
        // comfirm btn down
        [self registerViewBtnAction:m_comfirmBtn];
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
    }else if (heightFraction > 1.0) {
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


#pragma mark - Note

- (void)_noteLisetner:(NSNotification *)note
{
    [GamaUtils gamaStopLoadingAtView:self];
    
    NSString *noteName = note.name;
//    NSDictionary *userInfo = note.userInfo;
    
    if ([noteName isEqualToString:GAMA_REGISTER_SUCCESS_IN]) {
//        NSLog(@"新账号注册成功");
        [[NSNotificationCenter defaultCenter] postNotificationName:NOTE_hello_login_success object:note.userInfo];
        [GamaUtils recordStateLoginWithType:_SDK_PLAT_SELF andUserName:self.name_tf.text];
        [GamaUtils saveUserInfo:self.name_tf.text andPassword:self.pwd_tf.text toFile:GAMA_SAVE_LAST_USER_FILE_NAME];
        
    } else if ([noteName isEqualToString:GAMA_REGISTER_FAIL_IN]) {
//        NSLog(@"新账号注册失败");
        
    } else if ([noteName isEqualToString:HELLO_NOTI_REGISTER_BACK]) {
        mainBg.alpha = 1.0f;
        
    } else if ([noteName isEqualToString:UIKeyboardWillShowNotification]) {
        NSDictionary *userInfo = note.userInfo;
        NSValue *aValue = userInfo[UIKeyboardFrameEndUserInfoKey];
        CGRect keyboardRect = [aValue CGRectValue];
        keyboarHeight = keyboardRect.size.height;
        
    } else if ([noteName isEqualToString:GAMA_RESET_PASSWORD_SUCCESS_IN]) {
        
        // 修改密码完成,并且把当前修改的用户名填充到登录的界面上
//        NSLog(@"密码修改成功");
        // back to input account
        NSDictionary *dic = @{@"superView":self.parenView, @"userName":self.name_tf.text};
        [[NSNotificationCenter defaultCenter] postNotificationName:HELLO_NOTI_REGISTER_BACK object:nil userInfo:dic];
        
        [self removeFromSuperview];
        
    } else if ([noteName isEqualToString:GAMA_RESET_PASSWORD_FAIL_IN]) {
        
        // 修改密码失败
        // alert
        NSLog(@"密码修改失败");
        
    } else if ([noteName isEqualToString:GAMA_FREE_BIND_SUCCESS_IN]) {
        
        // 直接进入游戏
        NSLog(@"guest 绑定成功");
        [[NSNotificationCenter defaultCenter] postNotificationName:NOTE_hello_login_success object:note.userInfo];
        [GamaUtils recordStateLoginWithType:_SDK_PLAT_SELF andUserName:self.name_tf.text];
        
    } else if ([noteName isEqualToString:GAMA_FREE_BIND_FAIL_IN]) {
        
        // 绑定失败
        
    } else if ([noteName isEqualToString:GAMA_REGET_PASSWORD_SUCCESS_IN]) {
        
        // 重置密码成功
        NSLog(@"找回密码成功");
        
        NSDictionary *dic = @{@"superView":self.parenView, @"userName":self.name_tf.text};
        [[NSNotificationCenter defaultCenter] postNotificationName:HELLO_NOTI_REGISTER_BACK object:nil userInfo:dic];
        [self removeFromSuperview];
        
    } else if ([noteName isEqualToString:GAMA_REGET_PASSWORD_FAIL_IN]) {
        
        // 重置密码失败
        // alert
        NSLog(@"找回密码失败");
    }
    else if ([noteName isEqualToString:GAMA_THIRD_BINDING_SUCCESS]) {
        [GamaUtils gamaStopLoadingAtView:self];
//        NSLog(@"name = %@, pwd = %@",self.name_tf.text,self.pwd_tf.text);
        // 保存帐密
//        [HelloUtils recordStateLoginWithType:_SDK_PLAT_SELF andUserName:self.name_tf.text];
//        [GamaUtils saveUserInfo:self.name_tf.text andPassword:self.pwd_tf.text toFile:GAMA_SAVE_LAST_USER_FILE_NAME];
//        // 发送登录成功的通知
//        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_LOGIN_SUCCESS_IN object:nil userInfo:userInfo];
        NSDictionary *dic = @{@"userName":self.name_tf.text?self.name_tf.text:@"",@"userPwd":self.pwd_tf.text?self.pwd_tf.text:@""};
        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_BIND_SUCCESS_BACK object:nil userInfo:dic];
        [self removeFromSuperview];
    }
    else if ([noteName isEqualToString:GAMA_THIRD_BINDING_FAIL]) {
        [GamaUtils gamaStopLoadingAtView:self];
        NSLog(@"绑定失败");
    }else if([noteName isEqualToString:GAMA_THIRD_BINDING_APPLE_CANCEL]){
        [GamaUtils gamaStopLoadingAtView:self];
    }else if([noteName isEqualToString:GAMA_PHONE_BIND_SUCCESS]){
        if(viewMode == Hello_Bind_Phone_Fetch_Reward){//手機綁定成功
            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_BIND_PHONE_RESULT object:nil userInfo:note.userInfo];
            [self removeFromSuperview];
        }else{
            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_THIRD_LOGIN_SUCCESS object:nil userInfo:note.userInfo];
        }
    }else if ([noteName isEqualToString:GAMA_PHONE_BIND_FAIL]){
        if(viewMode == Hello_Bind_Phone_Fetch_Reward){//手機綁定失敗
            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_BIND_PHONE_RESULT object:nil userInfo:note.userInfo];
            [GamaUtils gamaStopLoadingAtView:self];
        }else{
            [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_THIRD_LOGIN_FAIL object:nil userInfo:note.userInfo];
        }
    }
}

#pragma mark - Textview delegate

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    NSLog(@"did click");
    [[[HelloProtocolViewController alloc] initWithProtocolMode:HelloProtocol_SpaceMode optionUrl:nil] autorelease];
    return NO; // return YES 是跳转到外部浏览器打开的。
}

// 綁定
- (void)gama_AppleBindRequestWithUserName:(NSString *)userName password:(NSString *) password otherDic:(NSDictionary *)otherDic{
    [GamaUtils gamaStarLoadingAtView:self];
     self.appleLogin = [GamaAppleLogin makeAppleCallbackSuccessBlock:^(NSDictionary * _Nullable result) {
         NSMutableDictionary *tempMutableDic = [NSMutableDictionary dictionaryWithDictionary:result];
         NSString *appleID = [tempMutableDic[@"appleThirdID"] copy];
         [tempMutableDic removeObjectForKey:@"appleThirdID"];
         if (otherDic.count >0) {
             [tempMutableDic addEntriesFromDictionary:otherDic];
         }
         [GamaThirdFunctionPort doAccountBindingWithUserName:userName
                                                   password:password
                                                      email:nil
                                                    thirdId:appleID
                                                 thirdPlate:@"apple"
                                                  addParams:tempMutableDic
                                                 domainName:SDKConReaderGetString(GAMA_LOGIN_DOMAIN_NAME)
         //                                                       domainName:@"http://0.0.0.0:8081/login/"
                                                      block:^{
                                                          //
                                                      }];

    } andErrorBlock:^(NSError * _Nullable error) {
        [[NSNotificationCenter defaultCenter] postNotificationName:GAMA_THIRD_BINDING_APPLE_CANCEL object:nil];
    }];
    [self.appleLogin handleAuthrization:nil];
}

//未绑定手机账号弹窗
- (void)userBindPushView {
    CGFloat tmpTopPadding = 0.0f;
    CGFloat titleTopPadding = orientation ? 60/oriBgImgHeight : 60/oriBgImgHeight;    //标题高度，或高或低《影响整体布局》

    // if xm ui
    CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"GAMA_BIND_ACCOUNT_REG") minStr:nil];
    UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"GAMA_BIND_ACCOUNT_REG") minTitle:nil];
    [mainBg addSubview:titleView];
    tmpTopPadding = titleTopPadding*2;
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(titleWidth));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];
    
    UILabel *littleTitleLable = [[UILabel alloc] init];
    littleTitleLable.text = SDKConReaderGetLocalizedString(@"GAMA_BIND_PHONE_LITTLE_TITLE");
    [littleTitleLable setFont:[UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(12)]];
    [littleTitleLable setTextColor:RGB(84, 149, 223)];
    CGSize littlelableSize = [GamaUtils calculateSizeOfLabel:littleTitleLable];
    [mainBg addSubview:littleTitleLable];
    tmpTopPadding = titleTopPadding*3;
    [littleTitleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(littlelableSize.width));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];

    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding * 2;
    UIView *mobileView = [[UIView alloc] init];
    [mainBg addSubview:mobileView];
    [mobileView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
        
    self.mobile_area_tf = [self customTextfieldWidgetWithLeftView:textfield_mobile rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_AREA_CODE")];
    self.mobile_area_tf.enabled = NO;
    [self.mobile_area_tf setBackground:GetImage(textfield_area_left)];
    self.mobile_area_tf.returnKeyType = UIReturnKeyDone;
    self.mobile_area_tf.keyboardType = UIKeyboardTypeEmailAddress;
    self.mobile_area_tf.clearButtonMode = UITextFieldViewModeNever;
    [mobileView addSubview:self.mobile_area_tf];
    [_mobile_area_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(mobileView);
        make.left.equalTo(mobileView);
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    self.mobile_area_tf.text = self.phoneModel.selectedAreaCodeValue;
    UIButton *areaPromptBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [mainBg addSubview:areaPromptBtn];
    [areaPromptBtn addTarget:self action:@selector(pushAreaTable:) forControlEvents:UIControlEventTouchUpInside];
    [areaPromptBtn setTag:kRegisterGetAreaCodeBtnTag];
    [areaPromptBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.mobile_area_tf);
        make.center.equalTo(self.mobile_area_tf);
    }];
    
    UIImageView *areaPromptImage = [[UIImageView alloc] initWithImage:GetImage(textfield_area_prompt)];
    [areaPromptBtn addSubview:areaPromptImage];
    [areaPromptImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_mobile_area_tf);
        make.right.equalTo(_mobile_area_tf.mas_right).equalTo(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.03)));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.05));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight*0.25));
    }];
        
    self.mobile_phone_tf = [self customTextfieldWidgetWithLeftView:nil rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_CODE")];
    [self.mobile_phone_tf setBackground:GetImage(textfield_area_right)];
    self.mobile_phone_tf.returnKeyType = UIReturnKeyDone;
    self.mobile_phone_tf.keyboardType = UIKeyboardTypeEmailAddress;
    [mobileView addSubview:self.mobile_phone_tf];
    [self.mobile_phone_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(mobileView);
        make.right.equalTo(mobileView);
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];

    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;
    self.verfication_tf = [self customTextfieldWidgetWithLeftView:textfield_verfication rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_VF_CODE")];
    self.verfication_tf.returnKeyType = UIReturnKeyDone;
    self.verfication_tf.keyboardType = UIKeyboardTypeEmailAddress;
    [mainBg addSubview:self.verfication_tf];
    [self.verfication_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    CGFloat btnWidth = loginBtnWidthOfBgWidth*onCalWidth*0.45;
    gama_getVfBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_GET_VERFICATION_TEXT") backgroundImage:btn_bg tag:kRegisterBindThirdVfCodeBtnTag selector:@selector(registerViewBtnAction:) target:self];

    [mainBg addSubview:gama_getVfBtn];
    [gama_getVfBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_verfication_tf.mas_left).mas_offset(@(loginBtnWidthOfBgWidth*onCalWidth*0.02));
        make.bottom.equalTo(@(-200/oriBgImgHeight * onCalHeight));
        make.width.equalTo(@(btnWidth));
        make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
    }];

    UILabel *warninLable = [[UILabel alloc] init];
    NSMutableString *tempStr = [[NSMutableString alloc] initWithString:[GamaLoginViewModel model].bindViewPrompt.length> 1 ? [GamaLoginViewModel model].bindViewPrompt:SDKConReaderGetLocalizedString(@"GAMA_GET_VERFICATION_PROMPT")];
    if (!orientation) {
        if (tempStr.length > 10) {
            [tempStr insertString:@"\n" atIndex:10];
        }
        warninLable.numberOfLines = 0;
    }
    warninLable.text = tempStr;    [warninLable setFont:[UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(9)]];
    [warninLable setTextColor: RGB(210, 49, 46)];
    CGSize lableSize = [GamaUtils calculateSizeOfLabel:warninLable];
    [mainBg addSubview:warninLable];
    [warninLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(gama_getVfBtn);
        make.top.equalTo(gama_getVfBtn.mas_bottom).mas_offset(@(loginBtnWidthOfBgWidth*onCalWidth*0.02));
        make.width.equalTo(@(lableSize.width));
        make.height.equalTo(@(!orientation?lableSize.height *2 :lableSize.height));
    }];
    
    // 确定按钮
    m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_REGISTER_MEMBER_TEXT")  backgroundImage:btn_bg tag:kRegisterNeedBindBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [mainBg addSubview:m_comfirmBtn];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_verfication_tf.mas_right).mas_offset(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.02)));
        make.bottom.equalTo(@(-200/oriBgImgHeight * onCalHeight));
        make.width.equalTo(@(btnWidth));
        make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
    }];
}

//綁定手機領取獎勵
- (void)byBindPhoneNumberFetchReward {
    CGFloat tmpTopPadding = 0.0f;
    CGFloat titleTopPadding = orientation ? 60/oriBgImgHeight : 60/oriBgImgHeight;    //标题高度，或高或低《影响整体布局》

    // if xm ui
    CGFloat titleWidth = [GamaUtils titleFontWedthWithMaxStr:SDKConReaderGetLocalizedString(@"GAMA_PHONE_BIND_VIEW_TITLE_TEXT") minStr:nil];
    UIView *titleView = [GamaUtils initWithMaxTitle:SDKConReaderGetLocalizedString(@"GAMA_PHONE_BIND_VIEW_TITLE_TEXT") minTitle:nil];
    [mainBg addSubview:titleView];
    tmpTopPadding = titleTopPadding*2;
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(titleWidth));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];
    
    UILabel *littleTitleLable = [[UILabel alloc] init];
    littleTitleLable.text = SDKConReaderGetLocalizedString(@"GMAA_PHONE_BIND_PROMPT_TEXT");
    [littleTitleLable setFont:[UIFont fontWithName:LABEL_FONT_NAME size:FONTSIZE(12)]];
    [littleTitleLable setTextColor:RGB(84, 149, 223)];
    CGSize littlelableSize = [GamaUtils calculateSizeOfLabel:littleTitleLable];
    [mainBg addSubview:littleTitleLable];
    tmpTopPadding = titleTopPadding*3;
    [littleTitleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(littlelableSize.width));
        make.height.equalTo(@(titleHeightOfBgHeight*onCalHeight));
    }];

    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight+gapPadding * 2;
    UIView *mobileView = [[UIView alloc] init];
    [mainBg addSubview:mobileView];
    [mobileView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
        
    self.mobile_area_tf = [self customTextfieldWidgetWithLeftView:textfield_mobile rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_AREA_CODE")];
    self.mobile_area_tf.enabled = NO;
    [self.mobile_area_tf setBackground:GetImage(textfield_area_left)];
    self.mobile_area_tf.returnKeyType = UIReturnKeyDone;
    self.mobile_area_tf.keyboardType = UIKeyboardTypeEmailAddress;
    self.mobile_area_tf.clearButtonMode = UITextFieldViewModeNever;
    [mobileView addSubview:self.mobile_area_tf];
    [_mobile_area_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(mobileView);
        make.left.equalTo(mobileView);
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    self.mobile_area_tf.text = self.phoneModel.selectedAreaCodeValue;
    UIButton *areaPromptBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [mainBg addSubview:areaPromptBtn];
    [areaPromptBtn addTarget:self action:@selector(pushAreaTable:) forControlEvents:UIControlEventTouchUpInside];
    [areaPromptBtn setTag:kRegisterGetAreaCodeBtnTag];
    [areaPromptBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.mobile_area_tf);
        make.center.equalTo(self.mobile_area_tf);
    }];
    
    UIImageView *areaPromptImage = [[UIImageView alloc] initWithImage:GetImage(textfield_area_prompt)];
    [areaPromptBtn addSubview:areaPromptImage];
    [areaPromptImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_mobile_area_tf);
        make.right.equalTo(_mobile_area_tf.mas_right).equalTo(@(-(loginBtnWidthOfBgWidth*onCalWidth*0.03)));
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.05));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight*0.25));
    }];
        
    self.mobile_phone_tf = [self customTextfieldWidgetWithLeftView:nil rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_PHONE_CODE")];
    [self.mobile_phone_tf setBackground:GetImage(textfield_area_right)];
    self.mobile_phone_tf.returnKeyType = UIReturnKeyDone;
    self.mobile_phone_tf.keyboardType = UIKeyboardTypeEmailAddress;
    [mobileView addSubview:self.mobile_phone_tf];
    [self.mobile_phone_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(mobileView);
        make.right.equalTo(mobileView);
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth*0.48));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];

    tmpTopPadding = titleTopPadding+titleHeightOfBgHeight+textFieldHeightOfBgHeight*2+gapPadding*3;
    self.verfication_tf = [self customTextfieldWidgetWithLeftView:textfield_verfication rightView:nil placeholder:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_VF_CODE")];
    self.verfication_tf.returnKeyType = UIReturnKeyDone;
    self.verfication_tf.keyboardType = UIKeyboardTypeEmailAddress;
    [mainBg addSubview:self.verfication_tf];
    [self.verfication_tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.left.equalTo(_mobile_area_tf.mas_left);
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth * 0.73));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];
    
    gama_getVfBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_PHONE_BIND_FETCH_CODE_TEXT")  backgroundImage:btn_bg tag:kRegisterBindPhoneVfCodeBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [mainBg addSubview:gama_getVfBtn];
    [gama_getVfBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding*onCalHeight));
        make.right.equalTo(_mobile_phone_tf.mas_right);
        make.width.equalTo(@(loginBtnWidthOfBgWidth*onCalWidth * 0.23));
        make.height.equalTo(@(textFieldHeightOfBgHeight*onCalHeight));
    }];

    CGFloat btnWidth = loginBtnWidthOfBgWidth*onCalWidth*0.45;
    
    // 确定按钮
    m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"GAMA_PHONE_BIND_BTN_TITLE_TEXT")  backgroundImage:btn_bg tag:kRegisterNeedBindBtnTag selector:@selector(registerViewBtnAction:) target:self];
    [mainBg addSubview:m_comfirmBtn];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.bottom.equalTo(@(-200/oriBgImgHeight * onCalHeight));
        make.width.equalTo(@(btnWidth));
        make.height.equalTo(@(comfirmBtnHeightOfBgHeight*onCalHeight));
    }];
}


@end
