







#import "BaseCountTimerView.h"
#import "SdkHeader.h"
#import "SDKTextFiledView.h"
#import "LoginTitleView.h"
#import "PhoneView.h"
#import "LoginButton.h"
#import "SDKRequest.h"
#import "SdkUtil.h"

@implementation BaseCountTimerView

{
    NSTimer *downTimer;
}




-(void)startCountTimer_MMMethodMMM{
    
    if (self.countTimerDelegate) {
        [self.countTimerDelegate beforeStartTimer_MMMethodMMM];
    }
    
    if (!self.totalCount || self.totalCount <= 0) {
        self.totalCount = 60;
    }
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(doTiming_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)doTiming_MMMethodMMM {
    
    self.totalCount--;
    if (self.totalCount < 0) {
        [self finishCountTimer_MMMethodMMM];
    }else{
        
        if (self.countTimerDelegate) {
            [self.countTimerDelegate timing_MMMethodMMM:[NSString stringWithFormat:@"%ld", self.totalCount]];
        }
        
    }
    
}

-(void)finishCountTimer_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    
    if (self.countTimerDelegate) {
        [self.countTimerDelegate finishTimer_MMMethodMMM];
    }
}

- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
}

@end
