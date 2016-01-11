//
//  NSDictionary+JSON.m
//  V2知乎
//
//  Created by Mon on 11/18/15.
//  Copyright © 2015 Mon. All rights reserved.
//

#import "NSDictionary+JSON.h"

@implementation NSDictionary (JSON)

- (NSData *)JSONData
{
    if([NSJSONSerialization isValidJSONObject:self])
    {
        return [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    }
    else
    {
        NSAssert(nil, @"NSDictionary -> JSON error occurs");
        return nil;
    }
}

- (NSString *)JSONString
{
    return [[NSString alloc] initWithData:[self JSONData] encoding:NSUTF8StringEncoding];
}

@end
