

#import "DomshipScabrunderstandwardView.h"

@implementation DomshipScabrunderstandwardView


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    SDK_LOG(@"DomshipScabrunderstandwardView touchesBegan");
    if (self.touchesBeganCallback) {
        self.touchesBeganCallback(@"",0,nil);
    }
    
    
    [super touchesBegan:touches withEvent:event];
}

@end
