









#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface SAlertViewDelegate : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(SAlertViewDelegate *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
