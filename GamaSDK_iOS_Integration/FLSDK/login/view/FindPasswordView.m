//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "FindPasswordView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "GamaUtils.h"

@implementation FindPasswordView

{
    SDKTextFiledView *accountSDKTextFiledView;
    SDKTextFiledView *vfCodeFiledView;
    PhoneView *mPhoneView;
    
    LoginTitleView   *mLoginTitleView;
    UIButton *getVfCodeBtn;
    
    int phoneCountdown;
    NSTimer *downTimer;
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
          mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:@"找回密碼"];
          mLoginTitleView.delegate = self.delegate;//此处不起作用
          
          [self addSubview:mLoginTitleView];
         [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.mas_equalTo(self.mas_top).mas_offset(VH(MARGIN_TOP));
            
             make.width.mas_equalTo(self);
             make.height.mas_equalTo(VH(40));
         }];
            
          
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
        [self addSubview:accountSDKTextFiledView];
             
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(40));
            make.width.mas_equalTo(self).offset(-VW(55));
            make.height.mas_equalTo(VH(70));
         }];
        
        
        //電話號碼
        mPhoneView = [[PhoneView alloc] initView];
           
           [self addSubview:mPhoneView];
           [mPhoneView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(16));
                 make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
                 make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
                 make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
           }];
        
        //驗證碼
         vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_VfCode)];
          
          [self addSubview:vfCodeFiledView];
          [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(16));
                make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
                make.width.mas_equalTo(accountSDKTextFiledView.mas_width).multipliedBy(0.65);
                make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
          }];
         //獲取驗證碼
        getVfCodeBtn = [UIUtil initBtnWithTitle2:@"獲取驗證碼" tag:kGetVfCodeActTag selector:@selector(registerViewBtnAction:) target:self];
        
        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString:@"#ff3e37"].CGColor;
        getVfCodeBtn.layer.borderWidth = 1;
        getVfCodeBtn.layer.cornerRadius = 10;
        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:12];
           [getVfCodeBtn setTitleColor:[UIColor colorWithHexString:@"#ff3e37"] forState:0];
        [self addSubview:getVfCodeBtn];
        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.equalTo(vfCodeFiledView);
            make.leading.mas_equalTo(vfCodeFiledView.mas_trailing).offset(VH(6));
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing).mas_offset(-VH(4));
             
        }];
        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
         //確認
      UIButton *okBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_OK) tag:kOkActTag selector:@selector(registerViewBtnAction:)  target:self];
      [self addSubview:okBtn];
      
      [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
          make.centerX.equalTo(self);
          make.top.equalTo(vfCodeFiledView.mas_bottom).mas_offset(VH(60));
          make.width.mas_equalTo(accountSDKTextFiledView);
          make.height.mas_equalTo(VH(70));
      }];
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    mLoginTitleView.delegate = self.delegate;
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    vfCodeFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    mPhoneView.mUITextField.delegate = self.mUITextFieldDelegate;
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        
        case kGetVfCodeActTag:
        {
            SDK_LOG(@"kGetVfCodeActTag");
            NSString *areaCode = [mPhoneView getPhoneAreaCode];
            NSString *phoneNum = [mPhoneView getPhoneNumber];
            if (!phoneNum || [@"" isEqualToString:phoneNum]) {
                           [GamaUtils gamaToastWithMsg:@"請輸入電話號碼"];
                           return;
                       }
            [self requestPhoneVerficationWithPhoneArea:areaCode phoneNumber:phoneNum];
        }
        break;
            
        case kOkActTag:
        {
            SDK_LOG(@"kOkActTag");
            [self findPassword];
        }
            
            
        break;
            
            
        default:
            break;
    }
}

-(void)findPassword
{
    NSString *userName = accountSDKTextFiledView.inputUITextField.text;
    
    NSString *areaCode = [mPhoneView getPhoneAreaCode];
    NSString *phoneNum = [mPhoneView getPhoneNumber];
    NSString *vfCode = vfCodeFiledView.inputUITextField.text;
    
    
    if (![GamaUtils validUserName:userName]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if ([@"" isEqualToString:vfCode]) {
        
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_VERTIFY_CODE_IS_NULL")];
        return;
    }
               
    
    [SDKRequest doRegetPasswordWithUserName:userName phoneAreaCode:areaCode phoneNumber:phoneNum vfCode:vfCode interfaces:@"4" otherParamsDic:nil successBlock:^(id responseData) {
        
        CCSDKResponse *cc = (CCSDKResponse *)responseData;
//        [[ConfigCoreUtil share] saveAccount:userName password:@"" updateTime:NO];
        [[ConfigCoreUtil share] removeAccount:userName];
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

- (void)requestPhoneVerficationWithPhoneArea:(NSString *)phoneArea phoneNumber:(NSString *)phoneN
{
    
    
    [SDKRequest requestPhoneVerficationWithPhoneArea:phoneArea phoneNumber:phoneN  interfaces:@"4" otherDic:nil successBlock:^(id responseData) {
        [self downTime];
    } errorBlock:^(BJError *error) {
        [self resetVfCodeBtnStatue];
        [GamaAlertView showAlertWithMessage:error.message];
    }];
}

//倒计时
-(void)downTime{
    
    phoneCountdown = 60;
    getVfCodeBtn.userInteractionEnabled = NO;
    [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    //getVfCodeBtn.backgroundColor  = RGB(211, 211, 211);
    //getVfCodeBtn.layer.masksToBounds = YES;
    //getVfCodeBtn.titleLabel.adjustsFontSizeToFitWidth = YES;
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(phoneFireTimer)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)phoneFireTimer {
    phoneCountdown--;
    if (phoneCountdown < 0) {
        [self resetVfCodeBtnStatue];
    }else{
        [getVfCodeBtn setTitle:[NSString stringWithFormat:@"%d", phoneCountdown] forState:UIControlStateNormal];
    }
    
}

-(void) resetVfCodeBtnStatue
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    getVfCodeBtn.userInteractionEnabled = YES;
    [getVfCodeBtn setTitle: @"獲取驗證碼" forState:UIControlStateNormal];
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

@end
