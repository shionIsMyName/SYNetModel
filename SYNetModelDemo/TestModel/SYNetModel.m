//
//  SYNetModel.m
//
//  Created by shiyong on 16/6/7.
//  Copyright © 2016年 sy. All rights reserved.
//

#import "SYNetModel.h"




@implementation SYNetModel


+(void) netModelWithParams:(NSDictionary *) requestParams
                requestUrl:(NSString *) requestUrl
               requestType:(SYREQUESTTYPE) requestType
         custom_setting_af:(void(^)(NSURLSessionConfiguration *configuration,
                                    AFURLSessionManager *manager)) configurationHandler
                completion:(void(^)(id filledModel)) completion
                   failure:(void(^)(NSError *error)) failure{
    //初始化会话管理器
    //initilizing afnetworking
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    //个性化设置
    //custom setting of afnetworking
    if (configurationHandler) {
        configurationHandler(configuration,manager);
    }
    
    
    NSMutableURLRequest *request;
    NSError *error_serilization = nil;
    if (!requestUrl) {
        requestUrl=@"";
    }
    //判断请求类型
    //judging request type
    if (requestType==SYREQUESTTYPEGET) {
        request  = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:requestUrl parameters:requestParams error:&error_serilization];
    }else if(requestType==SYREQUESTTYPEPOSTHTTP){
        request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:requestUrl parameters:requestParams error:&error_serilization];
    }else{
        request = [[AFJSONRequestSerializer serializer] requestWithMethod:@"POST" URLString:requestUrl parameters:requestParams error:&error_serilization];
    }
    
    
    //请求参数序列化成功 则继续 否则提示错误
    //if serilization requestParams is ok then perceed
    if (error_serilization) {
        NSLog(@"serializing requestParams failed,the error is =>%@",error_serilization);
    }else{
        NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
            if (error) {
                NSLog(@"Error: %@", error);
                if (failure) {
                    failure(error);
                }
            } else {
                //if response content-type is text/html,then responseObject is nsdata
                //otherwise is json/string
                id responseData ;
                if ([responseObject isKindOfClass:[NSData class]]) {
                    responseData = [responseObject mj_JSONString];
                }else{
                    responseData = responseObject;
                }
                NSLog(@"responseData==>%@",responseData);
                //mapping data to model/映射数据到模型
                //self means who is subclass of the class
                id model = [self mj_objectWithKeyValues:responseData];
                //passing filled model/传递填充好的模型
                if (completion) {
                    completion(model);
                }
            }
        }];
        [dataTask resume];
    }
}

@end
