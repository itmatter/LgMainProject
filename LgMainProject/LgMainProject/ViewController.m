//
//  ViewController.m
//  LgMainProject
//
//  Created by lumi on 2020/4/26.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "ViewController.h"
#import <LgUIKit/LgUIKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Beehive获取注册的Module服务
    id< LgUIKitServiceProtocol > service = [[BeeHive shareInstance]
                                            createService:@protocol(LgUIKitServiceProtocol)];
    //获取一个View
    UIView *v =  [service getAView];
    [self.view addSubview:v];
    
    v.center = self.view.center;
    v.backgroundColor = [UIColor redColor];
}


@end
