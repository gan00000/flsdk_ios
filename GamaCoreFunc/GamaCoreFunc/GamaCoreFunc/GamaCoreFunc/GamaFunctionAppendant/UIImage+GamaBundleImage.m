

#import "UIImage+GamaBundleImage.h"
#import "GamaCentreInfo.h"

#define GAMA_DEFAULT_BUNDLE_NAME  SDKConReaderGetString(GAMA_GAME_RESOURCE_BUNDLE_NAME)

@implementation UIImage (EFNBundleImage)

+ (UIImage *)gama_imageNamed:(NSString *)imageName {
    
    if (imageName.length <= 0) {
        return nil;
    }
    
    NSString *languageStr = [[NSString alloc] init];
    if (SDKConReaderGetBool(GAMA_GMAE_mLanguge)) {
        NSURL *bundleURL = [[NSBundle mainBundle] URLForResource:GAMA_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
        if (bundleURL) {
            languageStr  = [[GamaFunction getPreferredLanguage] isEqualToString:@"zh-TW"]? @"zh-Hant": [GamaFunction getPreferredLanguage];
            NSURL *lprojBundleURL = [[NSBundle bundleWithURL:bundleURL] URLForResource:languageStr withExtension:@"lproj"];
            if (lprojBundleURL) {
                UIImage *resultImage = [self gama_imageNamed:imageName inBundle:[NSBundle bundleWithURL:lprojBundleURL]];
                if (resultImage) {
                    return resultImage;
                }
            }else{
                NSURL *lprojBundleURL = [[NSBundle bundleWithURL:bundleURL] URLForResource:@"en" withExtension:@"lproj"];
                UIImage *resultImage = [self gama_imageNamed:imageName inBundle:[NSBundle bundleWithURL:lprojBundleURL]];
                if (resultImage) {
                    return resultImage;
                }
            }
        }
    }
    
    NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:GAMA_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!defaultBundleUrl) {
        UIImage *resultImage = [UIImage imageNamed:imageName];
        return resultImage;
    }
    return [self gama_imageNamed:imageName inBundle:[NSBundle bundleWithURL:defaultBundleUrl]];
}

+ (UIImage *)gama_imageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle {
    
    UIImage *resultImage = nil;
    
    NSString *imgPath = [bundle.resourcePath stringByAppendingPathComponent:imageName];
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

+ (UIImage *)gama_imageNamed:(NSString *)imageName inBundle:(NSBundle *)bundle inFolder:(NSString *)folder
{
    UIImage *resultImage = nil;
    
    NSBundle *myBundle = nil;
    if (bundle == nil) {
        NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:GAMA_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
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
