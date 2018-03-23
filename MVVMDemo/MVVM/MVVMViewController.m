//
//  MVVMViewController.m
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "MVVMViewController.h"
//#import "MVVMModel.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()

@property (nonatomic, strong) MVVMView *mvvmView;
//@property (nonatomic, strong) MVVMModel *mvvmModel;
@property (nonatomic, strong) MVVMViewModel *viewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MVVM";
    
    //viewModel
    self.viewModel = [[MVVMViewModel alloc] init];
    
    //view
    self.mvvmView = [[MVVMView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.mvvmView];
    
    //view 绑定viewModel
    self.mvvmView.viewModel = self.viewModel;
    

    [self.viewModel setWithModel];
    

}



@end
