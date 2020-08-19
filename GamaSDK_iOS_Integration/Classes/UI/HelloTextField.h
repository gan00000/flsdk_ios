//
//  HelloTextField.h
//
//
//  Created by Sunny on 17/2/8.
//  Copyright © 2017年 suun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloTextField : UITextField

@property (nonatomic, assign) CGFloat initDistance;
@property (nonatomic, assign) CGFloat leftViewDistance;
@property (nonatomic, assign) CGFloat rightViewDistance;

- (instancetype)initWithFrame:(CGRect)frame
                     leftView:(UIImageView *)left
                    rightView:(UIView *)right;

- (instancetype)initWithFrame:(CGRect)frame
                     leftView:(UIView *)leftView;

@end
