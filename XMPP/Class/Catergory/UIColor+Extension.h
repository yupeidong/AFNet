//
//  UIColor+Extension.h
//  HQBProject
//
//  Created by taolei-mac on 2017/4/18.
//  Copyright © 2017年 com.zhejiangchain.ios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

+ (UIColor *)colorWithRGBHex:(UInt32)hex;

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

/// 颜色转化成UIImage,尺寸为1*1
- (UIImage *)image;

/// 颜色转化成UIImage,特定的尺寸
- (UIImage *)imageWithSpecSize:(CGSize)specSize;

@end
