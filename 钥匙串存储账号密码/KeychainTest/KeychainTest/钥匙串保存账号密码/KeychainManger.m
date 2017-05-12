//
//  KeychainManger.m
//  TwoTheWin
//
//  Created by iBamboo on 2017/5/12.
//  Copyright © 2017年 Jian Wang. All rights reserved.
//

#import "KeychainManger.h"
#import "SSKeychain.h"
@implementation KeychainManger

+ (void)savePassword:(NSString *)password  account:(NSString *)account{
    
    NSError *error;
    [SSKeychain setPassword:password forService:BundleID account:account error:&error];
    
    if ([error code] == errSecSuccess) {
                NSLog(@"存储%@密码成功",account);
            }else if ([error code] == errSecItemNotFound) {
                NSLog(@"存储失败,%@的密码没有找到",account);
            }else {
                NSLog(@"存储密码失败原因： %@",[error localizedDescription]);
            }
    
}

+ (NSArray *)loadAccountsForService:(NSString *)serviceName{
    
    NSError *error;
    NSArray *arr =  [SSKeychain accountsForService:BundleID error:&error];
    if ([error code] == errSecSuccess) {
        NSLog(@"账号读取成功");
    }else{
        NSLog(@"账号读取失败");

    }
    
    return arr;
    
}

+ (NSString *)loadPasswordForService:(NSString *)serviceName account:(NSString *)account{
    
    NSError *error;
    NSString *password = [SSKeychain passwordForService:BundleID account:account error:&error];
    if ([error code] == errSecSuccess) {
        NSLog(@"密码读取成功");
    }else{
        NSLog(@"密码读取失败");
        
    }
    return password;
}


+ (BOOL)deletePasswordForService:(NSString *)serviceName account:(NSString *)account{
    
    NSError *error;
    [SSKeychain deletePasswordForService:BundleID account:account error:&error];
    if ([error code] == errSecSuccess) {
        return YES;
    }
    return NO;
}
@end
