//
//  JPNetwork.m
//  StandardProject
//
//  Created by AppsComm on 2017/9/15.
//  Copyright © 2017年 quzhongrensan. All rights reserved.
//

#import "JPNetwork.h"
#import <MJExtension.h>
@implementation JPNetwork
static CNHomeRequest *manager = nil;

+(instancetype)cn_Request{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[CNHomeRequest alloc] init];
    });
    return manager;
}

#pragma public

-(void)cn_HomeRefreshDataCompletion:(BaseComplectionBlock)completion{
    self.page = 1;
    self.updateTime = @"0";
    
    NSString *url = [NSString stringWithFormat:@"%@-p%ld-s10-l%@.json",self.baseUrl,self.page,self.updateTime];
    
    [self cn_GetRequesWithParams:nil UrlString:url andCompletion:^(id response, BOOL success, NSError *error) {
        if (completion) {
            HomeModel *model = [HomeModel mj_objectWithKeyValues:response];
            self.updateTime = [model.result.newslist lastObject].lasttime;
            completion(model,success ,error);
        }
    }];
}


-(void)cn_HomeLoadMoreDataCompletion:(BaseComplectionBlock)completion{
    self.page += 1;
    NSString *url = [NSString stringWithFormat:@"%@-p%ld-s10-l%@.json",self.baseUrl,self.page,self.updateTime];
    
    [self cn_GetRequesWithParams:nil UrlString:url andCompletion:^(id response, BOOL success, NSError *error) {
        if (completion) {
            HomeModel *model = [HomeModel mj_objectWithKeyValues:response];
            self.updateTime = [model.result.newslist lastObject].lasttime;
            completion(model,success ,error);
        }
    }];
}

@end
