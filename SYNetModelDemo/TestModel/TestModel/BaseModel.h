//
//  BaseModel.h
//  TestModel
//
//  Created by shiyong on 16/6/14.
//  Copyright © 2016年 sy. All rights reserved.
//

#import "SYNetModel.h"

@interface BaseModel : SYNetModel
@property (nonatomic,copy) NSString *resultcode;
@property (nonatomic,copy) NSString *reason;
@property (nonatomic,copy) NSString *error_code;


@end
