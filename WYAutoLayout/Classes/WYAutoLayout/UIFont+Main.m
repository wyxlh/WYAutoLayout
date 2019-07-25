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
    return [UIFont systemFontOfSize:fontSize + [self wy_FontScaleSize]];
}

+ (UIFont *)wy_boldSystemFontOfSize:(CGFloat)fontSize {
    return [UIFont wy_boldSystemFontOfSize:fontSize + [self wy_FontScaleSize]];
}

+ (CGFloat)wy_FontScaleSize {
    if (Is_IPHONE5) {
        return -2;
    }else if(Is_IPHONE6) {
        return 0;
    }else{
        return 1;
    }
}

@end
