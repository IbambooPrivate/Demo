//
//  UIButton+block.h
//  Block
//
//  Created by iBamboo on 2017/5/12.
//  Copyright © 2017年 iBamboo. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ButtonBlock)(UIButton* btn);

@interface UIButton (block)

/**
 UIControlEventTouchUpInside 事件

 @param block action方法
 */
- (void)addAction:(ButtonBlock)block;


/**
 其他点击controlEvents 事件

 @param block action
 @param controlEvents controlEvents
 */
- (void)addAction:(ButtonBlock)block forControlEvents:(UIControlEvents)controlEvents;
@end
