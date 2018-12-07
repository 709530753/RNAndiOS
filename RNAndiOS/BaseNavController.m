//
//  BaseNavController.m
//  RNAndiOS
//
//  Created by myxc on 2018/12/6.
//  Copyright © 2018 myxc. All rights reserved.
//

#import "BaseNavController.h"
#import "ViewController.h"
#import "NavSingleManager.h"

@interface BaseNavController ()

@end

@implementation BaseNavController

- (instancetype)init {
    self = [super init];
    if (self) {
       self = [[BaseNavController alloc]initWithRootViewController:[ViewController new]];
        [[NavSingleManager shareInstance] setNavController:self];
    }
    return self;
}

@end
