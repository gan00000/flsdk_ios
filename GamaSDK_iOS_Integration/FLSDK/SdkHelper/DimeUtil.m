//
//  DimeUtil.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/23.
//  Copyright © 2022 Gama. All rights reserved.
//

#import "DimeUtil.h"


@interface DimeUtil()
@property (nonatomic,assign) CGFloat viewAdaptRate;
@end

@implementation DimeUtil

+ (instancetype)share{
    
    static DimeUtil *_xDimeUtil = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _xDimeUtil = [[DimeUtil alloc] init];
    });
    
    return _xDimeUtil;
}

//-(NSInteger)getSdkPageWidth
//{
//    if (IS_IPHONE) {
//        if (!IS_PORTRAIT) {//横屏
//            return kBgHeight * (608.0 / 582.0);
//        }
//
//        return SCREEN_WIDTH * 0.88;
//    }
//    return 608 * 0.8;
//}


//-(NSInteger)getSdkPageHeight
//{
//    if (IS_IPHONE) {
//        if (SCREEN_WIDTH > SCREEN_HEIGHT) {//横屏
//            int hetight = SCREEN_HEIGHT * 0.85;
//            return hetight;
//        }
//        return [self getSdkPageWidth] + 1.1;//豎屏
//    }
//    return 582 * 0.8;;
//}


//h = 582 w = 608
-(CGFloat)getViewHeight:(CGFloat)height
{
    return height * self.viewAdaptRate;
    
}

-(CGFloat)getViewWidth:(CGFloat)width
{
    return width * self.viewAdaptRate;
}

-(CGFloat)getFontSize:(CGFloat)size{
    return size * self.viewAdaptRate;
}



-(CGFloat)viewAdaptRate
{
    if (_viewAdaptRate) {
        return _viewAdaptRate;
    }
    
    NSLog(@"SCREEN_WIDTH:%f,SCREEN_HEIGHT:%f",SCREEN_WIDTH,SCREEN_HEIGHT);

    if (IS_PORTRAIT) {
        
        CGFloat designRate = 375.0 / 667.0;//设计分辨率
        CGFloat deviceRate = SCREEN_WIDTH / SCREEN_HEIGHT;
        
        //设备宽高比 比 设计宽高比 小
        if (deviceRate >=  designRate) {//设备屏幕宽度大
            _viewAdaptRate = SCREEN_HEIGHT / 667.0;
        }else{
            _viewAdaptRate = SCREEN_WIDTH / 375.0;
        }
    }else{
        
//        CGFloat designRate = 667.0/375.0;
//        CGFloat deviceRate = SCREEN_WIDTH / SCREEN_HEIGHT;
//
//        if (deviceRate >=  designRate) {//设备屏幕宽度大
//            _viewAdaptRate = SCREEN_HEIGHT / 375.0;
//        }else{
//            _viewAdaptRate = SCREEN_WIDTH / 667.0;
//        }
        
        CGFloat deviceRate = SCREEN_HEIGHT / 375.0 * 0.9;
        _viewAdaptRate = deviceRate;
    }
    return _viewAdaptRate;
}
    

@end
