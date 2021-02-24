//
//  ViewController.m
//  Flutter_iOS
//
//  Created by 顾钱想 on 2021/2/24.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"iOS与Flutter交互";
    // Do any additional setup after loading the view.
}

///跳转到Flutter
- (IBAction)pushFlutter:(UIButton *)sender {
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithProject:nil initialRoute:@"myApp" nibName:nil bundle:nil];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}

@end
