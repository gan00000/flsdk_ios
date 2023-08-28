

#import "ShotetStalactistView.h"
#import "SdkHeader.h"
#import "TarsasterLipiseView.h"
#import "MulctfulHemeresqueView.h"
#import "LaterhoodCortView.h"
#import "EquinsexageChoiceitudeButton.h"
#import "ScienceonOmenonceacy.h"
#import "PointsionValueain.h"

@implementation ShotetStalactistView

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
