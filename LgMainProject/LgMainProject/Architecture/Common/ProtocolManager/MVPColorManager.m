//
//  MVPColorManager.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVPColorManager.h"

@implementation MVPColorManager

- (UIColor *)randomColor {
    return [UIColor colorWithRed:arc4random_uniform(255.0)/ 255.0
                           green:arc4random_uniform(255.0)/ 255.0
                            blue:arc4random_uniform(255.0)/ 255.0
                           alpha:1];
}

@end
