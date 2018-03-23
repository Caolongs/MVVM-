//
//  MVCView.m
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import "MVCView.h"

@interface MVCView ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *button;

@end

@implementation MVCView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor grayColor];
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
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(onBtnClick)]) {
        [self.delegate onBtnClick];
    }
}

- (void)setModel:(MVCModel *)model {
    
    _model = model;
    
    self.label.text = model.contentStr;
    
}




@end
