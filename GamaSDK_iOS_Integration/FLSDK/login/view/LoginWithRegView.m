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



- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        currentClickTab = 1;
        [self addView_MMMethodMMM];
    }
    return self;
}

-(void)addView_MMMethodMMM
{
//    UIColor *color = [UIColor colorWithHexString_MMMethodMMM:ContentViewBgColor];
//    self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
//    self.layer.cornerRadius = 10; //设置圆角
//    self.layer.masksToBounds = YES;
    
    UIView *tabView = [[UIView alloc] init];
//    tabView.layer.cornerRadius = 4; //设置圆角
//    tabView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:@"ff3a3b"].CGColor;
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
    
    
    
    loginTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"登入" fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#848484"] tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [loginTabBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
//        make.trailing.mas_equalTo(tabView).multipliedBy(0.5);
    }];
    
    
    regTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"註冊" fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#848484"] tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(loginTabBtn.mas_trailing).mas_offset(VW(82));
        make.trailing.mas_equalTo(tabView);

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F23B12"];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(loginTabBtn);
        make.centerX.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"#F23B12"];
    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(regTabBtn);
        make.centerX.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    //返回按钮
    UIButton *backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);
//        make.trailing.mas_equalTo(tabView.mas_leading).mas_offset(VW(82));
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));
    }];
    
    
//    loginTabBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:@"ff3a3b"];
//    regTabBtn.backgroundColor = [UIColor whiteColor];
    
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[AccountLoginView alloc] initView_MMMethodMMM];
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

    }];
    
    self.mRegisterAccountView = [[RegisterAccountView alloc] initView_MMMethodMMM];
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];
    
    self.mRegisterAccountView.hidden = YES;
}



- (void)drawRect:(CGRect)rect   //system_method
{
    [super drawRect:rect];
    self.mAccountLoginView.delegate = self.delegate;
    self.mRegisterAccountView.delegate = self.delegate;
}

- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
       
        case kLoginTabActTag:
            SDK_LOG(@"kLoginTabActTag");
            if (currentClickTab == 1) {
                return;
            }
            currentClickTab = 1;
            
            [self makeTabStatus_MMMethodMMM:YES];
            if (self.delegate) {
                //[self.delegate goBackBtn_MMMethodMMM:backBtn backCount_MMMethodMMM:1];
            }
            break;
            
        case kRegTabActTag:
            
            
            SDK_LOG(@"kRegTabActTag");
            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            
           // [self requestAccountLogin_MMMethodMMM];
            [self makeTabStatus_MMMethodMMM:NO];
            break;
            
        case kBackBtnActTag:
            
            if (self.delegate) {
                
                NSArray<AccountModel *> *ams = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
                
                if (ams && ams.count > 0) {
                    
                    if (self.fromPage && self.fromPage != CURRENT_PAGE_TYPE_NULL) {
                        [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:self.fromPage];
                    }
                }else{
                    
                    [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME];
                }
                
               
               
            }
            
            
        default:
            break;
    }
    
}

-(void) makeTabStatus_MMMethodMMM:(BOOL) loginClick
{
    if (loginClick) {
        
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
        
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = YES;
        
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
        
//        [loginTabBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
//        [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:@"#848484"] forState:(UIControlStateNormal)];
        
    }else{
    
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        self.mAccountLoginView.hidden = YES;
        self.mRegisterAccountView.hidden = NO;
        
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        
//        [regTabBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
//        [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:@"#848484"] forState:(UIControlStateNormal)];
    }
}
@end
