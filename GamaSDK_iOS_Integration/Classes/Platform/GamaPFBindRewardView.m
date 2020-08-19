//
//  GamaPlatformBindRewardView.m
//  GamaSDK_iOS
//
//  Created by sunn on 2017/8/16.
//  Copyright © 2017年 starpy. All rights reserved.
//

#import "GamaPFBindRewardView.h"
#import "HelloPlatformConstant.h"
#import "GamaUtils.h"

#define seperateLineWidth   1.0f
#define kPhoneViewTag       232323
#define kVertifyCodeViewTag       232324
#define kTipsTag       232325

static NSInteger m_cdTime = 59.0f;

@implementation GamaPFBindRewardView
{
    NSMutableArray *zonePickDataSource;
    NSMutableArray *m_reginRegSource;
    
    UIView *bgOfPick;
    
    NSString *tmpText;
    
    NSInteger curIdx;
    
    UIButton *pickBtn;
    UIButton *receiveGiftBtn;
    UIButton *cfBtn;
    
    UITextField *phoneInput;
    UITextField *codeInput;
    
    // 输入时键盘相关
    CGFloat keyboarHeight;
    CGFloat animatedDistance;
    // Get the duration of the animation.
    NSTimeInterval animationDuration;
    
    // 尺寸
    CGFloat onCalWidth ;
    CGFloat onCalHeight ;
    CGFloat tfWidthOfBgWight ;
    CGFloat tfHeightOfHeight ;
    CGFloat gapDistant ;
    
    // 信息相关
    BOOL m_hadBindPhone;
    BOOL m_hadReceiveBindPhoneGift;
    NSString *m_bindPhone;
    NSString *m_curAccount;
    
    NSString *m_receivedPhoneBindSerialNum;
    NSString *m_phoneBindRewardName;
    
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self _basePropetyInit];
        
        [self _registerNotification];
        
        [self _fetchBaseInfo];
    }
    return self;
}

- (void)_basePropetyInit
{
    onCalWidth = [ViewCalculationCriteria shareCriteria].calWidth;
    onCalHeight = [ViewCalculationCriteria shareCriteria].calHeight;
    
    tfWidthOfBgWight = 773.0f/bgOriginWidth;
    tfHeightOfHeight = 80.0f/bgOriginHeight;
    gapDistant = 20.0f/bgOriginHeight * onCalHeight;
    
    zonePickDataSource = [[NSMutableArray alloc] init];
    m_reginRegSource = [[NSMutableArray alloc] init];
    
    m_hadBindPhone = NO;
    m_hadReceiveBindPhoneGift = NO;
}

- (void)_registerNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:UIKeyboardWillShowNotification object:nil];
}

- (void)_noteLisetner:(NSNotification *)note
{
    if ([note.name isEqualToString:UIKeyboardWillShowNotification]) {
        NSDictionary *userInfo = note.userInfo;
        NSValue *aValue = userInfo[UIKeyboardFrameEndUserInfoKey];
        CGRect keyboardRect = [aValue CGRectValue];
        keyboarHeight = keyboardRect.size.height;
        
        // Get the duration of the animation.
        NSValue *animationDurationValue = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
        [animationDurationValue getValue:&animationDuration];
    }
}

- (void)_fetchBaseInfo
{
    // 获取地区区号和正则
    [GamaPlatformRequestor fetchRegionNumAndRegularRule:^(NSDictionary * _Nullable resultDic) {
        if ([resultDic[@"code"] intValue] == 1000 && [resultDic[@"data"] count] > 0) {
            [m_reginRegSource removeAllObjects];
            [zonePickDataSource removeAllObjects];
            for (NSDictionary *dic in resultDic[@"data"]) {
                GamaReginRegularModel *model = [[GamaReginRegularModel alloc] initWithDic:dic];
                [m_reginRegSource addObject:model];
                [zonePickDataSource addObject:[NSString stringWithFormat:@"+%@",model.code]];
                [model release];
            }
        }
    }];
    
    // 根据已获取到的平台用户信息展示页面
    if([GamaPlatformUserShareData sharePlatUser].isObtainUserInfo) {
        NSString *name              = [GamaPlatformUserShareData sharePlatUser].name;
        NSString *telephone         = [GamaPlatformUserShareData sharePlatUser].telephone;
        NSString *registPlatform    = [GamaPlatformUserShareData sharePlatUser].registPlatform;
        
        if (name && ![name isEqualToString:@""]) {
            m_curAccount = name.copy;
        } else {
            // non starpy account
            if (registPlatform && ![registPlatform isEqualToString:@""]) {
                
                if ([registPlatform isEqualToString:_SDK_PLAT_FB]) {
                    m_curAccount = @"Facebook";
                } else if ([registPlatform isEqualToString:_SDK_PLAT_GC]) {
                    m_curAccount = @"GameCenter";
                } else if ([registPlatform isEqualToString:@"unique"]) {
                    m_curAccount = @"Guest";
                } else {
                    m_curAccount = @"Unkown";
                }
            }
        }
        
        if (telephone && ![telephone isEqualToString:@""]) {
            // had bind phone
            m_hadBindPhone = YES;
            m_bindPhone = telephone.copy;
        }
        
        if ([GamaPlatformUserShareData sharePlatUser].isObtainBindPhoneInfo) {
            m_hadReceiveBindPhoneGift = [[GamaPlatformUserShareData sharePlatUser].isReceive boolValue];
            m_phoneBindRewardName = [[GamaPlatformUserShareData sharePlatUser].rewardName copy];
        }
        
        [self customInit];
    }

}

#pragma mark - 界面初始化

- (void)customInit
{
    self.userInteractionEnabled = YES;
    
    CGFloat topPadding = 0;
    CGFloat inputTextheight = 30;
    // account , request
    UILabel *account = [[UILabel alloc] initWithFrame:CGRectZero];
    account.backgroundColor = [UIColor clearColor];
    account.textColor = [UIColor whiteColor];
    account.text = [NSString stringWithFormat:@"%@: %@",SDKConReaderGetLocalizedString(@"TXT_ACCOUNT"),m_curAccount];;
    account.textAlignment = NSTextAlignmentLeft;
    [self addSubview:account];

    [account mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    
    if (m_hadBindPhone) {
        topPadding += tfHeightOfHeight*onCalHeight;
        // 仅显示手机信息
        UILabel *phoneLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        phoneLabel.backgroundColor = [UIColor clearColor];
        phoneLabel.textAlignment = NSTextAlignmentLeft;
        phoneLabel.text = [NSString stringWithFormat:@"%@: %@",SDKConReaderGetLocalizedString(@"TXT_BIND_PHONE"),m_bindPhone];
        phoneLabel.textColor = [UIColor whiteColor];
        [self addSubview:phoneLabel];
        [phoneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
            make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
        }];
        
        topPadding += tfHeightOfHeight*onCalHeight;
        NSString * titleOfBindPhoneBtn = m_hadReceiveBindPhoneGift ? SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_RECEIVE") : SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_CLICK_TO_RECEIVE");
        receiveGiftBtn = [GamaUtils initBtnWithTitle:titleOfBindPhoneBtn tag:BindReward_Req_ReceiveBindPhoneGiftBtn_Tag selector:@selector(btnAction:) target:self];
        [receiveGiftBtn.layer setBorderColor:[UIColor clearColor].CGColor];
        [receiveGiftBtn.layer setBorderWidth:0.0f];
        [receiveGiftBtn.layer setMasksToBounds:YES];
        [receiveGiftBtn.layer setCornerRadius:0.0f];
        [receiveGiftBtn setTitleColor:[UIColor whiteColor] forState:0];
        [receiveGiftBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
        [self addSubview:receiveGiftBtn];

        CGSize bindBtnSize = [GamaUtils calculateSizeOfLabel:receiveGiftBtn.titleLabel];
        [receiveGiftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.left.equalTo(phoneLabel);// 与某个控件左边距相同
            make.width.equalTo(@(bindBtnSize.width+10));
            make.height.equalTo(@(bindBtnSize.height));
        }];
        if (m_hadReceiveBindPhoneGift) {
            receiveGiftBtn.enabled = NO;
            receiveGiftBtn.backgroundColor = [UIColor lightGrayColor];
        }

        // gift tips
        topPadding += receiveGiftBtn.frame.size.height+gapDistant*3;
        UILabel *tips = [[UILabel alloc] initWithFrame:CGRectZero];
        tips.backgroundColor = [UIColor clearColor];
        tips.textColor = [UIColor whiteColor];
        tips.text = m_phoneBindRewardName;
        tips.font = [UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:14];
        [self addSubview:tips];
        tips.numberOfLines = 0;//表示label可以多行显示
        CGSize tipsSize = [GamaUtils calculateSizeOfLabel:tips andWidth:tfWidthOfBgWight*onCalWidth];
        [tips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            make.height.equalTo(@(ceil( tipsSize.height) + 1)); // 为取值准确 多加 1
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        }];

        
    }
    else {
        
        // tel num  , select
        topPadding += tfHeightOfHeight*onCalHeight;
        UIView *phoneView = [[UIView alloc] initWithFrame:CGRectZero];
        phoneView.backgroundColor = [UIColor whiteColor];
        phoneView.layer.cornerRadius = 5.0f;
        phoneView.tag = kPhoneViewTag;
        [self addSubview:phoneView];
        
        [phoneView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
            make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
        }];
        
        // pick btn
        pickBtn = [GamaUtils initBtnWithTitle:@"+886" tag:pickBtnTag selector:@selector(btnAction:) target:self];
        [pickBtn.layer setCornerRadius:0.0f];
        [pickBtn.layer setBorderWidth:0.0f];
        [pickBtn.layer setBorderColor:[UIColor clearColor].CGColor];
        [pickBtn setTitleColor:[UIColor colorWithHexString:kTextColor] forState:0];
        [phoneView addSubview:pickBtn];
        [pickBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(0));
            make.bottom.equalTo(@(0));
            make.right.equalTo(@(-tfWidthOfBgWight*onCalWidth*0.8));
            
        }];
        // seperate line
        UILabel *seperateLine = [self _createSeperateLine];
        [phoneView addSubview:seperateLine];
        [seperateLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(@(0));
            make.left.equalTo(@(tfWidthOfBgWight*onCalWidth*0.2));
            make.width.equalTo(@(seperateLineWidth));
            make.height.equalTo(@(inputTextheight-10));
        }];
        
        // text input
        phoneInput = [[UITextField alloc] initWithFrame:CGRectZero];
        phoneInput.placeholder = strPlaceHolderPhoneNum;
        [GamaUtils makeTextFieldPlaceHolderProperty:phoneInput];
        phoneInput.returnKeyType = UIReturnKeyNext;
        phoneInput.delegate = self;
        [phoneView addSubview:phoneInput];
        [phoneInput mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(tfWidthOfBgWight*onCalWidth*0.2+5));
            make.bottom.equalTo(@(0));
            make.right.equalTo(@(0));
        }];
        
        topPadding += tfHeightOfHeight*onCalHeight + gapDistant;
        // vertify code , btn
        UIView *vertifyCodeView = [[UIView alloc] initWithFrame:CGRectZero];
        vertifyCodeView.backgroundColor = [UIColor whiteColor];
        vertifyCodeView.layer.cornerRadius = 5.0f;
        vertifyCodeView.tag = kVertifyCodeViewTag;
        [self addSubview:vertifyCodeView];
        
        [vertifyCodeView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            //        make.width.equalTo(@(200));
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
            make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
            //        make.height.equalTo(@(inputTextheight));
        }];
        
        // send vertify btn
        UIButton *sendVertifyBtn = [GamaUtils initBtnWithType:UIButtonTypeCustom title:strFetchVertifyCode tag:sendVertifyBtnTag selector:@selector(btnAction:) target:self];
        [sendVertifyBtn setTitle:strFetchVertifyCode forState:0];
        [sendVertifyBtn.layer setCornerRadius:0.0f];
        [sendVertifyBtn.layer setBorderWidth:0.0f];
        [sendVertifyBtn.layer setBorderColor:[UIColor clearColor].CGColor];
        [sendVertifyBtn setTitleColor:[UIColor colorWithHexString:kTextColor] forState:0];
        [vertifyCodeView addSubview:sendVertifyBtn];
        CGSize sendVertifyCodeBtnSize = [GamaUtils calculateSizeOfLabel:sendVertifyBtn.titleLabel];
        [sendVertifyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.right.equalTo(@(0));
            make.width.equalTo(@(sendVertifyCodeBtnSize.width+10));
            //        make.height.equalTo(@(sendVertifyCodeBtnSize.height));
            make.bottom.equalTo(@(0));
        }];
        // input
        codeInput = [[UITextField alloc] initWithFrame:CGRectZero];
        codeInput.placeholder = strPlaceHolderVertifyCode;
        [GamaUtils makeTextFieldPlaceHolderProperty:codeInput];
        //    codeInput.initDistance = 5.0f;
        codeInput.returnKeyType = UIReturnKeyDone;
        codeInput.delegate = self;
        [vertifyCodeView addSubview:codeInput];
        [codeInput mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(0));
            make.left.equalTo(@(5));
            make.bottom.equalTo(@(0));
            make.right.equalTo(@(-(sendVertifyCodeBtnSize.width + 10)));
        }];
        // seperate line
        UILabel *codeSeperateLine = [self _createSeperateLine];
        [vertifyCodeView addSubview:codeSeperateLine];
        [codeSeperateLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(@(0));
            make.right.equalTo(@(-(sendVertifyCodeBtnSize.width + 12)));
            make.width.equalTo(@(seperateLineWidth));
            make.height.equalTo(@(inputTextheight-10));
        }];
        
        // comfirm btn
        topPadding += tfHeightOfHeight*onCalHeight + gapDistant;
        cfBtn = [GamaUtils initBtnWithTitle:strBindConfirm tag:comfirmBindBtnTag selector:@selector(btnAction:) target:self];
        [cfBtn.layer setCornerRadius:5.0f];
        [cfBtn.layer setBorderWidth:1.0f];
        [cfBtn.layer setBorderColor:[UIColor whiteColor].CGColor];
        [cfBtn setTitleColor:[UIColor whiteColor] forState:0];
        [cfBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
        [self addSubview:cfBtn];
        
        //    CGSize cfBtnSize = [HelloUtils calculateSizeOfLabel:cfBtn.titleLabel];
        [cfBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
            make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
        }];
        
        
        // gift tips
        topPadding += tfHeightOfHeight*onCalHeight+gapDistant;
        UILabel *tips = [[UILabel alloc] initWithFrame:CGRectZero];
        tips.backgroundColor = [UIColor clearColor];
        tips.textColor = [UIColor whiteColor];
        tips.text = m_phoneBindRewardName;
        tips.font = [UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:14];
        tips.tag = kTipsTag;
        [self addSubview:tips];
        tips.numberOfLines = 0;//表示label可以多行显示
        CGSize tipsSize = [GamaUtils calculateSizeOfLabel:tips andWidth:tfWidthOfBgWight*onCalWidth];
        [tips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            make.height.equalTo(@(ceil( tipsSize.height) + 1)); // 为取值准确 多加 1
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        }];
    }
}

- (void)btnAction:(UIButton *)sender
{
    switch (sender.tag) {
        case sendVertifyBtnTag:
        {
            [self req_sendVertify:sender];
        }
            break;
        case comfirmBindBtnTag:
        {
            [self req_bindAccount];
        }
            break;
        case pickBtnTag:
        {
            [self _showNumPickView];
        }
            break;
        case pickViewCancelBtnTag:
        {
            [[bgOfPick superview] removeFromSuperview];
        }
            break;
        case pickViewComfirmBtnTag:
        {
            [pickBtn setTitle:tmpText forState:0];
            [[bgOfPick superview] removeFromSuperview];
        }
            break;
        case BindReward_Req_ReceiveBindPhoneGiftBtn_Tag:
        {
            NSString *uid = [SdkUserInfoModel shareInfoModel].userId;
            NSString *serverCode = [SdkUserInfoModel shareInfoModel].serverCode;
            NSString *roleId = [SdkUserInfoModel shareInfoModel].roleID;
            
            [GamaPlatformRequestor receivePhoneBindGiftWithUid:uid
                                                  serverCode:serverCode
                                                      roleId:roleId
                                                  completion:^(NSDictionary * _Nullable resultDic) {
                                                      // code data message
                                                      [GamaUtils gamaToastWithMsg:resultDic[@"message"]];
                                                      
                                                      if ([resultDic[@"code"] integerValue] == 1000) {
                                                          // 修改按钮状态
                                                          receiveGiftBtn.enabled = NO;
                                                          [receiveGiftBtn setTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_RECEIVE") forState:0];
                                                          receiveGiftBtn.backgroundColor = [UIColor lightGrayColor];
                                                          [GamaPlatformUserShareData sharePlatUser].isReceive = @"1";
                                                      }
                                                  }];
        }
            break;
    
        default:
            break;
    }
}

- (void)_showNumPickView
{
    UIWindow * rootView = [UIApplication sharedApplication].windows[0];
    
    // 遮罩
    UIView *bgView = [[UIView alloc] initWithFrame:rootView.frame];
    bgView.backgroundColor = [UIColor colorWithHexString:@"#3C3C3C" andAlpha:kBtnBgAlpha];
    [rootView addSubview:bgView];
    // tap
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureActions:)];
    [bgView addGestureRecognizer:tap];
    tap.delegate = self;
    
    CGFloat pickViewH = 300.0f/bgOriginHeight*[ViewCalculationCriteria shareCriteria].calHeight;
    CGFloat toolbarViewH = 60.0f/bgOriginHeight*[ViewCalculationCriteria shareCriteria].calHeight;
    
    bgOfPick = [[UIView alloc] initWithFrame:CGRectMake(0, rootView.frame.size.height-pickViewH, rootView.frame.size.width, pickViewH)];
    bgOfPick.backgroundColor = [UIColor clearColor];
    [bgView addSubview:bgOfPick];
    
    UIToolbar   *pickerDateToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, rootView.frame.size.width, toolbarViewH)];
    pickerDateToolbar.barStyle = UIBarStyleDefault;//UIBarStyleBlackOpaque;
    
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    
    // cancel btn
    UIBarButtonItem *cancelBtn = [[UIBarButtonItem alloc] initWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_TXT_CANCEL") style:UIBarButtonItemStyleBordered target:self action:@selector(btnAction:)];
    cancelBtn.tag = pickViewCancelBtnTag;
    [barItems addObject:cancelBtn];
    [cancelBtn release];
    
    //
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    [barItems addObject:flexSpace];
    [flexSpace release];
    
    // done btn
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_COMFIRM") style:UIBarButtonItemStyleDone target:self action:@selector(btnAction:)];
    doneBtn.tag = pickViewComfirmBtnTag;
    [barItems addObject:doneBtn];
    [doneBtn release];
    
    [pickerDateToolbar setItems:barItems animated:YES];
    [bgOfPick addSubview:pickerDateToolbar];
    [pickerDateToolbar release];
    
    // 显示在最上层
    UIPickerView *zonePick = [[UIPickerView alloc] initWithFrame:CGRectMake(0, toolbarViewH, rootView.frame.size.width, pickViewH-toolbarViewH)];
    zonePick.backgroundColor = [UIColor lightGrayColor];
    zonePick.delegate = self;
    zonePick.dataSource = self;
    // set default
    NSInteger defRow = 0;
    [zonePick selectRow:defRow inComponent:0 animated:YES];
    tmpText = zonePickDataSource[defRow];
    curIdx = defRow;
    
    [bgOfPick addSubview:zonePick];
}

- (void)gestureActions:(UITapGestureRecognizer *)tap
{
    [tap.view removeFromSuperview];
}

#pragma mark - Gesture Delegate
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    // 如果处在 UIToolbar 区域，不响应
    if ([touch.view isKindOfClass:[UIControl class]]) {
        return NO;
    }
    return YES;
}

#pragma mark - Pick View Delegate
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return zonePickDataSource.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return zonePickDataSource[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    tmpText = zonePickDataSource[row];
    curIdx = row;
}

#pragma mark - Request
- (void)req_sendVertify:(UIButton *)sender
{
    NSString *phoneNum = phoneInput.text;
    if ([phoneNum isEqualToString:@""] || !phoneNum) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PHONE_NUM_IS_NULL")];
        return;
    }
    // 正則
    if (![self validatePhoneNumber:phoneNum]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PHONE_NUM_REG_ERROR")];
        return;
    }
    
    NSString *phonePrefix = pickBtn.titleLabel.text;
//    NSString *fullPhone = [NSString stringWithFormat:@"%@%@",phonePrefix,phoneNum];
    
    [GamaPlatformRequestor fetchPhoneVertifyCodeWithPhoneNum:phoneNum
                                                  areaCode:phonePrefix
                                                completion:^(NSDictionary * _Nullable resultDic) {

                                                    if (resultDic && [resultDic[@"code"] integerValue] == 1000) {
                                                        // 发送验证码成功，开始倒计时
                                                        // btn turn to counting
                                                        [self _counttingButton:sender
                                                                     startTime:m_cdTime
                                                                         title:@""
                                                                countDownTitle:@"s"
                                                                     mainColor:[UIColor clearColor]
                                                                    countColor:[UIColor lightGrayColor]];
                                                    } else {
                                                        [GamaUtils gamaToastWithMsg:resultDic[@"message"]];
                                                    }
                                                }];
    
}
// 正則
- (BOOL)validatePhoneNumber:(NSString *)number {
    GamaReginRegularModel *model = m_reginRegSource[curIdx];
    NSString *numberRegex = model.pattern;
    NSPredicate *numberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", numberRegex];
    return [numberTest evaluateWithObject:number];
}

- (void)req_bindAccount
{
    NSString *phoneNum = phoneInput.text;
    if ([phoneNum isEqualToString:@""] || !phoneNum) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PHONE_NUM_IS_NULL")];
        return;
    }
    // 正則
    if (![self validatePhoneNumber:phoneNum]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_PHONE_NUM_REG_ERROR")];
        return;
    }
    
    NSString *phonePrefix = pickBtn.titleLabel.text;
    
    NSString *vfCode = codeInput.text;
    if (!vfCode || [vfCode isEqualToString:@""]) {
        [GamaUtils gamaToastWithMsg:SDKConReaderGetLocalizedString(@"TXT_VERTIFY_CODE_IS_NULL")];
        return;
    }
    
    // 要绑定的手机号
    NSString *tmpNum = [NSString stringWithFormat:@"%@%@",phonePrefix,phoneNum];
    if ([tmpNum hasPrefix:@"+"]) {
        tmpNum = [tmpNum substringFromIndex:1];
    }

    __block NSString *curPhoneNum = tmpNum.copy;

    [GamaPlatformRequestor bindAccountWithPhoneNumber:phoneNum
                                        vertifyCode:vfCode
                                           areaCode:phonePrefix
                                         completion:^(NSDictionary * _Nullable resultDic) {
                                             if (resultDic && [resultDic[@"code"] integerValue] == 1000) {
                                                 // 绑定成功，提示信息，修改UI
                                                 [GamaUtils gamaToastWithMsg:resultDic[@"message"]];
                                                 [self redrawUI:curPhoneNum];
                                             } else {
                                                 [GamaUtils gamaToastWithMsg:resultDic[@"message"]];
                                             }
                                         }];
}

#pragma mark - Refresh Views

- (void)redrawUI:(NSString *)bindedPhoneNum
{
    // remove phoneView vertifyCodeView cfBtn
    [[self viewWithTag:kPhoneViewTag] removeFromSuperview];
    [[self viewWithTag:kVertifyCodeViewTag] removeFromSuperview];
    [cfBtn removeFromSuperview];
    [[self viewWithTag:kTipsTag] removeFromSuperview];
    
    
    // add binded phone info
    CGFloat topPadding = 0;
    topPadding += tfHeightOfHeight*onCalHeight;
    // 仅显示手机信息
    UILabel *phoneLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    phoneLabel.backgroundColor = [UIColor clearColor];
    phoneLabel.textAlignment = NSTextAlignmentLeft;
    phoneLabel.text = [NSString stringWithFormat:@"%@: %@",SDKConReaderGetLocalizedString(@"TXT_BIND_PHONE"),bindedPhoneNum];
    phoneLabel.textColor = [UIColor whiteColor];
    [self addSubview:phoneLabel];
    [phoneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding));
        make.centerX.equalTo(@(0));
        make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        make.height.equalTo(@(tfHeightOfHeight*onCalHeight));
    }];
    
    topPadding += tfHeightOfHeight*onCalHeight;
    NSString * titleOfBindPhoneBtn = m_hadReceiveBindPhoneGift ? SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_HAD_RECEIVE") : SDKConReaderGetLocalizedString(@"BTN_TITLE_GIFT_CLICK_TO_RECEIVE");
    receiveGiftBtn = [GamaUtils initBtnWithTitle:titleOfBindPhoneBtn tag:BindReward_Req_ReceiveBindPhoneGiftBtn_Tag selector:@selector(btnAction:) target:self];
    [receiveGiftBtn.layer setBorderColor:[UIColor clearColor].CGColor];
    [receiveGiftBtn.layer setBorderWidth:0.0f];
    [receiveGiftBtn.layer setMasksToBounds:YES];
    [receiveGiftBtn.layer setCornerRadius:0.0f];
    [receiveGiftBtn setTitleColor:[UIColor whiteColor] forState:0];
    [receiveGiftBtn setBackgroundColor:[UIColor colorWithHexString:kBtnBgColor andAlpha:kBtnBgAlpha]];
    [self addSubview:receiveGiftBtn];
    
    CGSize bindBtnSize = [GamaUtils calculateSizeOfLabel:receiveGiftBtn.titleLabel];
    [receiveGiftBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@(topPadding));
        make.left.equalTo(phoneLabel);// 与某个控件左边距相同
        make.width.equalTo(@(bindBtnSize.width+10));
        make.height.equalTo(@(bindBtnSize.height));
    }];
    
    if (m_hadReceiveBindPhoneGift) {
        receiveGiftBtn.enabled = NO;
        receiveGiftBtn.backgroundColor = [UIColor lightGrayColor];
    }
    else {
        // gift tips
        topPadding += receiveGiftBtn.frame.size.height+gapDistant*3;
        UILabel *tips = [[UILabel alloc] initWithFrame:CGRectZero];
        tips.backgroundColor = [UIColor clearColor];
        tips.textColor = [UIColor whiteColor];
        tips.text = m_phoneBindRewardName;
        tips.font = [UIFont fontWithName:LABEL_FONT_NAME_Helvetica size:14];
        [self addSubview:tips];
        tips.numberOfLines = 0;//表示label可以多行显示
        CGSize tipsSize = [GamaUtils calculateSizeOfLabel:tips andWidth:tfWidthOfBgWight*onCalWidth];
        [tips mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(@(topPadding));
            make.centerX.equalTo(@(0));
            make.height.equalTo(@(ceil( tipsSize.height) + 1)); // 为取值准确 多加 1
            make.width.equalTo(@(tfWidthOfBgWight*onCalWidth));
        }];
    }
}

#pragma mark - UI Helper
// 2px
- (UILabel *)_createSeperateLine
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor colorWithHexString:kTextColor];
    return label;
}

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.returnKeyType == UIReturnKeyNext) {
        [textField resignFirstResponder];
        if ([textField isEqual:phoneInput]) {
            [codeInput becomeFirstResponder];
        }
    }
    
    if (textField.returnKeyType == UIReturnKeyDone) {
        [textField resignFirstResponder];
        // comfirm btn down
        [self req_bindAccount];
    }
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (keyboarHeight <= 0) {
        // 第一次时间差原因，keyboardHeight = 0，因此需要等到键盘完全弹出之后再执行
        dispatch_time_t delayTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(animationDuration * NSEC_PER_SEC));
        dispatch_after(delayTime, dispatch_get_main_queue(), ^{
            [self _makeTextFieldAnimation:textField];
        });
    }
    else {
        [self _makeTextFieldAnimation:textField];
    }
}

- (void)_makeTextFieldAnimation:(UITextField *)textField
{
    UIView *masterView = self.superview.superview.superview.superview.superview;
    CGRect tfRectSystem = [textField convertRect:textField.bounds fromView:nil];
    
    CGFloat distant = (winHeight - (fabs(tfRectSystem.origin.y) + tfRectSystem.size.height)) - keyboarHeight;
    if (distant < 0) {
        animatedDistance = fabs(distant) + 10;
    } else {
        animatedDistance = 0;
    }
    
    CGRect viewFrame = masterView.frame;
    viewFrame.origin.y -= animatedDistance;
    [self _animationWithView:masterView frame:viewFrame duration:animationDuration];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    UIView *masterView = self.superview.superview.superview.superview.superview;
    CGRect viewFrame = masterView.frame;
    viewFrame.origin.y += animatedDistance;
    [self _animationWithView:masterView frame:viewFrame duration:animationDuration];
}

- (void)_animationWithView:(UIView *)view frame:(CGRect)viewFrame duration:(NSTimeInterval)duration
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:duration];
    [view setFrame:viewFrame];
    [UIView commitAnimations];
}

#pragma mark - Counting Label
// btn need use customType to avoid counting shine
- (void)    _counttingButton:(UIButton *)sender
                   startTime:(NSInteger)timeLine
                       title:(NSString *)title
              countDownTitle:(NSString *)subTitle
                   mainColor:(UIColor *)mColor
                  countColor:(UIColor *)countColor
{
    //倒计时时间
    __block NSInteger timeOut = timeLine;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    //每秒执行一次
    dispatch_source_set_timer(_timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(_timer, ^{
        //倒计时结束，关闭
        if (timeOut <= 0) {
            dispatch_source_cancel(_timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                sender.backgroundColor = mColor;
                [sender setTitle:strFetchVertifyCode forState:0];
                sender.enabled = YES;
            });
        } else {
            int allTime = (int)timeLine + 1;
            int seconds = timeOut % allTime;
            NSString *timeStr = [NSString stringWithFormat:@" %.1d ", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                sender.backgroundColor = [UIColor clearColor];
                [sender setTitle:[NSString stringWithFormat:@"%@%@",timeStr,subTitle] forState:UIControlStateDisabled];
                [sender setTitleColor:[UIColor redColor] forState:UIControlStateDisabled];
                sender.enabled = NO;
            });
            timeOut--;
        }
    });
    dispatch_resume(_timer);
}

@end
