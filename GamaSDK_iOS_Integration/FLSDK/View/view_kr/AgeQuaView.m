//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AgeQuaView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"
#import "ViewUtil.h"

@implementation AgeQuaView

{
    
    UIButton *closeBtn;
    UIButton *age14AlreadyBtn;
    
    
}

- (instancetype)initView_MMMethodMMM
{
    self = [super init];
    if (self) {
        
        UIView *myView = [[UIView alloc] init];
        myView.backgroundColor = UIColor.whiteColor;
        myView.layer.cornerRadius = VH(6);
        [self addSubview:myView];
        [myView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self);
            make.width.mas_equalTo(VW(284));
            make.height.mas_equalTo(VH(184));
        }];
        UIImageView *ageWarnView = [UIUtil initImageViewWithImage_MMMethodMMM:age_14_warn];
        [myView addSubview:ageWarnView];
        [ageWarnView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(myView).mas_offset(VH(12));
            make.centerX.mas_equalTo(myView);
            make.width.mas_equalTo(VH(40));
            make.height.mas_equalTo(VH(40));
            
        }];
        
        UILabel *age14Lable = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_age_is14) fontSize_MMMethodMMM:FS(16) textColor_MMMethodMMM:[UIColor blackColor]];
        age14Lable.numberOfLines = 1;
        [myView addSubview:age14Lable];
        [age14Lable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(ageWarnView.mas_bottom).mas_offset(VH(9));
            make.centerX.mas_equalTo(myView);
//            make.leading.mas_equalTo(myView).mas_offset(4);
//            make.trailing.mas_equalTo(myView);
        }];
        
        UILabel *ageNot14LogoutLable = [UIUtil initLabelWithText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_age_not14_logout) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:@"#FF0000"]];
        ageNot14LogoutLable.numberOfLines = 0;
        [myView addSubview:ageNot14LogoutLable];
        [ageNot14LogoutLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(age14Lable.mas_bottom).mas_offset(VH(16));
            make.leading.mas_equalTo(myView).mas_offset(12);
            make.trailing.mas_equalTo(myView).mas_offset(-12);;
        }];
        
        
        closeBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_close) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor blackColor] tag_MMMethodMMM:TAG_CLOSE selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

        closeBtn.layer.borderColor = [UIColor blackColor].CGColor;
        closeBtn.layer.borderWidth = 0.5;
        closeBtn.layer.cornerRadius = VH(15);
        [myView addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(myView.mas_bottom).mas_offset(VH(-14));
            make.trailing.mas_equalTo(myView.mas_centerX).mas_offset(-5);
            make.width.mas_equalTo(VW(110));
            make.height.mas_equalTo(VH(30));

        }];
//        [closeBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        age14AlreadyBtn = [UIUtil initBtnWithTitleText_MMMethodMMM:GetString(wwwww_tag_wwwww_text_age_already_14) fontSize_MMMethodMMM:FS(12) textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:kOkActTag selector:@selector(registerViewBtnAction_MMMethodMMM:) target_MMMethodMMM:self];

//        age14AlreadyBtn.layer.borderColor = [UIColor blackColor].CGColor;
//        age14AlreadyBtn.layer.borderWidth = 1;
        age14AlreadyBtn.layer.cornerRadius = VH(15);
////        getVfCodeBtn.titleLabel.font = [UIFont systemFontOfSize:FS(14)];
////        [getVfCodeBtn setTitleColor:UIColor.whiteColor forState:0];
        
        CAGradientLayer *mGl = [ViewUtil createGradientLayerWithRadius_MMMethodMMM:VH(15)];
        [age14AlreadyBtn.layer addSublayer:mGl];

        
        [self addDrawRectBolck_MMMethodMMM:^(NSString *msg, NSInteger m, NSDictionary *dic) {
            mGl.frame = age14AlreadyBtn.bounds;
        }];
        
        [myView addSubview:age14AlreadyBtn];
        [age14AlreadyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(myView.mas_bottom).mas_offset(VH(-14));
            make.leading.mas_equalTo(myView.mas_centerX).mas_offset(5);
            make.width.mas_equalTo(VW(110));
            make.height.mas_equalTo(VH(30));

        }];
//        [age14AlreadyBtn setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        
        
    }
    return self;
}


- (void)registerViewBtnAction_MMMethodMMM:(UIButton *)sender
{
    switch (sender.tag) {
            
        case kOkActTag:
        {
            [SdkUtil saveAlready14Age_MMMethodMMM:YES];
            if(self.delegate){
                [self.delegate showLoginPageOrAutoLogin_MMMethodMMM:(CURRENT_PAGE_TYPE_AGE14_QUA)];
            }
        }
            break;
            
        case TAG_CLOSE:
        {
            if(self.delegate){
                [self.delegate showLoginPageOrAutoLogin_MMMethodMMM:(CURRENT_PAGE_TYPE_AGE14_QUA)];
            }
        }
            
            
            break;
            
            
        default:
            break;
    }
}


@end
