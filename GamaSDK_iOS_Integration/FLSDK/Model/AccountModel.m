//
//  AccountModel.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/14.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountModel.h"

@implementation AccountModel


- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.account forKey:@"accountName"];
    [aCoder encodeObject:self.password forKey:@"accountPwd"];
    [aCoder encodeObject:self.lastLoginTime forKey:@"lastLoginTimemobile"];
    
    [aCoder encodeObject:self.userId forKey:@"userId"];
    [aCoder encodeObject:self.token forKey:@"accessToken"];
    [aCoder encodeObject:self.timestamp forKey:@"loginTimestamp"];
    
    [aCoder encodeObject:self.thirdId forKey:@"thirdId"];
    [aCoder encodeObject:self.thirdAccount forKey:@"thirdAccount"];
    [aCoder encodeBool:self.isBind forKey:@"accountIsBind"];

}


- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {

        self.account = [aDecoder decodeObjectForKey:@"accountName"];
        self.password = [aDecoder decodeObjectForKey:@"accountPwd"];
        self.lastLoginTime = [aDecoder decodeObjectForKey:@"lastLoginTimemobile"];
        
        self.userId = [aDecoder decodeObjectForKey:@"userId"];
        self.token = [aDecoder decodeObjectForKey:@"accessToken"];
        self.timestamp = [aDecoder decodeObjectForKey:@"loginTimestamp"];
        
        self.thirdId = [aDecoder decodeObjectForKey:@"thirdId"];
        self.thirdAccount = [aDecoder decodeObjectForKey:@"thirdAccount"];
        self.isBind = [aDecoder decodeBoolForKey:@"accountIsBind"];
  
    }
    
    return self;
}

@end
