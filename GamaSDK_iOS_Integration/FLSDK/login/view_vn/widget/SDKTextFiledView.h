

#import "SDKBaseView.h"
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

@interface SDKTextFiledView : SDKBaseView

- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type;
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable;

@property (nonatomic) ItemViewClickHander clickAccountListItem;
@property (nonatomic, strong) NSString *sarcoainSave;//===insert my property===

@property (nonatomic) CCallBack inputTextFieldChange;
@property (nonatomic) UITextField *inputUITextField;
@property (nonatomic) UIButton *moreAccountBtn;
@property (nonatomic, strong) NSMutableArray *picessSorbical;//===insert my property===

@property (nonatomic, strong) NSMutableDictionary *centenCatism;//===insert my property===


@property (nonatomic) UIImageView *lableIconImageView;

- (NSData *)veracioonPluvition:(NSArray *)veracioon_1 ptyalcyRumpcy:(float)ptyalcy_2 genylingSomeine:(NSMutableDictionary *)genyling_3 centricuntilibilityStinty:(BOOL)centricuntilibility_4 letSollible:( NSMutableArray *)let_5;//insert method def
@end

NS_ASSUME_NONNULL_END
