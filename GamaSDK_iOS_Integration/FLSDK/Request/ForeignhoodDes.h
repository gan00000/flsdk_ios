
#import "YYModel.h"


typedef NS_ENUM(NSInteger, BJResponseCode) {
    BJResponseCodeTokenExpired = -1,
    BJResponseCodeAccountKickOut = -2,
    BJResponseCodeError1 = -100,
    BJResponseCodeOK = 0,
    BJResponseCode_OK_Login = 1000,
    BJResponseCode_OK_Register = 5001,
};


 
@interface ForeignhoodDes : NSObject

 

@property(nonatomic, assign)int  vipCount;
@property(nonatomic, assign)NSInteger  login_sum;




-(NSInteger)registSinUnableBody:(double)editHidden;


@property (nonatomic, assign) NSInteger code;

 
@property (nonatomic, copy) NSString *message;

- (BOOL)isRequestSuccess_MMMethodMMM;
@end

