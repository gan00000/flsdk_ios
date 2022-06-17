//
//  ConfigCoreUtil.h
//  CCSkyHourSDK
//
//  Created by ganyuanrong on 2019/5/29.
//  Copyright © 2019 ganyuanrong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AccountModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConfigCoreUtil : NSObject

+ (ConfigCoreUtil *)share;

@property (nonatomic) BOOL isSaveAccountInfo;

-(void)saveAccount:(NSString *) mAccount password:(NSString *) password updateTime:(BOOL) updateTime;

-(void)saveAccountModel:(AccountModel*) mAccountModel;
-(void)removeAccountByUserId:(NSString *) userId;

-(void)saveAccountModels:(NSArray<AccountModel *> *) mAccountModelArray;

-(NSArray *)getAccountModels;

-(void)saveLoginType:(NSString *)thirdPlate;

-(NSString *) loginType;

-(NSString *) createSdkUrl:(NSString *)url;
@end

NS_ASSUME_NONNULL_END
