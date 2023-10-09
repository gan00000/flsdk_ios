

#import "PancredifficulteePersonacityView.h"
#import "UIView+PachoActivity.h"

@interface PancredifficulteePersonacityView()

@end

@implementation PancredifficulteePersonacityView
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
    
    UIView *myView = [[UIView alloc] init];
    [self addSubview:myView];
    [myView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.width.mas_equalTo(VW(340));
        make.height.mas_equalTo(VH(326));
    }];
    
    
    UIImageView *bgIV = [SmilePitate initImageViewWithImage_MMMethodMMM:sdk_bg_page];
    [myView addSubview:bgIV];
    [bgIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(myView);
    }];
    
    
    UIView *tabView = [[UIView alloc] init];
    
    
    [myView addSubview:tabView];
    [tabView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(myView);
        make.top.mas_equalTo(VH(14));
    }];
    
    
    
    loginTabBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:C_TEXT_NORMAL] tag_MMMethodMMM:kLoginTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [loginTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:loginTabBtn];
    [loginTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.leading.mas_equalTo(tabView);
        make.centerX.mas_equalTo(myView.mas_leading).mas_offset(VW(100+16));
    }];
    
    
    regTabBtn = [SmilePitate initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_text_register.localx fontSize_MMMethodMMM:FS(24) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:C_TEXT_NORMAL] tag_MMMethodMMM:kRegTabActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [regTabBtn setTitleColor:[UIColor colorWithHexString_MMMethodMMM:BaseColor] forState:UIControlStateSelected];
    [tabView addSubview:regTabBtn];
    [regTabBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.bottom.mas_equalTo(tabView);
        make.trailing.mas_equalTo(tabView);
        make.centerX.mas_equalTo(myView.mas_trailing).mas_offset(-VW(100+16));

    }];
    
    loginBottomLine = [[UIView alloc] init];
    loginBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [tabView addSubview:loginBottomLine];
    [loginBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(loginTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom);
        make.height.mas_equalTo(2);

    }];
    
    regBottomLine = [[UIView alloc] init];
    regBottomLine.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    regBottomLine.hidden = YES;
    [tabView addSubview:regBottomLine];
    [regBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.trailing.mas_equalTo(regTabBtn);
        make.top.mas_equalTo(loginTabBtn.mas_bottom);
        make.height.mas_equalTo(2);

    }];
    
    
    backBtn = [SmilePitate initBtnWithNormalImage_MMMethodMMM:mw_back_icon highlightedImage_MMMethodMMM:mw_back_icon tag_MMMethodMMM:kBackBtnActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    
    [myView addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.mas_equalTo(tabView);
        make.leading.mas_equalTo(myView).mas_offset(VW(18));
        
        make.width.height.mas_equalTo(VW(25));
    }];
    
    
    
    currentClickTab = 1;
    [loginTabBtn setSelected:YES];
    [regTabBtn setSelected:NO];
    
    self.mAccountLoginView = [[UpelSongileView alloc] initView_MMMethodMMM];
    [myView addSubview:self.mAccountLoginView];
    [self.mAccountLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(myView);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(20));

    }];
    
    self.mRegisterAccountView = [[OpizeGenueerView alloc] initView_MMMethodMMM];
    [myView addSubview:self.mRegisterAccountView];
    [self.mRegisterAccountView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.trailing.mas_equalTo(myView);
        make.top.mas_equalTo(loginBottomLine.mas_bottom).mas_offset(VH(20));
    }];
    
    self.mRegisterAccountView.hidden = YES;
    
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    if (mConfigModel.deleteAccount) {
        [self addDeleteAccountView_MMMethodMMM];
    }
    
    
    
    if (!mConfigModel.showRegPage) {
        
        [loginTabBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            
            make.top.bottom.mas_equalTo(tabView);
            make.leading.trailing.mas_equalTo(tabView);
            make.centerX.mas_equalTo(myView);
        }];
        
        regTabBtn.hidden = YES;
        [regTabBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            
            make.edges.mas_equalTo(loginTabBtn);

        }];
        
    }
    
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
        
        
        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
            
            if (deleteBtnView && SDK_DATA.mConfigModel.deleteAccount) {
                deleteBtnView.hidden = NO;
            }
            
        }];
        
        

    }else{
    
        
        [loginTabBtn setSelected:NO];
        [regTabBtn setSelected:YES];
    
        self.mAccountLoginView.hidden = NO;
        self.mRegisterAccountView.hidden = NO;
        
        loginBottomLine.hidden = YES;
        regBottomLine.hidden = NO;
        

        [UIView animateWithDuration:0.6 animations:^{
            
            self.mAccountLoginView.transform = CGAffineTransformTranslate(self.mAccountLoginView.transform,-self.frame.size.width, 0);
            
            self.mRegisterAccountView.transform = CGAffineTransformTranslate(self.mRegisterAccountView.transform, -self.frame.size.width, 0);
            
        } completion:^(BOOL finished) {
        }];
        
        if (deleteBtnView) {
            deleteBtnView.hidden = YES;
        }
        
    }
}


-(void)addDeleteAccountView_MMMethodMMM
{
    UIView *deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = UIColor.whiteColor;
    deleteView.layer.cornerRadius = 2;
    
    [self addSubview:deleteView];
    
    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if(IS_PORTRAIT){
            make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-60));
            make.centerX.mas_equalTo(self);
        }else{
            make.top.mas_equalTo(self).mas_offset(VH(20));
            make.trailing.mas_equalTo(self).mas_offset(VW(-25));
        }

    }];
    
    UIImageView *deleteIV = [SmilePitate initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(13));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(15));
    }];
    
    UILabel *delLabel = [SmilePitate initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor blackColor]];
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
