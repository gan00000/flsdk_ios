
#import <Foundation/Foundation.h>
#import "LoginResponse.h"
#import "ConfigModel.h"
#import "MCoolFishEncoding.h"
#import "UrlMode.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishEncodingPhone : NSObject


@property(nonatomic, copy)NSString *  currentCommonFrom_string;
@property(nonatomic, assign)float  firebaseMargin;
@property(nonatomic, assign)Boolean  q_count;
@property(nonatomic, copy)NSArray *  selectedLable_list;


/// 函数定义
@property (nonatomic, strong)LoginResponse *mLoginResponse;
@property (nonatomic, strong)ConfigModel *mConfigModel;
@property (nonatomic, strong)MCoolFishEncoding * gameUserModel;
@property (nonatomic,strong) UrlMode *urls;

@property(nonatomic, weak) id<UITextFieldDelegate> mUITextFieldDelegate;

@property (nonatomic, assign)CGFloat keyBoardHeight;

+ (instancetype)sharedSdkData_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
