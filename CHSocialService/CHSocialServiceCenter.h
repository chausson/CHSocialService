//
//  CHSocialServiceCenter.h
//  CHSocialServiceDemo
//
//  Created by Chausson on 16/3/24.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CHSocialResponseData.h"
typedef NS_OPTIONS(NSInteger ,CHSocialType) {
    CHSocialSina, // 新浪微博
    CHSocialWeChat, // 微信
    CHSocialWeChatTimeLine, // 朋友圈
    CHSocialQQ // QQ
};

@interface CHSocialServiceCenter : NSObject
+ (CHSocialServiceCenter *)shareInstance;
/*
 * @brief   设置友盟的APP KEY
 */
+ (void)setUmengAppkey:(NSString *)key;
/*
 * @brief   需要在appDelegate中添加以下代码，否则当前应用无法接收回调
 */
+ (BOOL)handleOpenURL:(NSURL *)url delegate:(id)delegate;
+ (void)applicationDidBecomeActive;
/*
 * @brief   如果配置过相应的key就支持该类型
 * @return  返回目前支持类型的名称
 */
+ (NSArray <NSString *>*)allOfSupportType;
/*
 * @brief   分享功能api
 */
- (void)shareTitle:(NSString *)title
           content:(NSString *)content
          imageURL:(NSString *)imageUrl
             image:(UIImage *)image
       urlResource:(NSString *)url
        controller:(UIViewController *)controller
        completion:(void(^)(BOOL successful))finish;
/*
 * @brief   单个分享功能api
 */
- (void)shareTitle:(NSString *)title
           content:(NSString *)content
          imageURL:(NSString *)imageUrl
             image:(UIImage *)image
       urlResource:(NSString *)url
              type:(CHSocialType )type
        controller:(UIViewController *)controller
        completion:(void(^)(BOOL successful))finish;
/*
 * @brief   根据类型配置相应的key,不需要没有的就传nil
 */
- (void)configurationAppKey:(NSString *)key
              AppIdentifier:(NSString *)identifier
                     secret:(NSString *)secret
                redirectURL:(NSString *)redirectURL
                  sourceURL:(NSString *)url
                       type:(CHSocialType)type;
/*
 * @brief   第三方授权登陆api
 */
- (void)loginInAppliactionType:(CHSocialType)type
                    controller:(UIViewController *)controller
                    completion:(void(^)(CHSocialResponseData *response))finish;

+ (instancetype)new __unavailable;
- (instancetype)init __unavailable;


@end
