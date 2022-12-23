
#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishPrivateCell : UITableViewCell


@property(nonatomic, assign)double  adapt_padding;
@property(nonatomic, assign)int  password_count;
@property(nonatomic, copy)NSArray *  configurator_arr;


/// 函数定义
@property (nonatomic, strong) UILabel *accountUILabel;
@property (nonatomic, strong) UIButton *deleteAccountBtn;
@property (nonatomic, strong) UIImageView *iconImageView;

@property (nonatomic, strong) ItemViewClickHander mItemViewClickHander;

@end

NS_ASSUME_NONNULL_END
