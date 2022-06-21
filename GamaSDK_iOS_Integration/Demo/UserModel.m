//
//  UserModel.m
//
//
//  Created by nero on 15-1-26.
//  Copyright (c) 2015年 sunn. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel
@synthesize sUserID = _sUserID, gameRoleID = _gameRoleID, gameRoleName = _gameRoleName, gameRoleLevel = _gameRoleLevel, gameServerID = _gameServerID, gameServerName = _gaemServerName, gameVipLevel = _gameVipLevel, gameLanguage = _gameLanguage, isLogined = _isLogined, gamaAccessToken = _gamaAccessToken , gamaTimestamp = _gamaTimestamp;
@synthesize pushToken = _pushToken;

static UserModel *_instanceUserModel = nil;
//
//- (void)dealloc
//{
//    _sUserID = nil;
//    _gameRoleID = nil;
//    _gameRoleName = nil;
//    _gameRoleLevel = nil;
//    _gaemServerName = nil;
//    _gameServerID = nil;
//    _gameVipLevel = nil;
//    _gameLanguage = nil;
//    _gamaAccessToken = nil;
//    _gamaTimestamp = nil;
//}

+ (UserModel *)sharedUser
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instanceUserModel = [[UserModel alloc] init];
    });
    return _instanceUserModel;
}


@end
