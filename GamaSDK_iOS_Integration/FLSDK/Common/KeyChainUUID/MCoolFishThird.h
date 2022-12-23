 

#import <UIKit/UIKit.h>

 
@interface MCoolFishThird : NSObject
{
    NSMutableDictionary *keychainItemData;		
    NSMutableDictionary *genericPasswordQuery;	
}
@property(nonatomic, assign)NSInteger  callbackSum;
@property(nonatomic, assign)double  progress_min;
@property(nonatomic, copy)NSString *  impCallStr;
@property(nonatomic, assign)Boolean  enbale_Model;


/// 函数定义


@property (nonatomic, retain) NSMutableDictionary *keychainItemData;
@property (nonatomic, retain) NSMutableDictionary *genericPasswordQuery;

- (id)initWithIdentifier_MMMethodMMM: (NSString *)identifier accessGroup_MMMethodMMM:(NSString *) accessGroup;
- (void)setObject:(id)inObject forKey:(id)key;
- (id)objectForKey:(id)key;

- (void)resetKeychainItem_MMMethodMMM;

@end
