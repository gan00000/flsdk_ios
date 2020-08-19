//
//  ViewCalculationCriteria.h
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/5.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ViewCalculationCriteria : NSObject

@property (nonatomic, assign) CGFloat calWidth;
@property (nonatomic, assign) CGFloat calHeight;
@property (nonatomic, assign) CGPoint calCenter;

+ (instancetype)shareCriteria;

@end
