

#import <Foundation/Foundation.h>
#import "AccountModel.h"

@interface GameUserModel : NSObject

@property (copy, nonatomic) NSString *roleID;     
@property (copy, nonatomic) NSString *roleLevel;  
@property (copy, nonatomic) NSString *roleName;   
@property (copy, nonatomic) NSString *serverCode; 
@property (copy, nonatomic) NSString *serverName; 
@property (copy, nonatomic) NSString *roleVipLevel; 


-(BOOL)checkParams_MMMethodMMM;
@end
