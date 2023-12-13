

#import "AnaitorProtofulView.h"
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

@interface HearoonProletView : AnaitorProtofulView

- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type;
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable;

@property (nonatomic) ItemViewClickHander clickAccountListItem;
@property (nonatomic) CCallBack inputTextFieldChange;
@property (nonatomic) UITextField *inputUITextField;
@property (nonatomic, assign) long pansmissful32926Forious32927;//===insert my property===

@property (nonatomic) UIButton *moreAccountBtn;
@property (nonatomic, strong) NSMutableArray *usmedicalion32928Phonoious32929;//===insert my property===

@property (nonatomic, strong) NSDictionary *psilory32930Evwishory32931;//===insert my property===


@property (nonatomic) UIImageView *lableIconImageView;

@end

NS_ASSUME_NONNULL_END
