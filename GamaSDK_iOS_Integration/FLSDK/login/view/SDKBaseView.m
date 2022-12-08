//
//  SDKBaseView.m
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/31.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"

@implementation SDKBaseView

- (void)initData_MMMethodMMM{
    
}
//事件的传递和响应的区别：
//事件的传递是从上到下（父控件到子控件），事件的响应是从下到上（顺着响应者链条向上传递：子控件到父控件。
//在事件的响应中，如果某个控件实现了touches...方法，则这个事件将由该控件来接受，如果调用了[supertouches….];就会将事件顺着响应者链条往上传递，传递给上一个响应者；接着就会调用上一个响应者的touches….方法
//只要点击控件,就会调用touchBegin,如果没有重写这个方法,自己处理不了触摸事件
// 上一个响应者可能是父控件
//默认会把事件传递给上一个响应者,上一个响应者是父控件,交给父控件处理
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  //system_method
{
    SDK_LOG(@"SDKBaseView touchesBegan");
    [self endEditing:YES];
    
    // 注意不是调用父控件的touches方法，而是调用父类的touches方法
    // super是父类 superview是父控件
    [super touchesBegan:touches withEvent:event];
}

//一根或者多根手指在view上移动（随着手指的移动，会持续调用该方法）
//-(void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
//
//一根或者多根手指离开view（手指抬起）
//-(void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event
//
//某个系统事件(例如电话呼入)打断触摸过程
//-(void)touchesCancelled:(NSSet*)touches withEvent:(UIEvent*)event


- (void)addDrawRectBolck:(CCallBack)callback
{
    if (!self.drawBlockArray) {
        self.drawBlockArray = [NSMutableArray array];
    }
    [self.drawBlockArray addObject:callback];
    
}

- (void)drawRect:(CGRect)rect{
    
    [super drawRect:rect];
    
    for (CCallBack  callback in self.drawBlockArray) {
        
        callback(wwwww_tag_wwwww_drawRect,0,nil);
    }
    
}

-(void)removeFromGameView{
    
    if([self.superview isKindOfClass:[TouchEventInterruptView class]]){
        [self.superview removeFromSuperview];
    }else{
        [self removeFromSuperview];
    }
}
@end
