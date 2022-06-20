//
//  SDKBaseView.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/31.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewDelegate.h"

#define MARGIN_TOP 180

NS_ASSUME_NONNULL_BEGIN

@interface SDKBaseView : UIView


@property(nonatomic, weak) UIViewController * theViewUIViewController;

@property(nonatomic, weak) id<LoginViewDelegate> delegate;

@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate;

@property(nonatomic) CURRENT_PAGE_TYPE fromPage;
@property(nonatomic) id fromPageParam;

@end

NS_ASSUME_NONNULL_END
