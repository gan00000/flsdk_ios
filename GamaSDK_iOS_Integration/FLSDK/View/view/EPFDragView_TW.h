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

//#define IS_IPAD  ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)

#define GM_Float_Button_Width     60

@protocol EPFDragView_TWDelegate <NSObject>

- (void)didSelectedDragViewAtIndex:(NSInteger)selectedIndex;

@end

@interface EPFDragView_TW : UIView
@property (nonatomic, weak)id<EPFDragView_TWDelegate>delegate;
@property (nonatomic, assign, getter=isGameLandscape)BOOL gameLandscape;

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView;

- (void)showDragViewToBaseView:(UIView *)baseView;
- (void)addHiddenAnimation;
- (void)hiddenRedPoint:(BOOL)yesOrNo;
@end
