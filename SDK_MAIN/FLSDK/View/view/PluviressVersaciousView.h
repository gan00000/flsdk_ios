

#import <UIKit/UIKit.h>
#import <SafariServices/SafariServices.h>
#import "SdkHeader.h"
#import "AnxiariumVehwindature.h"

NS_ASSUME_NONNULL_BEGIN

@interface PluviressVersaciousView : UIView

@property (nonatomic, copy) CCallBack webCallBack_MMMPRO;

@property (nonatomic, strong) WKWebView *wkwebView_MMMPRO;

@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate_MMMPRO;

- (void)loadRequest_MMMethodMMM:(NSString *)mUrl;
- (void)releaseAll_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
