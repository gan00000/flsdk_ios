

#import "EachitorGeniitiousView.h"

@implementation EachitorGeniitiousView


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    SDK_LOG(wwwww_tag_wwwww_BasePopupView_touchesBegan);
    if (self.touchesBeganCallback_MMMPRO) {
        self.touchesBeganCallback_MMMPRO(@"",0,nil);
    }
    
    
    [super touchesBegan:touches withEvent:event];
}

@end
