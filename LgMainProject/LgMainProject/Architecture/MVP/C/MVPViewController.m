//
//  MVPViewController.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPPresenter.h"

@interface MVPViewController ()
@property (nonatomic, strong) MVPPresenter *mvpPresenter;
@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.mvpPresenter = [[MVPPresenter alloc] initWithViewController:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.mvpPresenter mvpDoSomething];
}



@end
