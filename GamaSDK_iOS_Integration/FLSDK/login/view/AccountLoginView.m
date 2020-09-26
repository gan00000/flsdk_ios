//
//  AccountLoginView.m
//  R2DSDK
//
//  Created by ganyuanrong on 2020/7/9.
//  Copyright © 2020 ganyuanrong. All rights reserved.
//

#import "AccountLoginView.h"
#import "SDKTextFiledView.h"
#import "SdkHeader.h"
#import "LoginTitleView.h"
#import "LoginButton.h"
#import "AccountListViewCell.h"
#import "BJHTTPServiceEngine.h"
#import "YYModel.h"
#import "AccountModel.h"
#import "GamaUtils.h"
#import "UIColor+HexStringToColorTW.h"
#import "SDKRequest.h"
static  NSString *AccountListViewCellID = @"AccountListViewCellID";

@interface AccountLoginView() <UITableViewDelegate, UITableViewDataSource>
    


@end

//会员登入view
@implementation AccountLoginView
{
    SDKTextFiledView *passwordSDKTextFiledView;
    SDKTextFiledView *accountSDKTextFiledView;
    UIButton *checkBoxBtn;
    UIButton *accountLoginBtn;
    UIButton *backBtn;
    UITableView *accountListTableView;
    
    NSMutableArray<AccountModel *>  *accountDataList;//账号列表数据
    
    BOOL isSaveAccountInfo;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initView
{
    self = [super init];
    if (self) {
        
        UIColor *color = [UIColor colorWithHexString:ContentViewBgColor];
        self.backgroundColor = color;//UIColor.lightGrayColor;// 底图透明，控件不透明
        self.layer.cornerRadius = 10; //设置圆角
        self.layer.masksToBounds = YES;
        
        //登入頁logo
        UIImageView *logoImageView = [[UIImageView alloc] initWithImage:[UIImage gama_imageNamed:@"fl_sdk_logo"]];
        logoImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:logoImageView];
        [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.mas_top).mas_offset(12);
            make.centerX.mas_equalTo(self);
            make.width.mas_equalTo(self).mas_offset(-30);
            make.height.mas_equalTo(kPageTitleHeight * 1.2);
        }];
        logoImageView.hidden = YES;
        
        backBtn = [UIUtil initBtnWithNormalImage:@"sdk_btn_back.png" highlightedImage:nil tag:kBackBtnActTag selector:@selector(registerViewBtnAction:) target:self];
        backBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self).mas_offset(20);
            make.width.mas_equalTo(kInputTextFiledHeight * 0.6);
            make.top.equalTo(self).mas_offset(20);
            make.height.mas_equalTo(kInputTextFiledHeight * 0.6);
        }];
        
        //账号
        accountSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Account)];
    
        [self addSubview:accountSDKTextFiledView];
        
        [accountSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self);
            make.top.equalTo(logoImageView.mas_bottom).mas_offset(1);
            make.width.mas_equalTo(self).offset(-kInputTextFiledMarginLeftRight);
            make.height.mas_equalTo(kInputTextFiledHeight * 1.2);
        }];
        
        
        //密码
        passwordSDKTextFiledView = [[SDKTextFiledView alloc] initViewWithType:(SDKTextFiledView_Type_Password)];
        [self addSubview:passwordSDKTextFiledView];
        
        [passwordSDKTextFiledView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(accountSDKTextFiledView.mas_bottom).mas_offset(10);
            make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
            make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        //記住密碼
        UILabel *rememberLable = [[UILabel alloc] init];
        rememberLable.text =  @"記住密碼";
        rememberLable.font = [UIFont systemFontOfSize:12];
        rememberLable.textAlignment = NSTextAlignmentLeft;
        rememberLable.backgroundColor = [UIColor clearColor];
        rememberLable.numberOfLines = 1;
        rememberLable.textColor = [UIColor blackColor];
        
        [self addSubview:rememberLable];
        [rememberLable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(60);
            make.top.equalTo(passwordSDKTextFiledView.mas_bottom).mas_offset(10);
            make.trailing.mas_equalTo(self.mas_centerX).mas_offset(-40);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        checkBoxBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
        
        [self addSubview:checkBoxBtn];
        [checkBoxBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(rememberLable.mas_leading).mas_offset(-4);
            make.centerY.mas_equalTo(rememberLable);
            make.width.mas_equalTo(20);
            make.height.mas_equalTo(20);
        }];
        
        //找回密碼
        
        UIButton *findPasswordBtn = [UIUtil initBtnWithTitle2:@"找回密碼" tag:kFindPwdActTag selector:@selector(registerViewBtnAction:) target:self];
        findPasswordBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [findPasswordBtn setTitleColor:[UIColor blackColor] forState:0];
        
        [self addSubview:findPasswordBtn];
        [findPasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(self.mas_centerX).mas_offset(40);
            make.centerY.equalTo(rememberLable);
            make.trailing.mas_equalTo(self.mas_trailing).mas_offset(-30);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        
        //账号登入
        accountLoginBtn = [LoginButton initBtnWithType:(BUTTON_TYPE_ACCOUNT_LOGIN) tag:kAccountLoginActTag selector:@selector(registerViewBtnAction:)  target:self];
        [self addSubview:accountLoginBtn];
        
        [accountLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self);
            make.top.equalTo(rememberLable.mas_bottom).mas_offset(10);
            make.width.mas_equalTo(self).offset(-kInputTextFiledMarginLeftRight);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height);
        }];
        
        //修改密碼
        UIButton *changePasswordBtn = [UIUtil initBtnWithTitle2:@"修改密碼" tag:kChangePwdActTag selector:@selector(registerViewBtnAction:) target:self];
        [self addSubview:changePasswordBtn];
        [changePasswordBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(self.mas_centerX);
            make.width.mas_equalTo(90);
            make.top.equalTo(accountLoginBtn.mas_bottom).mas_offset(10);
            make.height.mas_equalTo(accountSDKTextFiledView.mas_height).multipliedBy(0.7);
        }];
        
        //註冊帳號
        UIButton *registerBtn = [UIUtil initBtnWithTitle2:@"註冊帳號" tag:kRegisterAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        [self addSubview:registerBtn];
        [registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.mas_equalTo(changePasswordBtn.mas_leading).mas_offset(-10);
            make.width.mas_equalTo(changePasswordBtn);
            make.centerY.equalTo(changePasswordBtn);
            make.height.mas_equalTo(changePasswordBtn);
        }];
        
        
        //綁定帳號
        UIButton *bindAccountBtn = [UIUtil initBtnWithTitle2:@"綁定帳號" tag:kBindAccountActTag selector:@selector(registerViewBtnAction:) target:self];
        [self addSubview:bindAccountBtn];
        [bindAccountBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.mas_equalTo(changePasswordBtn.mas_trailing).mas_offset(10);
            make.width.mas_equalTo(changePasswordBtn);
            make.centerY.equalTo(changePasswordBtn);
            make.height.mas_equalTo(changePasswordBtn);
        }];
        
        isSaveAccountInfo = YES;
        accountDataList = [NSMutableArray array];//账号列表数据
        
        NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
        if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
            accountSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountName;
            passwordSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountPwd;
        }
        if (mAccountArray.count > 1) {
            accountSDKTextFiledView.moreAccountBtn.hidden = NO;
            [accountDataList addObjectsFromArray:mAccountArray];
            
        }else{
            accountSDKTextFiledView.moreAccountBtn.hidden = YES;
        }
        
        //添加账号显示列表
        kWeakSelf
        accountSDKTextFiledView.clickAccountListItem = ^(NSInteger tag) {
            
            if (accountListTableView) {
                //设置点击显示、隐藏
                if (accountListTableView.tag == 0) {
                    [weakSelf setTableViewHiden:YES];
                }else{
                    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
                   [accountDataList removeAllObjects];
                   [accountDataList addObjectsFromArray:mAccountArray];
                   [accountListTableView reloadData];
                    [weakSelf setTableViewHiden:NO];
                }
                
                
            }else{//第一次点击显示

                [self addAccountListTableView];
            }
            
        };
    }
    return self;
}

-(void) updatePasswordData{
    
   NSArray<AccountModel *> *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
    if (mAccountArray.count > 0){//设置默认显示第一个，即按照时间排序最后登录的一个账号
        accountSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountName;
        passwordSDKTextFiledView.inputUITextField.text = mAccountArray[0].accountPwd;
    }
    [accountDataList removeAllObjects];
    [accountDataList addObjectsFromArray:mAccountArray];
    if (accountListTableView) {
        [accountListTableView reloadData];
    }
    
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    accountSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
    passwordSDKTextFiledView.inputUITextField.delegate = self.mUITextFieldDelegate;
}

//设置隐藏或者显示
-(void) setTableViewHiden:(BOOL) hiden
{
    accountListTableView.hidden = hiden;
    if (hiden) {
        accountListTableView.tag = 1;
    }else{
        accountListTableView.tag = 0;
    }
}


- (void)addAccountListTableView
{
    //获取需要显示的数据
    NSArray *mAccountArray = [[ConfigCoreUtil share] getAccountModels];//获取保存的数据
     [accountDataList removeAllObjects];
     [accountDataList addObjectsFromArray:mAccountArray];

    
    //账号下拉列表
    accountListTableView = [[UITableView alloc] init];
    accountListTableView.backgroundColor = [UIColor whiteColor];
    [self setTableViewHiden:NO];
    accountListTableView.delegate = self;
    accountListTableView.dataSource = self;
    accountListTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    //    accountListTableView.estimatedRowHeight = 0;
    //    accountListTableView.estimatedSectionFooterHeight = 0;
    //    accountListTableView.estimatedSectionHeaderHeight = 0;
    
    [accountListTableView registerClass:[AccountListViewCell class] forCellReuseIdentifier:AccountListViewCellID];
    [self addSubview:accountListTableView];
    [accountListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(accountSDKTextFiledView.mas_leading);
        make.trailing.mas_equalTo(accountSDKTextFiledView.mas_trailing);
        make.top.equalTo(accountSDKTextFiledView.mas_bottom);
        make.height.mas_equalTo(100);
    }];
}


- (void)registerViewBtnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kCheckBoxBtnTag:
            SDK_LOG(@"kCheckBoxBtnTag");
            isSaveAccountInfo = !isSaveAccountInfo;
            [ConfigCoreUtil share].isSaveAccountInfo = isSaveAccountInfo;
            if (isSaveAccountInfo) {
                //checkBoxBtn = [UIUtil initBtnWithNormalImage:@"btn_checkbox_checked.png" highlightedImage:nil tag:kCheckBoxBtnTag selector:@selector(registerViewBtnAction:) target:self];
                [checkBoxBtn setImage:GetImage(@"btn_checkbox_checked.png") forState:UIControlStateNormal];
            }else{
                [checkBoxBtn setImage:GetImage(@"btn_checkbox_uncheck.png") forState:UIControlStateNormal];
            }
            break;
            
        case kFindPwdActTag:
            SDK_LOG(@"kFindPwdActTag");
            [self.delegate goPageView:CURRENT_PAGE_TYPE_FIND_PWD];
            break;
            
        case kBindAccountActTag:
            SDK_LOG(@"kBindAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_SELECT_BIND_TYPE];
            }
            break;
            
        case kRegisterAccountActTag:
            SDK_LOG(@"kRegisterAccountActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_REG_ACCOUNT];
            }
            break;
            
        case kChangePwdActTag:
            SDK_LOG(@"kChangePwdActTag");
            if (self.delegate) {
                [self.delegate goPageView:CURRENT_PAGE_TYPE_CHANGE_PWD];
            }
            break;
            
        case kBackBtnActTag:
            SDK_LOG(@"kBackBtnActTag");
            if (self.delegate) {
                [self.delegate goBackBtn:backBtn backCount:1];
            }
            break;
            
        case kAccountLoginActTag:
            SDK_LOG(@"kAccountLoginActTag");
            [self requestAccountLogin];
            break;
            
            
        default:
            break;
    }
    
}

-(void) requestAccountLogin
{
    
    NSString *accountName = [GamaUtils triString:accountSDKTextFiledView.inputUITextField.text];
    NSString *pwd = [GamaUtils triString:passwordSDKTextFiledView.inputUITextField.text];
    
        
    if (!accountName || [accountName isEqualToString:@""]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_ACCOUNT")];
        return;
    }
    
    if (![GamaUtils validUserName:accountName]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"ALERT_MSG_ACCOUNT_RULE")];
        return;
    }
    
    if (!pwd || [pwd isEqualToString:@""]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PH_ACCOUNT_INPUT_PWD")];
        return;
    }
//    if (GamaLoginViewModel.model.vfConfig == YES){
//        if(vfTF.text.length<1){
//            [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"GAMA_LOGIN_CAPTCH_PLACEHOLDER")];
//            return;
//        }
//    }
    kWeakSelf
    [SDKRequest doLoginWithAccount:accountName andPassword:pwd otherDic:nil successBlock:^(id responseData) {
        
        if (weakSelf.delegate) {
            CCSDKResponse *cc = (CCSDKResponse *)responseData;
            cc.account = accountName;
            cc.password = pwd;
            [weakSelf.delegate handleLoginOrRegSuccess:cc thirdPlate:_SDK_PLAT_SELF];
        }
        
    } errorBlock:^(BJError *error) {
        [GamaAlertView showAlertWithMessage:error.message];
    }];
}


#pragma mark tableview deletage
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return accountDataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AccountModel *mAccountModel = accountDataList[indexPath.row];
    AccountListViewCell *cell = [tableView dequeueReusableCellWithIdentifier:AccountListViewCellID forIndexPath:indexPath];
    cell.accountUILabel.text = mAccountModel.accountName;
    kWeakSelf
    cell.mItemViewClickHander = ^(NSInteger tag) {
        if (tag == kMoreAccountDeleteActTag) {
            [accountDataList removeObject:mAccountModel];
            [tableView reloadData];
            [[ConfigCoreUtil share] saveAccountModels:accountDataList];//保存
            if (accountDataList.count == 0) { //删除到位0的时候隐藏tableview和moreAccountBtn
                [weakSelf setTableViewHiden:YES];
                accountSDKTextFiledView.moreAccountBtn.hidden = YES;
            }
        }
    };
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    SDK_LOG(@"didSelectRowAtIndexPath %ld", indexPath.row);
    AccountModel *mAccountModel = accountDataList[indexPath.row];
    accountSDKTextFiledView.inputUITextField.text = mAccountModel.accountName;
    passwordSDKTextFiledView.inputUITextField.text = mAccountModel.accountPwd;
    [self setTableViewHiden:YES];
}

@end
