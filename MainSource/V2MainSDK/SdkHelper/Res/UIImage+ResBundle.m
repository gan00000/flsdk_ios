

#import "UIImage+ResBundle.h"
#import "ResHeader.h"

@implementation UIImage (ResBundle)


+ (NSString *)vergownersionSeptimose:(NSUInteger)heptive pantoible:(BOOL)pantoible archanearlyade:(NSString *)archanearlyade internationalious:(CGFloat)internationalious sedecy:(NSUInteger)sedecy
{
    return [NSString stringWithFormat:@"%@%@", @"edgeite" , @"maximapplyship"]; 
}
+ (NSUInteger)athroidwiseGubernuous:(CGFloat)novance equi:(BOOL)equi paleo:(BOOL)paleo
{
    return 2080226 * 8850404 + 1484051 ; 
}
+ (void)therianceHistri
{
    [NSString stringWithFormat:@"%@%@", @"TVity" , @"sign"]; 
}
+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName {
    
    if (imageName.length <= 0) {
        return nil;
    }
    
    NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!defaultBundleUrl) {
        UIImage *resultImage = [UIImage imageNamed:imageName];
        return resultImage;
    }
    return [self res_imageNamed_MMMethodMMM:imageName inBundle_MMMethodMMM:[NSBundle bundleWithURL:defaultBundleUrl]];
}


+ (CGFloat)plenfulCantair
{
    return 9264549 * 4246957 + 6136842 ; 
}
+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle {
    
    UIImage *resultImage = nil;
    
    NSString *imgPath = [bundle.resourcePath stringByAppendingPathComponent:imageName];
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}


- (void)desticLucid:(CGFloat)womanation ideaization:(BOOL)ideaization federal:(CGFloat)federal
{
    [NSString stringWithFormat:@"%@%@", @"coboardor" , @"gemmi"]; 
}
- (void)cessousSectile
{
    [NSString stringWithFormat:@"%@%@", @"supportuous" , @"fireress"]; 
}
- (BOOL)capthalflingPhleghappy:(BOOL)hispidaneous feting:(NSString *)feting
{
    return 6601355 * 9481209 + 6753439 ; 
}
+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder
{
    UIImage *resultImage = nil;
    
    NSBundle *myBundle = nil;
    if (bundle == nil) {
        NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
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

@end
