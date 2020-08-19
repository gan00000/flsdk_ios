//
//  GamaPFAccountManagerView.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/16.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "GamaPFAccountManagerView.h"
#import "HelloHeader.h"

#define AccountManager_BindPhoneBtn_Tag                 55001
#define AccountManager_ChangePwdBtn_Tag                 55002
#define AccountManager_BindAccountBtn_Tag               55003
#define AccountManager_Req_ChangePwdBtnn_Tag            55004
#define AccountManager_Req_BindAccountBtn_Tag           55005
#define AccountManager_Req_ReceiveBindPhoneGiftBtn_Tag  55006

#define kOldPwdInputViewTag         55007
#define kNewPwdInputViewTag         55008
#define kNameInputViewTag           55009
#define kEmailInputViewTag          55010
#define kToGetGiftViewTag           55011
#define kRewardTipsTag              55012
#define kAccountLabelTag            55013

@interface GamaPFAccountManagerView () <UITextFieldDelegate>
//@property (nonatomic, assign) BOOL m_hasReceiveBindPhoneGift;
@property (nonatomic, strong) UIButton *changePwdBtn;
@property (nonatomic, strong) UIButton *bindAccountBtn;
@property (nonatomic, strong) UIButton *bindPhoneBtn;
@end

@implementation GamaPFAccountManagerView
{
    PlatformAccountType m_account_type;
    
    UITextField *name_tf;
    UITextField *old_pwd_tf;
    UITextField *new_pwd_tf;
    UITextField *email_tf;
    
    BOOL m_hasBindPhone;
    BOOL m_hasBindEmail;
    BOOL m_hasReceiveBindPhoneGift;
    
    NSString *m_bindBtnTitle;
    NSString *m_curAccount;
    NSString *m_bindPhone;
    
    CGFloat leftLabelWidth;
    CGFloat onCalWidth ;
    CGFloat onCalHeight ;
    
    CGFloat tfWidthOfBgWight ;
    CGFloat tfHeightOfHeight ;
    CGFloat gapDistant ;
    CGFloat tmpTopPadding ;
    
    GamaThirdPlatform m_registerPlatform;
    
    // 输入时键盘相关
    CGFloat keyboarHeight;
    CGFloat animatedDistance;
    // Get the duration of the animation.
    NSTimeInterval animationDuration;
}

@synthesize bindAccountBtn = _bindAccountBtn, changePwdBtn = _changePwdBtn, bindPhoneBtn = _bindPhoneBtn;

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame accountType:(PlatformAccountType)type
{
    self = [super initWithFrame:frame];
    if (self) {
        m_account_type = type;
        [self _propertiesInit];
        [self _getAccountInfo];
        [self _regNote];
    }
    
    return self;
}

#pragma mark - Private

- (void)_regNote
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:NOTI_TOPBAR_BACK object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:GAMA_THIRD_BINDING_SUCCESS object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:GAMA_THIRD_BINDING_FAIL object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:GAMA_RESET_PASSWORD_SUCCESS_IN object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:GAMA_RESET_PASSWORD_FAIL_IN object:nil];
}

- (void)_propertiesInit
{
    m_hasBindPhone = NO;
    m_hasBindEmail = NO;
    m_hasReceiveBindPhoneGift = NO;
    m_bindBtnTitle = @"";
    m_curAccount = @"";
    m_bindPhone = @"";
    
    leftLabelWidth = 100.0f;
    
    m_registerPlatform = 0;
    
    onCalWidth = [ViewCalculationCriteria shareCriteria].calWidth;
    onCalHeight = [ViewCalculationCriteria shareCriteria].calHeight;
    
    tfWidthOfBgWight = 773.0f/bgOriginWidth;
    tfHeightOfHeight = 80.0f/bgOriginHeight;
    gapDistant = 60.0f/bgOriginHeight * onCalHeight;
    tmpTopPadding = gapDistant;
}

- (void)_getAccountInfo
{
    if([GamaPlatformUserShareData sharePlatUser].isObtainUserInfo) {
        NSString *name              = [GamaPlatformUserShareData sharePlatUser].name;
        NSString *telephone         = [GamaPlatformUserShareData sharePlatUser].telephone;
        NSString *email             = [GamaPlatformUserShareData sharePlatUser].email;
        NSString *registPlatform    = [GamaPlatformUserShareData sharePlatUser].registPlatform;
        
        if (name && ![name isEqualToString:@""]) {
            //starpy account
            m_account_type = Account_Starpy;
            m_curAccount = name;
        } else {
            m_account_type = Account_Non_Starpy;
            
            // non starpy account
            if (registPlatform && ![registPlatform isEqualToString:@""]) {
                
                if ([registPlatform isEqualToString:_SDK_PLAT_FB]) {
                    // fb
                    m_bindBtnTitle = strFacebookBind;
                    m_curAccount = @"Facebook";
                    m_registerPlatform = Gama_Facebook;
                } else if ([registPlatform isEqualToString:_SDK_PLAT_GC]) {
                    // gc
                    m_bindBtnTitle = strGameCenterBind;
                    m_curAccount = @"GameCenter";
                    m_registerPlatform = Gama_GameCenter;
                } else if ([registPlatform isEqualToString:_SDK_PLAT_MAC]) {
                    // unique
                    m_bindBtnTitle = strGuestBind;
                    m_curAccount = @"Guest";
                }
            }
        }
        
        if (telephone && ![telephone isEqualToString:@""]) {
            // had bind phone
            m_hasBindPhone = YES;
            m_bindPhone = telephone;
            
            if ([GamaPlatformUserShareData sharePlatUser].isObtainBindPhoneInfo) {
                m_hasReceiveBindPhoneGift = [[GamaPlatformUserShareData sharePlatUser].isReceive boolValue];  // kvo change btn title
            }            
        }
        
        if (email && ![email isEqualToString:@""]) {
            // had bind email
            m_hasBindEmail = YES;
        }
        
        // init view
        [self customInit];
    }
}

#pragma mark - Init

- (void)customInit
{
    CGFloat topPadding = 0;
    // cur account label
    UILabel *account = [[UILabel alloc] initWithFrame:CGRectZero];
    account.backgroundColor = [UIColor clearColor];
    account.textColor = [UIColor whiteColor];
    account.textAlignment = NSTextAlignmentLeft;
    account.tag = kAccountLabelTag;
    NSString *accountName = [NSString stringWithFormat:@"%@: %@",SDKConReaderGetLocalizedString(@"TXT_ACCOUNT"),m_curAccount];
    account.text = accountName;
    [self addSubview:account];
    CGSize accountSize = [GamaUtils calculateSizeOfLabel:account];
    [account mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    
    topPadding = tfHeightOfHeight*onCalHeight;
    UIView *phoneInfoView = [[UIView alloc] initWithFrame:CGRectZero];
    phoneInfoView.backgroundColor = [UIColor clearColor];
    [self addSubview:phoneInfoView];
    [phoneInfoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    
    // 若已绑定手机号，根据是否领取奖励区分显示
    // 若绑定了手机，但是没领取奖励，显示手机号码，下面再多加一行显示领取按钮，和提示
    NSString *titleOfBindPhoneBtn = SDKConReaderGetLocalizedString(@"BTN_TITLE_TO_BIND_PHONE");
    
    if (m_hasBindPhone) {
        // 仅显示手机信息
        UILabel *phoneLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        phoneLabel.backgroundColor = [UIColor clearColor];
        phoneLabel.textAlignment = NSTextAlignmentLeft;
        phoneLabel.text = [NSString stringWithFormat:@"%@: %@",SDKConReaderGetLocalizedString(@"TXT_BIND_PHONE"),m_bindPhone];
        phoneLabel.textColor = [UIColor whiteColor];
        [phoneInfoView addSubview:phoneLabel];
        [phoneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
            make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
        }];
        
        
        topPadding = tfHeightOfHeight*onCalHeight*2;
        
        UIView *toGetGiftView = [[UIView alloc] initWithFrame:CGRectZero];
        toGetGiftView.backgroundColor = [UIColor clearColor];
        toGetGiftView.tag = kToGetGiftViewTag;
        [self addSubview:toGetGiftView];
        [toGetGiftView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
            make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
        }];
        
        titleOfBindPhoneBtn = SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_CLICK_TO_RECEIVE");
        self.bindPhoneBtn = [GamaUtils initBtnWithTitle:titleOfBindPhoneBtn tag:AccountManager_Req_ReceiveBindPhoneGiftBtn_Tag selector:@selector(btnClicked:) target:self];
        [self.bindPhoneBtn.layer setBorderColor:[UIColor clearColor].CGColor];
        [self.bindPhoneBtn.layer setBorderWidth:0.0f];
        [self.bindPhoneBtn.layer setMasksToBounds:YES];
        [self.bindPhoneBtn.layer setCornerRadius:0.0f];
        [self.bindPhoneBtn setTitleColor:[UIColor colorWithHexString:kBtnBgColor] forState:0];
        [toGetGiftView addSubview:self.bindPhoneBtn];
        topPadding += accountSize.height+10;
        CGSize bindBtnSize = [GamaUtils calculateSizeOfLabel:self.bindPhoneBtn.titleLabel];
        [self.bindPhoneBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(0));
            make.width.equalTo(@(bindBtnSize.width+10));
            make.height.equalTo(@(bindBtnSize.height));
        }];
        
        
        // bind tips
        GamaLabel *tips = [[GamaLabel alloc] initWithFrame:CGRectZero];
        tips.tag = kRewardTipsTag;
        tips.backgroundColor = [UIColor clearColor];
        tips.textColor = [UIColor whiteColor];
        tips.text = SDKConReaderGetLocalizedString(@"TXT_PF_PHONE_BIND_REWARD_TIPS");
        [tips setSpVerticalAlignment:VerticalAlignmentBottom];
        [tips setFont:[UIFont fontWithName:LABEL_FONT_NAME size:10]];
        [toGetGiftView addSubview:tips];
        
        if (m_hasReceiveBindPhoneGift) {
            [self.bindPhoneBtn setTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_RECEIVE") forState:0];
            self.bindPhoneBtn.backgroundColor = [UIColor lightGrayColor];
            self.bindPhoneBtn.enabled = NO;
            
            tips.text = [GamaPlatformUserShareData sharePlatUser].rewardName;
        }
        
        CGSize tipSize = [GamaUtils calculateSizeOfLabel:tips];
        [tips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(bindBtnSize.width+10+10));
            make.width.equalTo(@(tipSize.width+10));
            make.height.equalTo(@(bindBtnSize.height));
        }];
        
    } else {
        self.bindPhoneBtn = [GamaUtils initBtnWithTitle:titleOfBindPhoneBtn tag:AccountManager_BindPhoneBtn_Tag selector:@selector(btnClicked:) target:self];
        [self.bindPhoneBtn.layer setBorderColor:[UIColor clearColor].CGColor];
        [self.bindPhoneBtn.layer setBorderWidth:0.0f];
        [self.bindPhoneBtn.layer setMasksToBounds:YES];
        [self.bindPhoneBtn.layer setCornerRadius:0.0f];
        [self.bindPhoneBtn setTitleColor:[UIColor colorWithHexString:kBtnBgColor] forState:0];
        [phoneInfoView addSubview:self.bindPhoneBtn];
        topPadding += accountSize.height+10;
        CGSize bindBtnSize = [GamaUtils calculateSizeOfLabel:self.bindPhoneBtn.titleLabel];
        [self.bindPhoneBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(0));
            make.width.equalTo(@(bindBtnSize.width+10));
            make.height.equalTo(@(bindBtnSize.height));
        }];
        
        // bind tips
        GamaLabel *tips = [[GamaLabel alloc] initWithFrame:CGRectZero];
        tips.backgroundColor = [UIColor clearColor];
        tips.textAlignment = NSTextAlignmentLeft;
        tips.textColor = [UIColor whiteColor];
        tips.text = SDKConReaderGetLocalizedString(@"TXT_PF_PHONE_BIND_REWARD_TIPS");
        [tips setSpVerticalAlignment:VerticalAlignmentBottom];
        [tips setFont:[UIFont fontWithName:LABEL_FONT_NAME size:10]];
        [phoneInfoView addSubview:tips];
        CGSize tipSize = [GamaUtils calculateSizeOfLabel:tips];
        [tips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(bindBtnSize.width+10+10));
            make.width.equalTo(@(tipSize.width+10));
            make.height.equalTo(@(bindBtnSize.height));
        }];
    }
    
    
    // change pwd btn
    topPadding += tfHeightOfHeight*onCalHeight;
    self.changePwdBtn = [GamaUtils initBtnWithTitle:strChangePwd tag:AccountManager_ChangePwdBtn_Tag selector:@selector(btnClicked:) target:self];
    [self.changePwdBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
    [self.changePwdBtn.layer setBorderWidth:1.0f];
    [self.changePwdBtn.layer setMasksToBounds:YES];
    [self.changePwdBtn.layer setCornerRadius:5.0f];
    [self.changePwdBtn setTitleColor:[UIColor whiteColor] forState:0];
    [self.changePwdBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
    [self addSubview:self.changePwdBtn];
    [self.changePwdBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    if (m_account_type == Account_Non_Starpy) {
        self.changePwdBtn.hidden = YES;
    }
    
    self.bindAccountBtn = [GamaUtils initBtnWithTitle:m_bindBtnTitle tag:AccountManager_BindAccountBtn_Tag selector:@selector(btnClicked:) target:self];
    [self.bindAccountBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
    [self.bindAccountBtn.layer setBorderWidth:1.0f];
    [self.bindAccountBtn.layer setMasksToBounds:YES];
    [self.bindAccountBtn.layer setCornerRadius:5.0f];
    [self.bindAccountBtn setTitleColor:[UIColor whiteColor] forState:0];
    [self.bindAccountBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
    [self addSubview:self.bindAccountBtn];
    [self.bindAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    if (m_account_type == Account_Starpy) {
        self.bindAccountBtn.hidden = YES;
    }
}


#pragma mark - Btn Action

- (void)btnClicked:(UIButton *)sender
{
    switch (sender.tag) {
        case AccountManager_BindPhoneBtn_Tag:
            [self bindPhoneView];
            break;
        case AccountManager_ChangePwdBtn_Tag:
            [self changePwdView];
            break;
        case AccountManager_BindAccountBtn_Tag:
            [self bindAccountView];
            break;
        case AccountManager_Req_BindAccountBtn_Tag:
            [self req_BindAccount];
            break;
        case AccountManager_Req_ChangePwdBtnn_Tag:
            [self req_changePwd];
            break;
        case AccountManager_Req_ReceiveBindPhoneGiftBtn_Tag:
            [self req_receiveBindPhoneGift];
            break;
            
        default:
            break;
    }
}

#pragma mark - Req

- (void)req_changePwd
{
    if (![GamaUtils validUserName:old_pwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")];
        return;
    }
    
    if (![GamaUtils validUserName:new_pwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")];
        return;
    }
    
    if ([old_pwd_tf.text isEqualToString:new_pwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_OLD_PWD_AND_NEW_PWD_RULE")];
        return;
    }
    
    // loading
    [GamaUtils gamaStarLoadingAtView:self];
    
    NSString *name = [m_curAccount copy];
    NSString *oldPwd = [old_pwd_tf.text copy];
    NSString *newPwd = [new_pwd_tf.text copy];
    [GamaNetEngine resetPasswordWithUserName:[name autorelease]
                                 oldPassword:[oldPwd autorelease]
                                 newPassword:[newPwd autorelease]];
    
}

- (void)req_BindAccount
{
    if (![GamaUtils validUserName:name_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if (![GamaUtils validUserName:new_pwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_PASSWORD_RULE")];
        return;
    }
    
    if ([name_tf.text isEqualToString:new_pwd_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_AND_PWD_RULE")];
        return;
    }
    // 如果邮箱存在，检查邮箱格式
    if (![email_tf.text isEqualToString:@""] && ![GamaUtils validEmail:email_tf.text]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_EMAIL_RULE")];
        return;
    }
    
    // loading
    [GamaUtils gamaStarLoadingAtView:self];
    
    // 绑定请求
    NSString *name = name_tf.text;
    NSString *pwd = new_pwd_tf.text;
    NSString *email = email_tf.text;
    
    m_curAccount = name;
    
    if (m_bindBtnTitle == strGuestBind) {
        [GamaNetEngine bindingGuestAccountWithUserName:name
                                              password:pwd
                                                 email:email];
    } else {
        [GamaNetEngine bindingUserName:name
                              password:pwd
                                 email:email
                     withThirdPlatform:m_registerPlatform];
    }
    
}

- (void)req_receiveBindPhoneGift
{
    NSString *uid = [SdkUserInfoModel shareInfoModel].userId;
    NSString *serverCode = [SdkUserInfoModel shareInfoModel].serverCode;
    NSString *roleId = [SdkUserInfoModel shareInfoModel].roleID;
    
    [GamaPlatformRequestor receivePhoneBindGiftWithUid:uid
                                          serverCode:serverCode
                                              roleId:roleId
                                          completion:^(NSDictionary * _Nullable resultDic) {
                                              
                                              [GamaUtils gamaToastWithMsg:resultDic[@"message"]];
                                              
                                              if ([resultDic[@"code"] integerValue] == 1000) {
                                                  
                                                  // 修改按钮状态
                                                  self.bindPhoneBtn.enabled = NO;
                                                  [self.bindPhoneBtn setTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_RECEIVE") forState:0];
                                                  self.bindPhoneBtn.backgroundColor = [UIColor lightGrayColor];

                                                  [GamaPlatformUserShareData sharePlatUser].isReceive = @"1";
                                                  
                                              }
                                          }];
}

#pragma mark - Other View

- (void)_removeSubviews:(UIView *)aView
{
    for (UIView *view in aView.subviews) {
        [view removeFromSuperview];
    }
}

- (void)bindPhoneView
{
    [self _removeSubviews:self];
    
    GamaPFBindRewardView *bindPhoneView = [[GamaPFBindRewardView alloc] initWithFrame:self.frame];
    [self addSubview:bindPhoneView];
    [bindPhoneView release];
}

- (void)bindAccountView
{
    self.bindAccountBtn.hidden = YES;
    [self _backBtnCameUp];
    
    tmpTopPadding += (self.changePwdBtn.frame.size.height);
    UIView *nameInput = [[UIView alloc] init];
    nameInput.backgroundColor = [UIColor whiteColor];
    [nameInput.layer setCornerRadius:5.0f];
    nameInput.tag = kNameInputViewTag;
    [self addSubview:nameInput];
    [nameInput release];
    [nameInput mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    UILabel *nametips = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    nametips.textAlignment = NSTextAlignmentCenter;
    [nametips setTextColor:[UIColor colorWithHexString:kTextColor]];
    nametips.text = SDKConReaderGetLocalizedString(@"TXT_ACCOUNT");
    [nameInput addSubview:nametips];
    [nametips release];
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(nametips.frame.size.width-1, 2, 1, nametips.frame.size.height-4)];
    line.backgroundColor = [UIColor colorWithHexString:kTextColor];
    [nametips addSubview:line];
    [line release];
    name_tf = [[UITextField alloc] initWithFrame:CGRectMake(leftLabelWidth+10, 0, tfWidthOfBgWight*onCalWidth-leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    name_tf.placeholder = SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_RULE");
    [GamaUtils makeTextFieldPlaceHolderProperty:name_tf ];
    name_tf.delegate = self;
    name_tf.returnKeyType = UIReturnKeyNext;
    [nameInput addSubview:name_tf];
    
    // pwd
    tmpTopPadding += (nameInput.frame.size.height + gapDistant*2);
    UIView *newPwdInput = [[UIView alloc] init];
    newPwdInput.backgroundColor = [UIColor whiteColor];
    [newPwdInput.layer setCornerRadius:5.0f];
    newPwdInput.tag = kNewPwdInputViewTag;
    [self addSubview:newPwdInput];
    [newPwdInput mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    UILabel *newtips = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    newtips.textAlignment = NSTextAlignmentCenter;
    [newtips setTextColor:[UIColor colorWithHexString:kTextColor]];
    newtips.text = SDKConReaderGetLocalizedString(@"TXT_PASSWORD");
    [newPwdInput addSubview:newtips];
    UIView *newline = [[UIView alloc] initWithFrame:CGRectMake(newtips.frame.size.width-1, 2, 1, newtips.frame.size.height-4)];
    newline.backgroundColor = [UIColor colorWithHexString:kTextColor];
    [newtips addSubview:newline];
    new_pwd_tf = [[UITextField alloc] initWithFrame:CGRectMake(leftLabelWidth+10, 0, tfWidthOfBgWight*onCalWidth-leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    new_pwd_tf.placeholder = SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_RULE");
    [GamaUtils makeTextFieldPlaceHolderProperty:new_pwd_tf ];
    new_pwd_tf.delegate = self;
    new_pwd_tf.returnKeyType = UIReturnKeyNext;
    [newPwdInput addSubview:new_pwd_tf];
    
    // email
    tmpTopPadding += (newPwdInput.frame.size.height + gapDistant*2);
    UIView *emailInput = [[UIView alloc] init];
    emailInput.backgroundColor = [UIColor whiteColor];
    [emailInput.layer setCornerRadius:5.0f];
    emailInput.tag = kEmailInputViewTag;
    [self addSubview:emailInput];
    [emailInput mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    UILabel *tips = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    tips.textAlignment = NSTextAlignmentCenter;
    [tips setTextColor:[UIColor colorWithHexString:kTextColor]];
    tips.text = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_EMAIL");
    [emailInput addSubview:tips];
    UIView *emalline = [[UIView alloc] initWithFrame:CGRectMake(tips.frame.size.width-1, 2, 1, tips.frame.size.height-4)];
    emalline.backgroundColor = [UIColor colorWithHexString:kTextColor];
    [tips addSubview:emalline];
    email_tf = [[UITextField alloc] initWithFrame:CGRectMake(leftLabelWidth+10, 0, tfWidthOfBgWight*onCalWidth-leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    email_tf.placeholder = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_EMAIL_OPTIONAL");
    [GamaUtils makeTextFieldPlaceHolderProperty:email_tf ];
    email_tf.delegate = self;
    email_tf.returnKeyType = UIReturnKeyDone;
    [emailInput addSubview:email_tf];
    
    // 确定绑定按钮
    UIButton *m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_PHONE_BIND_COMFIRM") tag:AccountManager_Req_BindAccountBtn_Tag selector:@selector(btnClicked:) target:self];
    [m_comfirmBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
    [m_comfirmBtn.layer setBorderWidth:1.0f];
    [m_comfirmBtn.layer setMasksToBounds:YES];
    [m_comfirmBtn.layer setCornerRadius:5.0f];
    [m_comfirmBtn setTitleColor:[UIColor whiteColor] forState:0];
    [m_comfirmBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
    [self addSubview:m_comfirmBtn];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.bottom.equalTo(@(-40/bgOriginHeight * onCalHeight));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
}

- (void)changePwdView
{
    if (m_hasReceiveBindPhoneGift) {
        self.bindPhoneBtn.hidden = YES;
        [[self viewWithTag:kRewardTipsTag] setHidden:YES];
        
        tmpTopPadding = tfHeightOfHeight*onCalHeight;
    }
    
    self.changePwdBtn.hidden = YES;
    [self _backBtnCameUp];
    
    if (m_hasBindPhone && !m_hasReceiveBindPhoneGift) {
        tmpTopPadding += (self.changePwdBtn.frame.size.height)+tfHeightOfHeight*onCalHeight;
    } else {
        tmpTopPadding += (self.changePwdBtn.frame.size.height);
    }
    UIView *oldPwdInput = [[UIView alloc] init];
    oldPwdInput.backgroundColor = [UIColor whiteColor];
    [oldPwdInput.layer setCornerRadius:5.0f];
    oldPwdInput.tag = kOldPwdInputViewTag;
    [self addSubview:oldPwdInput];
    [oldPwdInput mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    UILabel *tips = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    tips.textAlignment = NSTextAlignmentCenter;
    [tips setTextColor:[UIColor colorWithHexString:kTextColor]];
    tips.text = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_OLD_PWD");
    [oldPwdInput addSubview:tips];
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(tips.frame.size.width-1, 2, 1, tips.frame.size.height-4)];
    line.backgroundColor = [UIColor colorWithHexString:kTextColor];
    [tips addSubview:line];
    old_pwd_tf = [[UITextField alloc] initWithFrame:CGRectMake(leftLabelWidth+10, 0, tfWidthOfBgWight*onCalWidth-leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    old_pwd_tf.placeholder = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_OLD_PWD");
    [GamaUtils makeTextFieldPlaceHolderProperty:old_pwd_tf ];
    old_pwd_tf.delegate = self;
    old_pwd_tf.returnKeyType = UIReturnKeyNext;
    [oldPwdInput addSubview:old_pwd_tf];
    
    
    tmpTopPadding += (oldPwdInput.frame.size.height + gapDistant*2);
    UIView *newPwdInput = [[UIView alloc] init];
    newPwdInput.backgroundColor = [UIColor whiteColor];
    [newPwdInput.layer setCornerRadius:5.0f];
    newPwdInput.tag = kNewPwdInputViewTag;
    [self addSubview:newPwdInput];
    [newPwdInput mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(tmpTopPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    UILabel *newtips = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    newtips.textAlignment = NSTextAlignmentCenter;
    [newtips setTextColor:[UIColor colorWithHexString:kTextColor]];
    newtips.text = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_NEW_PWD");
    [newPwdInput addSubview:newtips];
    UIView *newline = [[UIView alloc] initWithFrame:CGRectMake(newtips.frame.size.width-1, 2, 1, newtips.frame.size.height-4)];
    newline.backgroundColor = [UIColor colorWithHexString:kTextColor];
    [newtips addSubview:newline];
    
    new_pwd_tf = [[UITextField alloc] initWithFrame:CGRectMake(leftLabelWidth+10, 0, tfWidthOfBgWight*onCalWidth-leftLabelWidth, tfHeightOfHeight*onCalHeight)];
    new_pwd_tf.placeholder = SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_NEW_PWD");
    [GamaUtils makeTextFieldPlaceHolderProperty:new_pwd_tf ];
    new_pwd_tf.delegate = self;
    new_pwd_tf.returnKeyType = UIReturnKeyDone;
    [newPwdInput addSubview:new_pwd_tf];
    
    
    // 确定修改按钮
    tmpTopPadding += (oldPwdInput.frame.size.height + gapDistant*2);
    UIButton *m_comfirmBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") tag:AccountManager_Req_ChangePwdBtnn_Tag selector:@selector(btnClicked:) target:self];
    [m_comfirmBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
    [m_comfirmBtn.layer setBorderWidth:1.0f];
    [m_comfirmBtn.layer setMasksToBounds:YES];
    [m_comfirmBtn.layer setCornerRadius:5.0f];
    [m_comfirmBtn setTitleColor:[UIColor whiteColor] forState:0];
    [m_comfirmBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
    [self addSubview:m_comfirmBtn];
    [m_comfirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.top.equalTo(@(tmpTopPadding));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
}

#pragma mark - 通知

- (void)_backBtnCameUp
{
    // back btn
    UIButton *backBtn = (UIButton *)[self.superview.superview.superview viewWithTag:backBtnTag];
    backBtn.hidden = NO;;
}

- (void)_notiAction:(NSNotification *)note
{
    NSString *noteName = note.name;
    if ([noteName isEqualToString:NOTI_TOPBAR_BACK]) {        
        // back btn
        UIButton *backBtn = (UIButton *)[self.superview.superview.superview viewWithTag:backBtnTag];
        backBtn.hidden = YES;
        
        self.bindPhoneBtn.hidden = NO;
        [[self viewWithTag:kRewardTipsTag] setHidden:NO];
        
        if (m_account_type == Account_Starpy) {
            self.changePwdBtn.hidden = NO;
            UIButton *btn_change = (UIButton *)[self viewWithTag:AccountManager_Req_ChangePwdBtnn_Tag];
            [btn_change removeFromSuperview];
            [(UIView *)[self viewWithTag:kOldPwdInputViewTag] removeFromSuperview];
            [(UIView *)[self viewWithTag:kNewPwdInputViewTag] removeFromSuperview];
        } else {
            self.bindAccountBtn.hidden = NO;
            [self _removeBindItems];
        }
//        tmpTopPadding = tfHeightOfHeight*onCalHeight;
        if (m_hasBindPhone && !m_hasReceiveBindPhoneGift) {
            tmpTopPadding = gapDistant;
        } else {
            tmpTopPadding = tfHeightOfHeight*onCalHeight;
        }
    }
    else if ([noteName isEqualToString:UIKeyboardWillShowNotification]) {
        NSDictionary *userInfo = note.userInfo;
        NSValue *aValue = userInfo[UIKeyboardFrameEndUserInfoKey];
        CGRect keyboardRect = [aValue CGRectValue];
        keyboarHeight = keyboardRect.size.height;
        
        // Get the duration of the animation.
        NSValue *animationDurationValue = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
        [animationDurationValue getValue:&animationDuration];
    }
    else if ([noteName isEqualToString:GAMA_THIRD_BINDING_SUCCESS]) {
        [GamaUtils gamaStopLoadingAtView:self];
        m_account_type = Account_Starpy;
        [self _redrawCurUI];
    }
    else if ([noteName isEqualToString:GAMA_THIRD_BINDING_FAIL]) {
        [GamaUtils gamaStopLoadingAtView:self];
    }
    else if ([noteName isEqualToString:GAMA_RESET_PASSWORD_SUCCESS_IN]) {
        [GamaUtils gamaStopLoadingAtView:self];
        [self _redrawCurUI];
    }
    else if ([noteName isEqualToString:GAMA_RESET_PASSWORD_FAIL_IN]) {
        [GamaUtils gamaStopLoadingAtView:self];
    }
}

- (void)_removeBindItems
{
    UIButton *btn_bind = (UIButton *)[self viewWithTag:AccountManager_Req_BindAccountBtn_Tag];
    [btn_bind removeFromSuperview];
    [(UIView *)[self viewWithTag:kNameInputViewTag] removeFromSuperview];
    [(UIView *)[self viewWithTag:kNewPwdInputViewTag] removeFromSuperview];
    [(UIView *)[self viewWithTag:kEmailInputViewTag] removeFromSuperview];
}

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    switch (m_account_type) {
        case Account_Starpy:
        {
            if (textField.returnKeyType == UIReturnKeyNext) {
                [textField resignFirstResponder];
                if ([textField isEqual:old_pwd_tf]) {
                    [new_pwd_tf becomeFirstResponder];
                }
            }
            
            if (textField.returnKeyType == UIReturnKeyDone) {
                [textField resignFirstResponder];
                // comfirm btn down
                [self req_changePwd];
            }
        }
            break;
            
        default:
        {
            if (textField.returnKeyType == UIReturnKeyNext) {
                [textField resignFirstResponder];
                if ([textField isEqual:name_tf]) {
                    [new_pwd_tf becomeFirstResponder];
                }
                if ([textField isEqual:new_pwd_tf]) {
                    [email_tf becomeFirstResponder];
                }
            }
            
            if (textField.returnKeyType == UIReturnKeyDone) {
                [textField resignFirstResponder];
                // comfirm btn down
                [self req_BindAccount];
            }
        }
            break;
    }
    
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (keyboarHeight <= 0) {
        // 第一次时间差原因，keyboardHeight = 0，因此需要等到键盘完全弹出之后再执行
        dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(animationDuration * NSEC_PER_SEC));
        dispatch_after(delayTime, dispatch_get_main_queue(), ^{
            [self _makeTextFieldAnimation:textField];
        });
    }
    else {
        [self _makeTextFieldAnimation:textField];
    }
}

- (void)_makeTextFieldAnimation:(UITextField *)textField
{
    UIView *masterView = self.superview.superview.superview.superview.superview;
    CGRect tfRectSystem = [textField convertRect:textField.bounds fromView:nil];//textField 相对于window坐标系的rect
    
    //    NSLog(@"distantRect = %@  \n keyboarHeight = %f",NSStringFromCGRect(tfRectSystem),keyboarHeight);//第一次 keyboardRect 为 0 0 0 0，第二次之后才正确
    
    CGFloat distant = (winHeight - (fabs(tfRectSystem.origin.y) + tfRectSystem.size.height)) - keyboarHeight;
    if (distant < 0) {
        animatedDistance = fabs(distant) + 10; // 加多一点
    } else {
        animatedDistance = 0;
    }
    
    CGRect viewFrame = masterView.frame;
    viewFrame.origin.y -= animatedDistance;
    [self _animationWithView:masterView frame:viewFrame duration:animationDuration];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    UIView *masterView = self.superview.superview.superview.superview.superview;
    CGRect viewFrame = masterView.frame;
    viewFrame.origin.y += animatedDistance;
    [self _animationWithView:masterView frame:viewFrame duration:animationDuration];
}

- (void)_animationWithView:(UIView *)view frame:(CGRect)viewFrame duration:(NSTimeInterval)duration
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:duration];
    [view setFrame:viewFrame];
    [UIView commitAnimations];
}

#pragma mark - Updata UI

- (void)_redrawCurUI
{
    UIButton *backBtn = (UIButton *)[self.superview.superview.superview viewWithTag:backBtnTag];
    backBtn.hidden = YES;
    
    // 重新绘制画面
    [self _removeSubviews:self];
    
    [self customInit];
    
    if (m_hasBindPhone && !m_hasReceiveBindPhoneGift) {
        tmpTopPadding = gapDistant;
    } else {
        tmpTopPadding = tfHeightOfHeight*onCalHeight;
    }
}

@end
