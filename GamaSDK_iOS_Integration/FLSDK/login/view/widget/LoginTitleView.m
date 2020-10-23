//
//  LoginTitleView.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "LoginTitleView.h"

@implementation LoginTitleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initViewWithTitle:(NSString *)title{
 
    self = [super init];
    
    self.backgroundColor = [UIColor clearColor];
    
     //标题
    self.titleLable = [[UILabel alloc] init];
   self.titleLable.text = title;
   self.titleLable.font = [UIFont systemFontOfSize:VH(40)];
   self.titleLable.textAlignment = NSTextAlignmentCenter;
   self.titleLable.backgroundColor = [UIColor clearColor];
   self.titleLable.numberOfLines = 1;
   self.titleLable.textColor = [UIColor colorWithHexString:@"#FF3E37"];
    self.titleLable.adjustsFontSizeToFitWidth = YES;
    [self addSubview:self.titleLable];
    [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self);
        make.bottom.mas_equalTo(self);
        make.left.mas_equalTo(self).mas_offset(VW(40));
        make.right.mas_equalTo(self).mas_offset(VW(-40));
    }];
    
    UIView *backView = [[UIView alloc] init];
    backView.backgroundColor = [UIColor clearColor];
    backView.userInteractionEnabled = YES;
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backUIView:)];
    [backView addGestureRecognizer:tapGesture];
    
    [self addSubview:backView];
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self).mas_offset(VW(4));
        make.top.mas_equalTo(self);
        make.width.mas_equalTo(VW(40));
        make.height.mas_equalTo(self);
    }];
    
    UIButton *backBtn = [UIUtil initBtnWithNormalImage:@"sdk_btn_back.png" highlightedImage:nil tag:kBackBtnActTag selector:@selector(backBtnView:) target:self];
    [backView addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(backView).mas_offset(VW(6));
        make.width.mas_equalTo(VH(23));
        make.centerY.equalTo(backView);
        make.height.mas_equalTo(VH(37));
    }];
    
    return self;
}


-(void)backUIView:(UITapGestureRecognizer *)gesture
{
    SDK_LOG(@"backUIView gesture");
      // [appTopViewController dismissViewControllerAnimated:NO completion:nil];
       if (self.delegate) {
           [self.delegate goBackBtn:self backCount:1];
       }
}
-(void)backBtnView:(UIButton *) btn{
    SDK_LOG(@"kBackBtnActTag");
   // [appTopViewController dismissViewControllerAnimated:NO completion:nil];
    if (self.delegate) {
        [self.delegate goBackBtn:self backCount:1];
    }
}

@end
