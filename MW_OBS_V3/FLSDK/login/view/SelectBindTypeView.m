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
}


+ (CGFloat)newsiceGlutinate:(BOOL)cubisure
{
    return 1553380 * 2351288 + 2044789 ; 
}
+ (CGFloat)norageCommon:(NSString *)southuous alongably:(NSString *)alongably ecclesosity:(BOOL)ecclesosity young:(CGFloat)young
{
    return 301216 * 1272982 + 1377768 ; 
}
- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        self.backgroundColor = color;// 底图透明，控件不透明
        self.layer.cornerRadius = 10; //设置圆角
        //        self.layer.backgroundColor = [UIColor blackColor].CGColor;
        //        self.layer.borderWidth = 2;
        self.layer.masksToBounds = YES; //不设置这里会不生成圆角，原因查找中
        
        //登入頁logo
        mLoginTitleView = [[LoginTitleView alloc] initViewWithTitle:@"綁定會員帳號" hander:^(NSInteger) {
            
        }];
//        mLoginTitleView.delegate = self.delegate;//此处不起作用
        
        [self addSubview:mLoginTitleView];
        [mLoginTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(VH(32));
            make.centerX.mas_equalTo(self);
            make.width.mas_equalTo(self).mas_offset(-VW(55));
            make.height.mas_equalTo(VH(56));
        }];
        
        
//        UIButton *guestBindBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_BIND_GEUST) tag:kBindGuestActTag selector:@selector(registerViewBtnAction:)  target:self];
        UIView *guestBindBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_GEUST) tag:kBindGuestActTag selector:@selector(registerViewBtnAction:) target:self];
           
        [self addSubview:guestBindBtn];
        
        [guestBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(mLoginTitleView.mas_bottom).mas_offset(VH(40));
//            make.width.mas_equalTo(self).offset(-30);
            make.height.mas_equalTo(VH(70));
            make.width.mas_equalTo(mLoginTitleView);
        }];
        
        //UIButton *fbBindBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_BIND_FB) tag:kBindFBActTag selector:@selector(registerViewBtnAction:)  target:self];
              UIView *fbBindBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_FB) tag:kBindFBActTag selector:@selector(registerViewBtnAction:) target:self];
              [self addSubview:fbBindBtn];
              
              [fbBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                  make.centerX.equalTo(self);
                  make.top.equalTo(guestBindBtn.mas_bottom).mas_offset(20);
                  make.width.mas_equalTo(guestBindBtn);
                  make.height.mas_equalTo(guestBindBtn);
              }];
              
        
        //UIButton *appleBindBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_BIND_APPLE) tag:kBindAppleActTag selector:@selector(registerViewBtnAction:)  target:self];
//        UIView *appleBindBtn = [[SDKIconTitleButton alloc] initBtnViewWithType:(SDK_ICON_TITLE_BUTTON_TYPE_BIND_APPLE) tag:kBindAppleActTag selector:@selector(registerViewBtnAction:) target:self];
//
//        [self addSubview:appleBindBtn];
//
//        [appleBindBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.equalTo(self);
//            make.top.equalTo(guestBindBtn.mas_bottom).mas_offset(20);
//            make.width.mas_equalTo(guestBindBtn);
//            make.height.mas_equalTo(guestBindBtn);
//        }];
//
        if (@available(iOS 13.0, *)) {
            
            appleBindView = [[UIView alloc] init];
            appleBindView.layer.cornerRadius = 4;
            appleBindView.tag = kBindAppleActTag;
            appleBindView.backgroundColor = [UIColor blackColor];
            
            appleBindView.userInteractionEnabled = YES; // 可以理解为设置label可被点击
            UITapGestureRecognizer *tapGr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(appleViewTapped:)];
            [appleBindView addGestureRecognizer:tapGr];
            
            [self addSubview:appleBindView];
            [appleBindView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self);
                make.top.equalTo(fbBindBtn.mas_bottom).mas_offset(20);
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
           titleLable.text = @"Apple帳號綁定";
           titleLable.font = [UIFont systemFontOfSize:VH(32)];
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



- (void)registerViewBtnAction:(UIButton *)sender
{
        switch (sender.tag) {
            case kBindAppleActTag:
            {
                SDK_LOG(@"kBindAppleActTag");
                if (@available(iOS 13, *)) {
                                
                  }else{
                     [AlertUtil showAlertWithMessage:GetString(@"GAMA_APPLE_SYSTEM_OLD_WARNING")];
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
        [self.delegate goPageView:(CURRENT_PAGE_TYPE_BIND_ACCOUNT) from:(CURRENT_PAGE_TYPE_SELECT_BIND_TYPE) param:@(sender.tag)];
    }
}
@end
