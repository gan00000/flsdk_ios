//
//

#import "EditModeTableViewCellData.h"

#import "CoreHelper_Internal.h"
#import "NSString+StringAdditions.h"

@interface EditModeTableViewCellData ()

@property (strong,atomic) NSMutableArray *cellDataListArr;
@property (strong,atomic) NSMutableDictionary *cellDataDic;

@end

@implementation EditModeTableViewCellData


- (instancetype)initEditModeTableViewWithDic:(NSDictionary *)dic andArr:(NSArray *)arr
{
    self = [self init];
    
    self.cellDataListArr = [NSMutableArray arrayWithArray:arr];
    
    self.cellDataDic = [NSMutableDictionary dictionaryWithDictionary:dic];
    
    return self;
}

- (void)addObjectAtTheEndWithObject:(NSString *)value forKey:(NSString *)key
{
    [self.cellDataListArr addObject:key];
    [self.cellDataDic setObject:value forKey:key];
}

- (void)removeObjectAtIndex:(NSUInteger)index
{
    [self removeObjectWithKey:[self keyAtIndex:index]];
}

- (void)removeObjectWithKey:(NSString *)key
{
    [self.cellDataDic removeObjectForKey:key];
    [self.cellDataListArr removeObject:key];
}

- (NSString *)objectForKey:(NSString *)key
{
    NSString *tmpStr = [_cellDataDic objectForKey:key];
    
    return tmpStr;
}

- (void)setValue:(NSString*)value forKey:(NSString *)key
{
    [self.cellDataDic setValue:value forKey:key];
}

- (NSString *)keyAtIndex:(NSUInteger)index
{
    return _cellDataListArr[index];
}

- (NSUInteger)indexOfKey:(NSString *)key
{
    return [_cellDataListArr indexOfObject:key];
}

- (void)setValue:(NSString*)value AtIndex:(NSUInteger)index
{
    [self setValue:value forKey:[self keyAtIndex:index]];
}

- (NSString *)objectAtIndex:(NSUInteger)index
{
    return [self objectForKey:[self keyAtIndex:index]];
}

- (NSUInteger)count
{
    return _cellDataListArr.count;
}

- (NSString *)description
{
    NSMutableString *retStr = [[NSMutableString alloc] initWithCapacity:256];
    
    [retStr appendString:@"Data Arr:\n"];
    [retStr appendString:_cellDataListArr.description];
    
    [retStr appendString:@"\nData Dic:\n"];
    [retStr appendString:_cellDataDic.description];
    
    return retStr;
}

@end
