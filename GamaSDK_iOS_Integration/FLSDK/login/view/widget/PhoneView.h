

#import "SDKBaseView.h"
#import "PhoneInfoModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneView : SDKBaseView <PhoneInfoModelDelegate>

@property (nonatomic, strong) PhoneInfoModel *phoneModel;
@property (nonatomic) UILabel *aracCodeUILabel;

@property (nonatomic) UITextField *mUITextField;

- (instancetype)initView_MMMethodMMM;

-(NSString *)getPhoneNumber_MMMethodMMM;
-(NSString *)getPhoneAreaCode_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
