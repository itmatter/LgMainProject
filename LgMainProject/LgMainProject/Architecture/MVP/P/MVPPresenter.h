//
//  MVPPresenter.h
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPViewController.h"

NS_ASSUME_NONNULL_BEGIN
@interface MVPPresenter : NSObject

- (instancetype)initWithViewController:(MVPViewController *)viewController;
- (void)mvpDoSomething;

@end

NS_ASSUME_NONNULL_END
