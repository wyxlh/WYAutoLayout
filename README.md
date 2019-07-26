# WYAutoLayout

[![CI Status](https://img.shields.io/travis/wyxlh/WYAutoLayout.svg?style=flat)](https://travis-ci.org/wyxlh/WYAutoLayout)
[![Version](https://img.shields.io/cocoapods/v/WYAutoLayout.svg?style=flat)](https://cocoapods.org/pods/WYAutoLayout)
[![License](https://img.shields.io/cocoapods/l/WYAutoLayout.svg?style=flat)](https://cocoapods.org/pods/WYAutoLayout)
[![Platform](https://img.shields.io/cocoapods/p/WYAutoLayout.svg?style=flat)](https://cocoapods.org/pods/WYAutoLayout)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

在 iOS开发过程中,开发人员一般会使用纯代码适配或者AutoLayout来进行适配.
现在开发人员主要是使用AutoLayout来适配了, 有的人喜欢使用Masonry来进行适配,也有很多人喜欢使用 xib 或者 SB 来做适配, 就性能而言,使用Masonry纯代码是要占据优势的,使用 xib 或者 SB 是要增加 cpu 的消耗的.

##本文主要讲的是使用 xib 去适配屏幕和字体大小

#### 对控件添加约束 去自动调整约束大小

我们需要对"NSLayoutConstraint"添加一个分类 一定要加上"IBInspectable"关键字
```
property (nonatomic, assign) IBInspectable BOOL isAdaptateScreen;
```
```
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
```

然后编译下就可以在xib 选中约束看到![39044A88-CB5A-458B-ACA6-1A6371D6E222.png](https://upload-images.jianshu.io/upload_images/5345406-489e298d644586d6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

然后我把程序跑起来可以看到打印效果如下![3DD32677-16BC-41A2-916A-05372EABDCED.png](https://upload-images.jianshu.io/upload_images/5345406-ed89ab4c47194aeb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

我们可以把约束全选 在同一设置从而达到了适配屏幕的效果


#### 对字体大小的自适应屏幕的设置
和适配约束一样的道理 我们需要给 UILable 添加一个分类, 因为 UIFont 本身在 xib 上没有载体,所以我们调整字体大小只能通过 UILable 来设置别的不说先上代码 UIFont分类
```
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
```

UILable 分类代码
```
//适配屏幕的字体
@property (nonatomic, assign) IBInspectable BOOL isAdapterFont;
```

```
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
```

适配字体大小的方式和适配约束的方式是一样的都是在 xib 选中 UILable 去设置属性为 on 如图![F60B4B19-6DAE-4A0A-A007-FCF4DB6430A5.png](https://upload-images.jianshu.io/upload_images/5345406-408e0be2fa4a5788.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
模拟器跑起来的效果![786C10E4-CF5E-4201-B29B-1263F7A9CDAB.png](https://upload-images.jianshu.io/upload_images/5345406-6fa6b1b9fe9a5a32.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

如果就完成了约束适配和字体大小适配了, 是不是很方便

源码在 [GitHub](https://github.com/wyxlh/WYAutoLayout)

## Installation

WYAutoLayout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WYAutoLayout'
```
## Author

wyxlh, wy_wangyu163@163.com

## License

WYAutoLayout is available under the MIT license. See the LICENSE file for more info.
