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
#import "SDKRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface MWWebView : UIView

@property (nonatomic, copy) CCallBack webCallBack_MMMPRO;

@property (nonatomic, strong) WKWebView *wkwebView_MMMPRO;

@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate_MMMPRO;

- (void)loadRequest_MMMethodMMM:(NSString *)mUrl;
- (void)releaseAll_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
