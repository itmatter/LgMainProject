//
//  MVPSizeProtocol.h
//  ArchitectureDesign
//
//  Created by 李礼光 on 2020/4/11.
//  Copyright © 2020 LG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol MVPSizeProtocol <NSObject>
@required
- (CGSize)randomSizeWithMaxWidth:(CGFloat)maxW maxHeight:(CGFloat)maxH;
@end

NS_ASSUME_NONNULL_END
