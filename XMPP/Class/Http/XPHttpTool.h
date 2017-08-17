//
//  XPHttpTool.h
//  XMPP
//
//  Created by 喻沛 on 2017/8/11.
//  Copyright © 2017年 喻沛. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SUCCESS)(id responj);
typedef  void(^FAILER)(id error);

@interface XPHttpTool : NSObject

+ (void)getUrl:(NSString *)urlString params:(NSDictionary *)params success:(SUCCESS)success failer:(FAILER)failer;


+ (void)postUrl:(NSString *)urlString params:(NSDictionary *)params success:(SUCCESS)success failer:(FAILER)failer;


@end
