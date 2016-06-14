//
//  MovieListModel.m
//  TestModel
//
//  Created by shiyong on 16/6/14.
//  Copyright © 2016年 sy. All rights reserved.
//

#import "MovieListModel.h"
#import "MovieModel.h"

@implementation MovieListModel

+(NSDictionary *) mj_objectClassInArray{
    return @{@"result":[MovieModel class]};
}
@end
