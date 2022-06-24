//
//  MainLoginView.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "LoginWithRegView.h"

@interface LoginWithRegView()

@end

@implementation LoginWithRegView
{
    UIButton *loginTabBtn;
    UIButton *regTabBtn;
    
    NSUInteger currentClickTab;
    
    UIView *loginBottomLine;
    
    UIView *regBottomLine;
    
}



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
//    UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
//    self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
//    self.layer.cornerRadius = 10; //设置圆角
//    self.layer.masksToBounds = YES;
    
    UIView *tabView = [[UIView alloc] init];
//    tabView.layer.cornerRadius = 4; //设置圆角
//    tabView.layer.borderColor = [UIColor colorWithHexString:@"ff3a3b"].CGColor;
//    tabView.layer.borderWidth = 0.8;
//    tabView.layer.masksToBounds = YES;
    
    
    [self addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.mas_equalTo(self).mas_offset(VW(102));
//        make.trailing.mas_equalTo(self).mas_offset(VW(-94));
        make.centerX.mas_equalTo(self);
//        make.width.mas_equalTo(self).offset(-VW(102));
        make.top.mas_equalTo(VH(MARGIN_TOP));
//        make.height.mas_equalTo(VH(40));
    }];
    
    
    
    loginTabBtn = [UIUtil initBtnWithTitleText:@"登入" fontSize:FS(24) textColor:[UIColor colorWithHexString:@"#848484"] tag:kLoginTabActTag selector:@selector(registerViewBtnAction:) target:self];
    [loginTabBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
//        make.trailing.mas_equalTo(tabView).multipliedBy(0.5);
    }];
    
    
    regTabBtn = [UIUtil initBtnWithTitleText:@"註冊" fontSize:FS(24) textColor:[UIColor colorWithHexString:@"#848484"] tag:kRegTabActTag selector:@selector(registerViewBtnAction:) target:self];
    
    [regTabBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(loginTabBtn.mas_trailing).mas_offset(VW(82));
        make.trailing.mas_equalTo(tabView);

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString:@"#F23B12"];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(loginTabBtn);
        make.centerX.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString:@"#F23B12"];
    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(regTabBtn);
        make.centerX.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    //返回按钮
    UIButton *backBtn = [UIUtil initBtnWithNormalImage:@"mw_back_icon" highlightedImage:@"mw_back_icon" tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
    
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);
//        make.trailing.mas_equalTo(tabView.mas_leading).mas_offset(VW(82));
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));
    }];
    
    
//    loginTabBtn.backgroundColor = [UIColor colorWithHexString:@"ff3a3b"];
//    regTabBtn.backgroundColor = [UIColor whiteColor];
    
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[AccountLoginView alloc] initView];
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

    }];
    
    self.mRegisterAccountView = [[RegisterAccountView alloc] initView];
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];
    
    self.mRegisterAccountView.hidden = YES;
}



- (void)drawRect:(CGRect)rect
{
    self.mAccountLoginView.delegate = self.delegate;
    self.mRegisterAccountView.delegate = self.delegate;
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
            
        case kBackBtnActTag:
            
            if (self.delegate) {
                
                NSArray<AccountModel *> *ams = [[ConfigCoreUtil share] getAccountModels];
                
                if (ams && ams.count > 0) {
                    
                    if (self.fromPage && self.fromPage != CURRENT_PAGE_TYPE_NULL) {
                        [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:self.fromPage];
                    }
                }else{
                    
                    [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:CURRENT_PAGE_TYPE_MAIN_HOME];
                }
                
               
               
            }
            
            
        default:
            break;
    }
    
}

-(void) makeTabStatus:(BOOL) loginClick
{
    if (loginClick) {
        
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
        
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = YES;
        
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
        
//        [loginTabBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
//        [regTabBtn setTitleColor:[UIColor colorWithHexString:@"#848484"] forState:(UIControlStateNormal)];
        
    }else{
    
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        self.mAccountLoginView.hidden = YES;
        self.mRegisterAccountView.hidden = NO;
        
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        
//        [regTabBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
//        [loginTabBtn setTitleColor:[UIColor colorWithHexString:@"#848484"] forState:(UIControlStateNormal)];
    }
}
@end
