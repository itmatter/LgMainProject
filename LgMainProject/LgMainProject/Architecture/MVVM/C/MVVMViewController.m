//
//  MVVMViewController.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/12.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMCell.h"
#import "MVVMViewModel.h"
@interface MVVMViewController ()<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) NSArray <MVVMViewModel *>*dataSource;
@property(nonatomic, strong) UITableView *table;
@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupFakeData];
    
    
    self.table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.table.dataSource = self;
    self.table.delegate = self;
    [self.table registerClass:[MVVMCell class] forCellReuseIdentifier:[MVVMCell description]];
    [self.view addSubview:self.table];
}


- (void)setupFakeData {
    self.dataSource = @[
        [[MVVMViewModel alloc] initWithDes:@"aaaaaaaa"],
        [[MVVMViewModel alloc] initWithDes:@"bbbb"],
        [[MVVMViewModel alloc] initWithDes:@"cccccccccccccccccccccccccccccccccccccccccccccccccccc"],
        [[MVVMViewModel alloc] initWithDes:@"dddd"],
        [[MVVMViewModel alloc] initWithDes:@"eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"],
        [[MVVMViewModel alloc] initWithDes:@"ffffffff"],
        [[MVVMViewModel alloc] initWithDes:@"ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg"],
    ];
}


#pragma mark - Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MVVMCell *cell = [tableView dequeueReusableCellWithIdentifier:[MVVMCell description]];
    MVVMViewModel *viewmodel = self.dataSource[indexPath.row];
    cell.textLabel.text = viewmodel.des;
    cell.textLabel.numberOfLines = 0;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    MVVMViewModel *viewmodel = self.dataSource[indexPath.row];
    return viewmodel.height + 30;
}


@end
