//
//  MVCView.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVCView.h"

@implementation MVCView


- (void)setModel:(MVCModel *)model {
    _model = model;
    self.backgroundColor = model.viewColor;
}


@end
