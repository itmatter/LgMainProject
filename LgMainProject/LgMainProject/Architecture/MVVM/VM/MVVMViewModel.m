//
//  MVVMViewModel.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/12.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVVMViewModel.h"

@implementation MVVMViewModel

- (instancetype)initWithDes:(NSString *)des {
    if (self = [super init]) {
        self.des = des;
    }
    return self;
}



- (CGFloat)height {
    CGSize size = [self.des boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 40, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size;
    return size.height;
}

@end
