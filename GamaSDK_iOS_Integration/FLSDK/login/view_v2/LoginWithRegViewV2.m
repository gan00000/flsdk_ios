//
//  MainLoginView.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "LoginWithRegViewV2.h"

@interface LoginWithRegViewV2()

@end

@implementation LoginWithRegViewV2
{
    UIButton *loginTabBtn;
    UIButton *regTabBtn;
    
    NSUInteger currentClickTab;
    
    UIView *loginBottomLine;
    
    UIView *regBottomLine;
    
    UIButton *backBtn;
    
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
    
    
    
    loginTabBtn = [UIUtil initBtnWithTitleText:@"text_login".localx fontSize:FS(24) textColor:UIColor.whiteColor tag:kLoginTabActTag selector:@selector(registerViewBtnAction:) target:self];
    [loginTabBtn setTitleColor:[UIColor colorWithHexString:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
        make.centerX.mas_equalTo(self.mas_leading).mas_offset(VW(100+16));
//        make.trailing.mas_equalTo(tabView).multipliedBy(0.5);
    }];
    
    
    regTabBtn = [UIUtil initBtnWithTitleText:@"text_register".localx fontSize:FS(24) textColor:UIColor.whiteColor tag:kRegTabActTag selector:@selector(registerViewBtnAction:) target:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
//        make.leading.mas_equalTo(loginTabBtn.mas_trailing).mas_offset(VW(82));
        make.trailing.mas_equalTo(tabView);
        make.centerX.mas_equalTo(self.mas_trailing).mas_offset(-VW(100+16));

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString:BaseColor];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
//        make.centerX.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString:BaseColor];
    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
//        make.centerX.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    //返回按钮
    backBtn = [UIUtil initBtnWithNormalImage:@"mw_back_icon" highlightedImage:@"mw_back_icon" tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
    
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
    
    self.mAccountLoginView = [[AccountLoginViewV2 alloc] initView];
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

    }];
    
    self.mRegisterAccountView = [[RegisterAccountViewV2 alloc] initView];
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
    
    self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
    
    if (!self.fromPage) {
        backBtn.hidden = YES;
    }
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
                
//                NSArray<AccountModel *> *ams = [[ConfigCoreUtil share] getAccountModels];
//
//                if (ams && ams.count > 0) {
//
//                    if (self.fromPage && self.fromPage != CURRENT_PAGE_TYPE_NULL) {
//                        [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:self.fromPage];
//                    }
//                }else{
//
//                    [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:CURRENT_PAGE_TYPE_MAIN_HOME];
//                }
                [self.delegate goBackBtn:self backCount:1 fromPage:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage:CURRENT_PAGE_TYPE_MAIN_HOME];
               
               
            }
            
            
        default:
            break;
    }
    
}

-(void) makeTabStatus:(BOOL) loginClick
{
//    YES: 子视图超出父视图范围部分不显示.
//    NO: 子视图超出父视图范围时, 会显示.
    self.clipsToBounds = YES;

    if (loginClick) {
        
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
        
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
        
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
//        self.mAccountLoginView.transform = CGAffineTransformMakeTranslation(-self.frame.size.width, 0);
//        self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(0, 0);
        
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
//            self.mAccountLoginView.hidden = NO;
//            self.mRegisterAccountView.hidden = YES;
        }];
        
//        [loginTabBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
//        [regTabBtn setTitleColor:[UIColor colorWithHexString:@"#848484"] forState:(UIControlStateNormal)];
        
        
    }else{
    
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        

//        self.mAccountLoginView.transform = CGAffineTransformMakeTranslation(0, 0);
//        self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,-self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, -self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
//            self.mAccountLoginView.hidden = YES;
//            self.mRegisterAccountView.hidden = NO;
        }];
        
    }
}
@end
