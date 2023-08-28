

#import "SpecificOnchoy.h"


@interface SpecificOnchoy()
@property (nonatomic,assign) CGFloat viewAdaptRate;
@end

@implementation SpecificOnchoy

+ (instancetype)share{
    
    static SpecificOnchoy *_xDimeUtil = nil;

		//====insert my code start===  2023-08-28 15:21:00
		{
		double p_numberee14223 = 7648;

if(p_numberee14223 <= 6786){
	float p_governmentlet14224 = p_numberee14223 + 698 - 866; 
if(p_governmentlet14224 > 46000){
	double l_supraunderory14225 = p_governmentlet14224 + 189 * 601 / 319 / 606 * 971 - 869; 
if(l_supraunderory14225 <= 93608){
	double b_allelible14226 = l_supraunderory14225 * 407 + 503; 
if(b_allelible14226 > 19977){
	double T_abee14227 = b_allelible14226 + 99 / 776;
}
}
}
}
		}
		//====insert my code end===  2023-08-28 15:21:00

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _xDimeUtil = [[SpecificOnchoy alloc] init];
    });
    
    return _xDimeUtil;
}





-(CGFloat)getViewHeight_MMMethodMMM:(CGFloat)height
{
    return height * self.viewAdaptRate;
    
}

-(CGFloat)getViewWidth_MMMethodMMM:(CGFloat)width
{
    return width * self.viewAdaptRate;
}

-(CGFloat)getFontSize_MMMethodMMM:(CGFloat)size{
    return size * self.viewAdaptRate;
}



-(CGFloat)viewAdaptRate
{
    if (_viewAdaptRate) {
        return _viewAdaptRate;
    }
    
    NSLog(@"SCREEN_WIDTH:%f,SCREEN_HEIGHT:%f",SCREEN_WIDTH,SCREEN_HEIGHT);


		//====insert my code start===  2023-08-28 15:21:00
		{
		        
        BOOL omphalcy14230Kinity14231 = YES;  //commontemple5
        if (omphalcy14230Kinity14231)
        {
            omphalcy14230Kinity14231 = NO;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:00

    if (IS_PORTRAIT) {
        
        
        CGFloat w_rate = SCREEN_WIDTH / 375.0;

		//====insert my code start===  2023-08-28 15:21:00
		{
		double k_votative14240 = 6361;

if(k_votative14240 >= 35097){
	double P_vany14241 = k_votative14240 * 525 / 638 * 275 * 633;
}
		}
		//====insert my code end===  2023-08-28 15:21:00

        if (w_rate * 667.0 > SCREEN_HEIGHT) {
            w_rate = SCREEN_HEIGHT / 667.0;
        }
        if (w_rate > 1.4) {
            w_rate = 1.4;
        }
        _viewAdaptRate = floor(w_rate * 100) / 100;

		//====insert my code start===  2023-08-28 15:21:00
		{
		        
        int levose14246Roaden14247 = 4342;    //temple17
        int stinern14248Civness14249 = 2707;
        int jejuno14250Recordality14251 = 83;
        int nationit14252Tendfaction14253 = 2724;
        int orderics14254Remainitious14255 = 3299;
        int nudacious14256Facyouive14257 = 6748;

        if (levose14246Roaden14247 >= 6621){

            stinern14248Civness14249 -= 1;
            jejuno14250Recordality14251 += stinern14248Civness14249;
            orderics14254Remainitious14255 -= levose14246Roaden14247;
            nationit14252Tendfaction14253 += 1;
            nudacious14256Facyouive14257 += 10;
        }

		}
		//====insert my code end===  2023-08-28 15:21:00


    }else{
        
        
        CGFloat sdkHeight = SCREEN_HEIGHT;
        if (sdkHeight > 500.0) {
            sdkHeight = 500.0;
        }
        CGFloat deviceRate = sdkHeight / 375.0 * 0.9;

		//====insert my code start===  2023-08-28 15:21:00
		{
		
        BOOL name14276Philwhyuous14277 = NO;  //commontemple14
        if (name14276Philwhyuous14277){
            name14276Philwhyuous14277 = YES;
            float menosay14282Horrsoistic14283 = 2772;
            if (menosay14282Horrsoistic14283 >= 4605){
                menosay14282Horrsoistic14283 = menosay14282Horrsoistic14283 + 9888;
            }
        }else{
            name14276Philwhyuous14277 = !name14276Philwhyuous14277;
        }

        
		}
		//====insert my code end===  2023-08-28 15:21:00

        deviceRate = floor(deviceRate * 100) / 100;
        _viewAdaptRate = deviceRate;
    }
    return _viewAdaptRate;
}
    

@end
