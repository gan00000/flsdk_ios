//
//  GamaSecondContentView.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/10.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "SecondPartContentView.h"
#import "UIImageView+WebCache.h"
#import "HelloPlatformConstant.h"
#import "MJRefresh.h"  

static int infoPageNum = 1;
static int emailPageNum = 1;

#define rewardImageWidth  (IS_IPAD ? 100.0f:80.0f)

@interface SecondPartContentView ()
@property (nonatomic, strong) GamaPlatformDataModel *m_dataModel;
@end

@implementation SecondPartContentView
{
    FloatItems m_item;
    
    SecondPartMode m_mode;
    
    NSIndexPath *curSelectedItemIdx;
    
    UITableView *m_table;
    UICollectionView *m_collectionView;
    
    NSMutableArray *tableDataSource;
    NSArray *m_collectionDataSource;
}

- (instancetype)initWithFrame:(CGRect)frame mode:(FloatItems)mode dataModel:(GamaPlatformDataModel *)dataModel
{
    if ([self initWithFrame:frame]) {
        m_item = mode;
        self.m_dataModel = dataModel;
        [self _propertiesInit];
        [self _customInit];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:NOTI_TOPBAR_BACK object:nil];
    }
    return self;
}

- (void)_propertiesInit
{
    m_mode = [self mapContentModeByItem:m_item];
    tableDataSource = [[NSMutableArray alloc] init];
}

- (void)_customInit
{
    switch (m_mode) {
        case SecondPartMode_Banner:
            [self _fillBanner];
            break;
        case SecondPartMode_Webview:
            [self _fillWebview];
            break;
        case SecondPartMode_Cutomlization:
            [self _fillCustomlization];
            break;
        case SecondPartMode_CollectionView:
            [self _fillCollectionView];
            break;
            
        default:
            break;
    }
}
#pragma mark - Banner
- (void)_fillBanner
{
    switch (m_item) {
        case FloatItems_Email:
        {
            emailPageNum = 1;
            // request
            [GamaPlatformRequestor fetchItemEmailWithPageNum:emailPageNum completion:^(NSDictionary * _Nullable resultDic) {
                [tableDataSource removeAllObjects];
                NSArray *dataArr = resultDic[@"data"];

                for (NSDictionary *dic in dataArr) {
                    GamaEmailModel *model = [[GamaEmailModel alloc] initWithDic:dic];
                    [tableDataSource addObject:model];
                    [model release];
                }
                [self _createTableView];
            }];
        }
            break;
            
        default:
        {
            infoPageNum = 1;
            // info request
            [GamaPlatformRequestor fetchItemInfoWithPageNum:infoPageNum completion:^(NSArray * _Nullable items) {
                [tableDataSource removeAllObjects];
                for (NSDictionary *dic in items) {
                    [tableDataSource addObject:dic];
                }
                [self _createTableView];
            }];
        }
            break;
    }
    
}

- (void)_createTableView
{
    m_table = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    m_table.delegate = self;
    m_table.dataSource = self;
    
    if (m_item == FloatItems_Email) {
        m_table.rowHeight = 100.0f/bgOriginHeight*[ViewCalculationCriteria shareCriteria].calHeight;
    } else {
        m_table.rowHeight = self.frame.size.width/4;
    }
    
    m_table.backgroundColor = [UIColor clearColor];

    [self addSubview:m_table];
    [m_table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(0));
        make.bottom.equalTo(@(0));
        make.top.equalTo(@(0));
        make.right.equalTo(@(0));
    }];
    
    MJRefreshAutoNormalFooter *footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreAction)];
    m_table.mj_footer = footer;
    footer.automaticallyHidden = YES;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return tableDataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tCellIdentifier = @"tableCellIdentifier";
    
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:tCellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:tCellIdentifier] autorelease];
        
        switch (m_item) {
            case FloatItems_Email:
            {
                // image
                UIImageView *itemImage = [[UIImageView alloc] init];
                [itemImage setFrame:CGRectMake(10, 5, 20, 20)];
                itemImage.tag = 54300;
                [cell.contentView addSubview:itemImage];
                [itemImage release];
                // title
                UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(tableView.frame.size.width/3, 0, tableView.frame.size.width/3, tableView.rowHeight)];
                titleLabel.tag = 54301;
                titleLabel.textAlignment = NSTextAlignmentCenter;
                [titleLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME size:14]];
                titleLabel.textColor = [UIColor whiteColor];
                [cell.contentView addSubview:titleLabel];
                [titleLabel release];
                // 日期
                UILabel *dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(tableView.frame.size.width/3*2, 0, tableView.frame.size.width/3, tableView.rowHeight)];
                dateLabel.tag = 54302;
                dateLabel.textAlignment = NSTextAlignmentRight;
                [dateLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME size:constant_labelSize]];
                dateLabel.textColor = [UIColor whiteColor];
                [cell.contentView addSubview:dateLabel];
                [dateLabel release];
            }
                break;
            case FloatItems_Info:
            {
                UIImageView *itemImage = [[UIImageView alloc] init];
                [itemImage setFrame:CGRectMake(0, 2, tableView.frame.size.width, tableView.rowHeight-4)];
                itemImage.tag = itemImageTag;
                [cell.contentView addSubview:itemImage];
                [itemImage release];
            }
                break;
            default:
                break;
        }
    }    

    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    switch (m_item) {
        case FloatItems_Email:
        {
            GamaEmailModel *model = tableDataSource[indexPath.row];
         
            UIImageView *itemImage = (UIImageView *)[cell viewWithTag:54300];
            itemImage.image = GetPfImage([model.readStatus boolValue] ? pltf_bg_email_read : pltf_bg_email_unread);
            
            UILabel *titleLabel = (UILabel *)[cell viewWithTag:54301];
            titleLabel.text = model.title;
            
            UILabel *dateLabel = (UILabel *)[cell viewWithTag:54302];
            dateLabel.text = model.time;
            
            if (![model.readStatus boolValue]) {
                cell.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2f];
            }
            
        }
            break;
        case FloatItems_Info:
        {
            UIImageView *itemImage = (UIImageView *)[cell viewWithTag:itemImageTag];
            [itemImage sd_setImageWithURL:[NSURL URLWithString:tableDataSource[indexPath.row][@"image"]] placeholderImage:GetPfImage(pltf_big_place_holder_bg)];
        }
            break;
            
        default:
            break;
    }
    
    return cell ;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    curSelectedItemIdx = indexPath;
    
    NSString *url = nil;
    if (m_item == FloatItems_Info) {
        url = tableDataSource[indexPath.row][@"url"];
        NSString *commonParamsStr = [GamaPlatformRequestor commonParmsStr];
        url = [url stringByAppendingString:@"?"];
        url = [url stringByAppendingString:commonParamsStr];
        
    } else if (m_item == FloatItems_Email) {
        GamaEmailModel *model = tableDataSource[indexPath.row];
        url = [NSString stringWithFormat:@"%@?readStatus=%@&messageId=%@&",model.url,[model.readStatus boolValue]?@"true":@"false", model.messageId];
        
        NSString *commonParamsStr = [GamaPlatformRequestor commonParmsStr];
        url = [url stringByAppendingString:commonParamsStr];
        
        model.readStatus = @"1";
    }
     
    WKWebView *wview = [GamaUtils createWKWebViewAndAddToParentViewWithRect:self.frame
                                                                   urlStirng:url
                                                                cornerRadius:0.0f
                                                                    delegate:self];
    wview.tag = kSecondDirWebViewTag;
    [self addSubview:wview];
    
    // delete Email Btn
    if (m_item == FloatItems_Email) {
        UIButton *delBtn = [GamaUtils initBtnWithType:UIButtonTypeCustom
                                                 title:SDKConReaderGetLocalizedString(@"BTN_TITLE_TXT_DELETE")
                                                   tag:deleteMsgBtnTag
                                              selector:@selector(_curViewBtnClicked:event:)
                                                target:self];
        [delBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
        [delBtn.layer setBorderWidth:1.0f];
        [delBtn.layer setMasksToBounds:YES];
        [delBtn.layer setCornerRadius:5.0f];
        [delBtn setTitleColor:[UIColor whiteColor] forState:0];
        [delBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
        [self addSubview:delBtn];
        CGSize btnSize = [GamaUtils calculateSizeOfLabel:delBtn.titleLabel];
        [delBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(@(-10));
            make.bottom.equalTo(@(-10));
            make.width.equalTo(@(btnSize.width+20));
            make.height.equalTo(@(btnSize.height+10));
        }];
    }
    
    // back btn
    UIButton *backBtn = (UIButton *)[self.superview.superview.superview viewWithTag:backBtnTag];
    backBtn.hidden = NO;
}

#pragma mark - Webview
- (void)_fillWebview
{
    NSString *urlStr = nil;
    switch (m_item) {
        case FloatItems_Pay:
            urlStr = [GamaUtils spliceSpecialString];
            break;
            
        default:
        {
            NSString *commonParamsStr = [GamaPlatformRequestor commonParmsStr];
            urlStr = self.m_dataModel.url;
            urlStr = [urlStr stringByAppendingString:@"?"];
            urlStr = [urlStr stringByAppendingString:commonParamsStr];
            
        }
            break;
    }
    WKWebView *aview = [GamaUtils createWKWebViewAndAddToParentViewWithRect:self.frame urlStirng:urlStr cornerRadius:0 delegate:self];
    aview.scrollView.bounces = NO;
    [self addSubview:aview];    
}

#pragma mark - Customlization

- (void)_fillCustomlization
{    
    switch (m_item) {
        case FloatItems_AccountManage:
            [self custom_AccountManager];
            break;
        case FloatItems_BindReward:
            [self custom_BindReward];
            break;
            
        default:
            break;
    }
}
- (void)custom_AccountManager
{
    PlatformAccountType accountType = 0;
    // show view
    GamaPFAccountManagerView *accountManager = [[GamaPFAccountManagerView alloc] initWithFrame:self.frame accountType:accountType];
    [self addSubview:accountManager];
    [accountManager release];
}
- (void)custom_BindReward
{
    GamaPFBindRewardView *bindView = [[GamaPFBindRewardView alloc] initWithFrame:self.frame];
    [self addSubview:bindView];
    [bindView release];
}

#pragma mark - CollectionView

- (void)_fillCollectionView
{
    [GamaPlatformRequestor fetchItemRewardCenter:^(NSDictionary * _Nullable resultDic) {
        NSMutableArray *fetchArr = [[[NSMutableArray alloc] init] autorelease];
        NSArray *dataArr = resultDic[@"data"];
        for (NSDictionary *rewDic in dataArr) {
            GamaRewardCenterModel *model = [[GamaRewardCenterModel alloc] initWithDic:rewDic];
            [fetchArr addObject:model];
            [model release];
        }
        m_collectionDataSource = fetchArr.copy;
        
        [self _createColletionView];
    }];
}
- (void)_createColletionView
{
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = layout.minimumLineSpacing = 0;
    
    // cell 高度重自适应
    CGFloat itemW = self.frame.size.width/4;
    CGFloat itemH = IS_IPAD ? itemW : itemW*1.7f;
    layout.estimatedItemSize = CGSizeMake(itemW, itemH);
    layout.itemSize = UICollectionViewFlowLayoutAutomaticSize;
    
    m_collectionView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:layout];
    m_collectionView.allowsMultipleSelection = YES;
    m_collectionView.delegate = self;
    m_collectionView.dataSource = self;
    
    [m_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
    [m_collectionView setBackgroundColor:[UIColor clearColor]];
    [self addSubview:m_collectionView];
    [layout release];
}

#pragma mark - UICollectionView delegate && DataSource Action
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [m_collectionDataSource count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_ID
                                                                           forIndexPath:indexPath];
    
    GamaRewardCenterModel *model = m_collectionDataSource[indexPath.row];
    
    UIImageView *itemImage = [[UIImageView alloc] init];
    NSURL *imageUrl = [NSURL URLWithString:model.icon];
    [itemImage sd_setImageWithURL:imageUrl placeholderImage:GetPfImage(pltf_small_place_holder_bg)];
    [itemImage setFrame:CGRectMake((cell.frame.size.width-rewardImageWidth)/2, 5, rewardImageWidth, rewardImageWidth)];
    itemImage.tag = itemImageTag;
    
    // btn get
    NSString *clickBtnTitle = SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_CLICK_TO_RECEIVE");// 可領取
    UIButton *clickBtn = [GamaUtils initBtnWithTitle:clickBtnTitle
                                      backgroundColor:kBtnBgColor
                                                  tag:rewardGetBtnTag
                                             selector:@selector(_curViewBtnClicked:event:)
                                               target:self];
    [clickBtn setFrame:CGRectMake((cell.frame.size.width-rewardImageWidth)/2, 5+rewardImageWidth+5, rewardImageWidth, 20)];
    // 先判断礼包是否已被领光（0-未领取 1-已领取 2-已领光）
    if ([model.isReceive isEqualToString:@"2"]) {
        [clickBtn setTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_SALE_OUT") forState:0]; // 已領光
        clickBtn.userInteractionEnabled = NO;
        clickBtn.backgroundColor = [UIColor grayColor];
    } else if ([model.isReceive boolValue]) {
        [clickBtn setTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_RECEIVE") forState:0]; // 已領取
        clickBtn.userInteractionEnabled = NO;
        clickBtn.backgroundColor = [UIColor grayColor];
    }
    
    // info view
    UIView *infoView = [[UIView alloc] initWithFrame:CGRectMake(0, 15+rewardImageWidth+clickBtn.frame.size.height, cell.frame.size.width, cell.frame.size.height-15-rewardImageWidth-clickBtn.frame.size.height)];
    infoView.backgroundColor = [UIColor clearColor];
    
    CGFloat m_fontSize = 10;
    CGFloat lbGap = 2;
    
    // date
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, infoView.frame.size.width, 10)];
    title.text = model.time;
    title.textAlignment = NSTextAlignmentCenter;
    title.textColor = [UIColor whiteColor];
    
    [title setFont:[UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:m_fontSize]];
    [infoView addSubview:title];
    [title release];
    // name
    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(0, title.frame.size.height+lbGap, infoView.frame.size.width, 14)];
    name.text = model.title;
    name.textAlignment = NSTextAlignmentCenter;
    name.textColor = [UIColor whiteColor];
    [name setFont:[UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:14]];
    name.numberOfLines = 0;
    CGSize nameSize = [GamaUtils calculateSizeOfLabel:name andWidth:infoView.frame.size.width];
    CGFloat nameH = ceil(nameSize.height) + 1;
    [name setFrame:CGRectMake(0, title.frame.size.height+lbGap, infoView.frame.size.width, nameH)];
    [infoView addSubview:name];
    [name release];
    
    // content 内容：xxxx
    UILabel *contentLable = [[UILabel alloc] initWithFrame:CGRectMake(0, title.frame.size.height+lbGap+name.frame.size.height+lbGap, infoView.frame.size.width, 20)];
    contentLable.text = model.rewardName;
    contentLable.textAlignment = NSTextAlignmentCenter;
    contentLable.textColor = [UIColor whiteColor];
    [contentLable setFont:[UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:m_fontSize]];
    contentLable.numberOfLines = 0;
    CGSize contentLableSize = [GamaUtils calculateSizeOfLabel:contentLable andWidth:infoView.frame.size.width];
    CGFloat contentLableH = ceil(contentLableSize.height) + 1;
    [contentLable setFrame:CGRectMake(0, title.frame.size.height+lbGap+name.frame.size.height+lbGap, infoView.frame.size.width, contentLableH)];
    [infoView addSubview:contentLable];
    [contentLable release];
    
    [infoView setFrame:CGRectMake(0, 15+rewardImageWidth+clickBtn.frame.size.height, cell.frame.size.width, contentLable.frame.origin.y+contentLableH+lbGap)];
    
    [cell.contentView addSubview:itemImage];
    [cell.contentView addSubview:clickBtn];
    [cell.contentView addSubview:infoView];
    [itemImage release];
    [infoView release];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(_tapAction:)];
    [cell.contentView addGestureRecognizer:tap];
    
    if (indexPath.row == 0) {
        curSelectedItemIdx = indexPath;
    }
    
    return cell;
}

#pragma mark - GestureRecognizer == collectionView 点击事件
// 解决有时候点击cell无响应的情况
- (void)_tapAction:(UITapGestureRecognizer *)sender
{
}

#pragma mark - Map

- (SecondPartMode)mapContentModeByItem:(FloatItems)item
{
    SecondPartMode contentMode = 0;
    switch (item) {
        case FloatItems_Info:
        case FloatItems_Email:
            contentMode = SecondPartMode_Banner;
            break;
        case FloatItems_BindReward:
        case FloatItems_AccountManage:
            contentMode = SecondPartMode_Cutomlization;
            break;
        case FloatItems_RewardCenter:
            contentMode = SecondPartMode_CollectionView;
            break;
        case FloatItems_Pay:
        case FloatItems_Unknow:
            contentMode = SecondPartMode_Webview;
            break;
        default:
            contentMode = SecondPartMode_Banner;
            break;
    }
    return contentMode;
}

#pragma mark - Btn Action

- (void)_curViewBtnClicked:(UIButton *)sender event:(id)event
{
    switch (sender.tag) {
        case rewardGetBtnTag:
        {
            // 获取数据源
            NSSet *touches = [event allTouches];
            UITouch *touch = [touches anyObject];
            CGPoint position = [touch locationInView:m_collectionView];
            
            NSIndexPath *indexPath = [m_collectionView indexPathForItemAtPoint:position];
            
            GamaRewardCenterModel *model = m_collectionDataSource[indexPath.row];
            
            [GamaPlatformRequestor receiveGiftWithUid:[SdkUserInfoModel shareInfoModel].userId
                                       activityCode:model.activityCode
                                         serverCode:[SdkUserInfoModel shareInfoModel].serverCode
                                             roleId:[SdkUserInfoModel shareInfoModel].roleID
                                    giftBagGameCode:model.giftbagGameCode
                                         completion:^(NSDictionary * _Nullable resultDic) {

                                             [GamaUtils gamaToastWithMsg:resultDic[@"message"]];
                                             
                                             // 發送通知刷新UI，領取按鈕文字改變和不可點擊
                                             if ([resultDic[@"code"] integerValue] == 1000) {
                                                 [self changeColletionDataSourceWithIndex:indexPath];
                                             }
                                             
                                         }];
        }
            break;
        
        case deleteMsgBtnTag:
        {
            GamaEmailModel *model = tableDataSource[curSelectedItemIdx.row];
            [GamaPlatformRequestor removeEmailMsgWithUid:[SdkUserInfoModel shareInfoModel].userId
                                             messageId:model.messageId
                                            completion:^(NSDictionary * _Nullable resultDic) {

                                                if ([resultDic[@"code"] integerValue] == 1000) {
                                                    // 本二級頁面消失
                                                    [[NSNotificationCenter defaultCenter] postNotificationName:NOTI_TOPBAR_BACK object:nil];
                                                    
                                                    // 數據源清除該條
                                                    [tableDataSource removeObjectAtIndex:curSelectedItemIdx.row];
                                                    
                                                    // table reload
                                                    [m_table reloadData];
                                                }
                                            }];
        }
            break;
            
        default:
            break;
    }
}

- (void)changeColletionDataSourceWithIndex:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [m_collectionView cellForItemAtIndexPath:indexPath];
    UIButton *clickBtn = (UIButton *)[cell viewWithTag:rewardGetBtnTag];
    [clickBtn setTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_RECEIVE") forState:0]; // 已領取
    clickBtn.userInteractionEnabled = NO;
    clickBtn.backgroundColor = [UIColor grayColor];
}

#pragma mark - 上拉加载更多

- (void)loadMoreAction
{
    if (m_item == FloatItems_Info) {
        infoPageNum++;
        
        [GamaPlatformRequestor fetchItemInfoWithPageNum:infoPageNum completion:^(NSArray * _Nullable items) {
            if (items.count > 0) {
                for (NSDictionary *dic in items) {
                    [tableDataSource addObject:dic];
                }
                [m_table reloadData];
                [m_table.mj_footer endRefreshing];
            } else {
                [m_table.mj_footer endRefreshingWithNoMoreData];
            }
        }];
    }
    else if (m_item == FloatItems_Email) {
        emailPageNum++;
        [GamaPlatformRequestor fetchItemEmailWithPageNum:emailPageNum completion:^(NSDictionary * _Nullable resultDic) {
            NSArray *dataArr = resultDic[@"data"];
            if (dataArr.count > 0) {
                for (NSDictionary *dic in dataArr) {
                    GamaEmailModel *model = [[GamaEmailModel alloc] initWithDic:dic];
                    [tableDataSource addObject:model];
                }
                [m_table reloadData];
                [m_table.mj_footer endRefreshing];
            } else {
                [m_table.mj_footer endRefreshingWithNoMoreData];
            }
        }];
    }   
}

#pragma mark - 通知

- (void)_notiAction:(NSNotification *)note
{
    NSString *noteName = note.name;
    if ([noteName isEqualToString:NOTI_TOPBAR_BACK]) {
        WKWebView *webView = (WKWebView *)[self viewWithTag:kSecondDirWebViewTag];
        [webView removeFromSuperview];
        
        // back btn
        UIButton *backBtn = (UIButton *)[self.superview.superview.superview viewWithTag:backBtnTag];
        backBtn.hidden = YES;
        
        // 刪除按鈕清除
        [(UIButton *)[self viewWithTag:deleteMsgBtnTag] removeFromSuperview];
        
        // reload data
        [m_table reloadData];
    }
}

#pragma mark - UI WebView Delegate

- (void)webViewDidStartLoad:(WKWebView *)webView
{
    [GamaUtils gamaStarLoadingAtView:webView];
}

- (void)webViewDidFinishLoad:(WKWebView *)webView
{
    [GamaUtils gamaStopLoadingAtView:webView];
}

- (void)webView:(WKWebView *)webView didFailLoadWithError:(NSError *)error
{
    [GamaUtils gamaStopLoadingAtView:webView];
}

@end
