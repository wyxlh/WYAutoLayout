//
//  UILabel+aptateFont.m
//  WYAutoLayout_Example
//
//  Created by 王宇 on 2019/7/25.
//  Copyright © 2019 wyxlh. All rights reserved.
//

#import "UILabel+aptateFont.h"
#import "UIFont+Main.h"

@implementation UILabel (aptateFont)

- (BOOL)isAdapterFont {
    return YES;
}

- (void)setIsAdapterFont:(BOOL)isAdapterFont {
    BOOL isBold = [self.font.fontName hasSuffix:@"-Bold"];
    CGFloat adapterSize = self.font.pointSize + [UIFont wy_FontScaleSize];
    if(isBold) {
        self.font = [UIFont boldSystemFontOfSize:adapterSize];
    } else {
        self.font = [UIFont systemFontOfSize:adapterSize];
    }
}


@end
