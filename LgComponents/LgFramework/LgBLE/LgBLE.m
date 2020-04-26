//
//  LgBLE.m
//  LgBLE
//
//  Created by lumi on 2020/4/26.
//  Copyright © 2020 lumi. All rights reserved.
//

#import "LgBLE.h"

@implementation LgBLE

+ (NSBundle *)frameworkBundle {
    static NSBundle* frameworkBundle = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        NSString* mainBundlePath = [[NSBundle mainBundle] resourcePath];
        NSString* frameworkBundlePath = [mainBundlePath stringByAppendingPathComponent:@"LgBLEBundle.bundle"];
        frameworkBundle = [NSBundle bundleWithPath:frameworkBundlePath];
    });
    return frameworkBundle;
}



@end
