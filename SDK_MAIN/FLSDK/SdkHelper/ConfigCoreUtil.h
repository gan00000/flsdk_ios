

#import <Foundation/Foundation.h>
#import "AccountModel.h"
#import "GameUserModel.h"
#import "LoginResponse.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConfigCoreUtil : NSObject

+ (ConfigCoreUtil *)share;



-(void)saveAccountModel_MMMethodMMM:(AccountModel*) mAccountModel;
-(void)removeAccountByUserId_MMMethodMMM:(NSString *) userId;

-(void)saveAccountModels_MMMethodMMM:(NSArray<AccountModel *> *) mAccountModelArray;

-(NSArray *)getAccountModels_MMMethodMMM;

-(void)saveLoginType_MMMethodMMM:(NSString *)thirdPlate;

-(NSString *)loginType_MMMethodMMM;

-(void)saveGameUserInfo_MMMethodMMM:(LoginResponse *)loginResopnse;
-(GameUserModel*)getGameUserInfo_MMMethodMMM:(NSString *)userId;
-(void)updateGameUserInfo_MMMethodMMM:(GameUserModel *)gameUserModel;

@end

NS_ASSUME_NONNULL_END
