//
//  SecondViewController.m
//  RNAndiOS
//
//  Created by myxc on 2018/12/3.
//  Copyright © 2018 myxc. All rights reserved.
//

#import "SecondViewController.h"
#import <React/RCTRootView.h>
#import "RNJSBridge.h"
#import "NextPageController.h"
#import <React/RCTConvert.h>
#import "ThirdViewController.h"
#import <React/UIView+React.h>
#import <React/RCTUIManager.h>
#import "AppDelegate.h"

#define KMainScreenW [UIScreen mainScreen].bounds.size.width
#define KMainScreenH [UIScreen mainScreen].bounds.size.height
#define isIphoneX (KMainScreenH == 812 ? YES : NO)

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize bridge = _bridge;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios&dev=true"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"RNAndiOS" initialProperties:nil launchOptions:nil];
    rootView.backgroundColor = [UIColor whiteColor];
    rootView.frame = CGRectMake(0, isIphoneX?88:64, KMainScreenW, isIphoneX?KMainScreenH-122:KMainScreenH-64);
    [self.view addSubview:rootView];
    
//    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStyleDone target:self action:@selector(goToNextPage)];
//    self.navigationItem.rightBarButtonItem = rightItem;
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(nextPage:(NSString *)className) {
    NSLog(@"className: %@",className);
    self.className = className;
    [self goToNextPage];
}

- (void)goToNextPage {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ThirdViewController *vc = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([ThirdViewController class])];
        AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [app.nav pushViewController:vc animated:YES];
        
    });

}


@end
