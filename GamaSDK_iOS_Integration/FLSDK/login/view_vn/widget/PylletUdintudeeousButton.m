

#import "PylletUdintudeeousButton.h"
#import "Masonry.h"

@implementation PylletUdintudeeousButton


- (instancetype)initWithType_MMMethodMMM:(NSUInteger)type title_MMMethodMMM:(NSString *)title image_MMMethodMMM:(NSString *)image selector:(SEL)selector
                      target_MMMethodMMM:(id)target
{
    self = [super init];
    if (self) {
        
        UIButton *iconBtn = [SmilePitate initBtnWithNormalImage_MMMethodMMM:image highlightedImage_MMMethodMMM:image tag_MMMethodMMM:type selector:selector target_MMMethodMMM:target];
        [self addSubview:iconBtn];
        [iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self);
        }];
        
        
    }
    return self;
}

@end
