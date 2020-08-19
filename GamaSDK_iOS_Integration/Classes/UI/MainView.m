//
//  MainView.m
//  
//
//  Created by sunn on 2017/3/11.
//  Copyright © 2017年 sunn. All rights reserved.
//

#import "MainView.h"
#import "HelloHeader.h"
#import "GamaBaseSDK.h"


@implementation MainView
{
    CGFloat rate ; // 校对比值
    CGFloat curWidth ;
    CGFloat curHeight ;
    CGFloat originBgWidthOfHeight;// 背景图片宽高比
    CGFloat loginBtnWidthOfBgWidth;
    CGFloat loginBtnHeightOfBgHeight;
    CGFloat seperatelineWidthOfBgWidth;
    CGFloat seperatelineHeightOfBgHeight;
    CGFloat topPadding;
    CGFloat leftPadding;
    CGFloat gapPadding;
    CGFloat lineTopPadding;
    
    UIImageView *mainBg;
    
    // for space
    UIView *ssView;
    
    NSString *m_curLoginType;
    NSString *m_curLoginName;
    
    MainViewMode m_mode;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

- (instancetype)initWithMode:(MainViewMode)mode
{
    self = [super init];
    if (self) {
        m_mode = mode;
        
        [self basePropertyInit];
        [self customInit];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:HELLO_NOTI_LOGIN_BACK object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:NOTE_hello_login_success object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_THIRD_LOGIN_SUCCESS object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:GAMA_THIRD_LOGIN_FAIL object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:_GAMA_NOTIFICATION_SUCCESS object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_noteLisetner:) name:@"GAMA_NOTE_SAVE_PHOTO" object:nil];
        
    }
    return self;
}

- (void)basePropertyInit
{
    rate = 0.8f; // 校对比值
    curWidth = winWidth;
    curHeight = winHeight;
    
    CGFloat realWidthHeightRate = curWidth/curHeight;
    
    originBgWidthOfHeight = 1070/1130.0f; // 原图宽高比
    
    if (realWidthHeightRate >= originBgWidthOfHeight) {
        curWidth = curHeight / originBgWidthOfHeight;
    } else {
        curHeight = curWidth * originBgWidthOfHeight;
    }
    
    loginBtnWidthOfBgWidth = 914/1070.0f;
    loginBtnHeightOfBgHeight = 172/1130.0f;
    seperatelineWidthOfBgWidth = 914/1070.0f;
    seperatelineHeightOfBgHeight = 5/1130.0f;
    topPadding = 156/1130.0f;
    leftPadding = 78/1070.0f;
    gapPadding = 50/1130.0f;
    lineTopPadding = (156+172*4+50*3+70)/1130.0f;
    
    m_curLoginType = nil;
    m_curLoginName = nil;
}

- (void)customInit
{
    [self setFrame:CGRectMake(0, 0, winWidth, winHeight)];
    self.userInteractionEnabled = YES;
    self.backgroundColor = [UIColor clearColor];
    
    switch (m_mode) {
        case MainView_MySpace:
        {
            [self _mySpaceShip];
        }
            break;
            
        default:
            break;
    }
}


- (void)_mySpaceShip
{
    CGFloat onCalWidth = rate*curWidth;
    CGFloat onCalHeight = rate*curWidth*0.8;
    loginBtnHeightOfBgHeight = 200/1130.0f;
    
    // bg
    ssView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, rate*curWidth, rate*curWidth*0.8)];
    ssView.userInteractionEnabled = YES;
    UIColor *color = [UIColor whiteColor];
    ssView.backgroundColor = [color colorWithAlphaComponent:0.6f];// 底图透明，控件不透明
    [self addSubview:ssView];
    [ssView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(rate*curWidth));
        make.height.equalTo(@(rate*curWidth*0.8));
    }];
    [ssView.layer setCornerRadius:5.0f];
    
    // title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, onCalWidth, ssView.frame.size.height*loginBtnHeightOfBgHeight)];
    title.text = SDKConReaderGetLocalizedString(@"LB_TITLE_ACCOUNT_LOGIN");
    title.textAlignment = NSTextAlignmentCenter;
    [ssView addSubview:title];
    
    // 3 btns sp fb guest
    UIButton *fbBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_FACEBOOK_LOGIN") tag:kMainFbLoginBtnTag selector:@selector(loginBtnsAction:) target:self];
    [ssView addSubview:fbBtn];
    [fbBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(-ssView.frame.size.height*loginBtnHeightOfBgHeight));
        make.width.equalTo(@(ssView.frame.size.width*0.8));
        make.height.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight));
    }];
    
    UIButton *spBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@" BTN_TITLE_ACCOUNT_LOGIN") tag:kMainLoginBtnTag selector:@selector(loginBtnsAction:) target:self];
    [ssView addSubview:spBtn];
    [spBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(10));
        make.width.equalTo(@(ssView.frame.size.width*0.8));
        make.height.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight));
    }];
    
    
    UIButton *guestBtn = [GamaUtils initBtnWithTitle:SDKConReaderGetLocalizedString(@"BTN_TITLE_GUEST_LOGIN") tag:kMainGuestLoginBtnTag selector:@selector(loginBtnsAction:) target:self];
    [ssView addSubview:guestBtn];
    [guestBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight+10+10));
        make.width.equalTo(@(ssView.frame.size.width*0.8));
        make.height.equalTo(@(ssView.frame.size.height*loginBtnHeightOfBgHeight));
    }];
    
}



#pragma mark - BtnAction

- (void)loginBtnsAction:(UIButton *)sender
{
    switch (sender.tag) {
        case kMainLoginBtnTag:
        {
            switch (m_mode) {
                case MainView_MySpace:
                {
                    HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_HadLogin];
                    accountLoginView.alpha = 0.0f;
                    [self addSubview:accountLoginView];
                    [UIView animateWithDuration:0.3f animations:^{
                        ssView.alpha = 0.0f;
                        accountLoginView.alpha = 1.0;
                    }];
                }
                    break;
                default:
                {
                    HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_Default];
                    accountLoginView.alpha = 0.0f;
                    [self addSubview:accountLoginView];
                    [UIView animateWithDuration:0.3f animations:^{
                        
                        ssView.alpha = 0.0f;
                        accountLoginView.alpha = 1.0;
                    }];
                }
                    break;
            }
            
        }
            break;
            
        case kMainFbLoginBtnTag:
        {
            m_curLoginType = _SDK_PLAT_FB;
            m_curLoginName = @"Facebook";
            [GamaUtils gamaStarLoadingAtView:self];
            [GamaNetEngine loginUsingThirdPlatform:Gama_Facebook handler:nil];
        }
            break;
        
        case kMainGuestLoginBtnTag:
        {
            // 直接登錄
            [GamaUtils gamaStarLoadingAtView:self];
            [GamaNetEngine guestLogin];
        }
            break;
            
        default:
            break;
    }
}


#pragma mark - Note

- (void)_noteLisetner:(NSNotification *)note
{    
    [GamaUtils gamaStopLoadingAtView:self];
    
    NSString *noteName = note.name;
    if ([noteName isEqualToString:NOTE_hello_login_success]) {
        
        [self removeFromSuperview];
        
    } else if ([noteName isEqualToString:_GAMA_NOTIFICATION_FAIL]) {
        NSLog(@"-- e o --");
        // alert
    } else if ([noteName isEqualToString:HELLO_NOTI_LOGIN_BACK]) {
        
        if (!ssView) {
            // re init
            m_mode = MainView_MySpace;
            [[MainView alloc] initWithMode:m_mode];
        } else {
            ssView.alpha = 1.0f;
        }
    } else if ([noteName isEqualToString:UIKeyboardWillShowNotification]) {
        
    } else if ([noteName isEqualToString:GAMA_THIRD_LOGIN_FAIL]) {
        NSLog(@"第三方登录失败");
    } else if ([noteName isEqualToString:GAMA_THIRD_LOGIN_SUCCESS]) {
        
        NSDictionary *dict = note.userInfo;
        
        NSString *freeAccount = dict[@"freeRegisterName"];
        NSString *freePwd = dict[@"freeRegisterPwd"];
        
        if (freeAccount.length > 0 && freePwd.length > 0) { // guest login
            
            [GamaUtils recordStateLoginWithType:_SDK_PLAT_MAC andUserName:freeAccount];
            
            // 保存guest登錄的账号和密码
            NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
            NSString *path = [paths objectAtIndex:0];
            NSString *filename = [path stringByAppendingPathComponent:GAMA_SAVE_Guest_USER_FILE_NAME];
            if (![[NSFileManager defaultManager] fileExistsAtPath:filename]) {
                [GamaUtils saveUserInfo:freeAccount andPassword:freePwd toFile:GAMA_SAVE_Guest_USER_FILE_NAME];
            } 
            
            // 是否第一次使用guest login
            if (![GamaUtils gama_hadEverGuestLogin]) { // no
                [GamaUtils gama_guestLoginSign];
                
                // 截图
                HelloLoginView *accountLoginView = [[HelloLoginView alloc] initWithMode:HelloLogin_GuestScreenShot];
                ssView.alpha = 0.0f;
                [self addSubview:accountLoginView];
                [accountLoginView release];
                
                [GamaUtils gama_saveGuestAccountToPhoto:self];  //保存用户的账密至相册
                
            } else {
//                NSLog(@"不是第一次使用 guest 登录了");
            }
            
        }
        else // fb login
        {
            if (m_curLoginType.length > 0 && m_curLoginName.length >0) {
                [GamaUtils recordStateLoginWithType:m_curLoginType andUserName:m_curLoginName];
            }
        }
        
//        NSLog(@"第三方登录成功");
        
        [self removeFromSuperview];
        
    } else if ([noteName isEqualToString:_GAMA_NOTIFICATION_SUCCESS]) {
        // 这个通知会先于 GAMA_THIRD_LOGIN_SUCCESS 执行
//        [self removeFromSuperview];
    }
    else if ([noteName isEqualToString:@"GAMA_NOTE_SAVE_PHOTO"]) {
//        [self removeFromSuperview];
    }
}



@end
