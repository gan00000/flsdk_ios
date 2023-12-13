

#import "UIImage+ThosekinPhagarian.h"
#import "ResHeader.h"

@implementation UIImage (ThosekinPhagarian)

+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName {
    

		//====insert my code start===  2023-12-13 18:35:10
		{
		
        BOOL plutard43678Mirfilmior43679 = NO;  //commontemple18
        int carryule43680Haplable43681 = 3514;
        if (plutard43678Mirfilmior43679){

            carryule43680Haplable43681 = carryule43680Haplable43681 * 9290;

            int stichibility43688Paper43689 = 8059;
            int activityatory43692Curon43693 = 3696;
            int menaciaskress43694 = 6403;
            switch (stichibility43688Paper43689) {
                    
                case 154:
			{
				activityatory43692Curon43693 = menaciaskress43694 * 26 + 384 * 388; 
			 break;
			}
			case 547:
			{
				activityatory43692Curon43693 = menaciaskress43694 + 761 + 775 - 608 + 807 / 65 + 613; 
			 break;
			}
			case 411:
			{
				activityatory43692Curon43693 = menaciaskress43694 * 995 / 236 / 180 * 990 - 397 + 868; 
			 break;
			}
			
                    
                default:
                    break;
            }

            
        }
        
        

        
		}
		//====insert my code end===  2023-12-13 18:35:10

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

+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle {
    
    UIImage *resultImage = nil;
    
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
