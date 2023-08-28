

#import "SmileDuiveView.h"
#import "CheirodemocraticshipSideingCell.h"
#import "PointsionValueain.h"


static  NSString *AccountListViewCellID = @"AccountListViewCellID";

@interface SmileDuiveView()<UITableViewDelegate, UITableViewDataSource>

    
@end

@implementation SmileDuiveView{
    
    
    
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addView_MMMethodMMM];
    }
    return self;
}

-(void)addView_MMMethodMMM{
    [self addAccountListTableView_MMMethodMMM];
}



- (void)addAccountListTableView_MMMethodMMM
{
    

    
    _accountListTableView = [[UITableView alloc] init];
    _accountListTableView.backgroundColor = [UIColor whiteColor];
    _accountListTableView.delegate = self;
    _accountListTableView.dataSource = self;
    _accountListTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    
    
    
    [_accountListTableView registerClass:[CheirodemocraticshipSideingCell class] forCellReuseIdentifier:AccountListViewCellID];
    [self addSubview:_accountListTableView];
    [_accountListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
        
    }];
}


#pragma mark tableview deletage
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    if (!self.accountDataList) {
        return 0;
    }
    return self.accountDataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath { 
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath { 
    
    AccountModel *mAccountModel = self.accountDataList[indexPath.row];
    CheirodemocraticshipSideingCell *cell = [tableView dequeueReusableCellWithIdentifier:AccountListViewCellID forIndexPath:indexPath];
    
    NSString *account = mAccountModel.userId;
    NSString *iconName = mw_smail_icon;
    
    if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_SELF]) {
        
        account = mAccountModel.account;
        iconName = mw_smail_icon;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_FB]){
        iconName = fb_smail_icon;
       
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GOOGLE]){
        iconName = google_smail_icon;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_GUEST]){
        iconName = guest_smail_icon;
        
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_APPLE]){
        iconName = apple_smail_icon;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_LINE]){
        iconName = line_smail_icon;
    }else if ([mAccountModel.loginType isEqualToString:LOGIN_TYPE_NAVER]){
        iconName = mw_naver_icon;
    }
    cell.accountUILabel.text = account;
    cell.iconImageView.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
    
    kWeakSelf
    cell.mItemViewClickHander = ^(NSInteger tag) {
                
        if (tag == kMoreAccountDeleteActTag) {
            [[PhaeyounghoodFutil share] removeAccountByUserId_MMMethodMMM:mAccountModel.userId];
            
            [self.accountDataList removeAllObjects];
            [self.accountDataList addObjectsFromArray:[[PhaeyounghoodFutil share] getAccountModels_MMMethodMMM]];
            
            [tableView reloadData];
            
            if (self.mAccountModelClickHander) {
                self.mAccountModelClickHander(YES, mAccountModel, self.accountDataList);
            }
            
        }
    };
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath { 
    SDK_LOG(@"didSelectRowAtIndexPath %ld", indexPath.row);
    AccountModel *mAccountModel = self.accountDataList[indexPath.row];
    if (self.mAccountModelClickHander) {
        self.mAccountModelClickHander(NO,mAccountModel, self.accountDataList);
    }
}

@end
