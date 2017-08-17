//
//  UIImage+Extension.h
//  HQBProject
//
//  Created by taolei-mac on 2017/4/18.
//  Copyright © 2017年 com.zhejiangchain.ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 *  根据颜色生成一张图片
 */
+ (UIImage *)createImageWithColor:(UIColor *)color size:(CGSize)size;

/**
 *  根据颜色生成一张图片
 */
+ (UIImage *)createImageWithColor:(UIColor *)color;

/**
 *  返回一张圆形图片
 */
- (instancetype)circleImage;

//对原来的图片的大小进行处理
+ (UIImage *)OriginImage:(UIImage *)image scaleToSize:(CGSize)size;

// 旋转图片
+ (UIImage *)fixOrientation:(UIImage *)aImage;

@end
