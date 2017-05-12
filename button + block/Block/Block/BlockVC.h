//
//  BlockVC.h
//  Block
//
//  Created by iBamboo on 2017/5/12.
//  Copyright © 2017年 iBamboo. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^Block1)(NSString *str1,NSString *str2);



@interface BlockVC : UIViewController
@property (nonatomic, copy)   Block1 block1;

- (void)showBtn:(BOOL)show block:(void(^)(UIButton *btn))block;
@end
