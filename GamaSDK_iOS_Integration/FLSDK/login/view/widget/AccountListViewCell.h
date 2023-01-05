
#import <UIKit/UIKit.h>
#import "SdkHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface AccountListViewCell : UITableViewCell


@property(nonatomic, assign)double  postOffset;
@property(nonatomic, assign)double  pplePadding;
@property(nonatomic, assign)long  reset_sum;




-(NSDictionary *)configLeadingBodyMsg:(double)presentationMacaddress sdkInterface:(long)sdkInterface;

-(NSString *)permittedRngPictureHintSystem:(NSString *)keyNews access:(NSArray *)access;

-(NSDictionary *)decideGreenInterfaces:(NSArray *)tableFramework;


@property (nonatomic, strong) UILabel *accountUILabel;
@property (nonatomic, strong) UIButton *deleteAccountBtn;
@property (nonatomic, strong) UIImageView *iconImageView;

@property (nonatomic, strong) ItemViewClickHander mItemViewClickHander;

@end

NS_ASSUME_NONNULL_END
