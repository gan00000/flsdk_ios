
#import "CHMXTTCreateCoreView.h"
#import "SdkHeader.h"
#import "CHMXTTServiceTermsView.h"
#import "CHMXTTStringView.h"
#import "CHMXTTCenterView.h"
#import "CHMXTTRameworkUserButton.h"
#import "CHMXTTChangeTimer.h"
#import "CHMXTTRegister.h"

@implementation CHMXTTCreateCoreView

{
    NSTimer *downTimer;
}

-(UIView *)lowercaseGestureInfodicIntegerView{
     double boundsLanguage = 7497.0;
     NSArray * loginName = [NSArray arrayWithObjects:@(520), @(276), nil];
     NSString * current = @"light";
    UIView * misguideUnderhanded = [[UIView alloc] initWithFrame:CGRectMake(318, 406, 0, 0)];
    misguideUnderhanded.frame = CGRectMake(281, 48, 0, 0);
    misguideUnderhanded.alpha = 1.0;
    misguideUnderhanded.backgroundColor = [UIColor colorWithRed:141 / 255.0 green:231 / 255.0 blue:247 / 255.0 alpha:0.3];

    
    CGRect misguideUnderhandedFrame = misguideUnderhanded.frame;
    misguideUnderhandedFrame.size = CGSizeMake(256, 88);
    misguideUnderhanded.frame = misguideUnderhandedFrame;
    if (misguideUnderhanded.isHidden) {
         misguideUnderhanded.hidden = false;
    }
    if (misguideUnderhanded.alpha > 0.0) {
         misguideUnderhanded.alpha = 0.0;
    }
    if (!misguideUnderhanded.isUserInteractionEnabled) {
         misguideUnderhanded.userInteractionEnabled = true;
    }

    return misguideUnderhanded;

}








-(void)startCountTimer_MMMethodMMM{

         {
UIView * shapeTangy = [self lowercaseGestureInfodicIntegerView];

      int shapeTangy_tag = shapeTangy.tag;
     int tmp_l_83 = (int)shapeTangy_tag;
     int k_85 = 1;
     int x_0 = 0;
     if (tmp_l_83 > x_0) {
         tmp_l_83 = x_0;
     }
     while (k_85 <= tmp_l_83) {
         k_85 += 1;
          tmp_l_83 -= k_85;
     int x_70 = k_85;
          int j_26 = 0;
     for (int t_74 = x_70; t_74 > x_70 - 1; t_74--) {
         j_26 += t_74;
          if (t_74 > 0) {
          x_70 +=  t_74;

     }
     int x_48 = j_26;
              break;

     }
         break;
     }
      [self addSubview: shapeTangy];


}

    
    if (self.countTimerDelegate) {
        [self.countTimerDelegate beforeStartTimer_MMMethodMMM];
    }
    
    if (!self.totalCount || self.totalCount <= 0) {
        self.totalCount = 60;
    }
    
    if (downTimer) {
        [downTimer invalidate];
            NSArray * login6 = @[@"alongside", @"odd"];
             while (login6.count > 24) { break; }
        downTimer = nil;
    }
    downTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(doTiming_MMMethodMMM)
                                               userInfo:nil
                                                repeats:YES];
    
    
}


-(void)finishCountTimer_MMMethodMMM
{

    if (downTimer) {
        [downTimer invalidate];
            NSString * utilB = @"predisposition";
             while (utilB.length > 180) { break; }
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
            NSString * queryT = @"scud";
        downTimer = nil;
    }
}


- (void)doTiming_MMMethodMMM {

   self.namedTag = 4598;

   self.font_idx = 102;

   self.responseMin = 641.0;

    
    self.totalCount--;
    if (self.totalCount < 0) {
        [self finishCountTimer_MMMethodMMM];
    }else{
        
        if (self.countTimerDelegate) {
            [self.countTimerDelegate timing_MMMethodMMM:[NSString stringWithFormat:@"%ld", self.totalCount]];
        }
        
    }
    
}

@end
