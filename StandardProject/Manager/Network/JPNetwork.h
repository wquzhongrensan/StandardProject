//
//  JPNetwork.h
//  StandardProject
//
//  Created by AppsComm on 2017/9/15.
//  Copyright © 2017年 quzhongrensan. All rights reserved.
//

#import "JPBaseNetwork.h"

@interface JPNetwork : JPBaseNetwork
+(instancetype)cn_Request;

//HomeRefresh
-(void)cn_HomeRefreshDataCompletion:(BaseComplectionBlock)completion;

//HomeLoadMore
-(void)cn_HomeLoadMoreDataCompletion:(BaseComplectionBlock)completion;
@end
