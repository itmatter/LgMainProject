//
//  main.m
//  LgMainProject
//
//  Created by lumi on 2020/4/26.
//  Copyright © 2020 lumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LgAppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([LgAppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
