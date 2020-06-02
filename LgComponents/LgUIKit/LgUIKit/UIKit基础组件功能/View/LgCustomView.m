//
//  LgCustomView.m
//  LgUIKit
//
//  Created by LiGuang on 2020/6/2.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "LgCustomView.h"
#import <LgPublic/LgPublic.h>

@implementation LgCustomView

- (UIView *)getAView {
    UIView *v = [UIView new];
    id<LgUtilsProcotol> service = [[BeeHive shareInstance] createService:@protocol(LgUtilsProcotol)];
    v.backgroundColor = [service randomColor];
    v.frame = CGRectMake(0, 0, 200, 200);
    return v;
}

@end
