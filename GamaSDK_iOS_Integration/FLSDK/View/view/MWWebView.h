

#import <UIKit/UIKit.h>
#import <SafariServices/SafariServices.h>
#import "SdkHeader.h"
#import "SDKRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface MWWebView : UIView

@property (nonatomic, copy) CCallBack webCallBack;

@property (nonatomic, strong) WKWebView *wkwebView;

@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate;

- (void)loadRequest_MMMethodMMM:(NSString *)mUrl;
- (void)releaseAll_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
