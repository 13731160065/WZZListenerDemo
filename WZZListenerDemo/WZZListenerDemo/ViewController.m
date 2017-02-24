//
//  ViewController.m
//  WZZListenerDemo
//
//  Created by 舞蹈圈 on 17/2/24.
//  Copyright © 2017年 wzz. All rights reserved.
//

#import "ViewController.h"
#import "WZZListenManager.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _greenViewCon.constant = [UIScreen mainScreen].bounds.size.height;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [[WZZListenManager shareManager] startListenWithBlock:^(Float32 level) {
        _greenViewCon.constant = [UIScreen mainScreen].bounds.size.height*level;
    }];
}
- (IBAction)swdClick:(id)sender {
    UISwitch * sw = sender;
    [[WZZListenManager shareManager] setUseMaxVal:sw.on];
}

@end
