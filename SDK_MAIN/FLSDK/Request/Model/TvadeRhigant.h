

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TvadeRhigant : NSObject 

@property (nonatomic, copy) NSString *lastLoginTime; 

@property (nonatomic, assign) BOOL isBind;

@property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *token; 

@property (nonatomic, copy) NSString *sign; 

@property (nonatomic, copy) NSString *loginType;
@property (nonatomic, copy) NSString *thirdId;
@property (nonatomic, copy) NSString *thirdAccount;

@property (nonatomic, copy) NSString *account;
@property (nonatomic, copy) NSString *password;

@property (nonatomic, assign) BOOL isBindPhone;
@property (nonatomic, copy) NSString *telephone;
@property (nonatomic, copy) NSString *loginId;

@end

NS_ASSUME_NONNULL_END
