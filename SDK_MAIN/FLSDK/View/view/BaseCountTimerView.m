//
//  FindPasswordView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

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



//倒计时
-(void)startCountTimer_MMMethodMMM{
    
    if (self.countTimerDelegate_MMMPRO) {
        [self.countTimerDelegate_MMMPRO beforeStartTimer_MMMethodMMM];
    }
    
    if (!self.totalCount_MMMPRO || self.totalCount_MMMPRO <= 0) {
        self.totalCount_MMMPRO = 60;
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
    
    self.totalCount_MMMPRO--;
    if (self.totalCount_MMMPRO < 0) {
        [self onFinishCountTimer_MMMethodMMM];
    }else{
        
        if (self.countTimerDelegate_MMMPRO) {
            [self.countTimerDelegate_MMMPRO timing_MMMethodMMM:[NSString stringWithFormat:@"%ld", self.totalCount_MMMPRO]];
        }
        
    }
    
}

-(void)onFinishCountTimer_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    
    if (self.countTimerDelegate_MMMPRO) {
        [self.countTimerDelegate_MMMPRO finishTimer_MMMethodMMM];
    }
}

-(void)cancelCountTimer_MMMethodMMM
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    if (self.countTimerDelegate_MMMPRO) {
        [self.countTimerDelegate_MMMPRO onCancelTimer_MMMethodMMM];
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
