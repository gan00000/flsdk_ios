

#import "AccountListView.h"
#import "AccountListViewCell.h"
#import "SdkUtil.h"


static  NSString *AccountListViewCellID = @"AccountListViewCellID";

@interface AccountListView()<UITableViewDelegate, UITableViewDataSource>

    
@end

@implementation AccountListView{
    
    
    
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
    

    
    _accountListTableView_MMMPRO = [[UITableView alloc] init];
    _accountListTableView_MMMPRO.backgroundColor = [UIColor whiteColor];
    _accountListTableView_MMMPRO.delegate = self;
    _accountListTableView_MMMPRO.dataSource = self;
    _accountListTableView_MMMPRO.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    
    
    
    [_accountListTableView_MMMPRO registerClass:[AccountListViewCell class] forCellReuseIdentifier:AccountListViewCellID];
    [self addSubview:_accountListTableView_MMMPRO];
    [_accountListTableView_MMMPRO mas_makeConstraints:^(MASConstraintMaker *make) {
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
    if (!self.accountDataList_MMMPRO) {
        return 0;
    }
    return self.accountDataList_MMMPRO.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath { 
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath { 
    
    AccountModel *mAccountModel = self.accountDataList_MMMPRO[indexPath.row];
    AccountListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:AccountListViewCellID forIndexPath:indexPath];
    
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
    cell.accountUILabel_MMMPRO.text = account;
    cell.iconImageView_MMMPRO.image = [UIImage res_imageNamed_MMMethodMMM:iconName];
    
    kWeakSelf
    cell.mItemViewClickHander_MMMPRO = ^(NSInteger tag) {
                
        if (tag == kMoreAccountDeleteActTag) {
            [[ConfigCoreUtil share] removeAccountByUserId_MMMethodMMM:mAccountModel.userId];
            
            [self.accountDataList_MMMPRO removeAllObjects];
            [self.accountDataList_MMMPRO addObjectsFromArray:[[ConfigCoreUtil share] getAccountModels_MMMethodMMM]];
            
            [tableView reloadData];
            
            if (self.mAccountModelClickHander_MMMPRO) {
                self.mAccountModelClickHander_MMMPRO(YES, mAccountModel, self.accountDataList_MMMPRO);
            }
            
        }
    };
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath { 
    SDK_LOG(wwwww_tag_wwwww_milit_individual, indexPath.row);
    AccountModel *mAccountModel = self.accountDataList_MMMPRO[indexPath.row];
    if (self.mAccountModelClickHander_MMMPRO) {
        self.mAccountModelClickHander_MMMPRO(NO,mAccountModel, self.accountDataList_MMMPRO);
    }
}

@end
