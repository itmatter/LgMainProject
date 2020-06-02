//
//  MVPSizeManager.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVPSizeManager.h"

@implementation MVPSizeManager

-(CGSize)randomSizeWithMaxWidth:(CGFloat)maxW maxHeight:(CGFloat)maxH {
    return CGSizeMake(arc4random_uniform(maxW), arc4random_uniform(maxH));
}

@end
