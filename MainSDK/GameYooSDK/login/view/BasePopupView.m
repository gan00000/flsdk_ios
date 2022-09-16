//
//  BasePopupView.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/8/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "BasePopupView.h"

@implementation BasePopupView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    if (self.contentView) {
//        [contentView ]
//    }
    SDK_LOG(@"BasePopupView touchesBegan");
    if (self.touchesBeganCallback) {
        self.touchesBeganCallback(@"",0,nil);
    }
    
    //把事件交给上一个响应者处理
    [super touchesBegan:touches withEvent:event];
}

@end
