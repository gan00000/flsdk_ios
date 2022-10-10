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

- (instancetype)initWithTextColor_MMMethodMMM:(UIColor *)textColor fontOfSize_MMMethodMMM:(CGFloat)size placeholder_MMMethodMMM:(NSString*)placeholder placeColor_MMMethodMMM:(UIColor *)placeColor;

@end

NS_ASSUME_NONNULL_END
