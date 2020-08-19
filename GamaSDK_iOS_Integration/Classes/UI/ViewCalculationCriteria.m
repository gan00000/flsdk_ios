//
//  ViewCalculationCriteria.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/5.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "ViewCalculationCriteria.h"
#import "HelloHeader.h"

@implementation ViewCalculationCriteria

static ViewCalculationCriteria *_criteria;

+ (instancetype)shareCriteria
{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _criteria = [[ViewCalculationCriteria alloc] init];
    });
    return _criteria;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self _propertiesCalculator];
    }
    return self;
}

- (void)_propertiesCalculator
{
    CGFloat rate = 0.9f; // 校对比值
    CGFloat curWidth = winWidth;
    CGFloat curHeight = winHeight;
    
    CGFloat realWidthHeightRate = curWidth/curHeight;
    
    CGFloat originBgWidthOfHeight = bgOriginHeight/bgOriginWidth;//1070/1130.0f; // 原图宽高比
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {
        curHeight = curWidth * originBgWidthOfHeight;
    } else {
        curWidth = curHeight / originBgWidthOfHeight;
    }
    
    self.calWidth = rate * curWidth;
    self.calHeight = rate * curHeight;
    self.calCenter = CGPointMake(winWidth/2, winHeight/2);
    
    if (device_is_iPhoneX) {
        self.calHeight = rate * curHeight * 0.8f;
        self.calWidth = self.calHeight / originBgWidthOfHeight;
    }
}



@end
