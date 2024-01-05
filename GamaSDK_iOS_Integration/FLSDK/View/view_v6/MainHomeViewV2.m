//
//  MainLoginView.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "MainHomeViewV2.h"
#import "UIUtil.H"
#import "LoginTypeButton.h"
#import "UIView+BlockGesture.h"
#import "SDKRequest.h"
#import "FBDelegate.h"
#import "SdkHeader.h"
#import "LoginHelper.h"
#import "SAppleLogin.h"
#import "TermsViewV2.h"
#import "ViewUtil.h"

#import <AuthenticationServices/AuthenticationServices.h>

@interface MainHomeViewV2()

@end

@implementation MainHomeViewV2
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
    //            if (self.delegate) {
    //                [self.delegate goPageView_MMMethodMMM:CURRENT_PAGE_TYPE_TEARMS from_MMMethodMMM:(CURRENT_PAGE_TYPE_MAIN_HOME) param_MMMethodMMM:0];
    //            }
    
    TermsViewV2 *aTermsViewV2 = [[TermsViewV2 alloc] initWithCompleter_MMMethodMMM:^{
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
    
    //test
//    SDK_DATA.mConfigModel.appleLogin = YES;
//    SDK_DATA.mConfigModel.appPassCheck = YES;
//    SDK_DATA.mConfigModel.showLogo = YES;
//    SDK_DATA.mConfigModel.showContract = YES;
//    SDK_DATA.mConfigModel.deleteAccount = YES;
    
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
    
    
    //游客登录
    guestLoginBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:@"" fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtn.layer setCornerRadius:VH(25)];
//    guestLoginBtn.titleLabel.font = [UIFont systemFontOfSize:FS(17)];
    guestLoginBtn.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    
    [contentView addSubview:guestLoginBtn];
    
    [guestLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(contentView);
        make.leading.mas_equalTo(contentView).mas_offset(VH(38));
        make.trailing.mas_equalTo(contentView).mas_offset(VH(-38));;
        make.height.mas_equalTo(VH(50));
    }];
    
    // gradient
    CAGradientLayer *guestBtnGradientLayer = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(25)];
    [guestLoginBtn.layer addSublayer:guestBtnGradientLayer];
    
    [self addDrawRectBolck_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
        guestBtnGradientLayer.frame = guestLoginBtn.bounds;
    }];
    
    UIView *guestLoginBtnContent = [[UIView alloc] init];
    [guestLoginBtn addSubview:guestLoginBtnContent];
    [guestLoginBtnContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(guestLoginBtn);
//        make.top.mas_equalTo(otherLoginLabel.mas_bottom).mas_offset(VH(24));
    }];
    
    UIButton *guestIconBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:guse_login_bg highlightedImage_MMMethodMMM:nil tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestIconBtn];
    [guestIconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.mas_equalTo(guestLoginBtnContent);
        make.width.height.mas_equalTo(VW(30));
    }];
    
    UIButton *guestTextBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:wwwww_tag_wwwww_guest_login_btn.localx fontSize_MMMethodMMM:FS(17) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:guestLoginActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    [guestLoginBtnContent addSubview:guestTextBtn];
    [guestTextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.trailing.mas_equalTo(guestLoginBtnContent);
        make.leading.mas_equalTo(guestIconBtn.mas_trailing).mas_offset(VW(12));
    }];
    if (!SDK_DATA.mConfigModel.visitorLogin) {
//        guestLoginBtnContent.hidden = YES;
        guestLoginBtn.hidden = YES;
    }
    
    
    UIView *topView = guestLoginBtn;
    //游客登录 end
    
    
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
    
    UILabel *hasAccountLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_tips_have_account.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor]];
    [hasAccountContent addSubview:hasAccountLabel];
    [hasAccountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.bottom.top.mas_equalTo(hasAccountContent);
//        make.top.mas_equalTo(guestLoginBtn.mas_bottom).mas_offset(VH(15));
    }];
    
    UILabel *loginLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login.localx fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor]];
    [hasAccountContent addSubview:loginLabel];
    [loginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.bottom.top.mas_equalTo(hasAccountContent);
        make.leading.mas_equalTo(hasAccountLabel.mas_trailing);
    }];
    
    
    UILabel *otherLoginLabel = [UIUtil initLabelWithText_MMMethodMMM:wwwww_tag_wwwww_text_login_other.localx fontSize_MMMethodMMM:FS(11) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
    [contentView addSubview:otherLoginLabel];
    [otherLoginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(hasAccountLabel.mas_bottom).mas_offset(VH(30));
        make.centerX.mas_equalTo(contentView);
    }];
    
    UIView *lineView1 = [[UIView alloc] init];
    lineView1.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [contentView addSubview:lineView1];
    [lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //make.width.mas_equalTo(0.5);
        make.trailing.mas_equalTo(otherLoginLabel.mas_leading).mas_offset(VW(-10));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(35));
        
    }];
    
    UIView *lineView2 = [[UIView alloc] init];
    lineView2.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0];
    [contentView addSubview:lineView2];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        //make.width.mas_equalTo(0.5);
        make.leading.mas_equalTo(otherLoginLabel.mas_trailing).mas_offset(VW(10));
        make.centerY.mas_equalTo(otherLoginLabel);
        make.height.mas_equalTo(1);
        make.width.mas_equalTo(VW(35));
        
    }];
    
    
    //登录方式
    
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
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:YES guestBtn_MMMethodMMM:NO];
    }else{
        loginBtnDatas = [SdkUtil getShowBtnDatas_MMMethodMMM:SDK_DATA.mConfigModel appleBtn_MMMethodMMM:NO guestBtn_MMMethodMMM:NO];
    }
    UIView *leadingView = loginTypeView;
  
    for (int i = 0; i < loginBtnDatas.count; i++) {
        
        LoginButtonData *lbd = loginBtnDatas[i];
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
            
            LoginTypeButton *mBtn = [[LoginTypeButton alloc] initWithType_MMMethodMMM:lbd.tag title_MMMethodMMM:@"" image_MMMethodMMM:lbd.image selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
            
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
//        make.top.mas_equalTo(loginTypeView.mas_bottom).mas_offset(VH(25));
    }];
    
    checkBoxTermsBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:mw_cb_uncheck highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:mw_cb_check tag_MMMethodMMM:kAgreeTermsCheckBoxBtnTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
    checkBoxTermsBtn.selected = YES;
    [termAgreeView addSubview:checkBoxTermsBtn];
    [checkBoxTermsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(termAgreeView);
        make.centerY.mas_equalTo(termAgreeView);
        make.width.height.mas_equalTo(VH(15));
       
    }];
    
        NSString *xtext = GetString(wwwww_tag_wwwww_text_ui_term_port_read2);
    NSString *temptext = GetString(wwwww_tag_wwwww_sdk_terms_title);
    
        UILabel *rememberTermsLable = [UIUtil initLabelWithText_MMMethodMMM:xtext fontSize_MMMethodMMM:FS(10) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_C0C0C0]];
        rememberTermsLable.textAlignment = NSTextAlignmentLeft;
        rememberTermsLable.backgroundColor = [UIColor clearColor];
        rememberTermsLable.numberOfLines = 1;
        
    
         NSDictionary *attribtDic = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName: [UIFont systemFontOfSize:FS(10)]
         };
         NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:xtext];
        [attribtStr addAttributes:attribtDic range: NSMakeRange(xtext.length- temptext.length, temptext.length)];
         //赋值
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
//                    if(device_is_iPhoneX){
//                        make.top.mas_equalTo(self).mas_offset(VH(15));
//                        make.trailing.mas_equalTo(self).mas_offset(VW(-(44+15)));
//                    }else{
//                        make.top.mas_equalTo(self).mas_offset(VH(15));
//                        make.trailing.mas_equalTo(self).mas_offset(VW(-15));
//                    }
                }
            }];
            
        }
    }
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
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
            [LoginHelper appleLoginAndThirdRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self];
            break;
            
        case guestLoginActTag:
            {
            SDK_LOG(wwwww_tag_wwwww_guestLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper guestLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            }
            break;
            
        case fbLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_fbLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper fbLoginAndThirdRequest_MMMethodMMM:self.delegate];
            
            break;
        case googleLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_googleLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper googleLoginAndThirdRequest_MMMethodMMM:self.delegate];
            break;
        case lineLoginActTag:
            SDK_LOG(wwwww_tag_wwwww_lineLoginActTag);
            if (![self checkAgreeTerm_MMMethodMMM]) {
                return;
            }
            [LoginHelper lineLoginAndThirdRequest_MMMethodMMM:self.delegate];
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
    [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_term_not_read)];
//    [AlertUtil showAlertWithMessage_MMMethodMMM:];
    [self showTermsView_MMMethodMMM];
    return NO;
}

#pragma mark - 删除账号按钮

//-(UIView *)addDeleteAccountConfireView_MMMethodMMM
//{
//
//    if (deleteAccountConfireView) {
//        [deleteAccountConfireView removeFromSuperview];
//    }
//
//    UIView *deleteView = [[UIView alloc] init];
//    deleteView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_000000 andAlpha_MMMethodMMM:0.85];
//    deleteView.layer.cornerRadius = VW(10);
//
//    [self addSubview:deleteView];
//
//    [deleteView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self);
//        make.width.mas_equalTo(VW(272));
//    }];
//
//    UIImageView *deleteWarmIV = [UIUtil initImageViewWithImage_MMMethodMMM:nend_update_account_bg];
//    [deleteView addSubview:deleteWarmIV];
//    [deleteWarmIV mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(deleteView).mas_offset(VH(12));
//        make.centerX.equalTo(self);
//        make.height.width.mas_equalTo(VW(25));
//    }];
//
//    UILabel *deleteWarmLabel = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_delete_account_tips) fontSize_MMMethodMMM:FS(13) textColor_MMMethodMMM:[UIColor whiteColor]];
//    [deleteView addSubview:deleteWarmLabel];
//    deleteWarmLabel.numberOfLines = 0;
//    [deleteWarmLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(deleteWarmIV.mas_bottom).mas_offset(VH(10));
//        make.leading.mas_equalTo(deleteView).mas_offset(VW(14));
//        make.trailing.mas_equalTo(deleteView).mas_offset(VW(-14));
//    }];
//
//    UIButton *cancelBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_cancel) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kCancelDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
////    cancelBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
//    cancelBtn.layer.cornerRadius = VW(16);
//    cancelBtn.layer.borderColor = [UIColor whiteColor].CGColor;
//    cancelBtn.layer.borderWidth = 1;
//
//    [deleteView addSubview:cancelBtn];
//    [cancelBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(deleteWarmLabel.mas_bottom).mas_offset(VH(18));
//        make.bottom.mas_equalTo(deleteView).mas_offset(VH(-18));
//        make.height.mas_equalTo(VW(32));
//        make.width.mas_equalTo(VW(108));
//        make.trailing.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(-11));
//    }];
//
//    UIButton *sureBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_confire) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:UIColor.whiteColor tag_MMMethodMMM:kSureDeleteAccountActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];
//    sureBtn.layer.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_F23B12].CGColor;
//    sureBtn.layer.cornerRadius = VW(16);
////    sureBtn.layer.borderColor = [UIColor whiteColor].CGColor;
////    sureBtn.layer.borderWidth = 1;
//
//    [deleteView addSubview:sureBtn];
//    [sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.mas_equalTo(cancelBtn);
//        make.bottom.mas_equalTo(cancelBtn);
//        make.width.mas_equalTo(cancelBtn);
//        make.leading.mas_equalTo(deleteView.mas_centerX).mas_offset(VW(11));
//    }];
//
//    deleteAccountConfireView = deleteView;
//    return deleteAccountConfireView;
//
//}


-(void)addDeleteAccountView_MMMethodMMM
{
    deleteView = [[UIView alloc] init];
    deleteView.backgroundColor = UIColor.whiteColor;
    deleteView.layer.cornerRadius = VW(14);
    
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
        
//        [self addDeleteAccountConfireView_MMMethodMMM];
        [SdkUtil toastMsg_MMMethodMMM:GetString(wwwww_tag_wwwww_text_account_not_login)];
        
    }];
    
//    deleteBtnView = deleteView;
}

//- (void)doDeleteAccount_MMMethodMMM {
//
//    if ([StringUtil isEmpty_MMMethodMMM:currentAccountModel.userId]) {
//        [SdkUtil toastMsg_MMMethodMMM:wwwww_tag_wwwww_text_select_account.localx];
//        return;
//    }
//    [LoginHelper deleteAccountAndRequest_MMMethodMMM:self.delegate view_MMMethodMMM:self account_MMMethodMMM:currentAccountModel otherParamsDic_MMMethodMMM:nil successBlock_MMMethodMMM:^{
//
//        [deleteAccountConfireView removeFromSuperview];
//        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels_MMMethodMMM];//获取保存的数据
//        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
//            currentAccountModel = mAccountArray[0];
//
//            [accountDataList removeAllObjects];
//            [accountDataList addObjectsFromArray:mAccountArray];
//
//            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:currentAccountModel accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
//
////            [self setViewStatue_MMMethodMMM];
//
//        }else{
//            AccountModel *tempA = [[AccountModel alloc] init];
//            tempA.loginType = LOGIN_TYPE_SELF;
//            tempA.account = @"";
//            tempA.password = @"";
//            currentAccountModel = tempA;
//            [AccountLoginViewV2 makeAccountFiledViewStatus_MMMethodMMM:tempA accountView_MMMethodMMM:accountSDKTextFiledView pwdView_MMMethodMMM: passwordSDKTextFiledView];
//
//        }
//
//    }];
//}
@end
