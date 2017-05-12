//
//  BlockVC.m
//  Block
//
//  Created by iBamboo on 2017/5/12.
//  Copyright © 2017年 iBamboo. All rights reserved.
//

#import "BlockVC.h"

@interface BlockVC ()

@end

@implementation BlockVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.block1(@"11", @"22");


}


- (void)showBtn:(BOOL)show block:(void(^)(UIButton *btn))block{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 200, 300);
    btn.backgroundColor = [UIColor redColor];
    block(btn);
    [self.view addSubview:btn];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
