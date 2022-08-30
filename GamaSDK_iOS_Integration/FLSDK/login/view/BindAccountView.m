//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "BindAccountView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "LoginHelper.h"
#import "SdkUtil.h"
#import "AccountLoginView.h"

@implementation BindAccountView

{
    SDKTextFiledView *thirdAccountSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *pwdSDKTextFiledView;
    
//    SDKTextFiledView *vfCodeFiledView;
    //    PhoneView *mPhoneView;
    
    LoginTitleView   *mLoginTitleView;
//    UIButton *getVfCodeBtn;
    
    
//    int phoneCountdown;
//    NSTimer *downTimer;
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        //        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        //        self.backgroundColor = color;// 底图透明，控件不透明
        //        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
        //        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        //title
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:GetString(@"text_update_account") hander:^(NSInteger) {
            
            [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) toPage:(CURRENT_PAGE_TYPE_WELCOME_BACK)];
        }];
        //          mLoginTitleView.delegate = self.delegate;//此处不起作用
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            make.leading.trailing.mas_equalTo(self);
//            make.width.mas_equalTo(self);
            make.height.mas_equalTo(VH(40));
        }];
        
        
        thirdAccountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        thirdAccountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:thirdAccountSDKTextFiledView];
        
        [thirdAccountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(40);
            make.trailing.mas_equalTo(self).mas_offset(-40);
            make.height.mas_equalTo(VH(40));

            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(25));
            
        }];
        
        
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);

            make.top.equalTo(thirdAccountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        
        //密码
        pwdSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        [self addSubview:pwdSDKTextFiledView];
        
        [pwdSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.height.mas_equalTo(thirdAccountSDKTextFiledView);
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(15));
            
        }];
        
        UILabel *bindTipLabel = [UIUtil initLabelWithText:GetString(@"text_bind_account_tips") fontSize:FS(10) textColor:[UIColor colorWithHexString:@"#C0C0C0"]];
        [self addSubview:bindTipLabel];
        
        [bindTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(thirdAccountSDKTextFiledView);
            make.trailing.mas_equalTo(thirdAccountSDKTextFiledView);
            make.top.equalTo(pwdSDKTextFiledView.mas_bottom).mas_offset(VH(6));
            
        }];
        
        
        //確認
        UIButton *okBtn = [UIUtil initBtnWithTitleText:GetString(@"text_confire_update") fontSize:FS(17) textColor:[UIColor whiteColor] tag:kOkActTag selector:@selector(registerViewBtnAction:) target:self];
        
//        [okBtn setTitleColor:[UIColor whiteColor] forState:0];
        [okBtn.layer setCornerRadius:VH(25)];
//        okBtn.titleLabel.font = [UIFont systemFontOfSize:FS(17)];
        okBtn.backgroundColor = [UIColor colorWithHexString:@"#F94925"];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(bindTipLabel.mas_bottom).mas_offset(VH(32));
            make.width.mas_equalTo(pwdSDKTextFiledView);
            make.height.mas_equalTo(VH(50));
        }];
        
      
    }
    return self;
}

- (void)initData
{
    [super initData];
    AccountModel *tempAccountModel = (AccountModel *)self.fromPageParam;
    [AccountLoginView makeAccountFiledViewStatus:tempAccountModel accountView:thirdAccountSDKTextFiledView pwdView:nil];
    thirdAccountSDKTextFiledView.inputUITextField.enabled = NO;
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
     
        case kOkActTag:
        {
            SDK_LOG(@"kOkActTag");
            [self endEditing:YES];
            [self bindAccount];
        }
            
            
            break;
            
            
        default:
            break;
    }
}

-(void)bindAccount
{
    
    if (!self.fromPageParam) {
        [SdkUtil toastMsg:GetString(@"text_select_account")];
        return;
    }
    
    AccountModel * currentAccountModel = (AccountModel *)self.fromPageParam;
    //NSString *userName = mAccountModel.account;
    
    NSString *account = accountSDKTextFiledView.inputUITextField.text;
    NSString *pasword = pwdSDKTextFiledView.inputUITextField.text;
  
    
//    if ([StringUtil isEmpty:]) {
//        [SdkUtil toastMsg:GetString(@"py_password_empty")];
//        return;
//    }
 
    if (![SdkUtil validUserName:account]) {
        return;
    }
    
    
    if (![SdkUtil validPwd:pasword]) {
        return;
    }
    
    if (!currentAccountModel) {
        [SdkUtil toastMsg:GetString(@"text_select_account")];
        return;
    }
  
    [LoginHelper bindAccountAndRequest:self.delegate view:self account:currentAccountModel account:account pwd:pasword];
}


@end
