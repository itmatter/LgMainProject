//
//  MVPView.m
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import "MVPView.h"

@implementation MVPView

- (void)setModel:(MVPModel *)model {
    _model = model;
    
    self.backgroundColor = model.viewColor;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, model.viewSize.width, model.viewSize.height);
}

@end
