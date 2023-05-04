







#import "ChangePasswordView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"

@implementation ChangePasswordView

{
    SDKTextFiledView *oldPwdSDKTextFiledView;
    SDKTextFiledView *newPwdSDKTextFiledView;
    SDKTextFiledView *againPwdSDKTextFiledView;
    

    
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    


}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        
        
        
        
        
        
        
        
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle_MMMethodMMM:GetString(wwwww_tag_wwwww_text_change_pwd) hander_MMMethodMMM:^(NSInteger) {
            
            [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_CHANGE_PWD) toPage_MMMethodMMM:(CURRENT_PAGE_TYPE_WELCOME_BACK)];
        }];
        
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            make.leading.trailing.mas_equalTo(self);

            make.height.mas_equalTo(VH(40));
        }];
        
        
        
        
        oldPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Old)];
        oldPwdSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:oldPwdSDKTextFiledView];
        
        [oldPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        
        newPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPwdSDKTextFiledView];
        
        [newPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(oldPwdSDKTextFiledView);
            make.trailing.mas_equalTo(oldPwdSDKTextFiledView);
            make.height.mas_equalTo(oldPwdSDKTextFiledView);

            make.top.equalTo(oldPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        againPwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType_MMMethodMMM:(SDKTextFiledView_Type_Password_Again)];
        [self addSubview:againPwdSDKTextFiledView];
        
        [againPwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(oldPwdSDKTextFiledView);
            make.trailing.mas_equalTo(oldPwdSDKTextFiledView);
            make.height.mas_equalTo(oldPwdSDKTextFiledView);
            make.top.equalTo(newPwdSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        
        UIButton *okBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire_change) fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
        

        [okBtn.layer setCornerRadius:VH(25)];

        okBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F94925];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(againPwdSDKTextFiledView.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(oldPwdSDKTextFiledView);
            make.height.mas_equalTo(VH(50));
        }];
        
        









        
    }
    return self;
}

- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
     
        case kOkActTag:
        {
            SDK_LOG(wwwww_tag_wwwww_kOkActTag);
            [self changePassword_MMMethodMMM];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)changePassword_MMMethodMMM
{
    
    if (!self.fromPageParam) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_select_account)];
        return;
    }
    
    AccountModel * mAccountModel = (AccountModel *)self.fromPageParam;
    NSString *userName = mAccountModel.account;
    
    NSString *oldPwd = oldPwdSDKTextFiledView.inputUITextField.text;
    
    NSString *newPwd = newPwdSDKTextFiledView.inputUITextField.text;
    NSString *againPwd = againPwdSDKTextFiledView.inputUITextField.text;
    
    if (![SdkUtil validUserName_MMMethodMMM:userName]) {
        return;
    }
    
    if ([StringUtil isEmpty_MMMethodMMM:oldPwd]) {
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_py_password_empty)];
        return;
    }
 
    if (![SdkUtil validPwd_MMMethodMMM:newPwd]) {
        return;
    }
    
    if (![SdkUtil validPwd_MMMethodMMM:againPwd]) {
        return;
    }
    
    if (![newPwd isEqualToString:againPwd]) {
    
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_pwd_not_equel)];
        return;
    }
   
    kWeakSelf
    [SDKRequest doChangePasswordWithUserName_MMMethodMMM:userName andOldPassword_MMMethodMMM:oldPwd andNewPassword_MMMethodMMM:newPwd otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^(id responseData) {
        
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_change_pwd_success)];
        if (weakSelf.delegate) {
            LoginResponse *cc = (LoginResponse *)responseData;
            cc.data.account = mAccountModel.account;
            cc.data.password = newPwd;
            cc.data.loginType = LOGIN_TYPE_SELF;
            [weakSelf.delegate handleLoginOrRegSuccess_MMMethodMMM:cc thirdPlate_MMMethodMMM:LOGIN_TYPE_SELF];
        }
        
    } errorBlock_MMMethodMMM:^(BJError *error) {
        
        [AlertUtil showAlertWithMessage_MMMethodMMM:error.message];
        
    }];
    
}












































































@end
