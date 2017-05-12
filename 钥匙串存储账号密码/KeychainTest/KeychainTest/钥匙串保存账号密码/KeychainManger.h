//
//  KeychainManger.h
//  TwoTheWin
//
//  Created by iBamboo on 2017/5/12.
//  Copyright © 2017年 Jian Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#define   BundleID  [[NSBundle mainBundle] bundleIdentifier]

@interface KeychainManger : NSObject



/**
 存储账号密码

 @param password <#password description#>
 @param account <#account description#>
 */
+ (void)savePassword:(NSString *)password  account:(NSString *)account;


/**
 读取所有账号

 @param serviceName <#serviceName description#>
 @return <#return value description#>
 */
+ (NSArray *)loadAccountsForService:(NSString *)serviceName;


/**
 读取账号对应的密码

 @param serviceName <#serviceName description#>
 @param account <#account description#>
 @return <#return value description#>
 */
+ (NSString *)loadPasswordForService:(NSString *)serviceName account:(NSString *)account;


/**
 删除指定的账号

 @param serviceName <#serviceName description#>
 @param account <#account description#>
 @return <#return value description#>
 */
+ (BOOL)deletePasswordForService:(NSString *)serviceName account:(NSString *)account;
@end
