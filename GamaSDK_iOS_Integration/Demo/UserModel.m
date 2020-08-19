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

- (void)dealloc
{
    [_sUserID release];_sUserID = nil;
    [_gameRoleID release];_gameRoleID = nil;
    [_gameRoleName release];_gameRoleName = nil;
    [_gameRoleLevel release];_gameRoleLevel = nil;
    [_gaemServerName release];_gaemServerName = nil;
    [_gameServerID release];_gameServerID = nil;
    [_gameVipLevel release];_gameVipLevel = nil;
    [_gameLanguage release];_gameLanguage = nil;
    [_gamaAccessToken release];_gamaAccessToken = nil;
    [_gamaTimestamp release];_gamaTimestamp = nil;
    [super dealloc];
}

+ (UserModel *)sharedUser
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instanceUserModel = [[UserModel alloc] init];
    });
    return _instanceUserModel;
}


@end
