//
//  MVPViewController.h
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVPView.h"
NS_ASSUME_NONNULL_BEGIN

@interface MVPViewController : UIViewController
@property (nonatomic, strong) MVPView *mvpView;
@property (nonatomic, strong) UILabel *demandDes;//需求描述
@end

NS_ASSUME_NONNULL_END
