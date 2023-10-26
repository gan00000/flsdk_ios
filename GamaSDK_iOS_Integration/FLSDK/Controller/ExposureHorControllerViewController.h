//
//  ExposureHorControllerViewController.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2023/10/12.
//  Copyright © 2023 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExpoModel.h"
#import <WebKit/WebKit.h>
#import "MWWebView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ExposureHorControllerViewController : UIViewController

@property (nonatomic, strong) NSMutableArray<ExpoModel *> *expoModelArry;

@property (weak, nonatomic) IBOutlet UITableView *menuTableView;
@property (weak, nonatomic) IBOutlet UIImageView *titleBgIV;
@property (weak, nonatomic) IBOutlet UIImageView *backIV;
@property (weak, nonatomic) IBOutlet UIImageView *closeIV;


@property (weak, nonatomic) IBOutlet UIView *contentView;

//@property (weak, nonatomic) IBOutlet WKWebView *cWebView;
@property (weak, nonatomic) IBOutlet MWWebView *mwWebView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end

NS_ASSUME_NONNULL_END
