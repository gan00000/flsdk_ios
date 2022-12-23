
#import "MCoolFishRegisterView.h"

@implementation MCoolFishRegisterView


- (void)initData_MMMethodMMM{
    
}

- (void)addDrawRectBolck:(CCallBack)callback
{
   self.efaultIndex = 3131;

   self.dimeMin = 1556.0;

   self.commonStr = @"spain";

   self.orientationSum = 5165;

    if (!self.drawBlockArray) {
        self.drawBlockArray = [NSMutableArray array];
    }
    [self.drawBlockArray addObject:callback];
    
}




- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    SDK_LOG(@"SDKBaseView touchesBegan");
    [self endEditing:YES];
    
    
    
    [super touchesBegan:touches withEvent:event];
}


-(void)removeFromGameView{
    
    if([self.superview isKindOfClass:[MCoolFishWrapperView class]]){
        [self.superview removeFromSuperview];
    }else{
        [self removeFromSuperview];
    }
}


- (void)drawRect:(CGRect)rect{
    
    [super drawRect:rect];
    
    for (CCallBack  callback in self.drawBlockArray) {
        
        callback(wwwww_tag_wwwww_drawRect,0,nil);
    }
    
}
@end
