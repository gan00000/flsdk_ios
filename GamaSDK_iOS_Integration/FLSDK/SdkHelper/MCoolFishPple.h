
#import <Foundation/Foundation.h>
#import "AccountModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishPple : NSObject


@property(nonatomic, assign)double  layout_size;
@property(nonatomic, assign)long  session_mark;
@property(nonatomic, assign)NSInteger  list_flag;
@property(nonatomic, copy)NSString *  orientationPpleString;


/// 函数定义
+ (MCoolFishPple *)share;



-(void)saveAccountModel_MMMethodMMM:(AccountModel*) mAccountModel;
-(void)removeAccountByUserId_MMMethodMMM:(NSString *) userId;

-(void)saveAccountModels_MMMethodMMM:(NSArray<AccountModel *> *) mAccountModelArray;

-(NSArray *)getAccountModels_MMMethodMMM;

-(void)saveLoginType_MMMethodMMM:(NSString *)thirdPlate;

-(NSString *)loginType_MMMethodMMM;

@end

NS_ASSUME_NONNULL_END
