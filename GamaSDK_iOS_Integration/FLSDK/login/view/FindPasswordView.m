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
   // SDKTextFiledView *vfCodeFiledView;
    PhoneView *mPhoneView;
    
    UIButton *backBtn;
    UIButton *getVfCodeBtn;
    
    int phoneCountdown;
    NSTimer *downTimer;
    
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
      
        self.layer.contents = (id)[UIImage gama_imageNamed:@"h_bg"].CGImage;
        
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.text = SDKConReaderGetLocalizedString(@"text_forgot_password");
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
        
        
        //電話號碼
        mPhoneView = [[PhoneView alloc] initView];
           
           [self addSubview:mPhoneView];
           [mPhoneView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(VH(24));
                 make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
                 make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
                 make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
           }];
        
        UIView *line2 = [[UIView alloc] init];
        line2.backgroundColor = [UIColor colorWithHexString:@"#DDDDDD"];
        [contentView addSubview:line2];
        [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
    
            make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(8));
            make.leading.mas_equalTo(accountSDKTextFiledView).mas_offset(VW(24));
            make.trailing.mas_equalTo(accountSDKTextFiledView).mas_offset(-VW(24));
            make.height.mas_equalTo(1);
        }];
        
        //驗證碼
//         vfCodeFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_VfCode)];
//
//          [self addSubview:vfCodeFiledView];
//          [vfCodeFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.top.equalTo(mPhoneView.mas_bottom).mas_offset(VH(24));
//                make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//                make.width.mas_equalTo(accountSDKTextFiledView.mas_width);
//                make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
//          }];
         //獲取驗證碼
//        getVfCodeBtn = [UIUtil initBtnWithTitle2:@"獲取驗證碼" tag:kGetVfCodeActTag selector:@selector(registerViewBtnAction:) target:self];
//
//        getVfCodeBtn.layer.borderColor = [UIColor colorWithHexString:@"#ff3e37"].CGColor;
//        getVfCodeBtn.layer.borderWidth = 1;
//        getVfCodeBtn.layer.cornerRadius = 10;
//        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:12];
//           [getVfCodeBtn setTitleColor:[UIColor colorWithHexString:@"#ff3e37"] forState:0];
//        [self addSubview:getVfCodeBtn];
//        [getVfCodeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.bottom.equalTo(vfCodeFiledView);
//            make.leading.mas_equalTo(vfCodeFiledView.mas_trailing).offset(VH(6));
//            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing).mas_offset(-VH(4));
//
//        }];
//        [getVfCodeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
         //確認
        UIButton *okBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_OK) tag:kOkActTag selector:@selector(registerViewBtnAction:)  target:self];
        [self addSubview:okBtn];
        
        [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.mas_equalTo(contentView).mas_offset(VH(380));
            make.width.mas_equalTo(VW(350));
            make.height.mas_equalTo(VH(50));
        }];
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
   // vfCodeFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
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
        case kBackBtnActTag:
        {
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1];
            }
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
    NSString *vfCode = @"";//vfCodeFiledView.inputUITextField.text;
    
    
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
       // [self downTime];
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
