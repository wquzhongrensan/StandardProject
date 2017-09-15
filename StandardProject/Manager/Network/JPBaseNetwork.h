//
//  JPBaseNetwork.h
//  StandardProject
//
//  Created by AppsComm on 2017/9/15.
//  Copyright © 2017年 quzhongrensan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^BaseComplectionBlock)(id response , BOOL success , NSError*error);

@interface JPBaseNetwork : NSObject

@property (strong , nonatomic) NSString *updateTime;
@property (nonatomic , assign) NSInteger page;

-(void)cn_GetRequesWithParams:(NSDictionary *)params UrlString:(NSString*)aUrl andCompletion:(BaseComplectionBlock)completion;

@end
