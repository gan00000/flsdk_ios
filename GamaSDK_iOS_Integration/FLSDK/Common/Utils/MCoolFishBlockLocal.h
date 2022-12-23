
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishBlockLocal : NSObject


@property(nonatomic, assign)double  window_2;
@property(nonatomic, assign)Boolean  private_yr;
@property(nonatomic, assign)Boolean  hasBundle;
@property(nonatomic, assign)Boolean  enbaleQuery;


/// 函数定义
#pragma mark - private

+ (void)_userdefaultSetObject:(id)obj forKey:(NSString *)key;
+ (id)_userdefaultGetObjForKey:(NSString *)key;
+ (void)_userdefaultSetBool:(BOOL)statu forKey:(NSString *)key;
+ (BOOL)_userdefaultGetBoolForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
