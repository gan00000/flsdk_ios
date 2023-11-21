//
//  LoginTypeButton.m
//  FLSDK
//
//  Created by ganyuanrong on 2020/10/21.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "LoginTypeButton.h"
#import "Masonry.h"

@implementation LoginTypeButton


- (instancetype)initWithType_MMMethodMMM:(NSUInteger)type title_MMMethodMMM:(NSString *)title image_MMMethodMMM:(NSString *)image selector:(SEL)selector
                      target_MMMethodMMM:(id)target
{
    self = [super init];
    if (self) {
        
        UIButton *iconBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:image highlightedImage_MMMethodMMM:image tag_MMMethodMMM:type selector:selector target_MMMethodMMM:target];
        [self addSubview:iconBtn];
        [iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(self);
//            make.width.mas_equalTo(VH(57));
//            make.height.mas_equalTo(VH(57));
//            make.centerX.mas_equalTo(self);
            make.edges.mas_equalTo(self);
        }];
        
//        UILabel *titleLabel = [[UILabel alloc] init];
//        titleLabel.text = title;
//        titleLabel.font = [UIFont systemFontOfSize:18];
////        titleLabel.textAlignment = NSTextAlignmentCenter;
//        titleLabel.backgroundColor = [UIColor clearColor];
//        titleLabel.numberOfLines = 1;
//        titleLabel.textColor = [UIColor colorWithHexString_MMMethodMMM:wwwww_tag_wwwww__CC_545454];
//        titleLabel.adjustsFontSizeToFitWidth = YES;
//
//        [self addSubview:titleLabel];
//        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.mas_equalTo(self);
//            make.top.mas_equalTo(iconBtn.mas_bottom);
//            make.height.mas_greaterThanOrEqualTo(VH(24));
//            make.width.mas_equalTo(VW(70));
//
//        }];
        
    }
    return self;
}

@end
