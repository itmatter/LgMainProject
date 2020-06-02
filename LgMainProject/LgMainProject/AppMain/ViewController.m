//
//  ViewController.m
//  LgMainProject
//
//  Created by lumi on 2020/4/26.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "ViewController.h"
#import "MVCViewController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"
#import "BeehiveDemoViewController.h"

static NSString *ViewControllerTableViewCellID = @"ViewControllerTableViewCellID";

@interface ViewController ()<UITableViewDelegate , UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"架构设计";
    [self.view addSubview:self.tableView];
    [self setupFakeData];
 
}


#pragma mark - Fake Data
- (void)setupFakeData {
    self.dataSource = @[
        @{@"MVC":@"MVCViewController"},
        @{@"MVP":@"MVPViewController"},
        @{@"MVVM":@"MVVMViewController"},
        @{@"Beehive":@"BeehiveDemoViewController"}
    ] ;
}

#pragma mark - Private Method

#pragma mark - UITableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ViewControllerTableViewCellID];
    NSDictionary *vcDict = self.dataSource[indexPath.row];
    cell.textLabel.text = vcDict.allKeys.firstObject;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *vcDict = self.dataSource[indexPath.row];
    NSString *className = vcDict.allValues.firstObject;
    UIViewController *vc = [[NSClassFromString(className) alloc] init];
    vc.title = vcDict.allKeys.firstObject;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - Setter && Getter
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ViewControllerTableViewCellID];
    }
    return _tableView;
}




@end
