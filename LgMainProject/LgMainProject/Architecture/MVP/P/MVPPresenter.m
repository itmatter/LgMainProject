//
//  MVPPresenter.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVPPresenter.h"
#import "MVPModel.h"

#import "MVPColorManager.h"
#import "MVPSizeManager.h"

#import <UIKit/UIKit.h>
#import <LgPublic/LgPublic.h>


#define UIScreenW [UIScreen mainScreen].bounds.size.width
#define UIScreenH [UIScreen mainScreen].bounds.size.height


@interface MVPPresenter ()

@property (nonatomic, strong) MVPColorManager *colorManager;//负责颜色
@property (nonatomic, strong) MVPSizeManager *sizeManager;//负责大小

@property (nonatomic, strong) MVPViewController *viewController;

@end

@implementation MVPPresenter

- (instancetype)initWithViewController:(MVPViewController *)viewController {
    if (self = [super init]) {
        self.viewController = viewController;
        self.colorManager = [[MVPColorManager alloc] init];
        self.sizeManager = [[MVPSizeManager alloc] init];
        [self setupUI];
    }
    return self;
}

- (void)mvpDoSomething {
    //初始化模型
    MVPModel *model = [[MVPModel alloc] init];
    
    //模块化项目写法
    id< LgUtilsProcotol > service = [[BeeHive shareInstance] createService:@protocol(LgUtilsProcotol)];
    model.viewColor = [service randomColor];
    model.viewSize = [service randomSizeWithMaxWidth:300 maxHeight:300];
    
    //View处理
    self.viewController.mvpView.model = model;
    self.viewController.mvpView.center = self.viewController.view.center;
}

#pragma mark - UI
- (void)setupUI {
    self.viewController.view.backgroundColor = [UIColor whiteColor];
    
    /*
     理解一 : 对于mvpPresenter是业务层, 可以在mvpPresenter中关联指定的控制器, 也就是mvpPresenter中包含一个UIViewController属性的对象, 也可以有View对象, Model对象, 然后在mvpPresenter中进行操作. 也就是把所有的MVC中C的逻辑放在mvpPresenter中处理.
     
     
     理解二 : 对于mvpPresenter是业务层, 我们可以把要处理的函数, 方法都放入在mvpPresenter中处理封装, 我们在ViewController中调用方法, 生成模型并赋值,也就是,我们并不关心在C中的任何业务逻辑, 只需要做好相应的布局, 也有点类类似于定义好一个专属的工具类.
     
     
     MVP + 协议式编程应用
     **/

    self.viewController.demandDes = [[UILabel alloc] init];
    self.viewController.demandDes.textColor = [UIColor blackColor];
    self.viewController.demandDes.backgroundColor = [UIColor whiteColor];
    self.viewController.demandDes.font = [UIFont systemFontOfSize:15];
    self.viewController.demandDes.numberOfLines = 0;
    self.viewController.demandDes.textAlignment = NSTextAlignmentCenter;
    
    [self.viewController.view addSubview:self.viewController.demandDes];
    self.viewController.demandDes.frame = CGRectMake(20, UIScreenH - 100, UIScreenW - 40, 100);
    self.viewController.demandDes.text = @"一个简单的需求 : 点击不同View的区域, 改变颜色与大小";
    
    self.viewController.mvpView = [[MVPView alloc] init];
    self.viewController.mvpView.tag = 101;
    self.viewController.mvpView.backgroundColor = [UIColor lightGrayColor];
    [self.viewController.view addSubview:self.viewController.mvpView];
    self.viewController.mvpView.frame = CGRectMake(0, 0, UIScreenW - 100, 100);
    self.viewController.mvpView.center = self.viewController.view.center;
}




@end
