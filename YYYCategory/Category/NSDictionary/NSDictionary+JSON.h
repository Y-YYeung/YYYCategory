//
//  NSDictionary+JSON.h
//  V2知乎
//
//  Created by Mon on 11/18/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JSON)

/**
 *  @author Mon
 *
 *  @brief NSDictionary 转 JSON
 *
 *  @return JSON 数据
 */
- (NSData *)JSONData;

/**
 *  @author Mon
 *
 *  @brief NSDictionary 转 JSON 形式的字符串
 *
 *  @return 具有 JSON 形式的字符串
 */
- (NSString *)JSONString;

@end
