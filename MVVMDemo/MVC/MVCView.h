//
//  MVCView.h
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"


@protocol MVCViewDelegate <NSObject>

- (void)onBtnClick;

@end


@interface MVCView : UIView

@property (nonatomic, weak) id<MVCViewDelegate> delegate;

@property (nonatomic, strong) MVCModel *model;

@end
