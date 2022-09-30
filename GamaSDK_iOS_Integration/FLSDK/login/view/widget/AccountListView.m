//
//  AccountListView.m
//  FLSDK
//
//  Created by Gan Yuanrong on 2022/6/17.
//  Copyright © 2022 Gama. All rights reserved.
//

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
        [self addView];
    }
    return self;
}

-(void)addView{
    [self addAccountListTableView];
}



- (void)addAccountListTableView
{
    //获取需要显示的数据
//    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
//     [self.accountDataList removeAllObjects];
//     [self.accountDataList addObjectsFromArray:mAccountArray];
//    if (!self.accountDataList) {
//        self.accountDataList = [NSMutableArray array];
//    }

    //账号下拉列表
    _accountListTableView = [[UITableView alloc] init];
    _accountListTableView.backgroundColor = [UIColor whiteColor];
    _accountListTableView.delegate = self;
    _accountListTableView.dataSource = self;
    _accountListTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    //    accountListTableView.estimatedRowHeight = 0;
    //    accountListTableView.estimatedSectionFooterHeight = 0;
    //    accountListTableView.estimatedSectionHeaderHeight = 0;
    
    [_accountListTableView registerClass:[AccountListViewCell class] forCellReuseIdentifier:AccountListViewCellID];
    [self addSubview:_accountListTableView];
    [_accountListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
//        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
//        make.top.equalTo(accountSDKTextFiledView.mas_bottom);
//        make.height.mas_equalTo(100);
        make.edges.mas_equalTo(self);
        
    }];
}


#pragma mark tableview deletage
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView //system_method
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section //system_method
{
    if (!self.accountDataList) {
        return 0;
    }
    return self.accountDataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath { //system_method
    return 40;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath { //system_method
    
    AccountModel *mAccountModel = self.accountDataList[indexPath.row];
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
    }
    cell.accountUILabel.text = account;
    cell.iconImageView.image = [UIImage res_imageNamed:iconName];
    
    kWeakSelf
    cell.mItemViewClickHander = ^(NSInteger tag) {
                
        if (tag == kMoreAccountDeleteActTag) {
//            [self.accountDataList removeObject:mAccountModel];
            [[ConfigCoreUtil share] removeAccountByUserId:mAccountModel.userId];
            
            [self.accountDataList removeAllObjects];
            [self.accountDataList addObjectsFromArray:[[ConfigCoreUtil share] getAccountModels]];
            
            [tableView reloadData];
            
            if (self.mAccountModelClickHander) {
                self.mAccountModelClickHander(YES, mAccountModel, self.accountDataList);
            }
            
//            [[ConfigCoreUtil share] saveAccountModels:self.accountDataList];//保存
//            if (self.accountDataList.count == 0) { //删除到位0的时候隐藏tableview和moreAccountBtn
//
//            }
        }
    };
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath { //system_method
    SDK_LOG(@"didSelectRowAtIndexPath %ld", indexPath.row);
    AccountModel *mAccountModel = self.accountDataList[indexPath.row];
//    accountSDKTextFiledView.inputUITextField.text = mAccountModel.account;
//    passwordSDKTextFiledView.inputUITextField.text = mAccountModel.password;
//    [self setTableViewHiden:YES];
    if (self.mAccountModelClickHander) {
        self.mAccountModelClickHander(NO,mAccountModel, self.accountDataList);
    }
//    self.hidden = YES;
}

@end
