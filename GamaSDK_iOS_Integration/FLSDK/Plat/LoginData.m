//
//  LoginData.m
//  GamaSDK_iOS
//
//  Created by ganyuanrong on 2020/7/24.
//  Copyright © 2020 Gama. All rights reserved.
//

#import "LoginData.h"
#import "ResHeader.h"

@implementation LoginData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gameCode = GAME_CODE;
    }
    return self;
}

@end
