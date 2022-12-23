

#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "SdkHeader.h"
#import "LoginViewDelegate.h"
#import "MWSDK.h"
#import "MCoolFishRegisterView.h"
#import "MCoolFishUtilView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishManagerController : UIViewController <LoginViewDelegate,UITextFieldDelegate>


@property(nonatomic, assign)int  selectTag;
@property(nonatomic, assign)Boolean  canWelcome;
@property(nonatomic, assign)float  background_offset;


/// 函数定义
-(instancetype)initWithPageType_MMMethodMMM:(SDKPage) pageType;


@property (nonatomic)CGRect currentEditingTextViewFrame;

@end

NS_ASSUME_NONNULL_END
