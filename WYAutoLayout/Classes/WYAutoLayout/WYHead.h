//
//  WYHead.h
//  WYAutoLayout
//
//  Created by 王宇 on 2019/7/25.
//  Copyright © 2019 wyxlh. All rights reserved.
//

#ifndef WYHead_h
#define WYHead_h

//判断iPhone5系列
#define Is_IPHONE5        CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(640, 1136))
//判断iPhone6系列
#define Is_IPHONE6        CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(750, 1334))
//判断iphone6+系列
#define Is_IPHONE6Plus    CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(1242, 2208))
//判断iPhoneX
#define Is_IPHONEX        CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(1125, 2436))
//判断iPHoneXr
#define Is_IPHONEXr       CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(828, 1792))
//判断iPhoneXs
#define Is_IPHONEXs       CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(1125, 2436))
//判断iPhoneXs Max
#define Is_IPHONEXs_Max   CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(1242, 2688))

#define ScreenWidth       [UIScreen mainScreen].bounds.size.width
/// 比例
#define prpt              ScreenWidth/750.0f*2


#endif /* WYHead_h */
