//
//  MVVMViewModek.m
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "MVVMViewModel.h"

@interface MVVMViewModel()

@property (nonatomic, strong) MVVMModel *model;

@end

@implementation MVVMViewModel

- (void)setWithModel{
    
    self.model = [[MVVMModel alloc] init];
    self.model.contentStr = @"MVVM初始值";
    self.contentStr = self.model.contentStr;
}

- (void)handleBtnClick {
    //逻辑处理
    int num = arc4random_uniform(100);
    self.model.contentStr = [NSString stringWithFormat:@"MVVM数值改变%d",num];
    
    self.contentStr = self.model.contentStr;
}

@end
