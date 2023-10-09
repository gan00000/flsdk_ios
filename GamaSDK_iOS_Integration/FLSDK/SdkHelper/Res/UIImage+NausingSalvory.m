

#import "UIImage+NausingSalvory.h"
#import "ResHeader.h"

@implementation UIImage (NausingSalvory)

+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName {
    

		//====insert my code start===  2023-10-09 19:45:35
		{
		            float talkress21830Barose21831 = 1121.0;  //temple25
            if (@(talkress21830Barose21831).doubleValue <= 2789) {}
		}
		//====insert my code end===  2023-10-09 19:45:35

    if (imageName.length <= 0) {
        return nil;
    }
    
    NSURL *defaultBundleUrl = [[NSBundle mainBundle] URLForResource:SDK_DEFAULT_BUNDLE_NAME withExtension:@"bundle"];

		//====insert my code start===  2023-10-09 19:45:35
		{
		        
        BOOL gradsheless21836Petless21837 = YES;//commontemple19
        while (!gradsheless21836Petless21837)
        {
            gradsheless21836Petless21837 = NO;
            break;
        }

        
		}
		//====insert my code end===  2023-10-09 19:45:35

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

		//====insert my code start===  2023-10-09 19:45:35
		{
		        
        CGFloat exactlyast21844Nigrfication21845 = 8652;  //commontemple7
        BOOL stinctern21846Taliose21847 = YES;
        if (exactlyast21844Nigrfication21845 <= 8059){
            
            stinctern21846Taliose21847 = NO;
                  int few21856Legless21857 = 3019;  //temple24
      NSMutableDictionary *cuper21858Ourist21859 = [NSMutableDictionary dictionaryWithCapacity:881];
      few21856Legless21857 += 4783;
      [cuper21858Ourist21859 setObject: @(few21856Legless21857) forKey:@"soonaneous21866Past21867"];
      int herbster21868Cortinterestan21869 = (int)few21856Legless21857;
      if (herbster21868Cortinterestan21869 > 1535) {
            herbster21868Cortinterestan21869 *= 4993;
      }
        }else{
            stinctern21846Taliose21847 = YES;
        }
        float F_fariaire21878 = 8466;

if(F_fariaire21878 == 97047){
	float P_courseety21879 = F_fariaire21878 + 593 / 446 * 285 / 188 - 849; 
if(P_courseety21879 >= 86913){
	int J_vitth21880 = P_courseety21879 + 237 * 379 - 404 + 482; 
if(J_vitth21880 == 3670){
	int s_cubitose21881 = J_vitth21880 - 697 + 103 * 794 / 479 / 92; 
if(s_cubitose21881 >= 59749){
	int Z_vivgrowthacy21882 = s_cubitose21881 - 34 * 688 + 193 - 523; 
if(Z_vivgrowthacy21882 < 6872){
	float C_veryacle21883 = Z_vivgrowthacy21882 - 130 + 826 / 73;
}
}
}
}
}

        
		}
		//====insert my code end===  2023-10-09 19:45:35

    
    if (!resultImage) {
        resultImage = [UIImage imageNamed:imageName];
    }
    return resultImage;
}

+ (UIImage *)res_imageNamed_MMMethodMMM:(NSString *)imageName inBundle_MMMethodMMM:(NSBundle *)bundle inFolder_MMMethodMMM:(NSString *)folder
{
    UIImage *resultImage = nil;
    
    NSBundle *myBundle = nil;

		//====insert my code start===  2023-10-09 19:45:35
		{
		   
      // 局部变量声明
      int thirdsure21884Appear21885 = 1356;
      int agencyist21886Nor21887 = 8359;
      int homefy21888Octogesimard21889;
      
      if(agencyist21886Nor21887 < thirdsure21884Appear21885){
         // 调用函数来获取最大值
         homefy21888Octogesimard21889 = fmax(agencyist21886Nor21887, thirdsure21884Appear21885);
      }
     
		}
		//====insert my code end===  2023-10-09 19:45:35

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
