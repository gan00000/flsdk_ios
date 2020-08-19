//
//  ViewController.m
//  Gamecenter


#import "ViewController.h"
#import "GamaGamecenterManager.h"
#import "LeaderboardList.h"
#import "FriendlistTableViewController.h"
#import "AchievementsList.h"
#import "GamaGamecenterPort.h"
#import "GamaThirdFunctionPort.h"

@interface ViewController ()
@property (copy, nonatomic) NSArray *buttonArr;
@property (strong, nonatomic) UITableView *funcTableView;
@property (copy, nonatomic) NSArray *leaderboardArr;
@property (nonatomic, retain) NSMutableDictionary *achievementsDictionary;
@end

@implementation ViewController
@synthesize buttonArr = _buttonArr,funcTableView = _funcTableView;
@synthesize leaderboardArr = _leaderboardArr;
@synthesize achievementsDictionary = _achievementsDictionary;

- (void)dealloc
{
    [_buttonArr release];
    [_funcTableView release];
    [_leaderboardArr release];
    [_achievementsDictionary release];
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loginSuccess:) name:GAMA_THIRD_LOGIN_SUCCESS object:nil];
    
    _buttonArr = [NSArray arrayWithObjects:
                  @"授权登录",
                  @"排行榜",
                  @"使用gamekit自带UI展示排行榜",
                  @"根据条件检索排行榜",
                  @"获取排行榜束",
                  @"成就列表",
                  @"使用gamekit自带UI展示成就",
                  @"获取好友列表",
                  nil].copy;
    _achievementsDictionary = [[NSMutableDictionary alloc] init];
    _funcTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    _funcTableView.delegate = self;
    _funcTableView.dataSource = self;
    [self.view addSubview:_funcTableView];
    
    //    [self authenticateLocalPlayer];
}

- (void)loginSuccess:(NSNotification *)notification
{
    NSLog(@"%@",notification.userInfo);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark tableView data sources

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%lu",(unsigned long)[_buttonArr count]);
    return [_buttonArr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellIdentifier";
    
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!tableViewCell) {
        tableViewCell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID] autorelease];
        
    }
    tableViewCell.textLabel.text = [_buttonArr objectAtIndex:indexPath.row];
    return tableViewCell;
    
}

#pragma mark tableView delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [GamaGamecenterPort loginWithGamecenterAutoLoginSwitch:NO];
            break;
            
        case 1:
        {
            LeaderboardList *LDList = [[[LeaderboardList alloc] init] autorelease];
            
            [self presentViewController:LDList animated:YES completion:nil];
        }
            
            break;
            
        case 2:
        {
            
            GKLeaderboard *leaderboard1 = [_leaderboardArr objectAtIndex:0];
            [[GamaGamecenterManager shareGamecenterManager] showLeaderboard:@"LevelBossKills" handler:^{
                
            }];
            break;
        }
            
        case 3:
        {
            GKLeaderboard *leaderboard = [[[GKLeaderboard alloc] init] autorelease];
            GKLeaderboard *leaderboard1 = [[GamaGamecenterManager shareGamecenterManager].leaderboards objectAtIndex:0];
            if (leaderboard != nil) {
                leaderboard.playerScope = GKLeaderboardPlayerScopeGlobal;
                leaderboard.timeScope = GKLeaderboardTimeScopeToday;
                leaderboard.identifier = leaderboard1.identifier;
                leaderboard.range = NSMakeRange(1, 10);
                [[GamaGamecenterManager shareGamecenterManager] retrieveScoresWithLeaderboard:leaderboard handler:^(NSArray *scores, NSError *error) {
                    NSLog(@"scores = %@\n\nerror = %@",scores,error);
                }];
            }
            break;
        }
            
            
        case 4:
        {
            [[GamaGamecenterManager shareGamecenterManager] loadLeaderboardSetInfoWitnHandler:^(NSArray *leaderboardSets, NSError *error) {
                for (GKLeaderboardSet *leaderboardset in leaderboardSets) {
                    NSLog(@"%@",leaderboardset);
                }
            }];
            
            break;
        }
            
        case 5:
        {
            AchievementsList *acList = [[[AchievementsList alloc] init] autorelease];
            [self presentViewController:acList animated:YES completion:nil];
            
            break;
        }
            
        case 6:
        {
            [[GamaGamecenterManager shareGamecenterManager] showAchievementsWithDelegate:self];
            
            break;
        }
        case 7:
        {
            FriendlistTableViewController *friendlistVC = [[[FriendlistTableViewController alloc] init] autorelease];
            [self presentViewController:friendlistVC animated:YES completion:nil];
           
            break;
        }
            
            
        default:
            break;
    }
}

- (void)gameCenterViewControllerDidFinish:(GKGameCenterViewController *)gameCenterViewController
{
    NSLog(@"finish");
    [gameCenterViewController dismissViewControllerAnimated:YES completion:nil];    
}

@end
