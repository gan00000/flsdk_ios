

#import <Foundation/Foundation.h>
#import "AccountModel.h"

@interface GameUserModel : NSObject

@property (copy, nonatomic) NSString *roleID;     //角色ID
@property (copy, nonatomic) NSString *roleLevel;  //角色等级
@property (copy, nonatomic) NSString *roleName;   //角色名
@property (copy, nonatomic) NSString *serverCode; //服务器id
@property (copy, nonatomic) NSString *serverName; //服务器名
@property (copy, nonatomic) NSString *roleVipLevel; //vip等级

@property (copy, nonatomic) NSString *userId;
@property (assign, nonatomic) BOOL isPay;//是否付费
@property (assign, nonatomic) BOOL isSecondPay;//是否二次付费
@property (copy, nonatomic) NSString *regTime;//注册时间
@property (copy, nonatomic) NSString *firstPayTime;//第一次付费

@property (assign, nonatomic) BOOL isRegDayPay;//注册日是否付费

-(BOOL)checkParams_MMMethodMMM;
@end
