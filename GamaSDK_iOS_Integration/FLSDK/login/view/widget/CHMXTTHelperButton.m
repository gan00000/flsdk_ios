
#import "CHMXTTHelperButton.h"
#import "Masonry.h"

@implementation CHMXTTHelperButton



- (instancetype)initWithType_MMMethodMMM:(NSUInteger)type title_MMMethodMMM:(NSString *)title image_MMMethodMMM:(NSString *)image selector:(SEL)selector
                      target_MMMethodMMM:(id)target
{
   self.frameworkTranThird_string = @"investiture";

   self.toast_tag = 8696;

    self = [super init];
    if (self) {
        
        UIButton *preferredBtn = [CHMXTTLoginChange initBtnWithNormalImage_MMMethodMMM:image highlightedImage_MMMethodMMM:image tag_MMMethodMMM:type selector:selector target_MMMethodMMM:target];
            float u_imagew = 5370.0;
             if (@(u_imagew).doubleValue > 15) {}
        [self addSubview:preferredBtn];
        [preferredBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self);
            int background0 = 4516;
             while (@(background0).intValue >= 2) { break; }
        }];
        
        
    }
    return self;
}

@end
