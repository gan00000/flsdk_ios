


#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "SdkHeader.h"
#import "LoginViewDelegate.h"
#import "MWSDK.h"
#import "ComePodView.h"
#import "PoliccarryTheyView.h"

NS_ASSUME_NONNULL_BEGIN

@interface CapitalaticPartnerenController : UIViewController <LoginViewDelegate,UITextFieldDelegate>

-(instancetype)initWithPageType_MMMethodMMM:(SDKPage) pageType;


@property (nonatomic)CGRect currentEditingTextViewFrame;

@end

NS_ASSUME_NONNULL_END
