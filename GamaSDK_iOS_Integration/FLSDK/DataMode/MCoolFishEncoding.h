

#import <Foundation/Foundation.h>
#import "AccountModel.h"

@interface MCoolFishEncoding : NSObject


@property(nonatomic, assign)double  modity_min;
@property(nonatomic, assign)int  third_count;
@property(nonatomic, assign)Boolean  canTable;


/// 函数定义
@property (copy, nonatomic) NSString *roleID;     
@property (copy, nonatomic) NSString *roleLevel;  
@property (copy, nonatomic) NSString *roleName;   
@property (copy, nonatomic) NSString *serverCode; 
@property (copy, nonatomic) NSString *serverName; 
@property (copy, nonatomic) NSString *roleVipLevel; 


-(BOOL)checkParams_MMMethodMMM;
@end
