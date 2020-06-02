//
//  MVPView.h
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVPModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface MVPView : UIView
@property (nonatomic, strong) MVPModel *model;
@end

NS_ASSUME_NONNULL_END
