//
//  AccountModel.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountModel.h"

@implementation AccountModel


- (void)initData_MMMethodMMM {
    self.account = @"";
    self.password = @"";
    self.lastLoginTime = @"";
    self.userId = @"";
    self.token = @"";
    self.timestamp = @"";
    
    self.thirdId = @"";
    self.thirdAccount = @"";
    self.isBind = NO;
    self.isBindPhone = NO;
    self.loginType = @"";
    
    self.sign = @"";
    self.telephone = @"";
    self.loginId = @"";
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(wwwww_tag_wwwww_AccountModel_init);
        [self initData_MMMethodMMM];
        
    }
    return self;
}

//
//- (void)encodeWithCoder:(NSCoder *)aCoder //system_method
//{
//    NSLog(wwwww_tag_wwwww_AccountModel_encodeWithCoder);
//    [aCoder encodeObject:self.account forKey:wwwww_tag_wwwww_accountName];
//    [aCoder encodeObject:self.password forKey:wwwww_tag_wwwww_accountPwd];
//    [aCoder encodeObject:self.lastLoginTime forKey:wwwww_tag_wwwww_lastLoginTimemobile];
//    
//    [aCoder encodeObject:self.userId forKey:wwwww_tag_wwwww_userId];
//    [aCoder encodeObject:self.token forKey:wwwww_tag_wwwww_accessToken];
//    [aCoder encodeObject:self.timestamp forKey:wwwww_tag_wwwww_loginTimestamp];
//    
//    [aCoder encodeObject:self.thirdId forKey:wwwww_tag_wwwww_thirdId];
//    [aCoder encodeObject:self.thirdAccount forKey:wwwww_tag_wwwww_thirdAccount];
//    [aCoder encodeBool:self.isBind forKey:wwwww_tag_wwwww_accountIsBind];
//    
//    [aCoder encodeObject:self.loginType forKey:wwwww_tag_wwwww_loginType];
//    
//    [aCoder encodeObject:self.sign forKey:wwwww_tag_wwwww_sign];
//    [aCoder encodeObject:self.telephone forKey:wwwww_tag_wwwww_telephone];
//    [aCoder encodeObject:self.loginId forKey:wwwww_tag_wwwww_loginId];
//    [aCoder encodeBool:self.isBindPhone forKey:wwwww_tag_wwwww_isBindPhone];
//
//}
//
//
//- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder //system_method
//{
//    NSLog(wwwww_tag_wwwww_AccountModel_initWithCoder);
//    if (self = [super init]) {
//        
//        self.account = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_accountName] ? : @"";
//        self.password = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_accountPwd] ? : @"";
//        self.lastLoginTime = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_lastLoginTimemobile] ? : @"";
//        
//        self.userId = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_userId] ? : @"";
//        self.token = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_accessToken] ? : @"";
//        self.timestamp = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_loginTimestamp] ? : @"";
//        
//        self.thirdId = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_thirdId] ? : @"";
//        self.thirdAccount = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_thirdAccount] ? : @"";
//        self.isBind = [aDecoder decodeBoolForKey:wwwww_tag_wwwww_accountIsBind] ? : NO;
//        
//        self.loginType = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_loginType] ? : @"";
//        
//        self.sign = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_sign] ? : @"";
//        self.telephone = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_telephone] ? : @"";
//        self.loginId = [aDecoder decodeObjectForKey:wwwww_tag_wwwww_loginId] ? : @"";
//        self.isBindPhone = [aDecoder decodeBoolForKey:wwwww_tag_wwwww_isBindPhone] ? : NO;
//  
//    }
//    
//    return self;
//}

@end
