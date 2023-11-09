

#import "CidainBrevoriumView.h"

@implementation CidainBrevoriumView


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
    SDK_LOG(@"CidainBrevoriumView touchesBegan");
    if (self.touchesBeganCallback) {
        self.touchesBeganCallback(@"",0,nil);
    }
    
    
    [super touchesBegan:touches withEvent:event];
}

@end
