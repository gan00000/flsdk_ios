

#import "CharacterianPedlowView.h"
#import "SdkHeader.h"

typedef NS_OPTIONS(NSUInteger, SDKTextFiledView_Type)
{
    SDKTextFiledView_Type_Account,
    SDKTextFiledView_Type_Password,
    SDKTextFiledView_Type_Password_Again,
    SDKTextFiledView_Type_Password_New,
    SDKTextFiledView_Type_Password_Old,
    SDKTextFiledView_Type_VfCode,
};


NS_ASSUME_NONNULL_BEGIN

@interface RhombtyWesternentView : CharacterianPedlowView

- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type;
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable;

@property (nonatomic) ItemViewClickHander clickAccountListItem;
@property (nonatomic) CCallBack inputTextFieldChange;
@property (nonatomic) UITextField *inputUITextField;
@property (nonatomic) UIButton *moreAccountBtn;

@property (nonatomic) UIImageView *lableIconImageView;

- (NSInteger)wifeie43086Aviexplainfy43087:( UIButton *)wifeie43086_1 thrixot43088Landature43089:(NSObject *)thrixot43088_2;//insert method def
- (NSString *)experless43097Amicary43098:( UIImageView *)experless43097_1 officialful43099Asature43100:(NSMutableArray *)officialful43099_2 seb43101Orth43102:(NSArray *)seb43101_3;//insert method def
@end

NS_ASSUME_NONNULL_END
