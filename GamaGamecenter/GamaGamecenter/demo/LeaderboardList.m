//
//  LeaderboardList.m
//  gameCenterLogin
//
//  Created by 谢 京文 on 15/1/26.
//  Copyright (c) 2015年 谢 京文. All rights reserved.
//

#import "LeaderboardList.h"
#import "GamaGamecenterManager.h"
#import "TableViewController.h"

@interface LeaderboardList ()

@property (strong, nonatomic) UIView *bgView;
@property (copy, nonatomic) NSString *leaderboardID;

@end

@implementation LeaderboardList

@synthesize leaderboardID = _leaderboardID;
@synthesize bgView = _bgView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [[GamaGamecenterManager shareGamecenterManager] retrieveLeaderboardsWithCompletionHandler:^(BOOL isSuccessed) {
        if (isSuccessed) {
            
            
            
            for (GKLeaderboard *leaderboard in [GamaGamecenterManager shareGamecenterManager].leaderboards) {
                
                NSLog(@"\n****************************************\ncategory = %@\nidentifier = %@\ntitle = %@\ngroupIdentifier = %@\n\n****************************************",
                      leaderboard.category,
                      leaderboard.identifier,
                      leaderboard.title,
                      leaderboard.groupIdentifier
                      );
            }
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
            });
        }
        
    }];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma btn sections

- (void)reportBtnPressed:(id)sender
{
    NSInteger index = [sender tag];
    
    _bgView = [[[UIView alloc] initWithFrame:self.view.frame] autorelease];
    _bgView.backgroundColor = [UIColor blackColor];
    _bgView.alpha = 0.6;
    [self.view addSubview:_bgView];
    UITextField *scoreField = [[[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-40, 50, 80, 40)] autorelease];
    scoreField.delegate = self;
    scoreField.textColor = [UIColor purpleColor];
    scoreField.backgroundColor = [UIColor whiteColor];
    [scoreField becomeFirstResponder];
    
    [_bgView addSubview:scoreField];
    GKLeaderboard *leaderboard = [[GamaGamecenterManager shareGamecenterManager].leaderboards objectAtIndex:index];
    
    NSString *leaderboardID = leaderboard.category;
    _leaderboardID = leaderboardID;
}

- (void)detailBtnPressed:(id)sender
{
    NSInteger index = [sender tag] - 1000;
    
    GKLeaderboard *leaderboard = [[GamaGamecenterManager shareGamecenterManager].leaderboards objectAtIndex:index];
    [[GamaGamecenterManager shareGamecenterManager] retrieveScoresWithLeaderboard:leaderboard handler:^(NSArray *scores, NSError *error) {
        if (!error) {
            NSLog(@"scores = %@",scores);
            TableViewController *tableVC = [[TableViewController alloc] init];
            tableVC.leaderscore = scores.copy;
            [self presentViewController:tableVC animated:YES completion:nil];
        }
    }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [[GamaGamecenterManager shareGamecenterManager].leaderboards count] + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *listCell = @"leaderboardCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:listCell];
    
    
    
    if (!cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:listCell] autorelease];
        
        
    }
    
    if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].leaderboards count]) {
        cell.textLabel.text = @"关闭";
    }
    else
    {
        GKLeaderboard *leaderboard = [[GamaGamecenterManager shareGamecenterManager].leaderboards objectAtIndex:indexPath.row];
        cell.textLabel.text = leaderboard.title;
        
        UIButton *reportBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
        [reportBtn setTag:indexPath.row];
        [reportBtn addTarget:self action:@selector(reportBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
        [cell addSubview:reportBtn];
        reportBtn.frame = CGRectMake(200, 10, 40, 20);
        
        UIButton *detailBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
        [detailBtn addTarget:self action:@selector(detailBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
        [detailBtn setTag:indexPath.row+1000];
        [cell addSubview:detailBtn];
        detailBtn.frame = CGRectMake(260, 10, 40, 20);
        
    }
    
    
    // Configure the cell...
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].leaderboards count]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        });
        
        return;
    }
    
    
    
}

#pragma mark - textfield delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [[GamaGamecenterManager shareGamecenterManager] reportScore:[textField.text integerValue] andContext:1 forLeaderboardID:_leaderboardID handler:^(BOOL isSuccessed) {
        NSLog(@"result = %d",isSuccessed);
    }];
    [_bgView removeFromSuperview];
    [[UIApplication sharedApplication].keyWindow endEditing:YES];
    return YES;
}


@end
