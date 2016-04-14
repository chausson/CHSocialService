//
//  CHSocialResponseData.h
//  CHSocialServiceDemo
//
//  Created by Chausson on 16/3/25.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CHSocialResponseData : NSObject
/**
 授权失败返回的NSError对象
 */
@property (nonatomic, strong) NSError *error;
/**
 微博平台名称,例如"sina"、"tencent",定义在`UMSocialSnsPlatformManager.h`
 */
@property (nonatomic, copy) NSString *platformName;

/**
 用户昵称
 */
@property (nonatomic, copy) NSString *userName;

/**
 用户在微博的id号
 */
@property (nonatomic, copy) NSString *usid;

/**
 用户微博头像的url
 */
@property (nonatomic, copy) NSString *iconURL;

/**
 用户授权后得到的accessToken
 */
@property (nonatomic, copy) NSString *accessToken;

/**
 用户授权后得到的accessSecret
 */
@property (nonatomic, copy) NSString *accessSecret;

/**
 微信授权完成后得到的unionId
 
 */
@property (nonatomic, copy) NSString *unionId;

/**
 某些平台记录的应用Id
 */
@property (nonatomic, copy) NSString *appId;

/**
 授权项
 */
@property (nonatomic, copy) NSArray *permissions;

/**
 非授权项
 */
@property (nonatomic, copy) NSArray *dePermissions;
/**
 用户微博网址url
 */
@property (nonatomic, copy) NSString *profileURL;

/**
 是否首次授权，sdk内使用
 */
@property (nonatomic) BOOL isFirstOauth;


/**
 添加已授权的腾讯微博和qq空间账号，需要用到的openId
 */
@property (nonatomic, copy) NSString *openId;
@end
