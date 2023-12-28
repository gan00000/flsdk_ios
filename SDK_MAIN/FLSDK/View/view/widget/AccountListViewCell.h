

#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface AccountListViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *accountUILabel_MMMPRO;
@property (nonatomic, strong) UIButton *deleteAccountBtn_MMMPRO;
@property (nonatomic, strong) UIImageView *iconImageView_MMMPRO;

@property (nonatomic, strong) ItemViewClickHander mItemViewClickHander_MMMPRO;

@end

NS_ASSUME_NONNULL_END
