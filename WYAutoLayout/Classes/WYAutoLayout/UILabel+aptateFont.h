//
//  UILabel+aptateFont.h
//  WYAutoLayout_Example
//
//  Created by 王宇 on 2019/7/25.
//  Copyright © 2019 wyxlh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (aptateFont)

//适配屏幕的字体
@property (nonatomic, assign) IBInspectable BOOL isAdapterFont;

@end

NS_ASSUME_NONNULL_END
