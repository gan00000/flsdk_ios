//
//  ChangePasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/13.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "ChangePasswordView.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "SDKTextFiledView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "GamaUtils.h"

@implementation ChangePasswordView
{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *oldPasswordSDKTextFiledView;
    SDKTextFiledView *newPasswordSDKTextFiledView;
    LoginTitleView *mLoginTitleView;
    
    UIButton *backBtn;
    UIButton *getVfCodeBtn;
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        self.layer.contents = (id)[UIImage gama_imageNamed:@"h_bg"].CGImage;
        
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.text = SDKConReaderGetLocalizedString(@"text_change_pwd");
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.font = [UIFont boldSystemFontOfSize:VH(38)];
        
        [self addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(100));
            make.leading.mas_equalTo(self).mas_offset(VW(40));
            make.trailing.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        backBtn = [UIUtil initBtnWithNormalImage:@"sdk_btn_back.png" highlightedImage:nil tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
        backBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(VW(16));
            make.top.equalTo(self).mas_offset(VH(55));
            make.height.mas_equalTo(VH(22));
            make.width.mas_equalTo(backBtn.mas_height);
        }];
        
        
        UIView * contentView = [[UIView alloc] init];
        contentView.layer.cornerRadius = VW(30);
        contentView.backgroundColor = [UIColor whiteColor];
        [self addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.right.mas_equalTo(self);
            make.top.mas_equalTo(self).mas_offset(VH(267));
        }];
        
        //登入頁logo
        UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"h_icon_en"]];
        logoImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:logoImageView];
        [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(211));
            make.leading.mas_equalTo(self).mas_offset(VW(32.5));
            make.width.mas_equalTo(VH(90));
            make.height.mas_equalTo(VH(90));
        }];
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
    
        [contentView addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(contentView).mas_offset(VH(44));
            make.leading.mas_equalTo(contentView).mas_offset(VW(30));
            make.trailing.mas_equalTo(contentView).mas_offset(-VW(48));
            make.height.mas_equalTo(VH(40));
        }];
        
        UIView *line1 = [[UIView alloc] init];
        line1.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line1];
        [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        
        //密碼
        oldPasswordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_Old)];
        
        [contentView addSubview:oldPasswordSDKTextFiledView];
        
        [oldPasswordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(24));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UIView *line2 = [[UIView alloc] init];
        line2.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line2];
        [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(oldPasswordSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        //新密碼
//         newPasswordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_New)];
//        [self addSubview:newPasswordSDKTextFiledView];
//             newPasswordSDKTextFiledView.inputUITextField.delegate = self;
//        [newPasswordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.top.equalTo(oldPasswordSDKTextFiledView.mas_bottom).mas_offset(10);
//            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//         }];
//
        newPasswordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_New)];
        
        [contentView addSubview:newPasswordSDKTextFiledView];
        
        [newPasswordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(oldPasswordSDKTextFiledView.mas_bottom).mas_offset(VH(24));
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        UIView *line3 = [[UIView alloc] init];
        line3.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line3];
        [line3 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(newPasswordSDKTextFiledView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];

        
         //确认
      UIButton *okBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_OK) tag:kChangePwdActTag selector:@selector(registerViewBtnAction:)  target:self];
      [self addSubview:okBtn];
      
      [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
          make.centerX.mas_equalTo(self);
          make.top.mas_equalTo(contentView).mas_offset(VH(380));
          make.width.mas_equalTo(VW(350));
          make.height.mas_equalTo(VH(50));
      }];
        
       // [self layoutIfNeeded];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    mLoginTitleView.delegate = self.delegate;
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    oldPasswordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    newPasswordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
}

- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kBackBtnActTag:
        {
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1];
            }
        }
            break;
            
        case kChangePwdActTag:
        {
            NSLog(@"kChangePwdActTag");
            NSString *userName = accountSDKTextFiledView.inputUITextField.text;
            NSString *oldPassword = oldPasswordSDKTextFiledView.inputUITextField.text;
            NSString *newPassword = newPasswordSDKTextFiledView.inputUITextField.text;
            
            if (!oldPassword || [oldPassword isEqualToString:@""]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD_OLD")];
                return;
            }
            if (!newPassword || [newPassword isEqualToString:@""]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD_NEW")];
                return;
            }
            
            if (!userName || [userName isEqualToString:@""]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_ACCOUNT")];
                return;
            }
            
            if (![GamaUtils validUserName:userName]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
                return;
            }
            
           
            if (![GamaUtils validPwd: newPassword]) {
                [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_ACCOUNT_AND_PWD_PROMT_RULE")];
                return;
            }
            
            
            if (userName==nil||
                [userName isEqualToString:@""]||
                oldPassword==nil||
                [oldPassword isEqualToString:@""]||
                newPassword==nil||
                [newPassword isEqualToString:@""])
            {
               
                [GamaAlertView showAlertWithMessage:SDKConReaderGetString(GAMA_TEXT_PARAMETER_NULL)];
                return;
            }
        
            [SDKRequest doChangePasswordWithUserName:userName andOldPassword:oldPassword andNewPassword:newPassword otherParamsDic:nil successBlock:^(id responseData) {
                CCSDKResponse *cc = (CCSDKResponse *)responseData;
                [[ConfigCoreUtil share] saveAccount:userName password:newPassword updateTime:NO];
                //通知更新登录界面的数据
                [GamaAlertView showAlertWithMessage: cc.message];
                if (self.delegate) {
                    [self.delegate changPasswordSuccess];
                }
                [self removeFromSuperview];//返回登录界面
                
            } errorBlock:^(BJError *error) {
                [GamaAlertView showAlertWithMessage:error.message];
            }];
        }
            
        break;
            
            
        default:
            break;
    }
}

@end
