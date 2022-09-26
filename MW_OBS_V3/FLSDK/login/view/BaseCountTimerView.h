//
//  FindPasswordView.h
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "SDKBaseView.h"
#import "CountTimerDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseCountTimerView : SDKBaseView

@property (assign,nonatomic) NSInteger totalCount;
@property(nonatomic, weak) id<CountTimerDelegate> countTimerDelegate;
@property (nonatomic, copy) NSString *risearyTaxit;

-(void)startCountTimer;
-(void) finishCountTimer;

@end

NS_ASSUME_NONNULL_END
