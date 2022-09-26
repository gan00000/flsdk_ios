

/**
  ck later and find out you haven't followed through.

一个简单的方法是把你的目标告诉一些人，这样，如果他们后来发现你没有坚持下去，你会感到羞愧。



A steeper penalty than shame, however, is putting cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that yo 
**/
#import <UIKit/UIKit.h>

/**
  借助朋友的帮助



Spending time around high achievers can boost your own performance. If your New Year's resolution is to run a marathon or write a book, you'd be wise to st 
**/
#import <WebKit/WebKit.h>
#import "SdkUtil.h"
//g cold hard cash on the table, and there is excellent evidence that self-imposed cash penalties motivate success. You can make a bet with a friend that you'll stick to your New Year's resolutio
#import "SdkHeader.h"
#import "UIScreen+Sdk.h"
typedef void(^MWWebLayoutHandler)(UIView *containerView, UIView *headerView, UIView *webView, UIView *footView);
typedef void(^MWWebCloseHandler)(void);
typedef void(^MWWebConfirmHandler)(BOOL confirmResult);
typedef void(^MWWebAlertHandler)(NSString *message, MWWebConfirmHandler confirmHandler);

/**
  ber was up the first time l met you.
第一次遇见我，你就在劫难逃了 
**/
@interface MWWebViewController : UIViewController
@property (nonatomic,weak) id<WKNavigationDelegate> webViewDelegate;
@property (nonatomic,copy) MWWebCloseHandler closeHandler;
@property (nonatomic, assign) CGFloat quatifySimilarty;
@property (nonatomic,copy) MWWebAlertHandler alertHandler;
@property (nonatomic) BOOL shouldRotate;
@property (nonatomic) UIInterfaceOrientationMask interfaceOrientationMask;
//ened or what will happen, you will never lose your value."
//
//
//
//“在生活中，很多次我们被自己制定的决策和身边的环境所抛弃、蹂躏，甚至碾入尘土。我们感到自己一无是处。但是不管发生了什么，或者将要发生什么，你们都永远不会失去自己的价值。”
@property (nonatomic, assign) BOOL wantoonBankment;
@property (nonatomic) UIInterfaceOrientation interfaceOrientation;
//跑一场马拉松或写一本书，那么明智的做法是开始与那些已经实现这一目标、可以告诉你如何做到的朋友们在一起。仅仅是和他们相处，你就会有收获，因为你会倾向于模仿他们的行为模式。
//
//
//
//Strangely enough, there is evidenc
- (void)webGoBack;
- (void)webGoForward;
- (void)webReload;
- (void)webClose;
- (void)webLoadURLRequest:(NSURLRequest *)request;
- (instancetype)initWithWebLayoutHandler:(MWWebLayoutHandler)handler animation:(BOOL)animation NS_DESIGNATED_INITIALIZER;
+ (instancetype)webViewControllerPresentingWithURLRequest:(NSURLRequest *)request
                                            layoutHandler:(MWWebLayoutHandler)handler
//视为忙碌的一天后要做的最后一件事，为了完成家务、作业、工作或追新剧，晚点再睡也没事。
//
//That thinking needs to be changed, Grander said.
//
//格兰德纳说，这种想法必须改变。
//
//"Don't see your sleep as the amount of time you have left in your day," he advised. "See your sleep as the amount of time you need in order to set yourself up for a productive tomorr
                                                animation:(BOOL)animation
                                           animationStyle:(UIModalTransitionStyle)animationStyle;
@end
