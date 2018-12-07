//
//  ViewController.m
//  RNAndiOS
//
//  Created by myxc on 2018/12/3.
//  Copyright © 2018 myxc. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "NavSingleManager.h"
#import "BaseNavController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [pushButton setTitle:@"点我去" forState:UIControlStateNormal];
    pushButton.frame = CGRectMake(100, 100, 100, 100);
    [pushButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushToRN) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
}

- (void)pushToRN {
    SecondViewController *second = [[SecondViewController alloc] init];
    [[NavSingleManager shareInstance].navController pushViewController:second animated:YES];
}

@end
