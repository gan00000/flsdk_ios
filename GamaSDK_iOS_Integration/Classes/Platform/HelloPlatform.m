//
//  HelloPlatform.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/5.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "HelloPlatform.h"
#import "HelloHeader.h"
#import "HelloPlatformConstant.h"

#import "UIImageView+WebCache.h"
#import "MJRefresh.h"

#define defaultTitle SDKConReaderGetLocalizedString(@"TXT_INFORMATION")


static int serialPage = 1;
static BOOL needToTransform_ = NO;

@implementation HelloPlatform
{
    CGFloat baseWidth;
    CGFloat baseHeight;
    CGFloat topbarWidth;
    CGFloat topbarHeight;
    CGFloat realContentWidth;
    CGFloat realContentHeight;
    
    UIView *m_contentView;
    UIView *m_floatView;
    UIView *items_view;
    UIView *topbar;
    UIView *realContent;
    
    UIButton *float_push_btn;
    UIButton *float_right_btn;
    
    NSMutableArray *m_serialTableDataSource;
    
    UITableView *m_serialTable;
    UICollectionView *itemsCollection;
    
    NSIndexPath *curSelectedItemIdx;
    
    FloatItems m_item;
    SecondPartMode m_secondMode;
}
@synthesize pfItemDataSource;

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame floatData:(NSMutableArray *)dataSource
{
    self = [super initWithFrame:frame];
    if (self) {
        needToTransform_ = NO;
        m_item = FloatItems_Info;// 初次进来显示banner
        m_secondMode = SecondPartMode_Banner;// default banner
        
        self.pfItemDataSource = dataSource;
        
        [self _dataSourceInit];
        [self _baseCriterion];
        [self _setup];
        
        [self _registerNotiListen];
    }
    
    return self;
}

- (void)_registerNotiListen
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_notiAction:) name:NOTI_TOPBAR_BACK object:nil];
}

- (void)_notiAction:(NSNotification *)note
{
    NSString *noteName = note.name;
    if ([noteName isEqualToString:NOTI_TOPBAR_BACK]) {
        m_serialTable ? [m_serialTable removeFromSuperview] : nil;
        
        SecondPartContentView *secondView = (SecondPartContentView *)[realContent viewWithTag:secondContentViewTag];
        secondView.hidden = NO;
        
        [m_serialTable removeFromSuperview];
        
        // 修改title
        [self _reFillTopbar];
    }
}

#pragma mark - Private Method
- (void)_dataSourceInit
{
    m_serialTableDataSource = [[NSMutableArray alloc] init];
    
    // 获取平台用户信息，以便账号管理时不再请求数据
    [GamaPlatformRequestor fetchUserBindInfo:^(NSDictionary * _Nullable resultDic) {
        NSString *code = resultDic[@"code"];
        if (code.integerValue == 1000) {
            [GamaPlatformUserShareData sharePlatUser].isObtainUserInfo = YES;
            [GamaPlatformUserShareData sharePlatUser].name              = resultDic[@"name"];
            [GamaPlatformUserShareData sharePlatUser].telephone         = resultDic[@"telephone"];
            [GamaPlatformUserShareData sharePlatUser].email             = resultDic[@"email"];
            [GamaPlatformUserShareData sharePlatUser].registPlatform    = resultDic[@"registPlatform"];
        }
    }];
    
    // 获取用户绑定手机后是否领取了绑定手机奖励
    [GamaPlatformRequestor isUserCanReceivePhoneBindGift:^(NSDictionary * _Nullable resultDic) {
        if ([resultDic[@"code"] integerValue] == 1000) {
            [GamaPlatformUserShareData sharePlatUser].isObtainBindPhoneInfo = YES;
            [GamaPlatformUserShareData sharePlatUser].isReceive = resultDic[@"data"][@"isReceive"];
            [GamaPlatformUserShareData sharePlatUser].serial = resultDic[@"data"][@"serial"];
            [GamaPlatformUserShareData sharePlatUser].rewardName = resultDic[@"data"][@"rewardName"];
        }
    }];
}

#pragma mark - Size
- (void)_baseCriterion
{
    baseWidth = [ViewCalculationCriteria shareCriteria].calWidth;
    baseHeight = [ViewCalculationCriteria shareCriteria].calHeight;
}
#pragma mark - Component
- (void)_setup
{
    // frame
    [self setFrame:CGRectMake(0, 0, baseWidth, baseHeight)];
    self.backgroundColor = [UIColor clearColor];
    self.center = [ViewCalculationCriteria shareCriteria].calCenter;
    self.layer.masksToBounds = YES;
    
    // content view
    [self _contentView];
    
    // left float view
    [self _floatView];
    
    // right folat view
    [self _rightFloatView];
}

#pragma mark - content view
- (void)_contentView
{
    m_contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    m_contentView.backgroundColor = [UIColor clearColor];
    [self addSubview:m_contentView];
    
    // bg
    UIImageView *bgView = [[UIImageView alloc] initWithImage:GetPfImage(pltf_bg)];
    bgView.userInteractionEnabled = YES;
    [bgView setFrame:m_contentView.frame];
    [m_contentView addSubview:bgView];
    [bgView release];
    
    CGFloat oncalH = [ViewCalculationCriteria shareCriteria].calHeight;
    
    // topbar
    topbar = [[UIView alloc] init];
    topbar.backgroundColor = [UIColor clearColor];
    topbar.tag = topbarTag;
    [bgView addSubview:topbar];
    topbarWidth = bgView.frame.size.width-20;
    topbarHeight =  80.0f/bgOriginHeight*oncalH;
    [topbar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(0));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(topbarWidth));
        make.height.equalTo(@(topbarHeight));
    }];
    [self _fillTopbar];
    
    // content
    realContent = [[UIView alloc] initWithFrame:CGRectZero];
    realContent.backgroundColor = [UIColor clearColor];
    [bgView addSubview:realContent];
    realContentWidth = topbarWidth;
    realContentHeight = bgView.frame.size.height - topbarHeight - 3;
    [realContent mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(topbar.mas_bottom);
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(realContentWidth));
        make.height.equalTo(@(realContentHeight));
    }];
    [self _fillRealContent];
    
}

- (void)_fillTopbar
{
    CGFloat btnWidth = 60.0f/bgOriginWidth*[ViewCalculationCriteria shareCriteria].calWidth;
    
    // text lable
    UILabel *titleLB = [[UILabel alloc] initWithFrame:CGRectZero];
    titleLB.textColor = [UIColor whiteColor];
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.text = defaultTitle;
    titleLB.tag = topbarTitleLabelTag;
    [topbar addSubview:titleLB];
    [titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        make.left.equalTo(@(0));
        make.width.equalTo(@(topbarWidth));
        make.height.equalTo(@(btnWidth));
    }];
    
    
    // back btn
    UIButton *backBtn = [GamaUtils initBtnWithNormalImage:pltf_btn_back highlightedImage:nil tag:backBtnTag selector:@selector(_btnActions:) target:self];
    [backBtn setImage:GetPfImage(pltf_btn_back) forState:0];
    backBtn.hidden = YES;// more初级页面不显示，二级页面才显示
    [topbar addSubview:backBtn];
    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(30.0f/bgOriginWidth*[ViewCalculationCriteria shareCriteria].calWidth));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(btnWidth));
        make.height.equalTo(@(btnWidth));
    }];
    
    // close btn
    UIButton *closeBtn = [GamaUtils initBtnWithNormalImage:pltf_btn_close highlightedImage:nil tag:closeBtnTag selector:@selector(_btnActions:) target:self];
    [closeBtn setImage:GetPfImage(pltf_btn_close) forState:0];
    [topbar addSubview:closeBtn];
    [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(btnWidth));
        make.height.equalTo(@(btnWidth));
    }];
    
    // white line 2px
    UIView *whiteLine = [[UIView alloc] initWithFrame:CGRectZero];
    whiteLine.backgroundColor = [UIColor whiteColor];
    [topbar addSubview:whiteLine];
    [whiteLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(0));
        make.bottom.equalTo(@(0));
        make.width.equalTo(@(topbarWidth));
        make.height.equalTo(@(2));
    }];
}

- (void)_hideTopbar
{
    [(UIView *)[self viewWithTag: topbarTag] setHidden:YES];
}

- (void)_displayTopbar
{
    [(UIView *)[self viewWithTag: topbarTag] setHidden:NO];
}

- (void)_fillRealContent
{
    // 数据源
    GamaPlatformDataModel *model = self.pfItemDataSource[curSelectedItemIdx.row];
    
    SecondPartContentView *secondView = [[SecondPartContentView alloc] initWithFrame:CGRectMake(0, 0, realContentWidth, realContentHeight) mode:m_item dataModel:model];
    secondView.backgroundColor = [UIColor clearColor];
    secondView.tag = secondContentViewTag;
    [realContent addSubview:secondView];
}

- (void)_reFillTopbar
{
    UILabel *titleLabel = (UILabel *)[topbar viewWithTag:topbarTitleLabelTag];
    GamaPlatformDataModel *model = self.pfItemDataSource[curSelectedItemIdx.row];
    titleLabel.text = model.name;
}

- (void)_reFillRealContent
{
    // 数据源
    GamaPlatformDataModel *model = self.pfItemDataSource[curSelectedItemIdx.row];
    
    // remove last view
    UIView *sview = (UIView *)[realContent viewWithTag:secondContentViewTag];
    [sview removeFromSuperview];
    
    if (m_serialTable) {
        [m_serialTable removeFromSuperview];
    }
    
    // refill
    if (m_item == FloatItems_Pay) {
        [self _hideTopbar];
        
        SecondPartContentView *secondView = [[SecondPartContentView alloc] initWithFrame:CGRectMake(0, 0, realContentWidth, baseHeight) mode:m_item dataModel:model];
        secondView.backgroundColor = [UIColor clearColor];
        secondView.tag = secondContentViewTag;
        [realContent addSubview:secondView];
        
        if (!needToTransform_) {
            [self _transformRealContentViewToFull];
        }

        // close btn
        CGFloat btnWidth = 60.0f/bgOriginWidth*[ViewCalculationCriteria shareCriteria].calWidth;
        UIButton *closeBtn = [GamaUtils initBtnWithNormalImage:pltf_btn_close highlightedImage:nil tag:floatPaidCloseBtnTag selector:@selector(_btnActions:) target:self];
        [closeBtn setImage:GetPfImage(pltf_btn_close) forState:0];
        [self addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(10));
            make.right.equalTo(@(-10));
            make.width.equalTo(@(btnWidth));
            make.height.equalTo(@(btnWidth));
        }];
        
        return;
    }
    
    [self _displayTopbar];
    
    if (needToTransform_) {
        [self _transformRealContentViewToNormal];
    }
    
    [(UIButton *)[self viewWithTag:floatPaidCloseBtnTag] removeFromSuperview];
    
    SecondPartContentView *secondView = [[SecondPartContentView alloc] initWithFrame:CGRectMake(0, 0, realContentWidth, realContentHeight) mode:m_item dataModel:model];
    secondView.backgroundColor = [UIColor clearColor];
    secondView.tag = secondContentViewTag;
    [realContent addSubview:secondView];
}

#pragma mark - Pay与其他页面间切换
- (void)_transformRealContentViewToFull
{
    CGFloat topbarH = topbar.frame.size.height;
    [UIView animateWithDuration:0.3f
                     animations:^{
                         [realContent setFrame:CGRectMake(realContent.frame.origin.x, realContent.frame.origin.y - topbarH, realContentWidth, baseHeight)];
                     }];
    needToTransform_ = YES;
}
- (void)_transformRealContentViewToNormal
{
    CGFloat topbarH = topbar.frame.size.height;
    [UIView animateWithDuration:0.3f
                     animations:^{
                         [realContent setFrame:CGRectMake(realContent.frame.origin.x, realContent.frame.origin.y + topbarH, realContentWidth, realContentHeight)];
                     }];
    needToTransform_ = NO;
}

#pragma mark - Left Float view
- (void)_floatView
{
    CGFloat pushW = 60.0f/bgOriginWidth*[ViewCalculationCriteria shareCriteria].calWidth;
    CGFloat pushH = 103*pushW/26;//26x103
    
    m_floatView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width/4+pushW, self.frame.size.height)];
    m_floatView.backgroundColor = [UIColor clearColor];
    [self addSubview:m_floatView];
    
    // item bar
    items_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, m_floatView.frame.size.width-pushW, m_floatView.frame.size.height)];
    items_view.backgroundColor = [UIColor colorWithHexString:@"#000000" andAlpha:0.75f];
    [m_floatView addSubview:items_view];

    // put items
    [self _fillFloatItems];
    
    // move btn
    float_push_btn = [GamaUtils initBtnWithNormalImage:pltf_btn_pcak_up_float highlightedImage:nil tag:packUpBtnTag selector:@selector(_btnActions:) target:self];
    [float_push_btn setImage:GetPfImage(pltf_btn_pcak_up_float) forState:0];
    [m_floatView addSubview:float_push_btn];
    [float_push_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        make.right.equalTo(@(0));
        make.width.equalTo(@(pushW));
        make.height.equalTo(@(pushH));
    }];
    
}

- (void)_fillFloatItems
{
    // use collection view
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = layout.minimumLineSpacing = 0;
    
    itemsCollection = [[UICollectionView alloc] initWithFrame:items_view.frame collectionViewLayout:layout];
    itemsCollection.allowsMultipleSelection = YES;
    [itemsCollection setDataSource:self];
    [itemsCollection setDelegate:self];
    
    [itemsCollection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
    [itemsCollection setBackgroundColor:[UIColor clearColor]];
    [items_view addSubview:itemsCollection];
    [layout release];
    
}

#pragma mark - Right Float View
- (void)_rightFloatView
{
    CGFloat pushW = 50.0f/bgOriginWidth*[ViewCalculationCriteria shareCriteria].calWidth;
    CGFloat pushH = 103*pushW/26;//26x103
    
    float_right_btn = [GamaUtils initBtnWithNormalImage:pltf_btn_right_float highlightedImage:nil tag:rightFloatBtnTag selector:@selector(_btnActions:) target:self];
    [float_right_btn setImage:GetPfImage(pltf_btn_right_float) forState:0];
    float_right_btn.hidden = YES;
    [self addSubview:float_right_btn];
    [float_right_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@(0));
        make.right.equalTo(@(0));
        make.width.equalTo(@(pushW));
        make.height.equalTo(@(pushH));
    }];
    if ([SDKConReaderGetString(GAMA_GAME_LANGUAGE) isEqualToString:@"en"]) {
        [float_right_btn setImage:GetEnImage(pltf_btn_right_float) forState:0];
    }
}

#pragma mark - UICollectionView delegate && DataSource Action
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.pfItemDataSource count];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat itemWH = items_view.frame.size.width/2;
    return CGSizeMake(itemWH, itemWH);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_ID
                                                                           forIndexPath:indexPath];

    UIImageView *itemImage = [[[UIImageView alloc] init] autorelease];
    GamaPlatformDataModel *model = self.pfItemDataSource[indexPath.row];
    NSURL *imageUrl = [NSURL URLWithString:model.icon];
    [itemImage sd_setImageWithURL:imageUrl placeholderImage:GetPfImage(pltf_small_place_holder_bg)];
    [itemImage setFrame:CGRectMake(0, 0, items_view.frame.size.width/2, items_view.frame.size.width/2)];
    itemImage.tag = itemImageTag;
    
    // label
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, itemImage.frame.size.height-15, itemImage.frame.size.width, 10)];
    title.text = model.name;
    title.textAlignment = NSTextAlignmentCenter;
    title.textColor = [UIColor whiteColor];
    CGFloat m_fontSize = IS_IPAD ? 16:10;
    [title setFont:[UIFont fontWithName:LABEL_FONT_NAME size:m_fontSize]];
    [itemImage addSubview:title];
    
    [cell.contentView addSubview:itemImage];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(_tapAction:)];
    [cell.contentView addGestureRecognizer:tap];
    
    if (indexPath.row == 0) {
        curSelectedItemIdx = indexPath;
        [itemImage setBackgroundColor:[UIColor colorWithPatternImage:GetPfImage(pltf_item_bg)]];
    }

    return cell;
}

#pragma mark - GestureRecognizer == collectionView 点击事件
// 解决有时候点击cell无响应的情况
- (void)_tapAction:(UITapGestureRecognizer *)sender
{
    UICollectionViewCell *preCollectionCell = [itemsCollection cellForItemAtIndexPath:curSelectedItemIdx];
    UIImageView *preCellImageView = (UIImageView *)[preCollectionCell.contentView viewWithTag:itemImageTag];
    [preCellImageView setBackgroundColor:[UIColor clearColor]];
    
    CGPoint point = [sender locationInView:itemsCollection];
    NSIndexPath * indexPath = [itemsCollection indexPathForItemAtPoint:point];
    UICollectionViewCell *collectionCell = [itemsCollection cellForItemAtIndexPath:indexPath];
    UIImageView *cellImageView = (UIImageView *)[collectionCell.contentView viewWithTag:itemImageTag];
    [cellImageView setBackgroundColor:[UIColor colorWithPatternImage:GetPfImage(pltf_item_bg)]];
    curSelectedItemIdx = indexPath;
    
    // map mode
    m_item = [self mapFloatItemByIndex:curSelectedItemIdx];
    
    // refill content
    [self _reFillTopbar];
    [self _reFillRealContent];
}

#pragma mark - Btn Actions
- (void)_btnActions:(UIButton *)sender
{
    switch (sender.tag) {
        case backBtnTag:
            [[NSNotificationCenter defaultCenter] postNotificationName:NOTI_TOPBAR_BACK object:nil];
            break;
            
        case floatPaidCloseBtnTag:
        case closeBtnTag:
        {
            [self.superview removeFromSuperview];//遮罩关闭
        }
            break;
        case packUpBtnTag:
        {
            // move to left
            [UIView animateWithDuration:0.3f
                             animations:^{
                                 CGFloat w = 60.0f/bgOriginWidth*[ViewCalculationCriteria shareCriteria].calWidth;
                                 m_floatView.frame = CGRectMake(-(m_floatView.frame.size.width-w), 0, m_floatView.frame.size.width, m_floatView.frame.size.height);
                             } completion:^(BOOL finished) {
                                 [float_push_btn setImage:GetPfImage(pltf_btn_roll_out_float) forState:0];
                                 float_push_btn.tag = rollOutBtnTag;
                             }];
            
            
        }
            break;
        case rollOutBtnTag:
        {
            // move to left
            [UIView animateWithDuration:0.3f
                             animations:^{
                                 m_floatView.frame = CGRectMake(0, 0, m_floatView.frame.size.width, m_floatView.frame.size.height);
                             } completion:^(BOOL finished) {
                                 [float_push_btn setImage:GetPfImage(pltf_btn_pcak_up_float) forState:0];
                                 float_push_btn.tag = packUpBtnTag;
                             }];
            
            
        }
            break;
        case rightFloatBtnTag:
        {
            UILabel *titleLabel = (UILabel *)[topbar viewWithTag:topbarTitleLabelTag];
            if (![titleLabel.text isEqualToString:SDKConReaderGetLocalizedString(@"TXT_TITLE_MY_SERIAL_NUM")]) {
                [self _openMineSerialNumber];
            }
        }
            break;
        default:
            break;
    }
}

- (void)_openMineSerialNumber
{
    serialPage = 1;
    // request 显示个人礼包领取记录
    [GamaPlatformRequestor giftRecordsWithUid:[SdkUserInfoModel shareInfoModel].userId
                                    pageNum:serialPage
                                 completion:^(NSDictionary * _Nullable resultDic) {
                                     
                                     if ([resultDic[@"code"] integerValue] == 1000 ) {
                                         // 分开判断，因为服务端查询时，没有记录时也是返回1000，成功
                                         if ([resultDic[@"data"] count] > 0) {
                                             // change title
                                             UILabel *titleLabel = (UILabel *)[topbar viewWithTag:topbarTitleLabelTag];
                                             titleLabel.text = SDKConReaderGetLocalizedString(@"TXT_TITLE_MY_SERIAL_NUM");
                                             
                                             // back btn
                                             UIButton *backBtn = (UIButton *)[self viewWithTag:backBtnTag];
                                             backBtn.hidden = NO;
                                             
                                             [m_serialTableDataSource removeAllObjects];
                                             
                                             for (NSDictionary *dic in resultDic[@"data"]) {
                                                 GamaSerialModel *model = [[GamaSerialModel alloc] initWithDic:dic];
                                                 [m_serialTableDataSource addObject:model];
                                             }
                                             
                                             [self _createSerialTable];
                                         }
                                         else {
                                             [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_NOT_DATA")];
                                         }
                                     }
                                     else {
                                         [GamaUtils gamaToastWithMsg:resultDic[@"message"]];
                                     }
                                     
                                 }];
}

- (void)_createSerialTable
{
    SecondPartContentView *secondView = (SecondPartContentView *)[realContent viewWithTag:secondContentViewTag];
    secondView.hidden = YES;
    
    
    m_serialTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, realContent.frame.size.width, realContent.frame.size.height) style:UITableViewStylePlain];
    m_serialTable.delegate = self;
    m_serialTable.dataSource = self;
    m_serialTable.rowHeight = 40.0f;
    [m_serialTable setBackgroundColor:[UIColor clearColor]];
    m_serialTable.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadModeSerialData)];
    [realContent addSubview:m_serialTable];
}
- (void)loadModeSerialData
{
    serialPage++;
    [GamaPlatformRequestor giftRecordsWithUid:[SdkUserInfoModel shareInfoModel].userId
                                    pageNum:serialPage
                                 completion:^(NSDictionary * _Nullable resultDic) {
                                     if ([resultDic[@"code"] integerValue] == 1000 && [resultDic[@"data"] count] > 0)  {
                                         for (NSDictionary *dic in resultDic[@"data"]) {
                                             GamaSerialModel *model = [[GamaSerialModel alloc] initWithDic:dic];
                                             [m_serialTableDataSource addObject:model];
                                         }
                                         [m_serialTable reloadData];
                                         [m_serialTable.mj_footer endRefreshing];
                                     } else {
                                         [m_serialTable.mj_footer endRefreshingWithNoMoreData];
                                     }
                                 }];
}

#pragma mark - Serial Tabel View Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return m_serialTableDataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tCellIdentifier = @"serialTableCellID";
    
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:tCellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:tCellIdentifier] autorelease];
        
        // 礼包名字及内容
        UIView *contentV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width/3, tableView.rowHeight)];
        contentV.tag = 54200;
        [cell.contentView addSubview:contentV];
        [contentV release];
        
        UILabel *giftNameLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, contentV.frame.size.width, contentV.frame.size.height/2)];
        giftNameLB.tag = 54300;
        giftNameLB.textAlignment = NSTextAlignmentLeft;
        [giftNameLB setFont:[UIFont fontWithName:LABEL_FONT_NAME size:constant_labelSize]];
        giftNameLB.textColor = [UIColor whiteColor];
        [contentV addSubview:giftNameLB];
        UILabel *giftContentLB = [[UILabel alloc] initWithFrame:CGRectMake(0, contentV.frame.size.height/2, contentV.frame.size.width, contentV.frame.size.height/2)];
        giftContentLB.tag = 54301;
        giftContentLB.textAlignment = NSTextAlignmentLeft;
        giftContentLB.textColor = [UIColor whiteColor];
        [giftContentLB setFont:[UIFont fontWithName:LABEL_FONT_NAME size:constant_labelSize]];
        [contentV addSubview:giftContentLB];
        [giftContentLB release];
        // 序号
        UILabel *serialLabel = [[UILabel alloc] initWithFrame:CGRectMake(tableView.frame.size.width/3, 0, tableView.frame.size.width/3, tableView.rowHeight)];
        serialLabel.tag = 54201;
        serialLabel.textAlignment = NSTextAlignmentCenter;
        [serialLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME size:constant_labelSize]];
        serialLabel.textColor = [UIColor whiteColor];
        [cell.contentView addSubview:serialLabel];
        [serialLabel release];
        // 日期
        UILabel *dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(tableView.frame.size.width/3*2, 0, tableView.frame.size.width/3, tableView.rowHeight)];
        dateLabel.tag = 54202;
        dateLabel.textAlignment = NSTextAlignmentRight;
        [dateLabel setFont:[UIFont fontWithName:LABEL_FONT_NAME size:constant_labelSize]];
        dateLabel.textColor = [UIColor whiteColor];
        [cell.contentView addSubview:dateLabel];
        [dateLabel release];
        
    }
    
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // model
    GamaSerialModel *model = m_serialTableDataSource[indexPath.row];
    
    UILabel *giftNameLB = (UILabel *)[cell viewWithTag:54300];
    giftNameLB.text = model.title;
    
    UILabel *giftContentLB = (UILabel *)[cell viewWithTag:54301];
    giftContentLB.text = model.rewardName;
    
    UILabel *serialLabel = (UILabel *)[cell viewWithTag:54201];
    serialLabel.text = [NSString stringWithFormat:@"%@:%@",SDKConReaderGetLocalizedString(@"TXT_SERIAL"),model.giftbag];
    
    UILabel *dateLabel = (UILabel *)[cell viewWithTag:54202];
    dateLabel.text = model.time;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    GamaSerialModel *model = m_serialTableDataSource[indexPath.row];
    NSString *toastStr = [NSString stringWithFormat:@"%@ %@ %@",SDKConReaderGetLocalizedString(@"TXT_SERIAL"),model.giftbag,SDKConReaderGetLocalizedString(@"TXT_HAD_COPY")];
    // 同時複製序列號
    [GamaUtils gamaToastWithMsg:toastStr];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = model.giftbag;
}

//- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
//{
//    UITableView *collectionView = (UITableView *)scrollView;
//    CGPoint contentOffsetPoint = collectionView.contentOffset;
//    CGRect frame = collectionView.frame;
//    if ((contentOffsetPoint.y >= collectionView.contentSize.height - frame.size.height || collectionView.contentSize.height < frame.size.height))
//    {
//        [self loadModeSerialData];
//    }
//}


#pragma mark - Map Item And Content
- (FloatItems)mapFloatItemByIndex:(NSIndexPath *)indexPath
{
    FloatItems item = 0;
    int row = indexPath.row;
    GamaPlatformDataModel *model = self.pfItemDataSource[row];
    NSString *itemId = model.itemId;
    
    BOOL isHideRightFloat = YES;
    
    if ([itemId isEqualToString:kPFItem_News]) {
        item = FloatItems_Info;
    }
    else if ([itemId isEqualToString:kPFItem_Bind]) {
        item = FloatItems_BindReward;
    }
    else if ([itemId isEqualToString:kPFItem_Account]) {
        item = FloatItems_AccountManage;
    }
    else if ([itemId isEqualToString:kPFItem_Store]) {
        item = FloatItems_Pay;
    }
    else if ([itemId isEqualToString:kPFItem_MailBox]) {
        item = FloatItems_Email;
    }
    else if ([itemId isEqualToString:kPFItem_GiftCenter]) {
        item = FloatItems_RewardCenter;
        isHideRightFloat = NO;
    }
    else {
        item = FloatItems_Unknow;
    }
    
    float_right_btn.hidden = isHideRightFloat;
    
    return item;
}

- (void)dealloc
{
    [m_contentView release]; m_contentView = nil;
    [super dealloc];
}
@end
