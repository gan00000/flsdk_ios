//
//  AboutiblePropertyible.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "UltimizationLax.h"


NS_ASSUME_NONNULL_BEGIN

@interface AboutiblePropertyible : UltimizationLax

@property (nonatomic,strong) UILabel *titleLable;
@property (nonatomic,strong) UIButton *backBtn;

- (instancetype)initViewWithTitle:(NSString *)title hander:(ItemViewClickHander) hander;

@end

NS_ASSUME_NONNULL_END
