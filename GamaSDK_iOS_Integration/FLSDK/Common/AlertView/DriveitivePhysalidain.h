



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface DriveitivePhysalidain : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(DriveitivePhysalidain *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
