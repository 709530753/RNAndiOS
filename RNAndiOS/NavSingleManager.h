//
//  NavSingleManager.h
//  RNAndiOS
//
//  Created by myxc on 2018/12/7.
//  Copyright © 2018 myxc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseNavController.h"

@interface NavSingleManager : NSObject

+ (NavSingleManager *)shareInstance;

@property (nonatomic, strong) BaseNavController *navController;

@end
