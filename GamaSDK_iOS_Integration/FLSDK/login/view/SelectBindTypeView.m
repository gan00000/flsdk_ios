//
//  SelectBindTypeView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/13.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SelectBindTypeView.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "SDKIconTitleButton.h"

#import <AuthenticationServices/AuthenticationServices.h>

@implementation SelectBindTypeView{
    LoginTitleView *mLoginTitleView;
    UIView *appleBindView;
    UIButton *backBtn;
}

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        self.layer.contents = (id)[UIImage gama_imageNamed:@"h_bg"].CGImage;
        
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.text = SDKConReaderGetLocalizedString(@"text_member_center");
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
        
        
        
        UIView *guestBindBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST) tag:kBindGuestActTag selector:@selector(registerViewBtnAction:) target:self textSize:VH(14)];
        
        [self addSubview:guestBindBtn];
        
        [guestBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(titleLabel.mas_bottom).mas_offset(VH(160));
            make.height.mas_equalTo(VH(50));
            make.width.mas_equalTo(VW(305));
        }];
        
        
        UIView *fbBindBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB) tag:kBindFBActTag selector:@selector(registerViewBtnAction:) target:self textSize:VH(14)];
        [self addSubview:fbBindBtn];
        
        [fbBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(guestBindBtn.mas_bottom).mas_offset(VH(20));
            make.width.mas_equalTo(guestBindBtn);
            make.height.mas_equalTo(guestBindBtn);
        }];
        
        if (@available(iOS 13.0, *)) {
            
            appleBindView = [[UIView alloc] init];
            appleBindView.layer.cornerRadius = VH(25);
            appleBindView.tag = kBindAppleActTag;
            appleBindView.backgroundColor = [UIColor blackColor];
            
            appleBindView.userInteractionEnabled = YES; // 可以理解为设置label可被点击
            UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(appleViewTapped:)];
            [appleBindView addGestureRecognizer:tapGr];
            
            [self addSubview:appleBindView];
            [appleBindView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self);
                make.top.equalTo(fbBindBtn.mas_bottom).mas_offset(VH(20));
                make.width.mas_equalTo(guestBindBtn);
                make.height.mas_equalTo(guestBindBtn);
            }];
            
            ASAuthorizationAppleIDButton *appleBindBtn = [[ASAuthorizationAppleIDButton alloc]initWithAuthorizationButtonType:ASAuthorizationAppleIDButtonTypeSignIn
                                                                                                     authorizationButtonStyle:ASAuthorizationAppleIDButtonStyleBlack];
            
            [appleBindBtn addTarget:self action:@selector(registerViewBtnAction:) forControlEvents:(UIControlEventTouchUpInside)];
            appleBindBtn.tag = kBindAppleActTag;
            [appleBindView addSubview:appleBindBtn];
            
            [appleBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(appleBindView);
                make.leading.mas_equalTo(appleBindView).mas_offset(VW(30));
                make.height.mas_equalTo(guestBindBtn);
                make.width.mas_equalTo(guestBindBtn.mas_height);
            }];
            
            UILabel *titleLable = [[UILabel alloc] init];
            titleLable.text = SDKConReaderGetLocalizedString(@"text_bind_apple");
            titleLable.font = [UIFont systemFontOfSize:VH(14)];
            titleLable.textAlignment = NSTextAlignmentCenter;
            titleLable.backgroundColor = [UIColor clearColor];
            titleLable.numberOfLines = 1;
            titleLable.textColor = [UIColor whiteColor];
            titleLable.adjustsFontSizeToFitWidth = YES;
            [appleBindView addSubview:titleLable];
            [titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.mas_equalTo(appleBindView);
                make.bottom.mas_equalTo(appleBindView);
                //make.centerX.mas_equalTo(appleBindView).mas_offset(10);
                //make.width.mas_equalTo(appleBindView).multipliedBy(0.6);
                make.leading.mas_equalTo(appleBindBtn.mas_trailing);
                make.trailing.mas_equalTo(appleBindView);
            }];
            
        } else {
            // Fallback on earlier versions
        }
        
        
    }
    return self;
}

-(void)appleViewTapped:(UITapGestureRecognizer*)tapGr
{
    SDK_LOG(@"appleViewTapped");
    UIButton *xButton = [[UIButton alloc] init];
    xButton.tag = kBindAppleActTag;
    [self registerViewBtnAction:xButton];
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    mLoginTitleView.delegate = self.delegate;
}

- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kBackBtnActTag:
        {
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1];
            }
            return;
        }
            
        case kBindAppleActTag:
        {
            SDK_LOG(@"kBindAppleActTag");
            if (@available(iOS 13, *)) {
                
            }else{
                [GamaAlertView showAlertWithMessage:SDKConReaderGetLocalizedString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
                return;
            }
        }
            
            break;
            
        case kBindFBActTag:
            SDK_LOG(@"kBindFBActTag");
            break;
            
        case kBindAccountActTag:
            SDK_LOG(@"kBindGuestActTag");
            break;
            
        default:
            break;
    }
    
    
    if (self.delegate) {
        [self.delegate goPageView:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) param:sender.tag];
    }
}
@end
