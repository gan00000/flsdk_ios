//
//  PosicStigbut.h
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/17.
//  Copyright © 2022 Gama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UltimizationLax.h"
#import "AccountModel.h"


typedef void (^AccountModelHander)(BOOL isDelete,AccountModel *_Nullable,NSMutableArray<AccountModel *>  *accountDataList);

NS_ASSUME_NONNULL_BEGIN

@interface PosicStigbut : UltimizationLax

@property (nonatomic,strong) AccountModelHander mAccountModelClickHander;
@property (nonatomic,strong)NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
@property (nonatomic,strong) UITableView *accountListTableView;
@end

NS_ASSUME_NONNULL_END
