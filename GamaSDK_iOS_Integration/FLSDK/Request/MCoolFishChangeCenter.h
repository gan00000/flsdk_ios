
#import "YYModel.h"


typedef NS_ENUM(NSInteger, BJResponseCode) {
    BJResponseCodeTokenExpired = -1,
    BJResponseCodeAccountKickOut = -2,
    BJResponseCodeError1 = -100,
    BJResponseCodeOK = 0,
    BJResponseCode_OK_Login = 1000,
    BJResponseCode_OK_Register = 5001,
};


 
@interface MCoolFishChangeCenter : NSObject

 

@property(nonatomic, assign)NSInteger  serviceMark;
@property(nonatomic, assign)NSInteger  coreTag;
@property(nonatomic, assign)float  script_offset;
@property(nonatomic, assign)float  indicatorMargin;


/// 函数定义
@property (nonatomic, assign) NSInteger code;

 
@property (nonatomic, copy) NSString *message;

- (BOOL)isRequestSuccess_MMMethodMMM;
@end

