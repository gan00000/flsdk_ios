







#import "BasePopupView.h"

@implementation BasePopupView


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{



    SDK_LOG(@"BasePopupView touchesBegan");
    if (self.touchesBeganCallback) {
        self.touchesBeganCallback(@"",0,nil);
    }
    
    
    [super touchesBegan:touches withEvent:event];
}

@end
