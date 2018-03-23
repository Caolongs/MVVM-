//
//  MVVMViewModek.h
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMModel.h"

#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"

@interface MVVMViewModel : NSObject

@property (nonatomic, copy) NSString *contentStr;

- (void)setWithModel;

- (void)handleBtnClick;

@end
