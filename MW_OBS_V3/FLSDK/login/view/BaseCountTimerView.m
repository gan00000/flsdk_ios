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
-(void)startCountTimer{
    
    if (self.countTimerDelegate) {
        [self.countTimerDelegate beforeStartTimer];
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
                                               selector:@selector(doTiming)
                                               userInfo:nil
                                                repeats:YES];
    
    
}

- (void)doTiming {
    
    self.totalCount--;
    if (self.totalCount < 0) {
        [self finishCountTimer];
    }else{
        
        if (self.countTimerDelegate) {
            [self.countTimerDelegate timing:[NSString stringWithFormat:@"%ld", self.totalCount]];
        }
        
    }
    
}

-(void) finishCountTimer
{
    if (downTimer) {
        [downTimer invalidate];
        downTimer = nil;
    }
    
    if (self.countTimerDelegate) {
        [self.countTimerDelegate finishTimer];
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
