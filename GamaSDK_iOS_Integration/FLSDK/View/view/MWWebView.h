//
//  MWWebView.h
//  MW_SDK
//
//  Created by Gan Yuanrong on 2023/10/26.
//  Copyright © 2023 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SafariServices/SafariServices.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface MWWebView : UIView

@property (nonatomic, copy) CCallBack webCallBack;

@property (nonatomic, strong) WKWebView *wkwebView;

@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate;

- (void)loadRequest:(NSString *)mUrl;
- (void)releaseAll;

@end

NS_ASSUME_NONNULL_END
