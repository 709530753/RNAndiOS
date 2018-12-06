//
//  SecondViewController.h
//  RNAndiOS
//
//  Created by myxc on 2018/12/3.
//  Copyright © 2018 myxc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTConvert.h>

@interface SecondViewController : UIViewController<RCTBridgeModule>

@property (nonatomic, strong) NSString *className;

@end
