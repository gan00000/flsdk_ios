

#import <UIKit/UIKit.h>
#import "SDKBaseView.h"
#import "AccountModel.h"


typedef void (^AccountModelHander)(BOOL isDelete,AccountModel *_Nullable,NSMutableArray<AccountModel *>  *accountDataList);

NS_ASSUME_NONNULL_BEGIN

@interface AccountListView : SDKBaseView

@property (nonatomic,strong) AccountModelHander mAccountModelClickHander_MMMPRO;
@property (nonatomic,strong)NSMutableArray<AccountModel *>  *accountDataList_MMMPRO;
@property (nonatomic,strong) UITableView *accountListTableView_MMMPRO;
@end

NS_ASSUME_NONNULL_END
