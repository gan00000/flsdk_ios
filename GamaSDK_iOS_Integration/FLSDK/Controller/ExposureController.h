//
//  ExposureController.h
//  SDK_DEMO_KR
//
//  Created by Gan Yuanrong on 2023/10/11.
//  Copyright © 2023 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "SdkHeader.h"
#import "ExpoModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ExposureController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIImageView *titleBgIV;
@property (weak, nonatomic) IBOutlet UIImageView *closeIV;
@property (weak, nonatomic) IBOutlet UIImageView *backIV;


@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UIView *contentView;
//@property (weak, nonatomic) IBOutlet WKWebView *wkWebView;

@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@property (weak, nonatomic) IBOutlet UIScrollView *mScrollView;

@property (nonatomic, strong) NSMutableArray<ExpoModel *> *expoModelArry;

@end

NS_ASSUME_NONNULL_END
