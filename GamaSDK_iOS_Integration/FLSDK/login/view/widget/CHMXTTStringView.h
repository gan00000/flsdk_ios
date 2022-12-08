
#import <UIKit/UIKit.h>

#import "SdkHeader.h"
#import "CHMXTTUserView.h"


NS_ASSUME_NONNULL_BEGIN

@interface CHMXTTStringView : CHMXTTUserView


@property(nonatomic, assign)int  remove_flag;
@property(nonatomic, assign)float  update_o;
@property(nonatomic, assign)NSInteger  pple_tag;
@property(nonatomic, assign)Boolean  hasSharer;




-(UILabel *)masksRadioKeychainCheckLabel:(Boolean)delete_sp authrization:(NSArray *)authrization;

-(NSDictionary *)coreMsgFunctionsDialog:(NSDictionary *)message;


@property (nonatomic,strong) UILabel *titleLable;
@property (nonatomic,strong) UIButton *backBtn;

- (instancetype)initViewWithTitle_MMMethodMMM:(NSString *)title hander_MMMethodMMM:(ItemViewClickHander) hander;

@end

NS_ASSUME_NONNULL_END
