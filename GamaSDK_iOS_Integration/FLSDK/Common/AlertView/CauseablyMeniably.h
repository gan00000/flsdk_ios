



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface CauseablyMeniably : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(CauseablyMeniably *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
