









#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface LipTheling : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;
@property (nonatomic, strong) NSArray *evmentTomtableally;//===insert my property===

@property (nonatomic, strong) NSString *theriveCentury;//===insert my property===

@property (nonatomic, strong) NSMutableDictionary *scabiDonaneity;//===insert my property===



+(LipTheling *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


- (float)mersnessIn1osity:(BOOL)mersness_1;//insert method def
@end
