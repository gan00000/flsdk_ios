

#import "CircumialAroundenceView.h"

@implementation CircumialAroundenceView


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    SDK_LOG(@"CircumialAroundenceView touchesBegan");
    if (self.touchesBeganCallback) {
        self.touchesBeganCallback(@"",0,nil);
    }
    
    
    [super touchesBegan:touches withEvent:event];
}

@end
