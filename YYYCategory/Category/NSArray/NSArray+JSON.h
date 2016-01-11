//
//  NSArray+JSON.h
//  V2ZH
//
//  Created by Mon on 1/5/16.
//  Copyright © 2016 Mon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JSON)

/**
 *  @author Mon
 *
 *  @brief NSArray 转 JSON
 *
 *  @return JSON 数据
 */
- (NSData *)JSONData;

/**
 *  @author Mon
 *
 *  @brief NSArray 转 JSON 形式的字符串
 *
 *  @return 具有 JSON 形式的字符串
 */
- (NSString *)JSONString;

@end
