

#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "CharacterianPedlowView.h"


NS_ASSUME_NONNULL_BEGIN

@interface AgoniaShootalView : CharacterianPedlowView

@property (nonatomic,strong) UILabel *titleLable;
@property (nonatomic,strong) UIButton *backBtn;

- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander;

@end

NS_ASSUME_NONNULL_END
