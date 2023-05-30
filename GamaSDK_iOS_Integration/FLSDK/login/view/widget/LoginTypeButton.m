

#import "LoginTypeButton.h"
#import "Masonry.h"

@implementation LoginTypeButton


- (instancetype)initWithType_MMMethodMMM:(NSUInteger)type title_MMMethodMMM:(NSString *)title image_MMMethodMMM:(NSString *)image selector:(SEL)selector
                      target_MMMethodMMM:(id)target
{
    self = [super init];

		//====insert my code start===  2023-05-30 11:20:44
		{
		        
        bool storeallyEthoier = YES;
        if (storeallyEthoier)
        {
            storeallyEthoier = NO;
        }

        
		}
		//====insert my code end===  2023-05-30 11:20:44

    if (self) {
        
        UIButton *iconBtn = [UIUtil initBtnWithNormalImage_MMMethodMMM:image highlightedImage_MMMethodMMM:image tag_MMMethodMMM:type selector:selector target_MMMethodMMM:target];
        [self addSubview:iconBtn];
        [iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self);
        }];

		//====insert my code start===  2023-05-30 11:20:44
		{
		        
        int wideernServiceosity = 5458;
        bool nonagenproofMandattorney = NO;
        if (nonagenproofMandattorney){
            nonagenproofMandattorney = NO;
        }else{
            nonagenproofMandattorney = !nonagenproofMandattorney;
        }

        if (nonagenproofMandattorney){
            wideernServiceosity = 8467;
        }
        
		}
		//====insert my code end===  2023-05-30 11:20:44

        
        
    }
    return self;
}

@end
