//
//  MainView.h
//
//
//  Created by sunn on 2017/3/11.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, MainViewMode)
{
    MainView_MySpace,
};

@interface MainView : UIView

- (instancetype)initWithMode:(MainViewMode)mode;

@end
