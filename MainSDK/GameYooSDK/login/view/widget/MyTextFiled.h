//
//  SDKTextFiledView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"
#import "SdkHeader.h"


NS_ASSUME_NONNULL_BEGIN

@interface MyTextFiled : SDKBaseView

@property (nonatomic,strong) UITextField *inputTextField;

- (instancetype)initWithTextColor:(UIColor *)textColor fontOfSize:(CGFloat)size placeholder:(NSString*)placeholder placeColor:(UIColor *)placeColor;

@end

NS_ASSUME_NONNULL_END
