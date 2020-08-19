//
//  AchievementsList.m
//  gameCenterLogin
//


#import "AchievementsList.h"
#import "GamaGamecenterManager.h"

@interface AchievementsList ()

@end

@implementation AchievementsList

- (void)viewDidLoad {
    [super viewDidLoad];
    [[GamaGamecenterManager shareGamecenterManager] retrieveAchievementMetadata:^(NSArray *descriptions, NSError *error) {
        NSLog(@"Description = %@\n\nerror = %@",descriptions,error);
        [self.tableView reloadData];
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

-(void)reportBtnPressed:(id)sender
{
    NSInteger index = [sender tag];
    
    GKAchievementDescription *achievementDS = [[GamaGamecenterManager shareGamecenterManager].achievementsDES objectAtIndex:index];
    
    [[GamaGamecenterManager shareGamecenterManager] reportAchievementIdentifier:achievementDS.identifier percentComplete:20];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSUInteger num = [[GamaGamecenterManager shareGamecenterManager].achievementsDES count];
    
    NSLog(@"%i",num);
    
    // Return the number of rows in the section.
    return num + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *listCell = @"achieveCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:listCell];
    
    
    
    if (!cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:listCell] autorelease];
        
        
    }
    
    if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].achievementsDES count]) {
        cell.textLabel.text = @"关闭";
    }
    else
    {
        GKAchievementDescription *description = [[GamaGamecenterManager shareGamecenterManager].achievementsDES objectAtIndex:indexPath.row];
        
        
        cell.textLabel.text = description.title;
        cell.detailTextLabel.text = description.unachievedDescription;
        
        UIButton *reportBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
        [reportBtn setTag:indexPath.row];
        [reportBtn addTarget:self action:@selector(reportBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
        [cell addSubview:reportBtn];
        reportBtn.frame = CGRectMake(200, 10, 40, 20);
        
    }
 
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].achievementsDES count]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        });
        
        return;
    }
    
    
    
}

@end
