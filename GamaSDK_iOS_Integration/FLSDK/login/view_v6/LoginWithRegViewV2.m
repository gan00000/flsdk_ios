

#import "LoginWithRegViewV2.h"
#import "UIView+BlockGesture.h"

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
    
    UIView *deleteBtnView;
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
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    if (mConfigModel.deleteAccount) {
        [self addDeleteAccountView_MMMethodMMM];
    }

    UIView *myView = [[UIView alloc] init];
    [self addSubview:myView];
    [myView mas_makeConstraints:^(MASConstraintMaker *make) {
        if(deleteBtnView && !deleteBtnView.isHidden){
            make.centerX.mas_equalTo(self);
            make.centerY.mas_equalTo(self).mas_offset(VH(-12));
        }else{
            make.center.mas_equalTo(self);
        }
        
        make.width.mas_equalTo(VW(374));
        make.height.mas_equalTo(VH(375));
    }];
    
    UIView *tabView = [[UIView alloc] init];
    [myView addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(myView);
        make.top.mas_equalTo(VH(20));
    }];
    
    
    
    loginTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
    }];
    
    
    regTabBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_register.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(loginTabBtn.mas_trailing).mas_offset(VW(50));
        make.trailing.mas_equalTo(tabView);

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(regTabBtn.mas_bottom).mas_offset(3);
        make.height.mas_equalTo(2);

    }];
    
    
    backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [myView addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);
        make.leading.mas_equalTo(myView).mas_offset(VW(34));
        
        make.width.height.mas_equalTo(VW(25));
    }];
    
    
    
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[AccountLoginViewV2 alloc] initView_MMMethodMMM];
    [myView addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(myView);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(25));

    }];
    
    self.mRegisterAccountView = [[RegisterAccountViewV2 alloc] initView_MMMethodMMM];
    [myView addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(myView);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(25));
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
                
            }
            break;
            
        case kRegTabActTag:
            
            
            SDK_LOG(wwwww_tag_wwwww_kRegTabActTag);
            if (currentClickTab == 2) {
                return;
            }
            currentClickTab = 2;
            
           
            [self makeTabStatus_MMMethodMMM:NO];
            break;
            
        case kBackBtnActTag:
            
            if (self.delegate) {
                
                [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 fromPage_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) toPage_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME];
               
               
            }
            
            
        default:
            break;
    }
    
}

-(void) makeTabStatus_MMMethodMMM:(BOOL) loginClick
{
    self.clipsToBounds = YES;

    if (loginClick) {
        
        [loginTabBtn setSelected:YES];
        [regTabBtn setSelected:NO];
        
        loginBottomLine.hidden = NO;
        regBottomLine.hidden = YES;
        
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        if(deleteBtnView){
            deleteBtnView.hidden = NO;
        }
        
        
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
        }];
        
        
        
    }else{
    
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        
        if(deleteBtnView){
            deleteBtnView.hidden = YES;
        }
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,-self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, -self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
        }];
        
    }
}

-(void)addDeleteAccountView_MMMethodMMM
{
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = UIColor.whiteColor;
    deleteView.layer.cornerRadius = VW(14);
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-10));
        make.centerX.equalTo(self);
    }];
    
    UIImageView *deleteIV = [UIUtil initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(15));
    }];
    
    UILabel *delLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-13));
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [self.mAccountLoginView addDeleteAccountConfireView_MMMethodMMM];
    }];
    
    deleteBtnView = deleteView;
}

@end
