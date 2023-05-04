







#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface AccountListViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *accountUILabel;
@property (nonatomic, strong) UIButton *deleteAccountBtn;
@property (nonatomic, strong) UIImageView *iconImageView;

@property (nonatomic, strong) ItemViewClickHander mItemViewClickHander;

@end

NS_ASSUME_NONNULL_END
