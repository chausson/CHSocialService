//
//  AppDelegate.m
//  CHSocialServiceDemo
//
//  Created by Chausson on 16/3/24.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "AppDelegate.h"
#import "CHSocialService.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [CHSocialServiceCenter setUmengAppkey:@"53290df956240b6b4a0084b3"];
    [[CHSocialServiceCenter shareInstance] configurationAppKey:nil AppIdentifier:@"wx5f10246d10b41397" secret:@"ae715541c2eb3c2ee3d714837dad8742" redirectURL:nil sourceURL:@"http://www.baidu.com" type:CHSocialWeChat];
    [[CHSocialServiceCenter shareInstance] configurationAppKey:@"c7394704798a158208a74ab60104f0ba" AppIdentifier:@"100424468" secret:nil redirectURL:nil sourceURL:@"http://www.umeng.com/social" type:CHSocialQQ];
    [[CHSocialServiceCenter shareInstance] configurationAppKey:@"3921700954" AppIdentifier:@"100424468" secret:@"04b48b094faeb16683c32669824ebdad" redirectURL:@"http://sns.whalecloud.com/sina2/callback" sourceURL:@"http://www.umeng.com/social" type:CHSocialSina];

    return YES;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return  [CHSocialServiceCenter handleOpenURL:url delegate:nil];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [CHSocialServiceCenter  applicationDidBecomeActive];
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}



- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
