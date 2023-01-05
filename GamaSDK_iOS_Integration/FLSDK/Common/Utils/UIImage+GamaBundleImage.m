

#import "UIImage+GamaBundleImage.h"
#import "CCSkyHourHeader.h"

@implementation UIImage (EFNBundleImage)

+(NSString *)convertStringHasBytesEventsFindpwd:(NSDictionary *)moved pay_2Expression:(double)pay_2Expression presentationContain:(NSString *)presentationContain {
     double t_center = 2546.0;
    NSString *ejectSpicyConclusive = [[NSString alloc] init];
         int p_49 = (int)t_center;
     switch (p_49) {
          case 28: {
          p_49 -= 37;
          p_49 *= 89;
             break;

     }
          case 45: {
          p_49 *= 1;
          int h_1 = 0;
     int b_99 = 0;
     if (p_49 > b_99) {
         p_49 = b_99;

     }
     for (int o_68 = 1; o_68 <= p_49; o_68++) {
         h_1 += o_68;
          if (o_68 > 0) {
          p_49 -=  o_68;

     }
              break;

     }
             break;

     }
          case 10: {
          p_49 /= 53;
          p_49 += 19;
             break;

     }
          case 4: {
          p_49 -= 59;
          p_49 += 85;
             break;

     }
     default:
         break;

     }

    return ejectSpicyConclusive;

}






+ (UIImage *)gama_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder
{

    UIImage *resultImage = nil;
    
    NSBundle *myBundle = nil;
    if (bundle == nil) {
        NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
            Boolean itemS = NO;

         {
    [self convertStringHasBytesEventsFindpwd:@{@"scarp":@(187)} pay_2Expression:3465.0 presentationContain:@"charity"];

}
             if (itemS) { __asm__("NOP"); }
        myBundle = [NSBundle bundleWithURL:defaultBundleUrl];
    } else {
        myBundle = bundle;
    }
    
    NSString *imgPath = [[myBundle.resourcePath stringByAppendingPathComponent:folder] stringByAppendingPathComponent:imageName];
    
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

+(NSArray *)genericRetultContainsBdfbDebug{
     NSInteger role = 5242;
    NSMutableArray * munimentsLoom = [NSMutableArray arrayWithCapacity:577];
    role += 1;
    [munimentsLoom addObject: @(role)];
         int tmp_n_17 = (int)role;
     if (tmp_n_17 == 120) {
          if (tmp_n_17 != 393) {
          }
     }

    return munimentsLoom;

}






+ (UIImage *)gama_imageNamed_MMMethodMMM:(NSString *)imageName {

         {
    [self genericRetultContainsBdfbDebug];

}

    
    if (imageName.length <= 0) {
        return nil;
    }
    
    NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!defaultBundleUrl) {
        UIImage *resultImage = [UIImage imageNamed:imageName];
            NSString * rotateg = @"abstinence";
        return resultImage;
    }
    return [self gama_imageNamed_MMMethodMMM:imageName inBundle_MMMethodMMM:[NSBundle bundleWithURL:defaultBundleUrl]];
}


+ (UIImage *)gama_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle {

    
    UIImage *resultImage = nil;
    
    NSString *imgPath = [bundle.resourcePath stringByAppendingPathComponent:imageName];
            Boolean readU = NO;
             if (readU) { __asm__("NOP"); }
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

@end
