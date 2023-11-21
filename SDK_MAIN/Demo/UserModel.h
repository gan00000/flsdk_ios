//
//  UserModel.h
//
//
//  Created by nero on 15-1-26.
//  Copyright (c) 2015年 sunn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject 

@property (nonatomic,retain) NSString *sUserID;
@property (nonatomic,retain) NSString *gameRoleID;
@property (nonatomic,retain) NSString *gameRoleName;
@property (nonatomic,retain) NSString *gameRoleLevel;
@property (nonatomic,retain) NSString *gameServerID;
@property (nonatomic,retain) NSString *gameServerName;
@property (nonatomic,retain) NSString *gameVipLevel;
@property (nonatomic,retain) NSString *gameLanguage;
@property (nonatomic,retain) NSString *gamaAccessToken;
@property (nonatomic,retain) NSString *gamaTimestamp;
@property (nonatomic) BOOL isLogined;

@property (nonatomic,retain) NSString *pushToken;


+ (UserModel *)sharedUser;

@end
