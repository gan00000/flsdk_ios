

#import "HaemadeFoveuousView.h"
#import "AndryColdooret.H"
#import "MedicalistWallainButton.h"
#import "UIView+HusbandizeRecognizeular.h"
#import "ProtectialWeaponate.h"
#import "PlandomThoughar.h"
#import "SdkHeader.h"
#import "UrbeousTript.h"
#import "BagOftenair.h"
#import "InardPhylactoView.h"
#import "PolicyatureBillast.h"
#import "MWSDK.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface HaemadeFoveuousView()

@end

@implementation HaemadeFoveuousView
{
    UIButton *guestLoginBtn;
    UIButton *checkBoxTermsBtn;
    UIView *deleteView;
}


- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
       
        [self addView_MMMethodMMM];
    }
    return self;
}

- (void)showTermsView_MMMethodMMM {
    SDK_LOG(wwwww_tag_wwwww_rememberTermsLableTapped);
    
    
    
    
    InardPhylactoView *aTermsViewV2 = [[InardPhylactoView alloc] initWithCompleter_MMMethodMMM:^{
        checkBoxTermsBtn.selected = YES;
    }];
    
    UIView *superView = appTopViewController.view;
    [superView addSubview:aTermsViewV2];
    
    [aTermsViewV2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(superView);
        make.leading.mas_equalTo(superView);
        make.trailing.mas_equalTo(superView);
    }];
    
    aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, superView.frame.size.height);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        aTermsViewV2.transform = CGAffineTransformTranslate(aTermsViewV2.transform, 0, -superView.frame.size.height);
        
        
    } completion:^(BOOL finished) {
    }];
}

-(void)addView_MMMethodMMM
{
    
    
    
    
    UIView *csContentView = [[UIView alloc] init];
    csContentView.backgroundColor = UIColor.whiteColor;
    csContentView.layer.cornerRadius = VH(12);
    [self addSubview:csContentView];
    [csContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self).mas_offset(VH(20));
        make.leading.mas_equalTo(self).mas_offset(VW(22));
        make.height.mas_equalTo(VH(25));
        
    }];
    
    if (@available(iOS 11.0, *)) {
        
        [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
           
                if(self.safeAreaInsets.top > 0){
                    [csContentView mas_remakeConstraints:^(MASConstraintMaker *make) {
                        make.top.mas_equalTo(self).mas_offset(VH(20 + self.safeAreaInsets.top));
                        make.leading.mas_equalTo(self).mas_offset(VW(22));
                        make.height.mas_equalTo(VH(25));
                        
                    }];
                }
        }];
    }
    
    UIImageView *csIconIV = [AndryColdooret initImageViewWithImage_MMMethodMMM:icon_customer];
    [csContentView addSubview:csIconIV];
    [csIconIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(csContentView);
        make.leading.mas_equalTo(csContentView).mas_offset(VW(14));
        make.width.height.mas_equalTo(VW(20));
    }];
    csContentView.userInteractionEnabled = YES;
    [csContentView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        [[MWSDK share] openCsWithParams:@{@"request_code":@"2001"}];
    }];
        
    UILabel *csLable = [AndryColdooret initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_customer.localx fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor]];
    [csContentView addSubview:csLable];
    csLable.numberOfLines = 1;
    [csLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(csContentView);
        make.leading.mas_equalTo(csIconIV.mas_trailing).mas_offset(VW(4));
        make.trailing.mas_equalTo(csContentView).mas_offset(VW(-14));
    }];
    
    if(SDK_DATA.mConfigModel.showSdkCsCenter){
        csContentView.hidden = NO;
    }else{
        csContentView.hidden = YES;
    }
    
    

    
    UIView *myView = [[UIView alloc] init];
    [self addSubview:myView];
    [myView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.width.mas_equalTo(VW(374));
        make.height.mas_equalTo(VH(375));
    }];
    
    UIView *contentView = [[UIView alloc] init];
    [myView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(myView);
        make.centerY.mas_equalTo(myView);
    }];
    
    
    
    guestLoginBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [contentView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(contentView);
        make.leading.mas_equalTo(contentView).mas_offset(VH(38));
        make.trailing.mas_equalTo(contentView).mas_offset(VH(-38));;
        make.height.mas_equalTo(VH(50));
    }];
    
    
    CAGradientLayer *guestBtnGradientLayer = [PolicyatureBillast createGradientLayerWithRadius_MMMethodMMM:VH(25)];
    [guestLoginBtn.layer addSublayer:guestBtnGradientLayer];
    
    [self addDrawRectBolck:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        guestBtnGradientLayer.frame = guestLoginBtn.bounds;
    }];
    
    UIView *guestLoginBtnContent = [[UIView alloc] init];
    [guestLoginBtn addSubview:guestLoginBtnContent];
    [guestLoginBtnContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);
    }];
    
    UIButton *guestIconBtn = [AndryColdooret initBtnWithNormalImage_MMMethodMMM:guse_login_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestIconBtn];
    [guestIconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(guestLoginBtnContent);
        make.width.height.mas_equalTo(VW(30));
    }];
    
    UIButton *guestTextBtn = [AndryColdooret initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_guest_login_btn.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestTextBtn];
    [guestTextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(guestLoginBtnContent);
        make.leading.mas_equalTo(guestIconBtn.mas_trailing).mas_offset(VW(12));
    }];
    if (!SDK_DATA.mConfigModel.visitorLogin) {
        guestLoginBtn.hidden = YES;
    }
    
    
    UIView *topView = guestLoginBtn;
    
    
    
    if (@available(iOS 13.0, *)) {
        ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                    authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
        [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
        appleLoginBtn.tag = appleLoginActTag;
        appleLoginBtn.cornerRadius = VH(25);
        [contentView addSubview:appleLoginBtn];

        topView = appleLoginBtn;
        
        if (!SDK_DATA.mConfigModel.appleLogin || SDK_DATA.mConfigModel.appPassCheck) {
            appleLoginBtn.hidden = YES;
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.mas_equalTo(guestLoginBtn);
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(2);
                make.height.mas_equalTo(2);
            }];
            
        }else{
            [appleLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.leading.trailing.height.mas_equalTo(guestLoginBtn);
                make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
            }];
        }
        
    }
    
    UIView *hasAccountContent = [[UIView alloc] init];
    [contentView addSubview:hasAccountContent];
    [hasAccountContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
        make.top.mas_equalTo(topView.mas_bottom).mas_offset(VH(22));
    }];
    
    UILabel *hasAccountLabel = [AndryColdooret initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_tips_have_account.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor]];
    [hasAccountContent addSubview:hasAccountLabel];
    [hasAccountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hasAccountContent);
    }];
    
    UILabel *loginLabel = [AndryColdooret initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor]];
    [hasAccountContent addSubview:loginLabel];
    [loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hasAccountContent);
        make.leading.mas_equalTo(hasAccountLabel.mas_trailing);
    }];
    
    
    UILabel *otherLoginLabel = [AndryColdooret initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login_other.localx fontSize_MMMethodMMM:FS(11) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
    [contentView addSubview:otherLoginLabel];
    [otherLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(hasAccountLabel.mas_bottom).mas_offset(VH(30));
        make.centerX.mas_equalTo(contentView);
    }];
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [contentView addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.trailing.mas_equalTo(otherLoginLabel.mas_leading).mas_offset(VW(-10));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(35));
        
    }];
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [contentView addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        
        make.leading.mas_equalTo(otherLoginLabel.mas_trailing).mas_offset(VW(10));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(35));
        
    }];
    
    
    
    
    UIView *loginTypeView = [[UIView alloc] init];
    [contentView addSubview:loginTypeView];
    [loginTypeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(contentView);
        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(15));
        
        make.bottom.mas_equalTo(contentView.mas_bottom);
    }];
    
    
    CGFloat btn_w = VW(34);
    CGFloat btn_h = btn_w;
    CGFloat margin_leading = VW(35);
    
    NSMutableArray *loginBtnDatas;
    if (SDK_DATA.mConfigModel.appPassCheck) {
        loginBtnDatas = [QuartaciousForwardization getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:NO];
    }else{
        loginBtnDatas = [QuartaciousForwardization getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:NO guestBtn_MMMethodMMM:NO];
    }
    UIView *leadingView = loginTypeView;
  
    for (int i = 0; i < loginBtnDatas.count; i++) {
        
        UnciinternationalsureRetainData *lbd = loginBtnDatas[i];
        UIView *btnView;
        
        if ([lbd.btnType isEqualToString:LOGIN_TYPE_APPLE]) {
            
            if (@available(iOS 13.0, *)) {
                
                ASAuthorizationAppleIDButton *appleLoginBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                          authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleWhite];
                [appleLoginBtn addTarget:self action:@selector(registerViewBtnAction_MMMethodMMM:) forControlEvents:(UIControlEventTouchUpInside)];
                appleLoginBtn.tag = lbd.tag;
                appleLoginBtn.cornerRadius = btn_w / 2.0;
                btnView = appleLoginBtn;
            }
            
        }else{
            
            MedicalistWallainButton *mBtn = [[MedicalistWallainButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            
            btnView = mBtn;
        }
       
        
        if (btnView) {
            
            [loginTypeView addSubview:btnView];
            [btnView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.width.mas_equalTo(btn_w);
                make.height.mas_equalTo(btn_h);
                make.top.mas_equalTo(loginTypeView);
                make.bottom.mas_equalTo(loginTypeView);
                
                if (i == 0) {
                    make.leading.mas_equalTo(leadingView);
                }else{
                    make.leading.mas_equalTo(leadingView.mas_trailing).mas_offset(margin_leading);
                }
                if (i == loginBtnDatas.count - 1) {
                    make.trailing.mas_equalTo(loginTypeView);
                }
            }];
            
            leadingView = btnView;
            
        }

    }
    
    
    [hasAccountContent addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        if (self.delegate) {
            [self.delegate goPageView_MMMethodMMM:(CURRENT_PAGE_TYPE_LOGIN_WITH_REG) from_MMMethodMMM:CURRENT_PAGE_TYPE_MAIN_HOME param_MMMethodMMM:@1];
        }
    }];
    
  
    UIView *termAgreeView = [[UIView alloc] init];
    [self addSubview:termAgreeView];
    [termAgreeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self);
        make.bottom.mas_equalTo(self.mas_bottom).mas_offset(VH(-15));
    }];
    
    checkBoxTermsBtn = [AndryColdooret initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    checkBoxTermsBtn.selected = YES;
    [termAgreeView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(termAgreeView);
        make.centerY.mas_equalTo(termAgreeView);
        make.width.height.mas_equalTo(VH(15));
       
    }];
    
        NSString *xtext = GetString(wwwww_tag_wwwww_text_personal_clause_and_privacy_policy);
    
        UILabel *rememberTermsLable = [AndryColdooret initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
        
        NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
    
         
         
        rememberTermsLable.attributedText = attribtStr;
        
        [termAgreeView addSubview:rememberTermsLable];
        [rememberTermsLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(termAgreeView);
            make.leading.mas_equalTo(checkBoxTermsBtn.mas_trailing).mas_offset(4);
            make.trailing.mas_equalTo(termAgreeView.mas_trailing);
        }];
        rememberTermsLable.userInteractionEnabled=YES;
        [rememberTermsLable addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
            [self showTermsView_MMMethodMMM];
            
        }];
    ConfigModel *mConfigModel = SDK_DATA.mConfigModel;
    termAgreeView.hidden = !mConfigModel.showContract;
    
    
    if (mConfigModel.deleteAccount) {
        [self addDeleteAccountView_MMMethodMMM];
        if(deleteView){
            [self addSubview:deleteView];
         
            [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
                if(IS_PORTRAIT){
                    make.bottom.mas_equalTo(termAgreeView.mas_top).mas_offset(VH(-28));
                    make.centerX.mas_equalTo(self);
                }else{
                    make.top.mas_equalTo(self).mas_offset(VH(15));
                    make.trailing.mas_equalTo(self).mas_offset(VH(-15));
                }
            }];
            
        }
    }
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    SDK_LOG(@"sender.tag=%d", sender.tag);
    switch (sender.tag) {
       
        case kAgreeTermsCheckBoxBtnTag:
            
            SDK_LOG(wwwww_tag_wwwww_kAgreeTermsCheckBoxBtnTag);
            if (checkBoxTermsBtn.selected) {
                checkBoxTermsBtn.selected = NO;
            }else{
                checkBoxTermsBtn.selected = YES;
            }
            break;
            
        case appleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_appleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
            break;
            
        case guestLoginActTag:
            {
            SDK_LOG(wwwww_tag_wwwww_guestLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            }
            break;
            
        case fbLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_fbLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            break;
        case googleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_googleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        case lineLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_lineLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        case naverLoginActTag:

            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [UrbeousTript naverLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        default:
            break;
    }
    
}


-(BOOL)checkAgreeTerm_MMMethodMMM
{
    if (checkBoxTermsBtn.selected) {
        return YES;
    }
    [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
    [self showTermsView_MMMethodMMM];
    return NO;
}

#pragma mark - 删除账号按钮



-(void)addDeleteAccountView_MMMethodMMM
{
    deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = UIColor.whiteColor;
    deleteView.layer.cornerRadius = VW(4);
    
    UIImageView *deleteIV = [AndryColdooret initImageViewWithImage_MMMethodMMM:mw_delete_icon];
    [deleteView addSubview:deleteIV];
    [deleteIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteView).mas_offset(VW(20));
        make.top.mas_equalTo(deleteView).mas_offset(VW(6));
        make.bottom.mas_equalTo(deleteView).mas_offset(VW(-6));
        make.centerY.equalTo(deleteView);
        make.width.height.mas_equalTo(VW(15));
    }];
    
    UILabel *delLabel = [AndryColdooret initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account) fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_FF0000]];
    [deleteView addSubview:delLabel];
    [delLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(deleteIV.mas_trailing).mas_offset(VW(6));
        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-20));
        make.centerY.equalTo(deleteView);
       
    }];
    
    [deleteView addTapActionWithBlock_MMMethodMMM:^(UIGestureRecognizer *gestureRecoginzer) {
        
        [QuartaciousForwardization toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_not_login)];
        
    }];
    
}

@end
