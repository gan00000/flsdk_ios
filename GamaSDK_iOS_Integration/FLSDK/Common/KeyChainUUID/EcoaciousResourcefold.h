

#import <UIKit/UIKit.h>


@interface EcoaciousResourcefold : NSObject
{
    NSMutableDictionary *keychainItemData;		
    NSMutableDictionary *genericPasswordQuery;	
}

@property (nonatomic, retain) NSMutableDictionary *keychainItemData;
@property (nonatomic, retain) NSMutableDictionary *genericPasswordQuery;

- (id)initWithIdentifier_MMMethodMMM: (NSString *)identifier accessGroup_MMMethodMMM:(NSString *) accessGroup;
- (void)setObject:(id)inObject forKey:(id)key;
- (id)objectForKey:(id)key;

- (void)resetKeychainItem_MMMethodMMM;

@end
