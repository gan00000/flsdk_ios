

#import "LatadeClosView.h"

@implementation LatadeClosView
{
    BOOL isDrawRect;
    
}


- (void)initData_MMMethodMMM{
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    SDK_LOG(wwwww_tag_wwwww_SDKBaseView_touchesBegan);
    [self endEditing:YES];
    
    
    
    [super touchesBegan:touches withEvent:event];
}



- (void)addDrawRectBolck_MMMethodMMM:(CCallBack)callback
{
    if (!self.drawBlockArray_MMMPRO) {
        self.drawBlockArray_MMMPRO = [NSMutableArray array];
    }
    [self.drawBlockArray_MMMPRO addObject:callback];
    
}

- (void)drawRect:(CGRect)rect{
    
    [super drawRect:rect];
    
    if(!isDrawRect){
        isDrawRect = YES;
        for (CCallBack  callback in self.drawBlockArray_MMMPRO) {

            callback(wwwww_tag_wwwww_drawRect,0,nil);
        }
        
    }
    
}

-(void)removeFromGameView_MMMethodMMM{
    
    if([self.superview isKindOfClass:[HomewiseVentrView class]]){
        [self.superview removeFromSuperview];
    }else{
        [self removeFromSuperview];
    }
}
@end
