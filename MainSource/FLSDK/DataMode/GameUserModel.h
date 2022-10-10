

#import <Foundation/Foundation.h>
#import "AccountModel.h"

@interface GameUserModel : NSObject

@property (copy, nonatomic) NSString *roleID;     //角色ID
@property (copy, nonatomic) NSString *roleLevel;  //角色等级
@property (copy, nonatomic) NSString *roleName;   //角色名
@property (copy, nonatomic) NSString *serverCode; //服务器id
@property (copy, nonatomic) NSString *serverName; //服务器名
@property (copy, nonatomic) NSString *roleVipLevel; //vip等级


-(BOOL)checkParams_MMMethodMMM;
@end
