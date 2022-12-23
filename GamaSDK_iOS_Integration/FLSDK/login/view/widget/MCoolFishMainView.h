
#import <UIKit/UIKit.h>
#import "MCoolFishRegisterView.h"
#import "AccountModel.h"


typedef void (^AccountModelHander)(BOOL isDelete,AccountModel *_Nullable,NSMutableArray<AccountModel *>  *accountDataList);

NS_ASSUME_NONNULL_BEGIN

@interface MCoolFishMainView : MCoolFishRegisterView


@property(nonatomic, assign)double  line_size;
@property(nonatomic, assign)Boolean  has_Role;
@property(nonatomic, copy)NSString *  with_9SocialEncodingStr;


/// 函数定义
@property (nonatomic,strong) AccountModelHander mAccountModelClickHander;
@property (nonatomic,strong)NSMutableArray<AccountModel *>  *accountDataList;
@property (nonatomic,strong) UITableView *accountListTableView;
@end

NS_ASSUME_NONNULL_END
