//
//  BeehiveDemoViewController.m
//  LgMainProject
//
//  Created by LiGuang on 2020/6/2.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "BeehiveDemoViewController.h"
#import <LgUIKit/LgUIKit.h>

#define UIScreenW [UIScreen mainScreen].bounds.size.width
#define UIScreenH [UIScreen mainScreen].bounds.size.height

@interface BeehiveDemoViewController ()
@property (nonatomic, strong) UILabel *demandDes;//需求描述
@end

@implementation BeehiveDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    //Beehive获取注册的Module服务
    id< LgCustomViewProcotol  > service = [[BeeHive shareInstance] createService:@protocol(LgCustomViewProcotol)];
    //获取一个View
    UIView *v =  [service getAView];
    [self.view addSubview:v];
    v.center = self.view.center;
    
    
    [self.view addSubview:self.demandDes];
}


- (UILabel *)demandDes {
    if (!_demandDes) {
        _demandDes = [[UILabel alloc] init];
        _demandDes.textColor = [UIColor blackColor];
        _demandDes.backgroundColor = [UIColor whiteColor];
        _demandDes.font = [UIFont systemFontOfSize:15];
        _demandDes.numberOfLines = 0;
        _demandDes.textAlignment = NSTextAlignmentCenter;
        _demandDes.frame = CGRectMake(20, UIScreenH - 100, UIScreenW - 40, 100);
        _demandDes.text = @"一个简单的需求 : 每次进入创建一个不同颜色的View";
    }
    return _demandDes;
}

@end
