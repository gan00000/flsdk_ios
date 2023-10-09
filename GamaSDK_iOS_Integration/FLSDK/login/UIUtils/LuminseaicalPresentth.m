

#import "LuminseaicalPresentth.h"
#import "SdkHeader.h"

@implementation LuminseaicalPresentth

+(CAGradientLayer *)createGradientLayerWithRadius_MMMethodMMM:(CGFloat)cornerRadius{
    
    CAGradientLayer *gl = [CAGradientLayer layer];
    gl.startPoint = CGPointMake(0.05, 0.05);
    gl.endPoint = CGPointMake(0.96, 0.95);
    gl.colors = @[(__bridge id)[UIColor colorWithHexString_MMMethodMMM:C_BUTTON_START].CGColor, (__bridge id)[UIColor colorWithHexString_MMMethodMMM:C_BUTTON_END].CGColor];

		//====insert my code start===  2023-10-09 19:45:35
		{
		        
        int omo25230Stenforet25231 = 7367;  //commontemple13
        BOOL becauseaster25232Trainingish25233 = NO;
        if (becauseaster25232Trainingish25233){
            becauseaster25232Trainingish25233 = NO;
        }else{
            becauseaster25232Trainingish25233 = !becauseaster25232Trainingish25233;
        }

        if (becauseaster25232Trainingish25233){
            omo25230Stenforet25231 = 411;
        }
        
		}
		//====insert my code end===  2023-10-09 19:45:35

    gl.locations = @[@(0), @(1.0f)];
    gl.cornerRadius = cornerRadius;
    gl.zPosition = -10000;
    return gl;
}

@end
