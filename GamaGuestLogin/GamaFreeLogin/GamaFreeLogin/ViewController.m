//
//  ViewController.m
//

#import "ViewController.h"
#import "GamaFreeLogin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *context = @"syCUVLZIwZAM9corFIW2ryTzEu2YNuZzhdis84wGcWI0Pou13eeLKjDkr7Zubcap5nNLWWY1xKX4ZqBJwKuCMrBRc4uPVIHct7EFxlcCgRpipSYE3BR5PvO8FJXwWrUv";
    NSString *keyPath=[NSHomeDirectory()stringByAppendingPathComponent:@"Library"];
    NSString *printFileName = @"sp_print_file.txt";
    NSString *printfPath = [keyPath stringByAppendingFormat:@"/Caches/%@",printFileName];
    if (![[NSFileManager defaultManager] fileExistsAtPath:printfPath]) {
        [context writeToFile:printfPath atomically:NO encoding:NSUTF8StringEncoding error:nil];
    }
     [GamaFreeLogin bindingFreeAccountWithUserName:@"sfadfgh" andPassword:@"1" andEmail:@"" andLoginId:@"E3DE1977-BD3F-43CC-9C57-9AFFF7637264" andThirdPlate:@"mac"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   
}


@end
