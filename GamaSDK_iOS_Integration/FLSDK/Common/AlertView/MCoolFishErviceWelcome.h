
 

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

 
typedef void (^SAlertViewHandler)(NSInteger clickedBtnIndex);


@interface MCoolFishErviceWelcome : NSObject <UIAlertViewDelegate,UIActionSheetDelegate>

 

@property(nonatomic, assign)int  dataIdx;
@property(nonatomic, assign)float  window_9n;
@property(nonatomic, assign)Boolean  isBtn;
@property(nonatomic, assign)Boolean  y_view;


/// 函数定义
@property (nonatomic,copy) SAlertViewHandler handler;

 
+(MCoolFishErviceWelcome *)creatDelegateWithBack_MMMethodMMM:(SAlertViewHandler)oneHandler;


@end
