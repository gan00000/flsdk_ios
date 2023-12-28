

#import "DimeUtil.h"


@interface DimeUtil()
@property (nonatomic,assign) CGFloat viewAdaptRate_MMMPRO;
@end

@implementation DimeUtil

+ (instancetype)share{
    
    static DimeUtil *_xDimeUtil = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _xDimeUtil = [[DimeUtil alloc] init];
    });
    
    return _xDimeUtil;
}





-(CGFloat)getViewHeight_MMMethodMMM:(CGFloat)height
{
    return height * self.viewAdaptRate_MMMPRO;
    
}

-(CGFloat)getViewWidth_MMMethodMMM:(CGFloat)width
{
    return width * self.viewAdaptRate_MMMPRO;
}

-(CGFloat)getFontSize_MMMethodMMM:(CGFloat)size{
    return size * self.viewAdaptRate_MMMPRO;
}



-(CGFloat)viewAdaptRate_MMMPRO
{
    if (_viewAdaptRate_MMMPRO) {
        return _viewAdaptRate_MMMPRO;
    }
    
    NSLog(wwwww_tag_wwwww_also_quass,SCREEN_WIDTH,SCREEN_HEIGHT);

    if (IS_PORTRAIT) {
        
        
        CGFloat w_rate = SCREEN_WIDTH / 375.0;
        if (w_rate * 667.0 > SCREEN_HEIGHT) {
            w_rate = SCREEN_HEIGHT / 667.0;
        }
        if (w_rate > 1.4) {
            w_rate = 1.4;
        }
        _viewAdaptRate_MMMPRO = floor(w_rate * 100) / 100;

    }else{
        
        
        CGFloat sdkHeight = SCREEN_HEIGHT;
        if (sdkHeight > 500.0) {
            sdkHeight = 500.0;
        }
        CGFloat deviceRate = sdkHeight / 375.0 * 0.9;
        deviceRate = floor(deviceRate * 100) / 100;
        _viewAdaptRate_MMMPRO = deviceRate;
    }
    return _viewAdaptRate_MMMPRO;
}
    

@end
