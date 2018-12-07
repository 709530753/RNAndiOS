//
//  NavSingleManager.m
//  RNAndiOS
//
//  Created by myxc on 2018/12/7.
//  Copyright © 2018 myxc. All rights reserved.
//

#import "NavSingleManager.h"

@implementation NavSingleManager

static NavSingleManager *instance = nil;

+ (NavSingleManager *)shareInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!instance) {
            instance = [NavSingleManager new];
        }
    });
    return instance;
}

@end
