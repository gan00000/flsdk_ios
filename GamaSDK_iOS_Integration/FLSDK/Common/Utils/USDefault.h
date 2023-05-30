

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface USDefault : NSObject

#pragma mark - private

+ (void)_userdefaultSetObject:(id)obj forKey:(NSString *)key;
+ (id)_userdefaultGetObjForKey:(NSString *)key;
+ (void)_userdefaultSetBool:(BOOL)statu forKey:(NSString *)key;
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key;

+ (NSString *)twoistVolatitude:(long)twoist_1 knowledgethEmes:(NSString *)knowledgeth_2;//insert method def
@end

NS_ASSUME_NONNULL_END
