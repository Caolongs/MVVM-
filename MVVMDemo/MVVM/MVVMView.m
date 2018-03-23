//
//  MVVMView.m
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "MVVMView.h"

@interface MVVMView ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *button;

@end

@implementation MVVMView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor cyanColor];
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 300, 30)];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.textColor = [UIColor blackColor];
        [self addSubview:self.label];
        
        self.button = [UIButton buttonWithType:UIButtonTypeSystem];
        self.button.frame = CGRectMake(100, 200, 100, 50);
        self.button.backgroundColor = [UIColor redColor];
        [self.button setTitle:@"点我呀!!!" forState:UIControlStateNormal];
        [self.button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.button];
    }
    return self;
}

- (void)btnClick {
    [self.viewModel handleBtnClick];
}

- (void)setViewModel:(MVVMViewModel *)viewModel {
    _viewModel = viewModel;
    
    [self.KVOController observe:viewModel keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        
        self.label.text = change[NSKeyValueChangeNewKey];
    }];
    
}


@end
