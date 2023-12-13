

#import "AnaitorProtofulView.h"
#import "CerebraticStudenton.h"

NS_ASSUME_NONNULL_BEGIN

@interface PlusletryPancreoView : AnaitorProtofulView <PhoneInfoModelDelegate>

@property (nonatomic, strong) CerebraticStudenton *phoneModel;
@property (nonatomic) UILabel *aracCodeUILabel;

@property (nonatomic) UITextField *mUITextField;

- (instancetype)initView_MMMethodMMM;

-(NSString *)getPhoneNumber_MMMethodMMM;
-(NSString *)getPhoneAreaCode_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
