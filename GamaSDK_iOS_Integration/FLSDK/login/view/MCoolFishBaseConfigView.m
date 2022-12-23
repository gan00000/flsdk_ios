
#import "MCoolFishBaseConfigView.h"

@implementation MCoolFishBaseConfigView



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  
{
   self.has_Editing = NO;

   self.unews_list = @[@(605), @(210)];

   self.stringIdx = 859;

    SDK_LOG(@"BasePopupView touchesBegan");
    if (self.touchesBeganCallback) {
        self.touchesBeganCallback(@"",0,nil);
    }
    
    
    [super touchesBegan:touches withEvent:event];
}

@end
