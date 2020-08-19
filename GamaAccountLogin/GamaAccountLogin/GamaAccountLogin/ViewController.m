//
//
//
// 
//

#import "ViewController.h"

#import "GamaRequestor.h"
#import "GamaFunction.h"
@interface ViewController ()
- (IBAction)btnShareWithDialog:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testLogin:(NSNotification *)notic
{
    NSLog(@"loginTest:\n%@",notic.userInfo);
}

- (void)testResetPassword:(NSNotification *)notic
{
    NSLog(@"Change Password:\n%@",notic.userInfo);
}

- (void)testRegister:(NSNotification *)notic
{
    NSLog(@"Register:\n%@",notic.userInfo);
}


- (IBAction)btnShareWithDialog:(id)sender {
}
@end
