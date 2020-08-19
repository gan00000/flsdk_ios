//
//  HelloPlatform.h
//  SPSDK_iOS
//
//  Created by sunn on 2017/8/5.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, FloatItems)
{
    FloatItems_Info = 0,
    FloatItems_BindReward,
    FloatItems_Pay,
    FloatItems_AccountManage,
    FloatItems_Email,
    FloatItems_RewardCenter,
    FloatItems_Unknow,
    
};

@interface HelloPlatform : UIView <UICollectionViewDelegate,UICollectionViewDataSource, UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, retain) NSMutableArray *pfItemDataSource;

- (instancetype)initWithFrame:(CGRect)frame floatData:(NSMutableArray *)dataSource;

@end
