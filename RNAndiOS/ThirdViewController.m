//
//  ThirdViewController.m
//  RNAndiOS
//
//  Created by myxc on 2018/12/4.
//  Copyright © 2018 myxc. All rights reserved.
//
#define KMainScreenW [UIScreen mainScreen].bounds.size.width
#define KMainScreenH [UIScreen mainScreen].bounds.size.height
#define isIphoneX (KMainScreenH == 812 ? YES : NO)

#import "ThirdViewController.h"
#import <React/RCTRootView.h>

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    NSURL *jsCodeLocation;
#ifdef DEBUG
    jsCodeLocation = [NSURL URLWithString:[NSString stringWithFormat:@"%@/NextPage.bundle?platform=ios&dev=true", kBaseUrl]];
#else
    jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"bundle/NextPage" withExtension:@"jsbundle"];
#endif
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"NextPage" initialProperties:nil launchOptions:nil];
    rootView.backgroundColor = [UIColor whiteColor];
    rootView.frame = CGRectMake(0, isIphoneX?88:64, KMainScreenW, isIphoneX?KMainScreenH-122:KMainScreenH-64);
    [self.view addSubview:rootView];


}

@end
