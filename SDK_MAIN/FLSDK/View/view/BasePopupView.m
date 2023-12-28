//
//  BasePopupView.m
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/8/18.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "BasePopupView.h"

@implementation BasePopupView


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  //system_method
{
//    if (self.contentView) {
//        [contentView ]
//    }
    SDK_LOG(wwwww_tag_wwwww_BasePopupView_touchesBegan);
    if (self.touchesBeganCallback_MMMPRO) {
        self.touchesBeganCallback_MMMPRO(@"",0,nil);
    }
    
    //把事件交给上一个响应者处理
    [super touchesBegan:touches withEvent:event];
}

@end
