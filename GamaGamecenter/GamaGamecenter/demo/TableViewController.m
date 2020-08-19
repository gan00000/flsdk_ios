//
//  TableViewController.m
//  gameCenterLogin
//
//  Created by 谢 京文 on 15/3/2.
//  Copyright (c) 2015年 谢 京文. All rights reserved.
//

#import "TableViewController.h"
#import "GamaGamecenterManager.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize leaderscore = _leaderscore;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [_leaderscore count] + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *listCell = @"scoreCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:listCell];
    
    
    
    if (!cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:listCell] autorelease];
        
        
    }
    
    if (indexPath.row == [_leaderscore count]) {
        cell.textLabel.text = @"关闭";
    }
    else
    {
        GKScore *score = [_leaderscore objectAtIndex:indexPath.row];
        GKPlayer *player = score.player;
        
        
        cell.textLabel.text = player.alias;
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%lli",score.value];
        
    }
    // Configure the cell...
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == [_leaderscore count]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        });
        
        return;
    }
    
    
    
}

@end
