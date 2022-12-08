
#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "CHMXTTRegister.h"
#import "SdkHeader.h"
#import "CHMXTTAppleEngine.h"

typedef void(^MWWebLayoutHandler)(UIView *containerView, UIView *headerView, UIView *webView, UIView *footView);
typedef void(^MWWebCloseHandler)(void);
typedef void(^MWWebConfirmHandler)(BOOL confirmResult);
typedef void(^MWWebAlertHandler)(NSString *message, MWWebConfirmHandler confirmHandler);


@interface CHMXTTMainController : UIViewController

@property(nonatomic, assign)Boolean  enbaleMode;
@property(nonatomic, assign)double  label_padding;
@property(nonatomic, assign)double  main_u;




+(NSString *)uppercaseSinConfire:(long)window_j;

-(UIScrollView *)oneCreateScanFoundationLayoutScrollView;

-(NSString *)scanTrackingEnbleSynthesize:(NSDictionary *)btn function:(NSArray *)function landscape:(NSDictionary *)landscape;

-(UILabel *)numberBdykTintPlegingAttrBlockLabel:(double)security;

-(Boolean)openFileControlLandscape:(NSArray *)firebaseInfo purchase:(double)purchase sdk:(NSArray *)sdk;

-(NSDictionary *)postBoardPhoneKitGetter;

-(UITableView *)convertSessionAllocatorTableView:(float)block short_1Util:(NSArray *)short_1Util;

-(NSString *)attribtUncompleteRadiusConf:(NSDictionary *)tableAlert wkweb:(NSArray *)wkweb s_layer:(NSArray *)s_layer;

-(NSString *)accessAnimationsAddMarkOrderManager:(long)valid reset:(int)reset;

-(int)coreUnarchiverAreaHeightScreenConfig;

-(NSArray *)beginZymentWwwwwSuccessfulen:(NSString *)valuesTotal;

-(NSString *)perfomKeyStandardRadiusScopes:(NSInteger)buttonCalculate levelChange:(Boolean)levelChange;

-(UILabel *)logoPartPolicyOrientationLabel:(float)color change:(float)change;

-(UIButton *)memsetApiExistingButton;


@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate;
@property (nonatomic,copy) MWWebCloseHandler closeHandler;
@property (nonatomic,copy) MWWebAlertHandler alertHandler; 
@property (nonatomic) BOOL shouldRotate;
@property (nonatomic) UIInterfaceOrientationMask interfaceOrientationMask;
@property (nonatomic) UIInterfaceOrientation interfaceOrientation;

 
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
