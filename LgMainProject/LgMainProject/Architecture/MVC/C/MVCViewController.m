//
//  MVCViewController.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCViewController ()
@property (nonatomic, strong) UILabel *demandDes;//需求描述
@property (nonatomic, strong) MVCView *mvcView;
@property (nonatomic, strong) MVCModel *model;
@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //创建模型数据, 赋值
    self.model = [[MVCModel alloc] init];
    self.model.viewColor = [self getRandomColor];
    
    //模型赋值
    self.mvcView.model = self.model;
}

#pragma mark - UI
- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];

    [self.view addSubview:self.demandDes];
    self.demandDes.frame = CGRectMake(20, [UIScreen mainScreen].bounds.size.height - 100, [UIScreen mainScreen].bounds.size.width - 40, 100);
    self.demandDes.text = @"一个简单的需求 : 点击空白区域, 改变View的颜色";
    
    [self.view addSubview:self.mvcView];
    self.mvcView.frame = CGRectMake(0, 0, 100, 100);
    self.mvcView.center = self.view.center;
}

#pragma mark - Private Method
- (UIColor *)getRandomColor {
    return [UIColor colorWithRed:arc4random_uniform(255.0)/ 255.0
                           green:arc4random_uniform(255.0)/ 255.0
                            blue:arc4random_uniform(255.0)/ 255.0
                           alpha:1];
}

#pragma mark - Setter && Getter

- (UILabel *)demandDes {
    if (!_demandDes) {
        _demandDes = [[UILabel alloc] init];
        _demandDes.textColor = [UIColor blackColor];
        _demandDes.backgroundColor = [UIColor whiteColor];
        _demandDes.font = [UIFont systemFontOfSize:15];
        _demandDes.numberOfLines = 0;
        _demandDes.textAlignment = NSTextAlignmentCenter;
    }
    return _demandDes;
}

- (MVCView *)mvcView {
    if (!_mvcView) {
        _mvcView = [[MVCView alloc] init];
        _mvcView.backgroundColor = [UIColor lightGrayColor];
    }
    return _mvcView;
}


@end
