//
//  CountTimerDelegate.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2022/8/10.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CountTimerDelegate <NSObject>

-(void)beforeStartTimer_MMMethodMMM;

-(void)timing_MMMethodMMM:(NSString *)count;

-(void)finishTimer_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
