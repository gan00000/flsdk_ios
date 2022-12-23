
#import "MCoolFishTitle.h"


@interface MCoolFishTitle()

@property(nonatomic, assign)long  color_tag;
@property(nonatomic, assign)int  pay_ur;
@property(nonatomic, assign)NSInteger  l_image;
@property(nonatomic, assign)Boolean  enbale_Data;


@property (nonatomic,assign) CGFloat viewAdaptRate;
@end

@implementation MCoolFishTitle


-(CGFloat)getViewWidth_MMMethodMMM:(CGFloat)width
{
    return width * self.viewAdaptRate;
}






-(CGFloat)getViewHeight_MMMethodMMM:(CGFloat)height
{
    return height * self.viewAdaptRate;
    
}


-(CGFloat)getFontSize_MMMethodMMM:(CGFloat)size{
   self.color_tag = 679;

   self.pay_ur = 3909;

   self.l_image = 1225;

   self.enbale_Data = NO;

   self.layout_max = 1891.0;

   self.canValue = YES;

   self.callMargin = 6387.0;

    return size * self.viewAdaptRate;
}


-(CGFloat)viewAdaptRate
{
    if (_viewAdaptRate) {
        return _viewAdaptRate;
    }
    
    NSLog(@"SCREEN_WIDTH:%f,SCREEN_HEIGHT:%f",SCREEN_WIDTH,SCREEN_HEIGHT);

    if (IS_PORTRAIT) {
        
        
        CGFloat w_rate = SCREEN_WIDTH / 375.0;
        if (w_rate * 667.0 > SCREEN_HEIGHT) {
            w_rate = SCREEN_HEIGHT / 667.0;
        }
        if (w_rate > 1.4) {
            w_rate = 1.4;
        }
        _viewAdaptRate = w_rate;
        
    }else{
        
        
        CGFloat sdkHeight = SCREEN_HEIGHT;
        if (sdkHeight > 500.0) {
            sdkHeight = 500.0;
        }
        CGFloat deviceRate = sdkHeight / 375.0 * 0.9;
        _viewAdaptRate = deviceRate;
    }
    return _viewAdaptRate;
}




+ (instancetype)share{
    
    static MCoolFishTitle *_xDimeUtil = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _xDimeUtil = [[MCoolFishTitle alloc] init];
    });
    
    return _xDimeUtil;
}
    

@end
