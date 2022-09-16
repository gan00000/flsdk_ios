//
//  ExoateSympicking.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "UltimizationLax.h"
#import "CountTimerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface SubbornmostEmetoconsumer : UltimizationLax

@property (assign,nonatomic) NSInteger totalCount;
@property(nonatomic, weak) id<CountTimerDelegate> countTimerDelegate;

-(void)startCountTimer;
-(void) finishCountTimer;

@end

NS_ASSUME_NONNULL_END
