

#import <UIKit/UIKit.h>


@interface MattertyTerra : NSObject
{
    NSMutableDictionary *keychainItemData_MMMPRO;		
    NSMutableDictionary *genericPasswordQuery_MMMPRO;	
}

@property (nonatomic, retain) NSMutableDictionary *keychainItemData_MMMPRO;
@property (nonatomic, retain) NSMutableDictionary *genericPasswordQuery_MMMPRO;

- (id)initWithIdentifier_MMMethodMMM: (NSString *)identifier accessGroup_MMMethodMMM:(NSString *) accessGroup;
- (void)setObject:(id)inObject forKey:(id)key;
- (id)objectForKey:(id)key;

- (void)resetKeychainItem_MMMethodMMM;

@end
