


#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "SdkHeader.h"
#import "LoginViewDelegate.h"
#import "MWSDK.h"
#import "SDKBaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDKLoginViewController : UIViewController <LoginViewDelegate,UITextFieldDelegate>

-(instancetype)initWithPageType_MMMethodMMM:(SDKPage) pageType;


@property (nonatomic)CGRect currentEditingTextViewFrame_MMMPRO;

@end

NS_ASSUME_NONNULL_END
