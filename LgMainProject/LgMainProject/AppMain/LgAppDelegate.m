//
//  LgAppDelegate.m
//  LgMainProject
//
//  Created by lumi on 2020/5/7.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "LgAppDelegate.h"

@implementation LgAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //注册Beehive
    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    return YES;
}
@end
