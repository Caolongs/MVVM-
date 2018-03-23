//
//  MVCViewController.m
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCViewController () <MVCViewDelegate>

@property (nonatomic, strong) MVCView *mvcView;
@property (nonatomic, strong) MVCModel *mvcModel;

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MVC";
    
    //view
    self.mvcView = [[MVCView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.mvcView];
    self.mvcView.delegate = self;
    
    //model
    self.mvcModel = [[MVCModel alloc] init];
    self.mvcModel.contentStr = @"MVC初始数据";
    
    
    //传值
    self.mvcView.model = self.mvcModel;
    
    
}

// delegate - 事件
- (void)onBtnClick {
    
    //逻辑处理
    int num = arc4random_uniform(100);
    self.mvcModel.contentStr = [NSString stringWithFormat:@"MVC数值改变%d",num];
    
    
    // 根据需要改变某个页面展示内容
    self.mvcView.model = self.mvcModel;
}



@end
