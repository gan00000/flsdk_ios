



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface VidkinLimacite : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(VidkinLimacite *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
