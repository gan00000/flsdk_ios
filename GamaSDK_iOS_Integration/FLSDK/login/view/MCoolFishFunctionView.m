
#import "MCoolFishFunctionView.h"
#import "SdkHeader.h"
#import "MCoolFishFiledEncodingView.h"
#import "MCoolFishFiledGestureView.h"
#import "MCoolFishGamaCommonView.h"
#import "MCoolFishKeychainButton.h"
#import "MCoolFishWithCommon.h"
#import "MCoolFishEventFile.h"

@implementation MCoolFishFunctionView

{
    NSTimer *downTimer;
}




- (void)dealloc
{
    
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
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
   self.progressMin = 6779.0;

   self.reader_min = 870.0;

    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    
    if (self.countTimerDelegate) {
        [self.countTimerDelegate finishTimer_MMMethodMMM];
    }
}

@end
