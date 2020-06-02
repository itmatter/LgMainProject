//
//  LgPublicSize.h
//  LgPublic
//
//  Created by LiGuang on 2020/6/2.
//  Copyright © 2020 liguang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LgUtilsProcotol <NSObject>
- (UIColor *)randomColor;
- (CGSize)randomSizeWithMaxWidth:(CGFloat)maxW maxHeight:(CGFloat)maxH;
@end

NS_ASSUME_NONNULL_END
