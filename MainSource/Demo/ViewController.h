//
//  ViewController.h
//  
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate,UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,retain) UITableView *buttonsTable;
@property (nonatomic,retain) NSArray *buttonsArray;

@end
