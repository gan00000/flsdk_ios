
#import <Foundation/Foundation.h>
#import "LoginResponse.h"
#import "ConfigModel.h"
#import "CHMXTTUtil.h"
#import "UrlMode.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CHMXTTNotice : NSObject


@property(nonatomic, assign)NSInteger  becomeIdx;
@property(nonatomic, assign)int  alert_mark;
@property(nonatomic, assign)NSInteger  stringsFlag;




+(NSArray *)selectBattbetterMaskHave:(NSString *)sdkTouches;


@property (nonatomic, strong)LoginResponse *mLoginResponse;
@property (nonatomic, strong)ConfigModel *mConfigModel;
@property (nonatomic, strong)CHMXTTUtil * gameUserModel;
@property (nonatomic,strong) UrlMode *urls;

@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate;

@property (nonatomic, assign)CGFloat keyBoardHeight;

+ (instancetype)sharedSdkData_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
