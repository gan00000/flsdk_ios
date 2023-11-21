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
//    tabView.layer.borderColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww_ff3a3b].CGColor;
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
    
    
    
    loginTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
        make.centerX.mas_equalTo(self.mas_leading).mas_offset(VW(100+16));
//        make.trailing.mas_equalTo(tabView).multipliedBy(0.5);
    }];
    
    
    regTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_register.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
//        make.leading.mas_equalTo(loginTabBtn.mas_trailing).mas_offset(VW(82));
        make.trailing.mas_equalTo(tabView);
        make.centerX.mas_equalTo(self.mas_trailing).mas_offset(-VW(100+16));

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
//        make.centerX.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
//        make.centerX.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    //返回按钮
    backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [self addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);
//        make.trailing.mas_equalTo(tabView.mas_leading).mas_offset(VW(82));
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));
    }];
    
    
//    loginTabBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww_ff3a3b];
//    regTabBtn.backgroundColor = [UIColor whiteColor];
    
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[AccountLoginViewV2 alloc] initView_MMMethodMMM];
    [self addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));

    }];
    
    self.mRegisterAccountView = [[RegisterAccountViewV2 alloc] initView_MMMethodMMM];
    [self addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(self);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(23));
    }];
    
    self.mRegisterAccountView.hidden = YES;
    
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        self.mAccountLoginView.delegate = self.delegate;
        self.mRegisterAccountView.delegate = self.delegate;
        
        self.mRegisterAccountView.transform = CGAffineTransformMakeTranslation(self.frame.size.width, 0);
        
        if (!self.fromPage) {
            backBtn.hidden = YES;
        }
    }];
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
       
        case kLoginTabActTag:
            SDK_LOG(wwwww_tag_wwwww_kLoginTabActTag);
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
            
            
            SDK_LOG(wwwww_tag_wwwww_kRegTabActTag);
            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            
           // [self requestAccountLogin_MMMethodMMM];
            [self makeTabStatus_MMMethodMMM:NO];
            break;
            
        case kBackBtnActTag:
            
            if (self.delegate) {
                
//                NSArray<AccountModel *> *ams = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];
//
//                if (ams && ams.count > 0) {
//
//                    if (self.fromPage && self.fromPage != CURRENT_PAGE_TYPE_NULL) {
//                        [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:self.fromPage];
//                    }
//                }else{
//
//                    [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME];
//                }
                [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME];
               
               
            }
            
            
        default:
            break;
    }
    
}

-(void) makeTabStatus_MMMethodMMM:(BOOL) loginClick
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
//        [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_848484] forState:(UIControlStateNormal)];
        
        
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
