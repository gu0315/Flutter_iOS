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

///iOS跳转到Flutter与Flutter通信
- (IBAction)pushFlutter:(UIButton *)sender {
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithProject:nil initialRoute:nil nibName:nil bundle:nil];
    ///通道名称
    NSString *channelName = @"channel";
    ///方法通道
    FlutterMethodChannel *methodChannel = [FlutterMethodChannel methodChannelWithName:channelName binaryMessenger:flutterViewController.binaryMessenger];
    ///设置回调
    __block FlutterMethodChannel *b= methodChannel;
    [methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        // call.method 获取 flutter 给回到的方法名，要匹配到 channelName 对应的多个 发送方法名，一般需要判断区分
        // call.arguments 获取到 flutter 给到的参数，（比如跳转到另一个页面所需要参数）
        // result 是给flutter的回调， 该回调只能使用一次
        NSLog(@"method=%@ \narguments = %@", call.method, call.arguments);

        ///向Flutter发送消息
        [b invokeMethod:@"向Flutter发送消息" arguments:@"我爱你77777"];

    }];
    [self.navigationController pushViewController:flutterViewController animated:YES];
}


- (IBAction)pushFlutter2:(UIButton *)sender {

    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithProject:nil initialRoute:nil nibName:nil bundle:nil];
    ///通道名称
    NSString *channelName = @"channel2";
    ///方法通道
    FlutterBasicMessageChannel *methodChannel = [FlutterBasicMessageChannel messageChannelWithName:channelName binaryMessenger:flutterViewController.binaryMessenger];
    ///设置回调
    [methodChannel setMessageHandler:^(id  _Nullable message, FlutterReply  _Nonnull callback) {

    }];
    [self.navigationController pushViewController:flutterViewController animated:YES];


}


@end
