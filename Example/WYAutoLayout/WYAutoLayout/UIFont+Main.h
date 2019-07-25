//
//  UIFont+Main.h
//  WYAutoLayout_Example
//
//  Created by 王宇 on 2019/7/25.
//  Copyright © 2019 wyxlh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (Main)

/**
 设置正常字体大小

 @param fontSize 字体大小
 @return 适配的UIFont
 */
+ (UIFont *)wy_systemFontOfSize:(CGFloat)fontSize;

/**
 设置粗体字体大小
 
 @param fontSize 字体大小
 @return 适配的UIFont
 */
+ (UIFont *)wy_boldSystemFontOfSize:(CGFloat)fontSize;

/**
 字体适配大小

 @return 字体大小
 */
+ (CGFloat)wy_FontScaleSize;




@end

NS_ASSUME_NONNULL_END
