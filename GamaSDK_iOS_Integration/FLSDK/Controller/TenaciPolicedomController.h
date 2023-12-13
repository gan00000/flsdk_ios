

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "ElsureTraditional.h"
#import "SdkHeader.h"
#import "UIScreen+CentesimoseTestation.h"




@interface TenaciPolicedomController : UIViewController
@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate;

@property (nonatomic) BOOL shouldRotate;
@property (nonatomic) UIInterfaceOrientationMask interfaceOrientationMask;
@property (nonatomic) UIInterfaceOrientation interfaceOrientation;

@property (nonatomic,copy) CCallBack viewDidLoadCompletion;
@property (nonatomic,copy) CCallBack willDismissCallback;
@property (nonatomic,copy) CCallBack2 didDismissCallback;

@property (nonatomic, strong)NSURLRequest *webRequest;

@property (nonatomic, assign)BOOL isShowTitle;
@property (nonatomic, assign)BOOL isShowDefulatCloseBtn;


- (void)webGoBack_MMMethodMMM;

- (void)webGoForward_MMMethodMMM;

- (void)webReload_MMMethodMMM;

- (void)webClose_MMMethodMMM;

- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request;

- (instancetype)initWithWebLayoutIsShowTitle_MMMethodMMM:(BOOL)isShowTitle animation_MMMethodMMM:(BOOL)animation NS_DESIGNATED_INITIALIZER;


+ (instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request
                                            isShowTitle_MMMethodMMM:(BOOL)isShowTitle
                                                animation_MMMethodMMM:(BOOL)animation
                                           animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle;

@end
