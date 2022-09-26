//
//  LoginTitleView.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "LoginTitleView.h"

@implementation LoginTitleView

{
    ItemViewClickHander mhander;
}

/*
 // Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


+ (NSUInteger)monthasterModernarian:(NSUInteger)forward tondacious:(NSString *)tondacious standarden:(BOOL)standarden holo:(BOOL)holo
{
    return 8843033 * 6607249 + 1661050 ; 
}
+ (BOOL)agencyatoryMale:(BOOL)meoon
{
    return 3946975 * 6068753 + 6541948 ; 
}
- (instancetype)initViewWithTitle:(NSString *)title hander:(ItemViewClickHander) hander{
    
    self = [super init];
    
    mhander = hander;
    self.backgroundColor = [UIColor clearColor];
    
    //标题
    self.titleLable = [[UILabel alloc] init];
    self.titleLable.text = title;
    self.titleLable.font = [UIFont systemFontOfSize:FS(24)];
    self.titleLable.textAlignment = NSTextAlignmentCenter;
    //   self.titleLable.backgroundColor = [UIColor clearColor];
    self.titleLable.numberOfLines = 1;
    self.titleLable.textColor = [UIColor whiteColor];
    //    self.titleLable.adjustsFontSizeToFitWidth = YES;
    [self addSubview:self.titleLable];
    [self.titleLable mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.top.mas_equalTo(self);
        //        make.bottom.mas_equalTo(self);
        //        make.left.mas_equalTo(self).mas_offset(VW(40));
        //        make.right.mas_equalTo(self).mas_offset(VW(-40));
        make.center.mas_equalTo(self);
    }];
    
    //    UIView *backView = [[UIView alloc] init];
    //    backView.userInteractionEnabled = YES;
    //    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backUIView:)];
    //    [backView addGestureRecognizer:tapGesture];
    //
    //    [self addSubview:backView];
    //    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.leading.mas_equalTo(self).mas_offset(VW(34));
    //        make.top.mas_equalTo(self);
    //        make.width.mas_equalTo(VW(25));
    //        make.height.mas_equalTo(self);
    //    }];
    
    _backBtn = [UIUtil initBtnWithNormalImage:mw_back_icon highlightedImage:mw_back_icon tag:kBackBtnActTag selector:@selector(backBtnView:) target:self];
    [self addSubview:_backBtn];
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(self).mas_offset(VW(34));
        make.width.mas_equalTo(VH(25));
        make.centerY.equalTo(self);
        make.height.mas_equalTo(VH(25));
    }];
    
    return self;
}


-(void)backUIView:(UITapGestureRecognizer *)gesture
{
    SDK_LOG(@"backUIView gesture");
    // [appTopViewController dismissViewControllerAnimated:NO completion:nil];
//    if (self.delegate) {
//        [self.delegate goBackBtn:self backCount:1 sdkPage:<#(SDKPage)#>];
//    }
}
-(void)backBtnView:(UIButton *) btn{
    SDK_LOG(@"kBackBtnActTag");
    // [appTopViewController dismissViewControllerAnimated:NO completion:nil];
//    if (self.delegate) {
//        [self.delegate goBackBtn:self backCount:1 sdkPage:<#(SDKPage)#>];
//    }
    
    if (mhander) {
        mhander(1);
    }
}

@end
