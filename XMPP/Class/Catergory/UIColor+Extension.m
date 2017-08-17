//
//  UIColor+Extension.m
//  HQBProject
//
//  Created by taolei-mac on 2017/4/18.
//  Copyright © 2017年 com.zhejiangchain.ios. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (UIColor *)colorWithRGBHex:(UInt32)hex
{
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    return [UIColor colorWithRed:(r) / 255.0f green:(g) / 255.0f blue:(b) / 255.0f alpha:1.0];
}

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert
{
    NSString *hexString = [stringToConvert stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    unsigned hexNum;
    if(![scanner scanHexInt:&hexNum]){
        return nil;
    }
    return [UIColor colorWithRGBHex:hexNum];
}

- (UIImage *)image{
    return [self imageWithSpecSize:CGSizeMake(1, 1)];
}

- (UIImage *)imageWithSpecSize:(CGSize)specSize{
    CGRect rect = CGRectMake(0, 0, specSize.width, specSize.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [self CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


@end
