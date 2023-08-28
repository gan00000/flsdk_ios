

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginData : NSObject

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *accessToken;
@property (nonatomic, copy) NSString *thirdPlate;

@property (nonatomic, assign) BOOL isBind;
@property (nonatomic, assign) BOOL isBindPhone;

@property (nonatomic, copy) NSString *loginType;

@property (nonatomic, copy) NSString *telephone;
@property (nonatomic, copy) NSString *loginId;
@property (nonatomic, copy) NSString *sign; 

@end

NS_ASSUME_NONNULL_END
