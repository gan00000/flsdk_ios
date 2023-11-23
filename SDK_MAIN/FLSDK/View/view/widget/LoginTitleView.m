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


- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander{
    
    self = [super init];
    
    mhander = hander;
    self.backgroundColor = [UIColor clearColor];
    
    UIView *titleView = [[UIView alloc] init];
    [self addSubview:titleView];
    [titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.mas_equalTo(self);
        make.top.mas_equalTo(self);
    }];
    
    UIView *tagView = [[UIView alloc] init];
    tagView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [titleView addSubview:tagView];
    [tagView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(titleView).mas_offset(VH(4));
        make.bottom.mas_equalTo(titleView);
        make.leading.mas_equalTo(titleView);
        make.width.mas_equalTo(VW(6));
    }];
    
    
    UILabel *titleLabel = [UIUtil initLabelWithText_MMMethodMMM:title fontSize_MMMethodMMM:FS(28) textColor_MMMethodMMM:[UIColor colorWithHexString_MMMethodMMM:BaseColor]];
    
    [titleView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.center.mas_equalTo(titleView);
        make.leading.mas_equalTo(tagView.mas_trailing).mas_offset(VW(14));
//        make.trailing.mas_equalTo(titleView);
        make.top.mas_equalTo(titleView);
//        make.bottom.mas_equalTo(titleView);
    }];
    
    UIView *lineLableView = [[UIView alloc] init];
    lineLableView.backgroundColor = [UIColor colorWithHexString_MMMethodMMM:BaseColor];
    [titleView addSubview:lineLableView];
    [lineLableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(titleLabel.mas_bottom).mas_offset(VH(4));
        make.height.mas_equalTo(2);
        make.leading.mas_equalTo(titleLabel);
        make.trailing.mas_equalTo(titleLabel);
        
        make.bottom.mas_equalTo(titleView);
    }];
    
    
    _backBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:icon_close_3 highlightedImage_MMMethodMMM:icon_close_3 tag_MMMethodMMM:kBackBtnActTag selector:@selector(backBtnView_MMMethodMMM:) target_MMMethodMMM:self];
    
    [titleView addSubview:_backBtn];
    [_backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        //        make.center.mas_equalTo(titleView);
        make.trailing.mas_equalTo(titleView);
        make.centerY.mas_equalTo(titleView);
        make.width.mas_equalTo(VH(22));
        make.height.mas_equalTo(VH(22));
    }];
    
    
    return self;
}


-(void)backUIView_MMMethodMMM:(UITapGestureRecognizer *)gesture
{
    SDK_LOG(@"backUIView gesture");
    // [appTopViewController dismissViewControllerAnimated:NO completion:nil];
//    if (self.delegate) {
//        [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 sdkPage:<#(SDKPage)#>];
//    }
}
-(void)backBtnView_MMMethodMMM:(UIButton *) btn{
    SDK_LOG(wwwww_tag_wwwww_kBackBtnActTag);
    // [appTopViewController dismissViewControllerAnimated:NO completion:nil];
//    if (self.delegate) {
//        [self.delegate goBackBtn_MMMethodMMM:self backCount_MMMethodMMM:1 sdkPage:<#(SDKPage)#>];
//    }
    
    if (mhander) {
        mhander(1);
    }
}

@end
