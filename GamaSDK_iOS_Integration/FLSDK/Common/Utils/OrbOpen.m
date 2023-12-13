

#import "OrbOpen.h"
#import "SdkHeader.h"

@implementation OrbOpen

#pragma mark - UI

+(UIImageView*)initImageViewWithImage_MMMethodMMM:(NSString *)imageName
{
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:GetImage(imageName)];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    return imageView;
}

+(UILabel*)initLabelWithText_MMMethodMMM:(NSString *)text fontSize_MMMethodMMM:(CGFloat)size textColor_MMMethodMMM:(UIColor *)textColor
{
    UILabel *mLable = [[UILabel alloc] init];
    mLable.text =  text;
    mLable.font = [UIFont systemFontOfSize:size];
    mLable.numberOfLines = 1;
    mLable.textColor = textColor;
    
    return mLable;
    
}


+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                   selectedImageName_MMMethodMMM:(NSString *)selectedImageName
                           titleText_MMMethodMMM:(NSString *)titleText
                            fontSize_MMMethodMMM:(CGFloat)size
                           textColor_MMMethodMMM:(UIColor *)textColor
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];

		//====insert my code start===  2023-12-13 18:35:09
		{
		        
        BOOL viscoee11297Childaneous11298 = YES;  //commontemple5
        if (viscoee11297Childaneous11298)
        {
            viscoee11297Childaneous11298 = YES;
        }

        
		}
		//====insert my code end===  2023-12-13 18:35:09

    
    [btn setTag:tag];

		//====insert my code start===  2023-12-13 18:35:09
		{
		float c_secreur11305 = 5175;

int r_airety11306 = 188;
if(c_secreur11305 * 190 - 502 / 72 / 600 - 349 / 498 <= 27252){
	r_airety11306 = c_secreur11305 + 906 - 3 + 359 * 59 + 197;
}else{
	r_airety11306 = c_secreur11305 + 522 * 220 * 601 * 230;
}

float j_anency11307 = 523;
if(r_airety11306 - 77 * 726 * 132 - 847 != 751){
	j_anency11307 = r_airety11306 * 499 + 861 / 909 / 533 + 5 + 257;
}

		}
		//====insert my code end===  2023-12-13 18:35:09

    if (titleText) {
        [btn setTitle:titleText forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:size]; 
        
        [btn setTitleColor:textColor forState:UIControlStateNormal];
        
    }
    if (normalImageName) {
        [btn setImage:GetImage(normalImageName) forState:UIControlStateNormal];
    }

		//====insert my code start===  2023-12-13 18:35:09
		{
		double P_fasc11308 = 7434;

if(P_fasc11308 > 7455){
	float A_resourceize11309 = P_fasc11308 - 442 / 600;
}
		}
		//====insert my code end===  2023-12-13 18:35:09

    if (highlightedImageName) {
        [btn setImage:GetImage(highlightedImageName) forState:UIControlStateHighlighted];
    }
    if (selectedImageName) {
        [btn setImage:GetImage(selectedImageName) forState:UIControlStateSelected];
    }
    
    if (target) {
        [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    }
    
    
    return btn;
}

+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                   selectedImageName_MMMethodMMM:(NSString *)selectedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    
    return [self initBtnWithNormalImage_MMMethodMMM:normalImageName highlightedImage_MMMethodMMM:highlightedImageName selectedImageName_MMMethodMMM:selectedImageName titleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];

}

+ (UIButton *)initBtnWithNormalImage_MMMethodMMM:(NSString *)normalImageName
                    highlightedImage_MMMethodMMM:(NSString *)highlightedImageName
                                 tag_MMMethodMMM:(NSUInteger)tag
                            selector:(SEL)selector
                              target_MMMethodMMM:(id)target
{
    return [self initBtnWithNormalImage_MMMethodMMM:normalImageName highlightedImage_MMMethodMMM:highlightedImageName selectedImageName_MMMethodMMM:nil titleText_MMMethodMMM:nil fontSize_MMMethodMMM:14 textColor_MMMethodMMM:[UIColor whiteColor] tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
}

+ (UIButton *)initBtnWithTitleText_MMMethodMMM:(NSString *)titleText
                          fontSize_MMMethodMMM:(CGFloat)size
                         textColor_MMMethodMMM:(UIColor *)textColor
                               tag_MMMethodMMM:(NSUInteger)tag
                          selector:(SEL)selector
                            target_MMMethodMMM:(id)target
{
    return [self initBtnWithNormalImage_MMMethodMMM:nil highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:nil titleText_MMMethodMMM:titleText fontSize_MMMethodMMM:size textColor_MMMethodMMM:textColor tag_MMMethodMMM:tag selector:selector target_MMMethodMMM:target];
}

+ (UIButton *)initBtnWithTitleText_MMMethodMMM:(NSString *)titleText
                          fontSize_MMMethodMMM:(CGFloat)size
                         textColor_MMMethodMMM:(UIColor *)textColor{
    
    return [self initBtnWithNormalImage_MMMethodMMM:nil highlightedImage_MMMethodMMM:nil selectedImageName_MMMethodMMM:nil titleText_MMMethodMMM:titleText fontSize_MMMethodMMM:size textColor_MMMethodMMM:textColor tag_MMMethodMMM:0 selector:nil target_MMMethodMMM:nil];
}



+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg
{
    UIAlertController *mAlert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
        
        SDK_LOG(@"action = %@", action);
    }];
    [mAlert addAction:defaultAction];

		//====insert my code start===  2023-12-13 18:35:09
		{
		      
      
    int cyclacious11310Numerery11311;   //commontemple20
    int cav11312Salutsome11313 = 7739;
    int tonightern11314Salcommunityor11315 = 6045;

    if (cav11312Salutsome11313 == tonightern11314Salcommunityor11315){
        cyclacious11310Numerery11311 = cav11312Salutsome11313;
        
    }else{
        cyclacious11310Numerery11311 = tonightern11314Salcommunityor11315;
              
      
      int ventchallenge11332Myri11333[ 6082 ]; //commontemple21
    
      // 初始化数组元素          
      for ( int i = 0; i < 6082; i++ )
      {
         ventchallenge11332Myri11333[ i ] = i + 1667; // 设置元素 i 为 i + 100
         
      }

    }
        


		}
		//====insert my code end===  2023-12-13 18:35:09

    if (viewController) {
        [viewController presentViewController:mAlert animated:YES completion:nil];
    }else
    {
        [appTopViewController presentViewController:mAlert animated:YES completion:nil];
    }
    
}

+(void)showAlertTips_MMMethodMMM:(UIViewController *)viewController msg_MMMethodMMM:(NSString *)msg okHandler_MMMethodMMM:(void (^ __nullable)(UIAlertAction *action))handler
{
    UIAlertController *mAlert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:(UIAlertControllerStyleAlert)];

		//====insert my code start===  2023-12-13 18:35:09
		{
		
        BOOL civilative11338Leitreatment11339 = NO;  //commontemple18
        int topfold11340Disess11341 = 2990;
        if (civilative11338Leitreatment11339){

            topfold11340Disess11341 = topfold11340Disess11341 * 6850;

            int emeticsourcesome11348Sortaneous11349 = 8451;
            int subia11352Lactible11353 = 6506;
            int beyondate11354 = 4709;
            switch (emeticsourcesome11348Sortaneous11349) {
                    
                case 868:
			{
				subia11352Lactible11353 = beyondate11354 + 731 / 218 - 873 * 970 - 611 / 146; 
			 break;
			}
			case 529:
			{
				subia11352Lactible11353 = beyondate11354 + 838 - 359 + 310 / 410 + 999 / 535; 
			 break;
			}
			case 452:
			{
				subia11352Lactible11353 = beyondate11354 + 171 + 11 + 723 - 509; 
			 break;
			}
			case 289:
			{
				subia11352Lactible11353 = beyondate11354 * 181 - 915 / 392 + 110 - 450; 
			 break;
			}
			case 986:
			{
				subia11352Lactible11353 = beyondate11354 + 959 * 702; 
			 break;
			}
			case 784:
			{
				subia11352Lactible11353 = beyondate11354 + 145 + 326 / 398 + 574 * 282 / 711; 
			 break;
			}
			case 373:
			{
				subia11352Lactible11353 = beyondate11354 - 120 * 276 * 760; 
			 break;
			}
			case 155:
			{
				subia11352Lactible11353 = beyondate11354 + 564 / 146 - 638 - 565 + 556; 
			 break;
			}
			case 24:
			{
				subia11352Lactible11353 = beyondate11354 - 371 + 559 + 857 - 44 - 632 * 588; 
			 break;
			}
			case 849:
			{
				subia11352Lactible11353 = beyondate11354 + 195 + 213; 
			 break;
			}
			case 136:
			{
				subia11352Lactible11353 = beyondate11354 - 537 * 535 / 26 - 402; 
			 break;
			}
			case 45:
			{
				subia11352Lactible11353 = beyondate11354 - 687 - 808 / 526 * 764 - 198 / 802; 
			 break;
			}
			case 878:
			{
				subia11352Lactible11353 = beyondate11354 - 760 / 345 / 28; 
			 break;
			}
			case 704:
			{
				subia11352Lactible11353 = beyondate11354 * 552 * 815 + 243 + 737 / 502 / 331; 
			 break;
			}
			
                    
                default:
                    break;
            }

            
        }
        
        

        
		}
		//====insert my code end===  2023-12-13 18:35:09

    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:handler];
    [mAlert addAction:defaultAction];
    if (viewController) {
        [viewController presentViewController:mAlert animated:YES completion:nil];

		//====insert my code start===  2023-12-13 18:35:09
		{
		        
        NSArray *receivesive11356Chantfier11357 = @[@"phoncollectionfold11362_docuer11363", @"votative11364_othersfier11365", @"dermary11366_customersive11367", @"myzmovemento11368_scopeade11369", @"scablocal11370_vertacious11371", @"experiencement11372_stingu11373", @"prosule11374_receivesive11375", @"tenitude11376_ovical11377", @"phrenard11378_gemant11379", @"liveen11380_fantness11381", @"pepsdom11382_goodon11383", @"severably11384_fetify11385", @"totiadd11386_vitiie11387", @"opoterety11388_whitesive11389", @"sceletic11390_nausization11391" ];   //temple15
        for (NSString *synal11358Nationite11359 in receivesive11356Chantfier11357){
            break;
        }

		}
		//====insert my code end===  2023-12-13 18:35:09

    }else
    {
        [appTopViewController presentViewController:mAlert animated:YES completion:nil];
    }
    
}



@end
