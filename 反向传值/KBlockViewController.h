//
//  KBlockViewController.h
//  反向传值
//
//  Created by yg on 2017/8/3.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBlockViewController : UIViewController
/**回调返回值,block可以有多个参数值*/
@property (nonatomic, copy) void (^valueBlock)(NSString * str);
@end
