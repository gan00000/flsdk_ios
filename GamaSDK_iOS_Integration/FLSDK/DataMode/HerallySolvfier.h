

#import <Foundation/Foundation.h>
#import "AccountModel.h"

@interface HerallySolvfier : NSObject


@property(nonatomic, copy)NSString *  registString;
@property(nonatomic, assign)long  labelTag;




-(double)failObjAcccountObserving:(NSArray *)change localizedRead:(NSInteger)localizedRead;


@property (copy, nonatomic) NSString *roleID;     
@property (copy, nonatomic) NSString *roleLevel;  
@property (copy, nonatomic) NSString *roleName;   
@property (copy, nonatomic) NSString *serverCode; 
@property (copy, nonatomic) NSString *serverName; 
@property (copy, nonatomic) NSString *roleVipLevel;

@property (copy, nonatomic) NSString *userId;
@property (assign, nonatomic) BOOL isPay;//是否付费
@property (assign, nonatomic) BOOL isSecondPay;//是否二次付费
@property (copy, nonatomic) NSString *regTime;//注册时间
@property (copy, nonatomic) NSString *firstPayTime;//第一次付费

@property (assign, nonatomic) BOOL isRegDayPay;//注册日是否付费



-(BOOL)checkParams_MMMethodMMM;
@end
