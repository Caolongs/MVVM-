//
//  MVPViewController.m
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPPresenter.h"
#import "MVPModel.h"
#import "MVPView.h"

@interface MVPViewController ()

@property (nonatomic, strong) MVPPresenter *mvcPresenter;
@property (nonatomic, strong) MVPView *mvpView;
@property (nonatomic, strong) MVPModel *mvpModel;

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"MVP";
    
    //presenter
    self.mvcPresenter = [[MVPPresenter alloc] init];
    
    //view
    self.mvpView = [[MVPView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.mvpView];
    
    //model
    self.mvpModel = [MVPModel new];
    self.mvpModel.contentStr = @"MVP初始数据";;
    
    // model还没赋值
    self.mvcPresenter.model = _mvpModel;
    self.mvcPresenter.view = _mvpView;
    
    //逻辑操作
    [self.mvcPresenter usageLogic];
}



@end
