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
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        self.backgroundColor = color;// 底图透明，控件不透明
        self.layer.cornerRadius = 10; //设置圆角
//        self.layer.backgroundColor = [UIColor blackColor].CGColor;
//        self.layer.borderWidth = 2;
        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        //登入頁logo
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:@"修改密碼"];
        mLoginTitleView.delegate = self.delegate;//此处不起作用
        
        [self addSubview:mLoginTitleView];
       [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
          make.top.mas_equalTo(self.mas_top).mas_offset(8);
           make.centerX.mas_equalTo(self);
          make.width.mas_equalTo(self).mas_offset(-12);
           make.height.mas_equalTo(kPageTitleHeight);
       }];
          
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        [self addSubview:accountSDKTextFiledView];
        accountSDKTextFiledView.inputUITextField.delegate = self;
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(20);
            make.width.mas_equalTo(self).offset(-kInputTextFiledMarginLeftRight);
            make.height.mas_equalTo(kInputTextFiledHeight * 1.2);
         }];
        
        
        //旧密碼
        oldPasswordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_Old)];
       [self addSubview:oldPasswordSDKTextFiledView];
           oldPasswordSDKTextFiledView.inputUITextField.delegate = self;
       [oldPasswordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
           
           make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(10);
           make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
           make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
           make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        //新密碼
         newPasswordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password_New)];
        [self addSubview:newPasswordSDKTextFiledView];
             newPasswordSDKTextFiledView.inputUITextField.delegate = self;
        [newPasswordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(oldPasswordSDKTextFiledView.mas_bottom).mas_offset(10);
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
         }];

        
         //确认
      UIButton *okBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_OK) tag:kChangePwdActTag selector:@selector(registerViewBtnAction:)  target:self];
      [self addSubview:okBtn];
      
      [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
          make.centerX.equalTo(self);
          make.top.equalTo(newPasswordSDKTextFiledView.mas_bottom).mas_offset(40);
          make.width.mas_equalTo(self).offset(-kInputTextFiledMarginLeftRight);
          make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
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
