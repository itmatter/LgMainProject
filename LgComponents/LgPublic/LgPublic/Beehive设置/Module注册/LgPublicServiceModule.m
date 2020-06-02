//
//  LgPublicServiceModule.m
//  LgPublicService
//
//  Created by LiGuang on 2020/6/2.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "LgPublicServiceModule.h"
#import "LgPublicService.h"

@implementation LgPublicServiceModule

//YES--异步加载  NO--非异步加载
BH_EXPORT_MODULE(NO)  // 声明该类为模块入口

//模块初始化
-(void)modInit:(BHContext *)context
{
    //注册模块的接口服务
    [[BeeHive shareInstance] registerService:@protocol(LgUtilsProcotol) service:[LgUtils class]];
}

-(BOOL)singleton
{
    return YES;
}

- (NSInteger)modulePriority {
    return 999;
}

@end
