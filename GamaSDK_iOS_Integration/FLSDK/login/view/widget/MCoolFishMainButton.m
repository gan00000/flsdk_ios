
#import "MCoolFishMainButton.h"
#import "Masonry.h"

@implementation MCoolFishMainButton



- (instancetype)initWithType_MMMethodMMM:(NSUInteger)type title_MMMethodMMM:(NSString *)title image_MMMethodMMM:(NSString *)image selector:(SEL)selector
                      target_MMMethodMMM:(id)target
{
   self.rotate_margin = 2177.0;

   self.userTag = 8514;

   self.valueSpace = 4185.0;

    self = [super init];
    if (self) {
        
        UIButton *iconBtn = [MCoolFishConfig initBtnWithNormalImage_MMMethodMMM:image highlightedImage_MMMethodMMM:image tag_MMMethodMMM:type selector:selector target_MMMethodMMM:target];
        [self addSubview:iconBtn];
        [iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self);
        }];
        
        
    }
    return self;
}

@end
