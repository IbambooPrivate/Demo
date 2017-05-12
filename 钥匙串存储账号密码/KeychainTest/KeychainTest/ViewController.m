//
//  ViewController.m
//  KeychainTest
//
//  Created by iBamboo on 2017/5/12.
//  Copyright © 2017年 iBamboo. All rights reserved.
//

#import "ViewController.h"
#import "KeychainManger.h"
#define   BundleID  [[NSBundle mainBundle] bundleIdentifier]


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)save:(id)sender {
    [KeychainManger savePassword:@"12345678" account:@"1234567"];
    
}

- (IBAction)load:(id)sender {
   NSArray *arr= [KeychainManger loadAccountsForService:BundleID];
    
    NSLog(@"%@",arr);
    
    NSString *password = [KeychainManger loadPasswordForService:BundleID account:[arr lastObject][@"acct"]];
    NSLog(@"----%@",password);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
