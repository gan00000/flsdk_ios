//
//  GamaWebViewController.h
//  GamaSDK_iOS
//
//  Created by coke on 2018/12/10.
//  Copyright © 2018年 starpy. All rights reserved.
//

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

//@property (nonatomic,copy) MWWebAlertHandler alertHandler; //自定义WK web的提示弹框，若web与app的方向不一致则必须要自定义提示弹框。
@property (nonatomic) BOOL shouldRotate;
@property (nonatomic) UIInterfaceOrientationMask interfaceOrientationMask;
@property (nonatomic) UIInterfaceOrientation interfaceOrientation;

@property (nonatomic,copy) CCallBack viewDidLoadCompletion;
@property (nonatomic,copy) CCallBack willDismissCallback;
@property (nonatomic,copy) CCallBack2 didDismissCallback;

@property (nonatomic, strong)NSURLRequest *webRequest;

@property (nonatomic, assign)BOOL isShowTitle;

/**
 webView后退
 */
- (void)webGoBack_MMMethodMMM;
/**
 webView前进
 */
- (void)webGoForward_MMMethodMMM;
/**
 webView重载
 */
- (void)webReload_MMMethodMMM;
/**
 关闭webView
 */
- (void)webClose_MMMethodMMM;
/**
 webView载入某链接请求
 */
- (void)webLoadURLRequest_MMMethodMMM:(NSURLRequest *)request;
/**
 @description 初始化一个WebViewController。注意：webView在iOS8或以上采用WKWebView，其它版本采用xxWebView，且不要直接在GamaWebLayoutHandler返回的webView上操作。
 
 @param handler   初始化后，在viewController的viewDidLoad方法中回调，用于自定义布局其返回的headerView、webView、footView、indicatorView，而containerView为加载以上4个view的全屏的superView，当界面设计为悬浮效果时可对其设置透明度来控制背景的透明度（controller的view默认为全透明展示）。该参数可传nil，当为nil时采用默认布局样式（全屏展示，白色底的headerView中搭配返回按钮、重载按钮、关闭按钮、激活指示视图，其余空间为webView）。
 
 @param animation   关闭controller时是否采用动画效果。
 
 @return 初始化完毕的实例化对象。
 */
- (instancetype)initWithWebLayoutIsShowTitle_MMMethodMMM:(BOOL)isShowTitle animation_MMMethodMMM:(BOOL)animation NS_DESIGNATED_INITIALIZER;

/**
 @description 生成一个WebViewController并且使用rootViewController上的顶层presentedViewController来present出来。注意：webView在iOS8或以上采用WKWebView，其它版本采用xxWebView，且不要直接在EFWebLayoutHandler返回的webView上操作。
 
 @param request 网络请求对象。请求的URL需要自行编码。
 
 @param handler   初始化后，在viewController的viewDidLoad方法中回调，用于自定义布局其返回的headerView、webView、footView、indicatorView，而containerView为加载以上4个view的全屏的superView，当界面设计为悬浮效果时可对其设置透明度来控制背景的透明度（controller的view默认为全透明展示）。该参数可传nil，当为nil时采用默认布局样式（全屏展示，白色底的headerView中搭配返回按钮、重载按钮、关闭按钮、激活指示视图，其余空间为webView）。
 
 @param animation   展示和关闭controller时是否采用动画效果。
 
 @param animationStyle   展示和关闭controller时采用的动画效果。
 
 @return 实例化对象。
 */
+ (instancetype)webViewControllerPresentingWithURLRequest_MMMethodMMM:(NSURLRequest *)request
                                            isShowTitle_MMMethodMMM:(BOOL)isShowTitle
                                                animation_MMMethodMMM:(BOOL)animation
                                           animationStyle_MMMethodMMM:(UIModalTransitionStyle)animationStyle;

@end
