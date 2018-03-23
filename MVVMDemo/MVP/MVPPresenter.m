//
//  MVPPresenter.m
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "MVPPresenter.h"

@implementation MVPPresenter

- (void)usageLogic {
    
    self.view.delegate = self;
    NSString *contentStr = self.model.contentStr;
    [self.view setLabelText:contentStr];
    
}


// delegate
- (void)onBtnClick {
    
    //逻辑处理
    int num = arc4random_uniform(100);
    self.model.contentStr = [NSString stringWithFormat:@"MVP数值改变%d",num];
    
    // 根据需要改变某个页面展示内容
    [self.view setLabelText:self.model.contentStr];
}

@end
