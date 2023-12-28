

#import <Foundation/Foundation.h>
#import "AccountModel.h"

@interface GameUserModel : NSObject

@property (copy, nonatomic) NSString *roleID;     
@property (copy, nonatomic) NSString *roleLevel;  
@property (copy, nonatomic) NSString *roleName;   
@property (copy, nonatomic) NSString *serverCode; 
@property (copy, nonatomic) NSString *serverName; 
@property (copy, nonatomic) NSString *roleVipLevel; 

@property (copy, nonatomic) NSString *userId;
@property (assign, nonatomic) BOOL isPay;
@property (assign, nonatomic) BOOL isSecondPay;
@property (copy, nonatomic) NSString *regTime;
@property (copy, nonatomic) NSString *firstPayTime;

@property (copy, nonatomic) NSString *lastLoginTime;

@property (assign, nonatomic) BOOL isRegDayPay;

@property (assign, nonatomic) CGFloat payAmount;
@property (assign, nonatomic) int payCount;

-(BOOL)checkParams_MMMethodMMM;
@end
