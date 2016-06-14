//
//  ViewController.m
//  TestModel
//
//  Created by shiyong on 16/6/7.
//  Copyright © 2016年 sy. All rights reserved.
//

#import "ViewController.h"
#import "SYNetModel.h"
#import "MovieListModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSDictionary *params = @{@"title":@"%E9%92%A2%E9%93%81%E4%BE%A03"
                             ,@"key":@"55377d57e2f4806afe8f80b055cad48d"};
    NSString *url = @"http://v.juhe.cn/movie/index";
    
    //get your model filled up with fresh data!
    //请求数据 且封装进模型
    [MovieListModel netModelWithParams:params
                            requestUrl:url
                           requestType:SYREQUESTTYPEGET
                     custom_setting_af:nil
                            completion:^(id filledModel) {
                                //filled model 是转换好的模型,你可以在这里进行更新页面逻辑
                                MovieListModel *model = filledModel;
                                NSLog(@"model=>>%@",model);
                            } failure:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
