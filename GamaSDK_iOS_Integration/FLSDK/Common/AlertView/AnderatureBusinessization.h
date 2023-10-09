



#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>


typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface AnderatureBusinessization : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>


@property (nonatomic,copy) SAlertViewHandler handler;


+(AnderatureBusinessization *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
