

#import "CharacterianPedlowView.h"
#import "EnjoyitionRecentlyship.h"

NS_ASSUME_NONNULL_BEGIN

@interface PathacityThoughainView : CharacterianPedlowView <PhoneInfoModelDelegate>

@property (nonatomic, strong) EnjoyitionRecentlyship *phoneModel;
@property (nonatomic) UILabel *aracCodeUILabel;

@property (nonatomic) UITextField *mUITextField;

- (instancetype)initView_MMMethodMMM;

-(NSString *)getPhoneNumber_MMMethodMMM;
-(NSString *)getPhoneAreaCode_MMMethodMMM;
@end

NS_ASSUME_NONNULL_END
