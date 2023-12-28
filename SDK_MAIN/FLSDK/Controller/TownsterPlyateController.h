

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "StinityAsterature.h"
#import "SdkHeader.h"
#import "UIScreen+GenesfulProblemcy.h"




@interface TownsterPlyateController : UIViewController
@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate_MMMPRO;

@property (nonatomic) BOOL shouldRotate_MMMPRO;
@property (nonatomic) UIInterfaceOrientationMask interfaceOrientationMask_MMMPRO;
@property (nonatomic) UIInterfaceOrientation interfaceOrientation_MMMPRO;

@property (nonatomic,copy) CCallBack viewDidLoadCompletion_MMMPRO;
@property (nonatomic,copy) CCallBack willDismissCallback_MMMPRO;
@property (nonatomic,copy) CCallBack2 didDismissCallback_MMMPRO;

@property (nonatomic, strong)NSURLRequest *webRequest_MMMPRO;

@property (nonatomic, assign)BOOL isShowTitle_MMMPRO;
@property (nonatomic, assign)BOOL isShowDefulatCloseBtn_MMMPRO;


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
