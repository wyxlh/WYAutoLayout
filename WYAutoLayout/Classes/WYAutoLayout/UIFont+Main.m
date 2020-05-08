//
//  UIFont+Main.m
//  WYAutoLayout_Example
//
//  Created by 王宇 on 2019/7/25.
//  Copyright © 2019 wyxlh. All rights reserved.
//

#import "UIFont+Main.h"
#import "WYHead.h"

@implementation UIFont (Main)

+ (UIFont *)wy_systemFontOfSize:(CGFloat)fontSize {
    return [UIFont systemFontOfSize:fontSize*prpt];
}

+ (UIFont *)wy_boldSystemFontOfSize:(CGFloat)fontSize {
    return [UIFont wy_boldSystemFontOfSize:fontSize*prpt];
}

@end
