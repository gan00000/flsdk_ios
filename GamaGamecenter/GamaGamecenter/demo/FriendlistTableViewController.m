//
//  FriendlistTableViewController.m
//  gameCenterLogin
//


#import "FriendlistTableViewController.h"
#import "GamaGamecenterManager.h"

@interface FriendlistTableViewController ()

@property (retain, nonatomic) NSMutableArray *friendsIDs;

@end

@implementation FriendlistTableViewController

@synthesize friendsIDs  =_friendsIDs;

- (void)dealloc
{
    if (_friendsIDs) {
        [_friendsIDs release];
        _friendsIDs = nil;
    }
    [super dealloc];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _friendsIDs = [[NSMutableArray alloc] initWithCapacity:10];
    
    
    [[GamaGamecenterManager shareGamecenterManager] retrieveFriends:^(BOOL isSuccessed) {
        if (isSuccessed) {
            [self.tableView reloadData];
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [[GamaGamecenterManager shareGamecenterManager].friends count] + 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *listCell = @"friendCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:listCell];
    
    
    
    if (!cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:listCell] autorelease];
        
        
    }
    if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].friends count]) {
        cell.textLabel.text = @"发送邀请";
    }
    else if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].friends count]+1) {
        cell.textLabel.text = @"关闭";
    }
    else
    {
        GKPlayer *player = [[GamaGamecenterManager shareGamecenterManager].friends objectAtIndex:indexPath.row];
        cell.textLabel.text = player.alias;
    }
    
    
    // Configure the cell...
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].friends count]+1) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self dismissViewControllerAnimated:YES completion:nil];
        });
        
        return;
    }
    
    if (indexPath.row == [[GamaGamecenterManager shareGamecenterManager].friends count]) {
        [[GamaGamecenterManager shareGamecenterManager] addFriends:_friendsIDs andViewController:self];
        return;
    }
    
    GKPlayer *player = [[GamaGamecenterManager shareGamecenterManager].friends objectAtIndex:indexPath.row];
    
    if ([tableView cellForRowAtIndexPath:indexPath].accessoryType == UITableViewCellAccessoryNone) {
        
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
        [_friendsIDs addObject:player.playerID];
    }
    else
    {
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
        [_friendsIDs removeObject:player.playerID];
    }
    
    
    
}

@end
