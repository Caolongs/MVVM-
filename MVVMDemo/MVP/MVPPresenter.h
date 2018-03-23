//
//  MVPPresenter.h
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPView.h"
#import "MVPModel.h"

@interface MVPPresenter : NSObject <MVPViewDelegate>

@property (nonatomic, strong) MVPModel *model;
@property (nonatomic, strong) MVPView *view;

- (void)usageLogic;

@end
