//
//  EditModeTableViewCellData.h
//  EfunPlistEncrypt
//
//  Created by czf on 29/4/15.
//  Copyright (c) 2015 Efun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EditModeTableViewCellData : NSObject

- (instancetype)initEditModeTableViewWithDic:(NSDictionary *)dic andArr:(NSArray *)arr;

- (void)setValue:(NSString*)value forKey:(NSString *)key;
- (NSString *)objectForKey:(NSString *)key;

- (NSString *)keyAtIndex:(NSUInteger)index;

- (NSUInteger)indexOfKey:(NSString *)key;

- (void)setValue:(NSString*)value AtIndex:(NSUInteger)index;
- (NSString *)objectAtIndex:(NSUInteger)index;

- (NSUInteger)count;

- (NSString *)description;

- (void)addObjectAtTheEndWithObject:(NSString *)value forKey:(NSString *)key;

- (void)removeObjectAtIndex:(NSUInteger)index;
- (void)removeObjectWithKey:(NSString *)key;
@end
