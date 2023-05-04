







#import "ViewUtil.h"
#import "SdkHeader.h"

@implementation ViewUtil

+(CAGradientLayer *)createGradientLayerWithRadius_MMMethodMMM:(CGFloat)cornerRadius{
    
    CAGradientLayer *gl = [CAGradientLayer layer];


    gl.startPoint = CGPointMake(0.05, 0.05);
    gl.endPoint = CGPointMake(0.96, 0.95);
    gl.colors = @[(__bridge id)[UIColor colorWithHexString_MMMethodMMM:C_BUTTON_START].CGColor, (__bridge id)[UIColor colorWithHexString_MMMethodMMM:C_BUTTON_END].CGColor];
    gl.locations = @[@(0), @(1.0f)];
    gl.cornerRadius = cornerRadius;
    gl.zPosition = -10000;
    return gl;
}

@end
