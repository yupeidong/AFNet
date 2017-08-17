//
//  XPHttpTool.m
//  XMPP
//
//  Created by 喻沛 on 2017/8/11.
//  Copyright © 2017年 喻沛. All rights reserved.
//

#import "XPHttpTool.h"

@implementation XPHttpTool

+ (AFHTTPSessionManager *)creatManger
{
    
    AFHTTPSessionManager *  mangers = [AFHTTPSessionManager manager];
    mangers.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/plain", nil];
    mangers.requestSerializer.timeoutInterval = 15.0;
    
    //    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    mangers.requestSerializer = [AFJSONRequestSerializer serializer];
    //将token封装入请求头
    [mangers.requestSerializer setValue:[NSString stringWithFormat:@"Bearer %@",[[NSUserDefaults standardUserDefaults] objectForKey:@"token"]] forHTTPHeaderField:@"Authorization"];
    
    return mangers;
    
}


+ (void)getUrl:(NSString *)urlString params:(NSDictionary *)params success:(SUCCESS)success failer:(FAILER)failer
{
    [[self creatManger] GET:nil parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}

+ (void)postUrl:(NSString *)urlString params:(NSDictionary *)params success:(SUCCESS)success failer:(FAILER)failer
{
    [[self creatManger] POST:nil parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}



@end








