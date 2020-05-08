//
//  NSLayoutConstraint+adaptateScreen.m
//  WYAutoLayout_Example
//
//  Created by 王宇 on 2019/7/25.
//  Copyright © 2019 wyxlh. All rights reserved.
//

#import "NSLayoutConstraint+adaptateScreen.h"
#import "WYHead.h"

@implementation NSLayoutConstraint (adaptateScreen)

- (BOOL)isAdaptateScreen {
    return YES;
}

- (void)setIsAdaptateScreen:(BOOL)isAdaptateScreen {
    //比例
    CGFloat proportion = 1.0;
    proportion = proportion*prpt;
    //设置新的约束值
    self.constant = self.constant * proportion;
}

@end
