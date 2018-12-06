//
//  RNJSBridge.m
//  RNAndiOS
//
//  Created by myxc on 2018/12/4.
//  Copyright © 2018 myxc. All rights reserved.
//

#import "RNJSBridge.h"
#import "ThirdViewController.h"
#import "AppDelegate.h"

@interface RNJSBridge()

@property (nonatomic, strong) RCTResponseSenderBlock senderBlock;

@end

@implementation RNJSBridge

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(nextPage:(NSString *)className) {
    NSLog(@"className: %@",className);

}

- (void)nextPageFromRNJs:(RCTResponseSenderBlock)senderBlock {

}

@end
