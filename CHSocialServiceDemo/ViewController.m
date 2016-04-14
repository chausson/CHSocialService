//
//  ViewController.m
//  CHSocialServiceDemo
//
//  Created by Chausson on 16/3/24.
//  Copyright © 2016年 Chausson. All rights reserved.
//

#import "ViewController.h"
#import "CHSocialService.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)share:(UIButton *)sender {

    [[CHSocialServiceCenter shareInstance]shareTitle:@"测试分享标题" content:@"我是分享的内容123" imageURL:@"http://p2pguide.sudaotech.com/platform/image/1/20160318/3c896c87-65b6-481d-81ca-1b4a0b6d8dd4/" image:[UIImage imageNamed:@"demo_image"] urlResource:@"http://www.alibaba.com" controller:self completion:^(BOOL successful) {
        
    }];

}
- (IBAction)wechatLogin:(UIButton *)sender {
    [[CHSocialServiceCenter shareInstance]loginInAppliactionType:CHSocialWeChat controller:self completion:^(CHSocialResponseData *response) {
        
    }];
}
- (IBAction)sinaLogin:(UIButton *)sender {
    [[CHSocialServiceCenter shareInstance]loginInAppliactionType:CHSocialSina controller:self completion:^(CHSocialResponseData *response) {
        
    }];
}
- (IBAction)qqLogin:(UIButton *)sender {
    [[CHSocialServiceCenter shareInstance]loginInAppliactionType:CHSocialQQ controller:self completion:^(CHSocialResponseData *response) {
        
    }];
}

@end
