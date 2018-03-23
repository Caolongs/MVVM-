//
//  MVPView.h
//  MVVMDemo
//
//  Created by cao longjian on 2018/3/21.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDelegate <NSObject>

- (void)onBtnClick;

@end

@interface MVPView : UIView

@property (nonatomic, weak) id<MVPViewDelegate> delegate;

- (void)setLabelText:(NSString *)contentStr;

@end
