//
//  SYNetModel.h
//
//  Created by shiyong on 16/6/7.
//  Copyright © 2016年 sy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "MJExtension.h"


/**
 * requestType/请求类型
 */
typedef enum : NSUInteger {
    SYREQUESTTYPEGET,// equals to afnetworking get request
    SYREQUESTTYPEPOSTJSON,//equals to afnetworking post(json serilizer) request
    SYREQUESTTYPEPOSTHTTP,//equals to afnetworking post(http serilizer) request
} SYREQUESTTYPE;


@interface SYNetModel : NSObject

/**
 *  request sever for data and put them into model/请求数据并封装进模型
 *
 *  @param requestParams        request params/请求参数
 *  @param requestUrl           request url/请求地址
 *  @param requestType          request type/请求类型(含序列化类型)
 *  @param configurationHandler nil is available,if you want do some custom settings here, pls implement this block.you could type this here "manager.responseSerilizer = [AFHttpResponseSerializer serializer]" when content-type of response was text/html.
 传nil会采用afnetworking最新版的默认设置,如果需要自定义设置的话就需要实现这个block,比如说，当请求报错 unacceptable content-Type text/html，你可以在这里对manager的responseSerializer 进行相关设置
 *  @param completion           completion handler,filled model would pass in when request is done/成功回调,请求完成后封装好的模型会传入
 *  @param failure              failure handler,do something here when request is failed/失败回调,请求失败后会调用
 */
+(void) netModelWithParams:(NSDictionary *) requestParams
                requestUrl:(NSString *) requestUrl
               requestType:(SYREQUESTTYPE) requestType
         custom_setting_af:(void(^)(NSURLSessionConfiguration *configuration,
                                    AFURLSessionManager *manager)) configurationHandler
                completion:(void(^)(id filledModel)) completion
                   failure:(void(^)(NSError *error)) failure;
@end
