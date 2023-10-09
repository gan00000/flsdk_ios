

#import "CharacterianPedlowView.h"

@implementation CharacterianPedlowView
{
    BOOL isDrawRect;
    
}


- (void)initData_MMMethodMMM{
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    SDK_LOG(@"CharacterianPedlowView touchesBegan");
    [self endEditing:YES];
    
    
    
    [super touchesBegan:touches withEvent:event];
}



- (void)addDrawRectBolck:(CCallBack)callback
{
    if (!self.drawBlockArray) {
        self.drawBlockArray = [NSMutableArray array];
    }
    [self.drawBlockArray addObject:callback];
    
}

- (void)drawRect:(CGRect)rect{
    
    [super drawRect:rect];
    
    if(!isDrawRect){
        isDrawRect = YES;
        for (CCallBack  callback in self.drawBlockArray) {

            callback(wwwww_tag_wwwww_drawRect,0,nil);
        }
        
    }
    
}

-(void)removeFromGameView{
    
    if([self.superview isKindOfClass:[SentiibilityCultureileView class]]){
        [self.superview removeFromSuperview];
    }else{
        [self removeFromSuperview];
    }
}
@end
