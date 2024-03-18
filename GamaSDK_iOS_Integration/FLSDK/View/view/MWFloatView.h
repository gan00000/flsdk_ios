//
//  PFDragView_CN.h
//  PFButtonDemo
//
//  Created by TangTieshan on 15/12/22.
//  Copyright (c) 2015年 TangTieshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SdkHeader.h"
#import "FloatContentViewController.h"

//#define IS_IPAD  ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)

#define GM_Float_Button_Width     60

@protocol MWFloatViewDelegate <NSObject>

- (void)didSelectedDragViewAtIndex:(NSInteger)selectedIndex;

@end

@interface MWFloatView : UIView
@property (nonatomic, weak)id<MWFloatViewDelegate>delegate;
//@property (nonatomic, assign, getter=isGameLandscape)BOOL gameLandscape;

@property (nonatomic,strong) FloatContentViewController *mFloatContentViewController;

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView;

- (void)showDragViewToBaseView_MMMethodMMM:(UIView *)baseView;
- (void)destoryDragView_MMMethodMMM;
- (void)hiddenRedPoint_MMMethodMMM:(BOOL)yesOrNo;
@end
