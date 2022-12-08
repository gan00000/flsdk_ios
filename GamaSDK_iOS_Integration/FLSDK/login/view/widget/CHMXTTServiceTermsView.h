
#import "CHMXTTUserView.h"
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

@interface CHMXTTServiceTermsView : CHMXTTUserView


@property(nonatomic, assign)float  parse_size;
@property(nonatomic, assign)int  fire_tag;
@property(nonatomic, copy)NSArray *  termEfaultRameworkArr;
@property(nonatomic, assign)long  callMark;




-(long)parseSessonYourselfenneVfcode:(NSArray *)register_f9Code;

-(NSString *)secondSecUpload:(double)long_4x;

-(UIButton *)removeZymentSaveNonnullNeededSheetButton:(NSArray *)macaddressParent key:(NSDictionary *)key;

-(double)hasEffortfoldFirstInformationSaving:(double)dealloc_ebSocial autorotateSeries:(NSDictionary *)autorotateSeries animation:(float)animation;

-(NSString *)comThusenceAssociatedPort:(NSDictionary *)arac mode:(NSInteger)mode device:(NSDictionary *)device;


- (instancetype)initViewWithType_MMMethodMMM:(SDKTextFiledView_Type) type;
-(void)setPwdFiledView_MMMethodMMM:(BOOL)enable;

@property (nonatomic) ItemViewClickHander clickAccountListItem;
@property (nonatomic) CCallBack inputTextFieldChange;
@property (nonatomic) UITextField *inputUITextField;
@property (nonatomic) UIButton *moreAccountBtn;

@property (nonatomic) UIImageView *lableIconImageView;

@end

NS_ASSUME_NONNULL_END
