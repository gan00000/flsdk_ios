

#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "LatadeClosView.h"


NS_ASSUME_NONNULL_BEGIN

@interface KineelChildetteView : LatadeClosView

@property (nonatomic,strong) UILabel *titleLable_MMMPRO;
@property (nonatomic,strong) UIButton *backBtn_MMMPRO;

- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander;

@end

NS_ASSUME_NONNULL_END
