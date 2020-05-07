//
//  LgUIKitService.m
//  LgUIKit
//
//  Created by lumi on 2020/5/7.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "LgUIKitService.h"

@implementation LgUIKitService

- (UIView *)getAView {
    UIView *v = [UIView new];
    v.backgroundColor = [UIColor redColor];
    v.frame = CGRectMake(0, 0, 100, 100);
    return v;
}
@end
