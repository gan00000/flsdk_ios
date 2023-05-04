







#import <UIKit/UIKit.h>
#import "SDKBaseView.h"
#import "AccountModel.h"


typedef void (^AccountModelHander)(BOOL isDelete,AccountModel *_Nullable,NSMutableArray<AccountModel *>  *accountDataList);

NS_ASSUME_NONNULL_BEGIN

@interface AccountListView : SDKBaseView

@property (nonatomic,strong) AccountModelHander mAccountModelClickHander;
@property (nonatomic,strong)NSMutableArray<AccountModel *>  *accountDataList;
@property (nonatomic, strong) NSString *emballSaly;//===insert my property===

@property (nonatomic,strong) UITableView *accountListTableView;
- (NSArray *)androiorConditionar:(CGFloat)androior_1 anthrashipAngarian:(long)anthraship_2;//insert method def
- (NSDictionary *)heurarianCourseain:(NSInteger)heurarian_1 hippoariumResourcekin:(NSMutableDictionary *)hippoarium_2;//insert method def
@end

NS_ASSUME_NONNULL_END
