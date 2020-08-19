//
//  ViewController.m
//

#import "ViewController.h"

#import "GamaFacebookPort.h"
#import "GamaCentreInfo.h"

#import <FBSDKCoreKit/FBSDKGraphRequest.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

#import "GamaCentreInfo.h"
//#import "GamaThirdFunctionPort.h"
#import "GamaFacebookCenter.h"
#import "GamaAlertView.h"

@interface ViewController() <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) NSArray *buttonsArray;
@property (nonatomic,strong) UITableView *buttonsTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*********************************************
     SDK测试项目
     ***********************************************/
    [self.view setBackgroundColor:[UIColor clearColor]];
    
    CGFloat tOriX = [GamaFunction isIPhoneXSeries] ? 44:0;
    CGFloat tWidth = [GamaFunction isIPhoneXSeries] ? [GamaFunction getCurrentScreenFrame].size.width-44-44 : [GamaFunction getCurrentScreenFrame].size.width;
    CGFloat tHeight = [GamaFunction isIPhoneXSeries] ? ([GamaFunction getCurrentScreenFrame].size.height) : [GamaFunction getCurrentScreenFrame].size.height;
    self.buttonsTable = [[[UITableView alloc] initWithFrame:CGRectMake(tOriX, 0, tWidth, tHeight)] autorelease];
    _buttonsTable.delegate = self;
    _buttonsTable.dataSource = self;
    [self.view addSubview:self.buttonsTable];

    self.buttonsArray = @[@"登入",
                          @"获取用户信息",
                          @"获取在玩好友（首页）",
                          @"获取在玩好友（下一页）",
                          @"获取在玩好友（上一页）",
                          @"分享链接",
                          @"分享图片",
                          @"给指定好友发送图片",
                          @"给指定好友发送链接",
                          @"邀请在玩好友",
                          @"邀请未玩好友",
                          ];

    
}

static NSArray *tempFriendsAry;
#pragma mark -TableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger limitCount = 3;
    
    switch (indexPath.row) {
        case 0:{//登入
            [GamaFacebookPort loginWithFacebook];
        }break;
        case 1:{//获取用户信息
            [GamaFacebookPort social_getUserProfileWithCompletedHandler:^(NSDictionary * _Nullable result, NSError * _Nullable error) {
                if (error) {
                    NSLog(@"获取用户信息失败:%@",error);
                    [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"获取用户信息失败:%@",error]];
                    return ;
                }
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"成功获取用户信息:%@",result]];
            }];
        }break;
        case 2:{//获取在玩好友（首页）
//            [GamaFacebookPort social_fetchFriendsWithParam:@{FACEBOOK_PRM_SOCIAL_FIELDS_CONTENT:@"id"} Paging:0 limit:0 completedHandler:^(NSArray * _Nullable invitableArr,
//                                                                                         NSString * _Nullable nextPage,
//                                                                                         NSString * _Nullable previous,
//                                                                                         NSString * _Nullable total_count,
//                                                                                         NSError * _Nullable error) {
//                if (error) {
//                    NSLog(@"获取用户信息失败:%@",error);
//                    [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失败:%@",error]];
//                    return ;
//                }
//                NSMutableArray *mutaAry = [NSMutableArray array];
//                [invitableArr enumerateObjectsUsingBlock:^(NSDictionary  *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                     [mutaAry addObject:obj[@"id"]];
//                }];
//                tempFriendsAry = [mutaAry copy];
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失成功：%@",invitableArr]];
//            }];
        }break;
        case 3:{//获取在玩好友（下一页）
//            [GamaFacebookPort social_fetchFriendsWithParam:@{FACEBOOK_PRM_SOCIAL_FIELDS_CONTENT:@""} Paging:1 limit:limitCount completedHandler:^(NSArray * _Nullable invitableArr,
//                                                                                         NSString * _Nullable nextPage,
//                                                                                         NSString * _Nullable previous,
//                                                                                         NSString * _Nullable total_count,
//                                                                                         NSError * _Nullable error) {
//                if (error) {
//                    NSLog(@"获取用户信息失败:%@",error);
//                    [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失败:%@",error]];
//                    return ;
//                }
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失成功：%@",invitableArr]];
//            }];

        }break;
        case 4:{//获取在玩好友（上一页）
//            [GamaFacebookPort social_fetchFriendsWithParam:@{FACEBOOK_PRM_SOCIAL_FIELDS_CONTENT:@"id"} Paging:2 limit:limitCount completedHandler:^(NSArray * _Nullable invitableArr,
//                                                                                         NSString * _Nullable nextPage,
//                                                                                         NSString * _Nullable previous,
//                                                                                         NSString * _Nullable total_count,
//                                                                                         NSError * _Nullable error) {
//                if (error) {
//                    NSLog(@"获取用户信息失败:%@",error);
//                    [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失败:%@",error]];
//                    return ;
//                }
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失成功：%@",invitableArr]];
//            }];

        }break;
        case 5:{//分享链接
            [GamaFacebookPort social_shareWithParam:@{@"gama_prm_social_share_link":@"https://developers.facebook.com/"} success:^(NSDictionary * _Nullable result) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];

            } failure:^(NSError * _Nullable error) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];

            }];
        }break;
        case 6:{//分享图片
            [GamaFacebookPort social_shareWithParam:@{@"gama_prm_social_local_image":@"btn_xm_member_login.png"} success:^(NSDictionary * _Nullable result) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];
                
            } failure:^(NSError * _Nullable error) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];
                
            }];
        }break;
        case 7:{//给指定好友发送图片
            [GamaFacebookPort social_sentMessageToSpecifiedFriendsWithParam:@{@"gama_prm_social_local_image":@"btn_xm_member_login.png"} success:^(NSDictionary * _Nullable result) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];
            }];
        }break;
        case 8:{//给指定好友发送链接
            [GamaFacebookPort social_sentMessageToSpecifiedFriendsWithParam:@{@"gama_prm_social_share_link":@"https://developers.facebook.com/"} success:^(NSDictionary * _Nullable result) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];
            }];
        }break;
        case 9:{//邀请在玩好友
            NSArray *lastUserIdAry = tempFriendsAry.count > 0 ? tempFriendsAry : @[];
            [GamaFacebookPort social_inviteFriendsWithParam:@{@"userId": lastUserIdAry,@"message":@"hello",@"title":@"邀请好友"} success:^(NSDictionary * _Nullable result) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"邀请成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"邀请失败:%@",error]];
            }];
        }break;
        case 10:{//邀请未玩好友
            [GamaFacebookPort social_inviteFriendsWithParam:@{@"userId":@[],@"message":@"hello",@"title":@"邀请好友"} success:^(NSDictionary * _Nullable result) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"邀请成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"邀请失败:%@",error]];
            }];
        }break;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"numberOfRowsInSection:%lu",(unsigned long)_buttonsArray.count);
    return _buttonsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indetity = @"Social_Cell";
    
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:indetity];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indetity];
    }
    
    cell.textLabel.text = [_buttonsArray objectAtIndex:indexPath.row];
    NSLog(@"cell:%@",cell.textLabel.text);
    
    return cell ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [super dealloc];
}
@end
