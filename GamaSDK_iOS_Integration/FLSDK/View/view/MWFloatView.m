
#import "MWFloatView.h"
#import "UIView+RectPositionTW.h"
#import "UIColor+HexStringToColorTW.h"
#import "UIImage+CropImageTW.h"
//#import "EPFTWTools.h"
#import "Masonry.h"
#import "UIButton+WebCache.h"
#import "SUtil.h"


//悬浮按钮
#define   MW_FloatButton_Identifier         @"__MW_FloatButton_Identifier__"

#define WIN_SIZE                        [[UIScreen mainScreen] bounds].size
#define FrameWidth                      self.frame.size.width
#define FrameHeight                     self.frame.size.height


#define ButtonAnimationDuration 0.3f                            //按钮移动到屏幕边缘的时间
#define ItemBgViewWidth         250                             //显示菜单背景view的宽度

//#define ItemBgViewOriginY      2
//
//#define ItemBgViewHeight        (GM_Float_Button_Width - 2 * ItemBgViewOriginY)

//#define kButtonItemWidth        40

#define kButtonTransformValue   0.5

#define HAVE_NEW_RED_POINT        @"HAVE_NEW_RED_POINT"


@interface MWFloatView ()
{
    UIButton * _floatButton;
        
    BOOL _isLandscape;
    BOOL _isLeftSide;
    BOOL _isDraging;
//    __block BOOL _isShowMenu;
//    __block BOOL _isAminating;
    
    CGFloat _superWidth;
    CGFloat _superHeight;
    
//    CGFloat _menuItemBgWidth;
    
    CGFloat _currentTransformValue;
    
    // 屏幕方向，iphoneX适配
    UIDeviceOrientation _deviceOrientation;
    BOOL _isFullScreen;
    BOOL _isHalfHidden;
}

//@property (nonatomic, strong)GSPlatFloatUIView * gsPlatFloatUIView;
@property (nonatomic, strong)UIButton *floatButtonRedPoint;

@end

@implementation MWFloatView

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIDeviceOrientationDidChangeNotification object:nil];
    [[UIDevice currentDevice]endGeneratingDeviceOrientationNotifications];
}

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView
{
    if (self = [super initWithFrame:frame]) {
//        self.delegate = [EPFDragViewManager_TW sharedDragViewManager];
        [self setConstantData:parentView];
//        [self resetCurrentPosition];
        [self addView];
        [self addNotification];
    }
    return self;
}

- (void)addNotification {
    /**
     *  开始生成 设备旋转 通知
     */
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];

    /**
     *  添加 设备旋转 通知
     */
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleDeviceOrientationDidChange:)
                                                 name:UIDeviceOrientationDidChangeNotification
                                               object:nil];
}

//#pragma mark -
//#pragma mark - NSNotification Delegate Action
- (void)handleDeviceOrientationDidChange:(UIInterfaceOrientation)interfaceOrientation
{
    //1.获取 当前设备 实例
    UIDevice *device = [UIDevice currentDevice] ;
    if (!_isLandscape) {
        return;
    }

    switch (device.orientation) {
        case UIDeviceOrientationFaceUp:
        case UIDeviceOrientationFaceDown:
        case UIDeviceOrientationUnknown:
        case UIDeviceOrientationPortrait:
        case UIDeviceOrientationPortraitUpsideDown: {
            return;
        }
        case UIDeviceOrientationLandscapeLeft:{
            _deviceOrientation = UIDeviceOrientationLandscapeLeft;
            break;
        }
        case UIDeviceOrientationLandscapeRight: {
            _deviceOrientation = UIDeviceOrientationLandscapeRight;
            break;
        }
    }

    if (_deviceOrientation == UIDeviceOrientationLandscapeRight || _deviceOrientation == UIDeviceOrientationLandscapeLeft) {

        CGFloat centerY = self.center.y;

        CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:_isLeftSide isLandscape:_isLandscape centerY:centerY isHalfHidden:_isHalfHidden];
//        if (_isShowMenu) {
//            if (_isLeftSide) {
//                if (_deviceOrientation == UIDeviceOrientationLandscapeLeft) {
//                    self.center = CGPointMake(self.center.x + 30, self.center.y);
//                }
//                else {
//                    self.center = CGPointMake(self.center.x - 30, self.center.y);
//                }
//            }
//            else {
//                if (_deviceOrientation == UIDeviceOrientationLandscapeRight) {
//                    self.center = CGPointMake(self.center.x - 30, self.center.y);
//                }
//                else {
//                    self.center = CGPointMake(self.center.x + 30, self.center.y);
//                }
//            }
//        }
//        else {
//            self.center = centerPoint;
//        }
    }
}

- (void)hiddenRedPoint:(BOOL)yesOrNo
{
    if (!yesOrNo) {
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:HAVE_NEW_RED_POINT];
        self.floatButtonRedPoint.hidden = NO;
    }else{
       BOOL haveNewRedPoint = [[NSUserDefaults standardUserDefaults] boolForKey:HAVE_NEW_RED_POINT];
        if (haveNewRedPoint) {
            self.floatButtonRedPoint.hidden = NO;
        }else{
            self.floatButtonRedPoint.hidden = YES;
        }
    }
}

#pragma mark -
#pragma mark - Property Action

//- (CGFloat)getItemBgViewWidth
//{
//    NSInteger itemNums = MIN([PF_DATA.pfButtonItems count], 5);
//
//    CGFloat itemWidth = (kButtonItemWidth + 10) * itemNums + 5;
//
//    CGFloat itemBgViewWidth = itemWidth + GM_Float_Button_Width * 0.5f;
//
//    return itemBgViewWidth;
//}

- (void)showDragViewToBaseView:(UIView *)baseView {
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenRect.size;

    if (CGSizeEqualToSize(baseView.frame.size , screenSize)) {
        _isFullScreen = YES;
    } else {
        _isFullScreen = NO;
    }
    
    [baseView addSubview:self];
    [self resetCurrentPosition];
//    [self addHiddenAnimation];
}

#pragma mark -
#pragma mark - Private Action
- (CGPoint)setButtonCenterPositionWithSuperView:(UIView *)baseView isLeft:(BOOL)isLeft isLandscape:(BOOL)isLandscape centerY:(CGFloat)centerY isHalfHidden:(BOOL)isHalfHidden {

    // 确定按钮的初始位置
    CGFloat superViewWidth = CGRectGetWidth(baseView.bounds);

    CGFloat centerX = GM_Float_Button_Width * 0.5f;
    if (device_is_iPhoneX && _isLandscape && _isFullScreen) {
        if (isLeft && _deviceOrientation == UIDeviceOrientationLandscapeLeft && centerY > 80.0f && centerY < 295.0f) {
            centerX = isHalfHidden ? 30 : GM_Float_Button_Width * 0.5f + 30.0f;
        }
        else if (!isLeft && _deviceOrientation == UIDeviceOrientationLandscapeRight && centerY > 80.0f && centerY < 295.0f) {
            centerX = isHalfHidden ? superViewWidth - 30 : superViewWidth - GM_Float_Button_Width * 0.5f - 30.0f;
        }
        else if (!isLeft) {
            centerX = isHalfHidden ? superViewWidth : superViewWidth - GM_Float_Button_Width * 0.5f;
        }
        else if (isLeft) {
            centerX = isHalfHidden ? 0 : GM_Float_Button_Width * 0.5f;
        }
    }
    else {
        if (isLeft) {
            centerX = isHalfHidden ? 0 : GM_Float_Button_Width * 0.5f;
        } else {
            centerX = isHalfHidden ? superViewWidth : superViewWidth - GM_Float_Button_Width * 0.5f;
        }
    }
    return CGPointMake(centerX, centerY);
}

- (void)resetCurrentPosition
{
    
    CGFloat centerY = _superHeight * 0.5;
    CGFloat originX = 0;
//    if (PF_DATA.originLocation == SuspendedButtonOriginPosRight) {
//        originX = _superWidth - GM_Float_Button_Width;
//        _isLeftSide = NO;
//    }
    CGFloat insetTop = 0;
    CGFloat insetBottom = 0;
    
    if (device_is_iPhoneX && _isFullScreen) {
        insetTop = 44;
        insetBottom = 34;
        if (_isLandscape) {
            insetTop = 0;
            insetBottom = 0;
        }
    }
    if (centerY < GM_Float_Button_Width * 0.5f + insetTop) {
        centerY = GM_Float_Button_Width * 0.5f + insetTop;
    } else if (centerY > _superHeight - GM_Float_Button_Width * 0.5f - insetBottom) {
        centerY = _superHeight - GM_Float_Button_Width * 0.5f - insetBottom;
    }

    CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:_isLeftSide isLandscape:_isLandscape centerY:centerY isHalfHidden:NO];
    self.backgroundColor = [UIColor clearColor];
    self.center = centerPoint;
}

- (void)setConstantData:(UIView *)parentView
{
//    _isAminating = NO;
    
    _currentTransformValue = 1.0f;
    
    //悬浮按钮是否显示在左侧
    _isLeftSide = YES;
    //悬浮按钮是否需要移动到边缘
//    _shouldMoveToSide = NO;
    //菜单是否已经显示
//    _isShowMenu = NO;
    
    _superWidth =  parentView.viewWidth;//SCREEN_WIDTH;//MAX([PF_DATA.pfBaseView viewWidth], [PF_DATA.pfBaseView viewHeight]) : MIN([PF_DATA.pfBaseView viewWidth], [PF_DATA.pfBaseView viewHeight]);
    _superHeight = parentView.viewHeight;//_isLandscape ? MIN([PF_DATA.pfBaseView viewWidth], [PF_DATA.pfBaseView viewHeight]) : MAX([PF_DATA.pfBaseView viewWidth], [PF_DATA.pfBaseView viewHeight]);
    //是否是横屏状态
    _isLandscape = !IS_PORTRAIT;
    _isFullScreen = YES;
    _isHalfHidden = NO;
    
    _deviceOrientation = [[UIDevice currentDevice] orientation];
    if (_deviceOrientation != UIDeviceOrientationLandscapeLeft && _deviceOrientation != UIDeviceOrientationLandscapeRight) {
        UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
        if (orientation == UIInterfaceOrientationLandscapeLeft) {
            _deviceOrientation = UIDeviceOrientationLandscapeRight;
        }
        else if (orientation == UIInterfaceOrientationLandscapeRight) {
            _deviceOrientation = UIDeviceOrientationLandscapeLeft;
        } else {
            _deviceOrientation = UIDeviceOrientationLandscapeRight;
        }
    }
}

- (void)addView
{
    self.clipsToBounds = YES;
    self.backgroundColor = [UIColor clearColor];
    
    //添加按钮
    _floatButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _floatButton.frame = CGRectMake(0, 0, GM_Float_Button_Width, GM_Float_Button_Width);
    _floatButton.accessibilityIdentifier = MW_FloatButton_Identifier;
    _floatButton.layer.cornerRadius = GM_Float_Button_Width / 2;
    //    YES: 子视图超出父视图范围部分不显示.
    //    NO: 子视图超出父视图范围时, 会显示.
    _floatButton.clipsToBounds = YES;
    [_floatButton sd_setBackgroundImageWithURL:[NSURL URLWithString:SDK_DATA.floatConfigData.buttonIcon] forState:UIControlStateNormal placeholderImage:[SUtil getAppIconImage_MMMethodMMM]];
    
    [_floatButton addTarget:self action:@selector(flotButtonTouchDown) forControlEvents:UIControlEventTouchDown];
    [_floatButton addTarget:self action:@selector(dragInsideTheButton:andEvent:) forControlEvents:UIControlEventTouchDragInside | UIControlEventTouchDragOutside];
    [_floatButton addTarget:self action:@selector(floatButtonTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_floatButton];
    
    [self bringSubviewToFront:_floatButton];
    
    [self hiddenFloatBtnAnimation];

    [self addSubview:self.floatButtonRedPoint];
    [self.floatButtonRedPoint mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.width.height.mas_equalTo(8);
    }];
    self.floatButtonRedPoint.hidden = YES;
    
}

-(UIButton *)floatButtonRedPoint
{
    if (!_floatButtonRedPoint) {
        
        _floatButtonRedPoint = [UIButton buttonWithType:UIButtonTypeCustom];
        _floatButtonRedPoint.backgroundColor = [UIColor redColor];
        _floatButtonRedPoint.layer.cornerRadius = 4;
        
    }
    
    return _floatButtonRedPoint;
}
//
//-(GSPlatFloatUIView *) gsPlatFloatUIView
//{
//
//    if (!_gsPlatFloatUIView) {
//        _gsPlatFloatUIView = [[GSPlatFloatUIView alloc] initWithBaseView:self];
//
//        __weak typeof(self) weakSelf = self;
//        //    kWeakSelf
//        _gsPlatFloatUIView.gsPlatItemClick = ^(NSString * itemName, NSUInteger index) {
//            if ([itemName isEqualToString:@"center"]) {
//    //            [weakSelf hiddenMenuItem];
//                [weakSelf addHiddenAnimation];
//
//            }else{
//                [weakSelf itemButtonClickedNew:index];
//            }
//        };
//    }
//
//    return _gsPlatFloatUIView;
//}


//- (void)changeLocation
//{
//    CGPoint buttonCenter = self.center;
//    CGSize superViewSize = [self getSuperSize];
//    if (_isLandscape) {
//    if (buttonCenter.x <= superViewSize.width * 0.5f) {
//        [UIView animateWithDuration:ButtonAnimationDuration animations:^(){
//            CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:YES isLandscape:self.isGameLandscape centerY:self.center.y isHalfHidden:NO];
//            self.center = centerPoint;
//
//        } completion:^(BOOL finished) {
//            _isLeftSide = YES;
//        }];
//    }
//    else
//    {
//        [UIView animateWithDuration:ButtonAnimationDuration animations:^(){
//            CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:NO isLandscape:self.isGameLandscape centerY:self.center.y isHalfHidden:NO];
//            self.center = centerPoint;
//
//        } completion:^(BOOL finished) {
//            _isLeftSide = NO;
//        }];
//    }
    
   
               
//    }
//    else
//    {
//        if (buttonCenter.x <= WIN_SIZE.width * 0.5f) {
//            [UIView animateWithDuration:ButtonAnimationDuration animations:^(){
//                self.center = CGPointMake(FrameWidth * 0.5f, buttonCenter.y);
//            }];
//            _isLeftSide = YES;
//        }
//        else
//        {
//            [UIView animateWithDuration:ButtonAnimationDuration animations:^(){
//                self.center = CGPointMake(WIN_SIZE.width - FrameWidth * 0.5f, buttonCenter.y);
//            }];
//            _isLeftSide = NO;
//        }
//    }
//}


- (void)hiddenFloatBtnAnimation
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (_isDraging || _isHalfHidden) {
            return;
        }
        SDK_LOG(@"hiddenFloatBtnAnimation");
        
        [UIView animateWithDuration:0.3f animations:^{
            
            if (_isDraging) {
                return;
            }
            _isHalfHidden = YES;
            if (_isLeftSide) {
                CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:YES isLandscape:_isLandscape centerY:self.center.y isHalfHidden:YES];
                self.center = centerPoint;
            }else{
                CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:NO isLandscape:_isLandscape centerY:self.center.y isHalfHidden:YES];
                self.center = centerPoint;
            }
            
            
        } completion:^(BOOL finished) {
//            self.transform = CGAffineTransformMakeScale(kButtonTransformValue, kButtonTransformValue);
//            [self.floatButtonRedPoint mas_updateConstraints:^(MASConstraintMaker *make) {
//                               make.width.height.mas_equalTo(12);
//                       }];
//                   _isHalfShow = YES;
        }];
        
     });
    
    
//    dispatch_async(dispatch_get_main_queue(), ^{
//    });
    
}

- (CGSize)getSuperSize
{
    CGSize superViewSize = self.superview.frame.size;
    CGFloat maxValue = MAX(superViewSize.height, superViewSize.width);
    CGFloat minValue = MIN(superViewSize.height, superViewSize.width);
    if (_isLandscape) {
        
        return CGSizeMake(maxValue, minValue);
    }
    return CGSizeMake(minValue, maxValue);
}


#pragma mark -
#pragma mark - UIButton Target Action
- (void)dragInsideTheButton:(UIButton *)button andEvent:(UIEvent *)event
{
    //NSLog(@"dragInsideTheButton...");
    _isDraging = YES;
    _isHalfHidden = NO;
    
    CGPoint point = [[[event allTouches] anyObject] locationInView:self.superview];
    CGSize buttonSuperSize = [self getSuperSize];
    
    if (fabs(point.x - self.center.x) < 5 && fabs(point.y - self.center.y) < 5) {
        return;
    }
    
//    _shouldMoveToSide = YES;
    
    if (_isLandscape) {
        if (point.y <= FrameHeight * 0.5f ) {
            self.center = CGPointMake(point.x, FrameHeight * 0.5f);
        }
        else if (point.y >= buttonSuperSize.height - FrameHeight * 0.5f)
        {
            self.center = CGPointMake(point.x, buttonSuperSize.height - FrameHeight * 0.5f);
        }
        else if (point.x <= FrameWidth * 0.5f)
        {
            self.center = CGPointMake(FrameWidth * 0.5f, point.y);
        }
        else if (point.x >= buttonSuperSize.width - FrameWidth * 0.5f)
        {
            self.center = CGPointMake(buttonSuperSize.width - 40 * 0.5f, point.y);
        }
        else
        {
            self.center = point;
        }
    }
    else
    {
        CGFloat insetTop = 0;
        CGFloat insetBottom = 0;
        
        if (device_is_iPhoneX && _isFullScreen) {
            insetTop = 44;
            insetBottom = 34;
            if (_isLandscape) {
                insetTop = 0;
                insetBottom = 0;
            }
        }
        if (point.y <= FrameHeight * 0.5f + insetTop) {
            self.center = CGPointMake(point.x, FrameHeight * 0.5f + insetTop);
        }
        else if (point.y >= WIN_SIZE.height - FrameHeight * 0.5f - insetBottom)
        {
            self.center = CGPointMake(point.x, WIN_SIZE.height - FrameHeight * 0.5f - insetBottom);
        }
        else if (point.x <= FrameWidth * 0.5f)
        {
            self.center = CGPointMake(FrameWidth * 0.5f, point.y);
        }
        else if (point.x >= WIN_SIZE.width - FrameWidth * 0.5f)
        {
            self.center = CGPointMake(WIN_SIZE.width - FrameWidth * 0.5f, point.y);
        }
        else
        {
            self.center = point;
        }
    }
}

- (void)floatButtonTouchUpInside:(UIButton *)floatButton
{
    NSLog(@"floatButtonClicked");
    if (_isDraging || _isHalfHidden) {
        _isDraging = NO;
        _isHalfHidden = NO;
//        self.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        
        CGPoint buttonCenter = self.center;
        CGSize superViewSize = [self getSuperSize];
        if (buttonCenter.x <= superViewSize.width * 0.5f) {
            _isLeftSide = YES;
        }else{
            _isLeftSide = NO;
        }
        
        if (_isLeftSide) {
    //            self.center = CGPointMake(FrameWidth * 0.5f, self.center.y);
            CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:YES isLandscape:_isLandscape centerY:self.center.y isHalfHidden:NO];
            self.center = centerPoint;
        }
        else
        {
    //            CGSize buttonSuperSize = [self getSuperSize];
    //            self.center = CGPointMake(buttonSuperSize.width - FrameWidth * 0.5f, self.center.y);
            CGPoint centerPoint = [self setButtonCenterPositionWithSuperView:self.superview isLeft:NO isLandscape:_isLandscape centerY:self.center.y isHalfHidden:NO];
            self.center = centerPoint;
        }
        [self hiddenFloatBtnAnimation];
        return;
    }
    
    
    //点击了，打开界面
    if (self.mFloatContentViewController) {
        [self.mFloatContentViewController dismissViewControllerAnimated:NO completion:nil];
    }
     self.mFloatContentViewController = [[FloatContentViewController alloc] initWithNibName:XIB_FloatContentViewController bundle:SDK_BUNDLE];
    
    [appTopViewController presentViewController:self.mFloatContentViewController animated:NO completion:^{
        
    }];
}


- (void)flotButtonTouchDown
{
     NSLog(@"flotButtonTouchDown");
    _isDraging = NO;
}



- (void)itemButtonClickedNew:(NSUInteger)itemIndex
{
    NSLog(@"itemButtonClicked %ld",itemIndex);
    if (self.delegate && [self.delegate respondsToSelector:@selector(didSelectedDragViewAtIndex:)]) {
        [self.delegate didSelectedDragViewAtIndex:itemIndex];
        
    }
}
@end
