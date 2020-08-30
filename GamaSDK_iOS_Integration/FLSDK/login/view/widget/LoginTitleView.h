//
//  LoginTitleView.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "SDKBaseView.h"


NS_ASSUME_NONNULL_BEGIN

@interface LoginTitleView : SDKBaseView

@property (nonatomic,strong) UILabel *titleLable;

- (instancetype)initViewWithTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
