//
//  MVCView.h
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVCView : UIView
@property (nonatomic, strong) MVCModel *model;
@end

NS_ASSUME_NONNULL_END
