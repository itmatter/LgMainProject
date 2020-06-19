//
//  MVVMViewModel.h
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/12.
//  Copyright © 2020 LG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MVVMViewModel : NSObject

- (instancetype)initWithDes:(NSString *)des;

@property(nonatomic, strong) NSString *des;
@property(nonatomic, assign) CGFloat height;

@end

NS_ASSUME_NONNULL_END
