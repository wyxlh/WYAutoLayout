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
    if (Is_IPHONE5) {
        //如果是 iPhone5比例设置为0.85
        proportion = 0.85;
    }else if (Is_IPHONE6Plus || Is_IPHONEX || Is_IPHONEXs || Is_IPHONEXs_Max || Is_IPHONEXr) {
        //如果是 6P,X,XS 或者 XS_MAX设置为 1.12
        proportion = 1.12;
    }
    //设置新的约束值
    self.constant = self.constant * proportion;
}

@end
