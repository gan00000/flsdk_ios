//
//  Social_ViewController.m
//  GamaSDK_iOS
//
//  Created by dongbin on 2018/11/28.
//  Copyright © 2018年 starpy. All rights reserved.
//

#import "Social_ViewController.h"
#import "PeopleitionStudentosity.h"
#import "RiskHalf.h"
@interface Social_ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *buttonsArray;
@property (nonatomic,strong) UITableView *buttonsTable;

@end

@implementation Social_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*********************************************
     SDK测试项目
     ***********************************************/
    [self.view setBackgroundColor:[UIColor clearColor]];
    
    self.buttonsTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    _buttonsTable.delegate = self;
    _buttonsTable.dataSource = self;
    [self.view addSubview:_buttonsTable];

    self.buttonsArray = @[@"Back",
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
                          @"line文字分享",
                          @"line图片分享",
                          @"whatsApp文字分享",
                          @"whatsApp图片分享",
                          @"Twitter登入",
                          @"Twitter分享",
                          @"naverCafe",
                          ];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static NSArray *tempFriendsAry;
#pragma mark -TableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger limitCount = 3;
    
    UIImage *shareImage = [UIImage imageNamed:@"Default-568h@2x.png"];
    switch (indexPath.row) {
        case 0:{//登入
            [self dismissViewControllerAnimated:YES completion:nil];
            //........
        }break;
        case 1:{//获取用户信息
            [MWSDK gama_getUserProfileWithPartyKind:GamaThirdPartyTypeFacebook completedHandler:^(NSDictionary * _Nullable result, NSError * _Nullable error) {
                if (error) {
                    NSLog(@"获取用户信息失败:%@",error);
                    [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"获取用户信息失败:%@",error]];
                    return ;
                }
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"成功获取用户信息:%@",result]];
            }];
        }break;
        case 2:{//获取在玩好友（首页）
            [MWSDK gama_fetchFriendsWithKind:GamaThirdPartyTypeFacebook
                                         param:@{GAMA_PRM_SOCIAL_FIELDS_CONTENT:@"id"}
                                        paging:GamaSocialPagingHome
                                         limit:limitCount
                              completedHandler:^(NSDictionary *_Nullable initialData,
                                                 NSArray * _Nullable invitableArr,
                                                 NSString * _Nullable nextPage,
                                                 NSString * _Nullable previous,
                                                 NSString * _Nullable total_count,
                                                 NSError * _Nullable error) {
                                  
                  if (error) {
                      NSLog(@"获取用户信息失败:%@",error);
                      [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失败:%@",error]];
                      return ;
                  }
                  [self isExistsWithNext:nextPage pre:previous];
                  NSMutableArray *mutaAry = [NSMutableArray array];
                  [invitableArr enumerateObjectsUsingBlock:^(NSDictionary  *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                      [mutaAry addObject:obj[@"id"]];
                  }];
                  tempFriendsAry = [mutaAry copy];
                  [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失成功：%@",invitableArr]];
            }];
        }break;
        case 3:{//获取在玩好友（下一页）
            [MWSDK gama_fetchFriendsWithKind:GamaThirdPartyTypeFacebook
                                         param:@{GAMA_PRM_SOCIAL_FIELDS_CONTENT:@"id"}
                                        paging:GamaSocialPagingNext
                                         limit:limitCount
                              completedHandler:^(NSDictionary *_Nullable initialData,
                                                 NSArray * _Nullable invitableArr,
                                                 NSString * _Nullable nextPage,
                                                 NSString * _Nullable previous,
                                                 NSString * _Nullable total_count,
                                                 NSError * _Nullable error) {
                if (error) {
                    NSLog(@"获取用户信息失败:%@",error);
                    [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失败:%@",error]];
                    return ;
                }
                [self isExistsWithNext:nextPage pre:previous];
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失成功：%@",invitableArr]];
            }];
            
        }break;
        case 4:{//获取在玩好友（上一页）
            [MWSDK gama_fetchFriendsWithKind:GamaThirdPartyTypeFacebook
                                         param:@{GAMA_PRM_SOCIAL_FIELDS_CONTENT:@"id"}
                                        paging:GamaSocialPagingPrevious
                                         limit:limitCount
                              completedHandler:^(NSDictionary *_Nullable initialData,
                                                 NSArray * _Nullable invitableArr,
                                                 NSString * _Nullable nextPage,
                                                 NSString * _Nullable previous,
                                                 NSString * _Nullable total_count,
                                                 NSError * _Nullable error) {
                                  if (error) {
                                      NSLog(@"获取用户信息失败:%@",error);
                                      [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失败:%@",error]];
                                      return ;
                                  }
                                  [self isExistsWithNext:nextPage pre:previous];
                                  [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"获取在玩好友信息失成功：%@",invitableArr]];
                              }];
        }break;
        case 5:{//分享链接
            [MWSDK gama_shareWithKind:GamaThirdPartyTypeFacebook param:@{GAMA_PRM_SOCIAL_SHARE_LINK:@"https://developers.facebook.com/"} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];
            }];
        }break;
        case 6:{//分享图片
            [MWSDK gama_shareWithKind:GamaThirdPartyTypeFacebook param:@{GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE:@"Default-568h@2x.png"}
                                success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];
            }];
        }break;
        case 7:{//给指定好友发送图片
//            [GamaSDK gama_shareWithKind:GamaThirdPartyTypeMessenger param:@{GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE:@"Default-568h@2x.png"} success:^(NSDictionary * _Nullable result) {
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];
//            } failure:^(NSError * _Nullable error) {
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];
//            }];
        }break;
        case 8:{//给指定好友发送链接
//            [GamaSDK gama_shareWithKind:GamaThirdPartyTypeMessenger param:@{GAMA_PRM_SOCIAL_SHARE_LINK:@"https://developers.facebook.com/"} success:^(NSDictionary * _Nullable result) {
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享成功:%@",result]];
//            } failure:^(NSError * _Nullable error) {
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享失败:%@",error]];
//            }];
        }break;
        case 9:{//邀请在玩好友
            NSArray *lastUserIdAry = tempFriendsAry.count > 0 ? tempFriendsAry : @[];
            [MWSDK gama_inviteFriendsWithKind:GamaThirdPartyTypeFacebook param:@{GAMA_PRM_SOCIAL_INVITE_USERID: lastUserIdAry,GAMA_PRM_SOCIAL_INVITE_MSG:@"hello",GAMA_PRM_SOCIAL_INVITE_TITLE:@"邀请好友"} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"邀请成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"邀请失败:%@",error]];
            }];
        }break;
        case 10:{//邀请未玩好友
            [MWSDK gama_inviteFriendsWithKind:GamaThirdPartyTypeFacebook param:@{GAMA_PRM_SOCIAL_INVITE_USERID:@[],GAMA_PRM_SOCIAL_INVITE_MSG:@"hello",GAMA_PRM_SOCIAL_INVITE_TITLE:@"邀请好友"} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"邀请成功:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"邀请失败:%@",error]];
            }];
        }break;
        case 11:{//line文字分享
            [MWSDK gama_shareWithKind:GamaThirdPartyTypeLine param:@{GAMA_PRM_SOCIAL_SHARE_MSG:@"hello"} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"line文字分享成功：:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"line文字分享失败：:%@",error]];
            }];
        }break;

        case 12:{//line图片分享
            [MWSDK gama_shareWithKind:GamaThirdPartyTypeLine param:@{GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE:shareImage} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"line图片分享成功：:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"line图片分享失败：:%@",error]];
            }];
        }break;

        case 13:{//whatsApp文字分享
            [MWSDK gama_shareWithKind:GamaThirdPartyTypeWhatsApp param:@{GAMA_PRM_SOCIAL_SHARE_MSG:@"hello"} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"whatsAapp文字分享成功：:%@",result]];
            }failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"whatsAapp文字分享失败：:%@",error]];

            }];
        }break;

        case 14:{//whatsApp图片分享
            [MWSDK gama_shareWithKind:GamaThirdPartyTypeWhatsApp param:@{GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE:shareImage} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"whatsAapp图片分享成功：:%@",result]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"whatsAapp图片分享失败：:%@",error]];
            }];
        }break;
        case 15:{
            [MWSDK gama_shareWithKind:GamaThirdPartyTypeTwitter param:@{GAMA_PRM_SOCIAL_SHARE_LOCAL_IMAGE:@"Default-568h@2x.png"} success:^(NSDictionary * _Nullable result) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"分享成功"]];
            } failure:^(NSError * _Nullable error) {
                [RiskHalf showAlertWithMessage:[NSString stringWithFormat:@"分享失败"]];
                
            }];
        }break;
        case 16:{
            [MWSDK gama_openCafeHome];

//            [GamaSDK gama_shareWithKind:GamaThirdPartyTypeTwitter param:@{GAMA_PRM_SOCIAL_SHARE_MSG:@"123123"} success:^(NSDictionary * _Nullable result) {
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享成功"]];
//            } failure:^(NSError * _Nullable error) {
//                [GamaAlertView showAlertWithMessage:[NSString stringWithFormat:@"分享失败"]];
//
//            }];

        }break;
//        case 17:{
//        }break;
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

- (void)isExistsWithNext:(NSString *)next pre:(NSString *)pre {
    if (next.length > 1) {
        NSLog(@"是否存在下一页:YES");
    }else{
        NSLog(@"是否存在下一页:NO");
    }
    if (pre.length > 1) {
        NSLog(@"是否存在上一页:YES");
    }else{
        NSLog(@"是否存在上一页:NO");
    }
}

@end
