//
//  MovieModel.h
//  TestModel
//
//  Created by shiyong on 16/6/14.
//  Copyright © 2016年 sy. All rights reserved.
//

#import "BaseModel.h"

@interface MovieModel : BaseModel
@property (nonatomic,copy) NSString *movieid;
@property (nonatomic,copy) NSString *rating;
@property (nonatomic,copy) NSString *genres;
@property (nonatomic,copy) NSString *runtime;
@property (nonatomic,copy) NSString *language;

@end
