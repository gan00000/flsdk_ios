

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "SdkUtil.h"
#import "SdkHeader.h"
#import "UIScreen+Sdk.h"

typedef void(^MWWebLayoutHandler)(UIView *containerView, UIView *headerView, UIView *webView, UIView *footView);

typedef void(^MWWebConfirmHandler)(BOOL confirmResult);
typedef void(^MWWebAlertHandler)(NSString *message, MWWebConfirmHandler confirmHandler);


@interface MWWebViewController : UIViewController
@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate;

@property (nonatomic,copy) MWWebAlertHandler alertHandler; 
@property (nonatomic) BOOL shouldRotate;
@property (nonatomic) UIInterfaceOrientationMask interfaceOrientationMask;
@property (nonatomic) UIInterfaceOrientation interfaceOrientation;

@property (nonatomic,copy) CCallBack viewDidLoadCompletion;
@property (nonatomic,copy) CCallBack willDismissCallback;
@property (nonatomic,copy) CCallBack2 didDismissCallback;

@property (nonatomic, strong)NSURLRequest *webRequest;


- (void)webGoBack_MMMethodMMM;

- (void)webGoForward_MMMethodMMM;

- (void)webReload_MMMethodMMM;

- (void)webClose_MMMethodMMM;

- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request;

- (instancetype)initWithWebLayoutHandler_MMMethodMMM:(MWWebLayoutHandler)handler animation_MMMethodMMM:(BOOL)animation NS_DESIGNATED_INITIALIZER;


+ (instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request
                                            layoutHandler_MMMethodMMM:(MWWebLayoutHandler)handler
                                                animation_MMMethodMMM:(BOOL)animation
                                           animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle;

@end
