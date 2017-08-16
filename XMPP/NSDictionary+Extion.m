//
//  NSDictionary+Extion.m
//  XMPP
//
//  Created by 喻沛 on 2017/8/11.
//  Copyright © 2017年 喻沛. All rights reserved.
//

#import "NSDictionary+Extion.h"

@implementation NSDictionary (Extion)

- (NSDictionary *)keyWith:(NSDictionary *)dic
{
    NSMutableDictionary * mutableDic = [[NSMutableDictionary alloc] initWithDictionary:self];
    for (NSString * key in dic.allKeys) {
        
        [mutableDic setObject:[dic objectForKey:key] forKey:key];
    }
    
    return mutableDic;
}











@end
