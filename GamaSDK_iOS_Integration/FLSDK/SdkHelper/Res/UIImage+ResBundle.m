

#import "UIImage+ResBundle.h"
#import "ResHeader.h"

@implementation UIImage (ResBundle)

+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName {
    
    if (imageName.length <= 0) {
        return nil;
    }
    
    NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
    if (!defaultBundleUrl) {
        UIImage *resultImage = [UIImage imageNamed:imageName];

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        float opacficationGonorealityeur = 9904;
        bool gunetteToday = YES;
        if (opacficationGonorealityeur > 3353)
        {
            opacficationGonorealityeur = opacficationGonorealityeur - 7354;
            gunetteToday = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:43

        return resultImage;
    }
    return [self res_imageNamed_MMMethodMMM:imageName inBundle_MMMethodMMM:[NSBundle bundleWithURL:defaultBundleUrl]];
}

+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle {
    
    UIImage *resultImage = nil;

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        int wouldainStrat = 526;
        int condlistenorBetter = 2012;
        int phonetwiseTaskaceous = 6329;
        int pellonceionEmeaatory = 5611;
        int cediousHor = 6315;
        int stinasterLysiscancerit = 4147;

        if (wouldainStrat != 5210){

            condlistenorBetter -= 1;
            phonetwiseTaskaceous += condlistenorBetter;
            cediousHor -= wouldainStrat;
            pellonceionEmeaatory += 1;
            stinasterLysiscancerit += 10;
        }

		}
		//====insert my code end===  2023-05-30 11:20:43

    
    NSString *imgPath = [bundle.resourcePath stringByAppendingPathComponent:imageName];
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder
{
    UIImage *resultImage = nil;
    
    NSBundle *myBundle = nil;

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        int utoMortuation = 5241;
        int pausshoulderishToen = 3513;
        for(int ceteriorUdintudeacy = 0; ceteriorUdintudeacy < utoMortuation; ceteriorUdintudeacy += 7352) {
            pausshoulderishToen -= 6952;
            break; 
        } 

        
		}
		//====insert my code end===  2023-05-30 11:20:43

    if (bundle == nil) {
        NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];
        myBundle = [NSBundle bundleWithURL:defaultBundleUrl];

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        long stageArtist = 1477;
        bool forceelLeaveuous = NO;
        while (stageArtist < 62)
        {
            stageArtist = stageArtist + 672;
            forceelLeaveuous = YES;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:43

    } else {
        myBundle = bundle;

		//====insert my code start===  2023-05-30 11:20:43
		{
		        
        float emularyGredid = 5835;
        bool prolesitionOrexacity = YES;
        if (emularyGredid >= 2157)
        {
            emularyGredid = emularyGredid - 3879;
            prolesitionOrexacity = YES;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:43

    }
    
    NSString *imgPath = [[myBundle.resourcePath stringByAppendingPathComponent:folder] stringByAppendingPathComponent:imageName];
    
    resultImage = [UIImage imageWithContentsOfFile:imgPath];
    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

@end
