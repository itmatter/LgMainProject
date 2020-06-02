//
//  LgUtils.m
//  LgPublic
//
//  Created by LiGuang on 2020/6/2.
//  Copyright © 2020 liguang. All rights reserved.
//

#import "LgUtils.h"

@implementation LgUtils

- (UIColor *)randomColor {
    return [UIColor colorWithRed:arc4random_uniform(255.0)/ 255.0
                           green:arc4random_uniform(255.0)/ 255.0
                            blue:arc4random_uniform(255.0)/ 255.0
                           alpha:1];
}


-(CGSize)randomSizeWithMaxWidth:(CGFloat)maxW maxHeight:(CGFloat)maxH {
    return CGSizeMake(arc4random_uniform(maxW), arc4random_uniform(maxH));
}

@end
