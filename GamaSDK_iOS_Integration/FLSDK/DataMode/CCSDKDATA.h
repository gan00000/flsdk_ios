

#import <Foundation/Foundation.h>
#import "LoginResponse.h"
#import "ConfigModel.h"
#import "GameUserModel.h"
#import "UrlMode.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCSDKDATA : NSObject

@property (nonatomic, strong)LoginResponse *mLoginResponse;
@property (nonatomic, strong)ConfigModel *mConfigModel;
@property (nonatomic, strong)GameUserModel * gameUserModel;
@property (nonatomic,strong) UrlMode *urls;

@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate;

@property (nonatomic, assign)CGFloat keyBoardHeight;

+ (instancetype)sharedSdkData_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
