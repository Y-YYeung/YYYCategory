//
//  UIColor+Category.m
//  YYYCategory
//
//  Created by Mon on 10/23/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "UIColor+Category.h"

@implementation UIColor (Category)

- (instancetype)initWithHexString:(NSString *)hexStringToConvert{
    
    //将字符串中的空格去掉，并转换成大写
    NSString *cString = [[hexStringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] uppercaseString];
    
    //从非 # 开始扫描
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    unsigned r,g,b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:(float)(r / 255.0f)
                           green:(float)(r / 255.0f)
                            blue:(float)(r / 255.0f)
                           alpha:1.0];
}

+ (instancetype)colorWithHexString:(NSString *)hexStringToConvert{
    
    return [[UIColor alloc] initWithHexString:hexStringToConvert];
}

@end
