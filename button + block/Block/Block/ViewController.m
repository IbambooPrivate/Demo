//
//  ViewController.m
//  Block
//
//  Created by iBamboo on 2017/5/12.
//  Copyright © 2017年 iBamboo. All rights reserved.
//

#import "ViewController.h"
#import "BlockVC.h"
#import "UIButton+block.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btn1:(id)sender {
    BlockVC *vc1 = [BlockVC new];
    vc1.block1 = ^(NSString *str1, NSString *str2) {
        NSLog(@"%@---%@",str1,str2);
    };
    [self.navigationController pushViewController:vc1 animated:YES];
    
}
- (IBAction)btn2:(id)sender {
    BlockVC *vc1 = [BlockVC new];
[vc1 showBtn:YES block:^(UIButton *btn) {
    [btn addAction:^(UIButton *btn) {
        NSLog(@"3333333");
    }];
}];
    [self.navigationController pushViewController:vc1 animated:YES];

}

- (IBAction)push:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
