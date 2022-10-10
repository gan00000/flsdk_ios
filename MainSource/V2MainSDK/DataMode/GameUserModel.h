

#import <Foundation/Foundation.h>
#import "AccountModel.h"

@interface GameUserModel : NSObject

@property (copy, nonatomic) NSString *roleID;     //角色ID
@property (nonatomic, assign) NSUInteger roomarFindoon;
@property (copy, nonatomic) NSString *roleLevel;  //角色等级
@property (copy, nonatomic) NSString *roleName;   //角色名
@property (nonatomic, assign) CGFloat matteroMammo;
@property (copy, nonatomic) NSString *serverCode; //服务器id
@property (copy, nonatomic) NSString *serverName; //服务器名
@property (copy, nonatomic) NSString *roleVipLevel; //vip等级
@property (nonatomic, strong) NSDictionary *fallacvariousVoracfold;


-(BOOL)checkParams_MMMethodMMM;
@end
