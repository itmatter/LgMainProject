//
//  LgUIKitServiceProtocol.h
//  LgUIKit
//
//  Created by lumi on 2020/5/7.
//  Copyright © 2020 lumi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LgUIKitServiceProtocol <NSObject>

//获取一个简单的View
- (UIView *)getAView;

@end

NS_ASSUME_NONNULL_END
