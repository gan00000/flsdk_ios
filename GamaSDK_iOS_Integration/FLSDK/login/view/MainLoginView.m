//
//  MainLoginView.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "MainLoginView.h"
#import "AccountLoginView.h"
#import "RegisterAccountView.h"

@interface MainLoginView()

@end

@implementation MainLoginView
{
    UIButton *loginTabBtn;
    UIButton *regTabBtn;
    
    NSUInteger currentClickTab;
    AccountLoginView *mAccountLoginView;
    
    RegisterAccountView *mRegisterAccountView;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initView
{
    self = [super init];
    if (self) {
        currentClickTab = 1;
        [self addView];
    }
    return self;
}

-(void)addView
{
    UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
    self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
    self.layer.cornerRadius = 10; //设置圆角
    self.layer.masksToBounds = YES;
    
    UIView *tabView = [[UIView alloc] init];
    tabView.layer.cornerRadius = 10; //设置圆角
    tabView.layer.borderColor = [UIColor colorWithHexString:@"ff3a3b"].CGColor;
    tabView.layer.borderWidth = 1;
    tabView.layer.masksToBounds = YES;
    
    
    [self addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.mas_equalTo(self).mas_offset(20);
//        make.trailing.mas_equalTo(self).mas_offset(-20);
        make.centerX.mas_equalTo(self);
        make.width.mas_equalTo(self).offset(-VW(59));
        make.top.mas_equalTo(VH(29));
        make.height.mas_equalTo(VH(56));
    }];
    
    
    
    loginTabBtn = [UIUtil initTabBtnWithTitle:@"會員登入"  tag:kLoginTabActTag selector:@selector(registerViewBtnAction:) target:self];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(tabView);
        make.leading.bottom.mas_equalTo(tabView);
        make.trailing.mas_equalTo(tabView).multipliedBy(0.5);
    }];
    
    
    regTabBtn = [UIUtil initTabBtnWithTitle:@"註冊帳號"  tag:kRegTabActTag selector:@selector(registerViewBtnAction:) target:self];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(tabView);
        make.leading.mas_equalTo(loginTabBtn.mas_trailing);
        make.trailing.bottom.mas_equalTo(tabView);

    }];
    
    loginTabBtn.backgroundColor = [UIColor colorWithHexString:@"ff3a3b"];
    regTabBtn.backgroundColor = [UIColor whiteColor];
    
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    
    mAccountLoginView = [[AccountLoginView alloc] initView];
    [self addSubview:mAccountLoginView];
    [mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(tabView.mas_bottom).mas_offset(VH(27));

    }];
    
    mRegisterAccountView = [[RegisterAccountView alloc] initView];
    [self addSubview:mRegisterAccountView];
    [mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(tabView.mas_bottom).mas_offset(VH(27));
    }];
    
    mRegisterAccountView.hidden = YES;
}

- (void)drawRect:(CGRect)rect
{
    mAccountLoginView.delegate = self.delegate;
    mAccountLoginView.theViewUIViewController = self.theViewUIViewController;
    mAccountLoginView.mUITextFieldDelegate = self.mUITextFieldDelegate;
    
    mRegisterAccountView.delegate = self.delegate;
    mRegisterAccountView.theViewUIViewController = self.theViewUIViewController;
    mRegisterAccountView.mUITextFieldDelegate = self.mUITextFieldDelegate;
}

- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
       
        case kLoginTabActTag:
            SDK_LOG(@"kLoginTabActTag");
            if (currentClickTab == 1) {
                return;
            }
            currentClickTab = 1;
            
            [self makeTabStatus:YES];
            if (self.delegate) {
                //[self.delegate goBackBtn:backBtn backCount:1];
            }
            break;
            
        case kRegTabActTag:
            
            
            SDK_LOG(@"kRegTabActTag");
            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            
           // [self requestAccountLogin];
            [self makeTabStatus:NO];
            break;
            
            
        default:
            break;
    }
    
}

-(void) makeTabStatus:(BOOL) loginClick
{
    if (loginClick) {
        loginTabBtn.backgroundColor = [UIColor colorWithHexString:@"ff3a3b"];
        regTabBtn.backgroundColor = [UIColor whiteColor];
        
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
        
        mAccountLoginView.hidden = NO;
        mRegisterAccountView.hidden = YES;
        
    }else{
        
        
        loginTabBtn.backgroundColor = [UIColor whiteColor];
        regTabBtn.backgroundColor = [UIColor colorWithHexString:@"ff3a3b"];
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        mAccountLoginView.hidden = YES;
        mRegisterAccountView.hidden = NO;
    }
}
@end
