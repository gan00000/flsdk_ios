//
//  TouchEventInterruptView.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/11/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "TouchEventInterruptView.h"
#import "SdkHeader.h"
@implementation TouchEventInterruptView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//中断触摸事件，防止事件传递到游戏view
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SDK_LOG(@"touchesBegan...");
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SDK_LOG(@"touchesBegan...");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SDK_LOG(@"touchesBegan...");
}


@end
