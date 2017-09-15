//
//  JPNetwork.h
//  StandardProject
//
//  Created by AppsComm on 2017/9/15.
//  Copyright © 2017年 quzhongrensan. All rights reserved.
//

#import "JPBaseNetwork.h"
#import <AFNetworking.h>

/**
 数据解析器类型
 */
typedef NS_ENUM(NSUInteger, ResponseSeializerType) {
    /**
     *  默认类型 JSON  如果使用这个响应解析器类型,那么请求返回的数据将会是JSON格式
     */
    ResponseSeializerTypeDefault = 0,
    /**
     *  JSON类型 如果使用这个响应解析器类型,那么请求返回的数据将会是JSON格式
     */
    ResponseSeializerTypeJSON,
    /*
     *  XML类型 如果使用这个响应解析器类型,那么请求返回的数据将会是XML格式
     */
    ResponseSeializerTypeXML,
    /**
     *  Plist类型 如果使用这个响应解析器类型,那么请求返回的数据将会是Plist格式
     */
    ResponseSeializerTypePlist,
    /*
     *  Compound类型 如果使用这个响应解析器类型,那么请求返回的数据将会是Compound格式
     */
    ResponseSeializerTypeCompound,
    /**
     *  Image类型 如果使用这个响应解析器类型,那么请求返回的数据将会是Image格式
     */
    ResponseSeializerTypeImage,
    /**
     *  Data类型 如果使用这个响应解析器类型,那么请求返回的数据将会是二进制格式
     */
    ResponseSeializerTypeData
};


@interface JPNetworkManager : NSObject

/**
 *  GET请求 By NSURLSession
 *
 *  @param URLString  URL
 *  @param parameters 参数
 *  @param type       数据解析器类型
 *  @param success    请求成功的回调
 *  @param failure    请求失败的回调
 */
+ (void)GET:(NSString *)URLString parameters:(id)parameters responseSeializerType:(ResponseSeializerType)type success:(void(^)(id responseObject))success failure:(void(^)(NSError *error))failure;

@end
