//
//  HelloTextField.m
//
//
//  Created by Sunny on 17/2/8.
//  Copyright © 2017年 suun. All rights reserved.
//

#import "HelloTextField.h"
#import "Masonry.h"
#import "HelloWidgetConstant.h"

@implementation HelloTextField

- (instancetype)initWithFrame:(CGRect)frame leftView:(UIImageView *)left rightView:(UIView *)right
{
    self = [super initWithFrame:frame];
    if (self) {
        /* bug fix: ios 13 imageView SizeToFit */
        if (left) {
            UIView *tempV = [[UIView alloc] init];
            tempV.frame = left.frame;
            [tempV addSubview:left];
            self.leftView = tempV;
            self.leftViewMode = UITextFieldViewModeAlways;
        }
        self.textColor  = [UIColor blackColor];
        /* fix end */
        self.rightView = right;
        self.rightViewMode = UITextFieldViewModeAlways;
        
        [self setFont:[UIFont systemFontOfSize:14]];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame leftView:(UIView *)leftView
{
    self = [super initWithFrame:frame];
    if (self) {
        self.leftView = leftView;
        self.leftViewMode = UITextFieldViewModeAlways;        
        [self setFont:[UIFont systemFontOfSize:14]];
    }
    return self;
}

// left view padding
- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    CGRect iconRect = [super leftViewRectForBounds:bounds];
    iconRect.origin.x += self.leftViewDistance;
    return iconRect;
}
// right view padding
- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
    CGRect iconRect = [super rightViewRectForBounds:bounds];
    iconRect.origin.x -= self.rightViewDistance;
    return iconRect;
}

// text area
- (CGRect)textRectForBounds:(CGRect)bounds
{
    CGRect inset = CGRectMake(bounds.origin.x+self.initDistance, bounds.origin.y, bounds.size.width-25-self.initDistance, bounds.size.height);// 25 是关闭按钮的位置
    return inset;
}

// mouse position
- (CGRect)editingRectForBounds:(CGRect)bounds
{
    CGRect inset = CGRectMake(bounds.origin.x+self.initDistance, bounds.origin.y, bounds.size.width-25-self.initDistance, bounds.size.height);
    return inset;
}



@end
