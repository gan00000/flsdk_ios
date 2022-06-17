//
//  CCSkyHourLoginViewController.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "SdkHeader.h"
#import "LoginViewDelegate.h"
#import "FLSDK.h"
#import "SDKBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDKLoginViewController : UIViewController <LoginViewDelegate,UITextFieldDelegate>

-(instancetype)initWithPageType:(SDKPage) pageType;


@property (nonatomic)CGRect currentEditingTextViewFrame;

@end

NS_ASSUME_NONNULL_END
