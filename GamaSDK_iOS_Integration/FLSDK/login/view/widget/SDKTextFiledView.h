
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


@property(nonatomic, assign)Boolean  has_Block;
@property(nonatomic, assign)long  stringCount;
@property(nonatomic, assign)float  select_margin;
@property(nonatomic, assign)float  custom_offset;




-(UIView *)mallocMsghdrJosnMemoryDeviceVerficationView:(NSArray *)productsApplication;

-(NSArray *)authorCountFrontRead:(NSString *)qinitializeBundle;

-(UIView *)oneBundleRadiusView:(NSString *)informationConf welcomeData:(NSString *)welcomeData decryptSelected:(NSString *)decryptSelected;

-(Boolean)masksCustomerSync:(NSArray *)interruptUser dataNotice:(NSArray *)dataNotice block:(double)block;

-(double)storeSyncSign;


- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type;
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable;

@property (nonatomic) ItemViewClickHander clickAccountListItem;
@property (nonatomic) CCallBack inputTextFieldChange;
@property (nonatomic) UITextField *inputUITextField;
@property (nonatomic) UIButton *moreAccountBtn;

@property (nonatomic) UIImageView *lableIconImageView;

@end

NS_ASSUME_NONNULL_END
