
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CHMXTTInterrupt;
@protocol CRCHMXTTNewsManager <NSObject>
@optional
- (void)fire;
@required
- (void)showSelectedAreaCodeValue_MMMethodMMM:(NSString *)selectedAreaCodeValue;
@end

@interface CHMXTTInterrupt : NSObject


@property(nonatomic, assign)NSInteger  errorCount;
@property(nonatomic, assign)float  delete_6;




-(NSDictionary *)commonTemptextContainerRestoredMark:(NSArray *)scriptStatus plistEfault:(Boolean)plistEfault authrization:(double)authrization;

-(NSString *)fetchReaderLenTranslate:(NSDictionary *)keychainNews;


@property (nonatomic, strong) NSString *selectedAreaCodeKey;
@property (nonatomic, strong) NSString *selectedAreaCodeValue;
@property (nonatomic, copy) NSString *selectedRegularExpression;
@property (nonatomic, assign) id<CRCHMXTTNewsManager> delegate;

- (void)showAreaCodesActionSheetFromView_MMMethodMMM:(UIButton *)view;

@end
