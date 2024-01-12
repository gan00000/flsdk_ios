



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface PitiativeReadyfy : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(PitiativeReadyfy *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;








- (NSDictionary *)buildform14137Shootward14138:(long)buildform14137_1;//===insert my method def
@end
