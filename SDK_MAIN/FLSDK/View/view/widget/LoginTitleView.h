

#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "SDKBaseView.h"


NS_ASSUME_NONNULL_BEGIN

@interface LoginTitleView : SDKBaseView

@property (nonatomic,strong) UILabel *titleLable_MMMPRO;
@property (nonatomic,strong) UIButton *backBtn_MMMPRO;

- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander;

@end

NS_ASSUME_NONNULL_END
