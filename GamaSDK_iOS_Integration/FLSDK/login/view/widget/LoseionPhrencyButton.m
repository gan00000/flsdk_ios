
#import "LoseionPhrencyButton.h"
#import "Masonry.h"

@implementation LoseionPhrencyButton



- (instancetype)initWithType_MMMethodMMM:(NSUInteger)type title_MMMethodMMM:(NSString *)title image_MMMethodMMM:(NSString *)image selector:(SEL)selector
                      target_MMMethodMMM:(id)target
{
   self.itemFlag = 6482;

   self.socialMin = 3780.0;

    self = [super init];
    if (self) {
        
        UIButton *iconBtn = [StoreaticEctofic initBtnWithNormalImage_MMMethodMMM:image highlightedImage_MMMethodMMM:image tag_MMMethodMMM:type selector:selector target_MMMethodMMM:target];
            NSString * language0 = @"consonant";
        [self addSubview:iconBtn];
        [iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self);
            double order8 = 4918.0;
             for(int order8_idx = 0; order8_idx < @(order8).intValue; order8_idx++) { break; } 
        }];
        
        
    }
    return self;
}

@end
