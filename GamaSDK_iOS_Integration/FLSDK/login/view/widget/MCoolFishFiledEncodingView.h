
#import "MCoolFishRegisterView.h"
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

@interface MCoolFishFiledEncodingView : MCoolFishRegisterView


@property(nonatomic, assign)NSInteger  backgroundIndex;
@property(nonatomic, copy)NSString *  erviceFirebaseWeb_str;
@property(nonatomic, assign)float  line_margin;
@property(nonatomic, assign)float  request_offset;


/// 函数定义
- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type;
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable;

@property (nonatomic) ItemViewClickHander clickAccountListItem;
@property (nonatomic) CCallBack inputTextFieldChange;
@property (nonatomic) UITextField *inputUITextField;
@property (nonatomic) UIButton *moreAccountBtn;

@property (nonatomic) UIImageView *lableIconImageView;

@end

NS_ASSUME_NONNULL_END
